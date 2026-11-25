#!/usr/bin/env bash
set -euo pipefail
REPO_ROOT=$(cd -- "$(dirname -- "$0")" && pwd)
: "${BUILD_TARGET:?The discovered build target is required}"
: "${RUNNER_TEMP:?}"
: "${PACKAGE_CACHE:?}"
DISTRIBUTION=$(jq -er .distribution <<< "$BUILD_TARGET")
VERSION=$(jq -er .version <<< "$BUILD_TARGET")
BOOTSTRAP=$(jq -er .bootstrap <<< "$BUILD_TARGET")
PLATFORM=$(jq -er .platform <<< "$BUILD_TARGET")
KEY=$(jq -er .key <<< "$BUILD_TARGET")
content_key=$(jq -er .fingerprint <<< "$BUILD_TARGET")
source_commit=$(jq -er .source_commit <<< "$BUILD_TARGET")
lower=$(tr '[:upper:]' '[:lower:]' <<< "$DISTRIBUTION")
image="ghcr.io/33mmrree-org/$lower"
source_label="https://github.com/33mmRRee-org/$DISTRIBUTION"
WORK=$(mktemp -d "$RUNNER_TEMP/container-build.XXXXXXXX")
cd "$WORK"
IMAGE_TEST_LIST="$RUNNER_TEMP/image-test-list.txt"
: > "$IMAGE_TEST_LIST"
git init --quiet source
git -C source remote add origin "$source_label.git"
# Pin the snapshot discovered for this run, even if Cron updates its branch meanwhile.
git -C source fetch --quiet --depth=1 origin "$source_commit"
git -C source checkout --quiet --detach FETCH_HEAD
jq -e --arg distro "$DISTRIBUTION" '.schema == 1 and .distribution == $distro' source/.container-source.json >/dev/null
revision=$(jq -er .revision source/.container-source.json)
SOURCE_DATE_EPOCH=$(git -C source show -s --format=%ct HEAD)
IMAGE_LABELS="$WORK/image-labels.json"
# created follows SOURCE_DATE_EPOCH, the source commit date, so rebuilding
# the same revision stays byte-for-byte reproducible.
created=$(date -u -d "@$SOURCE_DATE_EPOCH" +%Y-%m-%dT%H:%M:%SZ)
jq -n --arg distribution "$DISTRIBUTION" --arg version "$VERSION" --arg source "$source_label" \
  --arg revision "$revision" --arg source_commit "$source_commit" \
  --arg build_revision "${GITHUB_SHA:-}" --arg platform "$PLATFORM" \
  --arg created "$created" --arg bootstrap "${BOOTSTRAP%@*}" \
  --arg bootstrap_digest "${BOOTSTRAP##*@}" '
  {
    "org.opencontainers.image.created": $created,
    "org.opencontainers.image.source": $source,
    "org.opencontainers.image.url": $source,
    "org.opencontainers.image.documentation": "https://github.com/33mmRRee-org/Container#readme",
    "org.opencontainers.image.licenses": "MIT",
    "org.opencontainers.image.title": ($distribution + " " + $version),
    "org.opencontainers.image.description": ("Base container image built from 33mmRRee-org/" + $distribution + " recipes."),
    "org.opencontainers.image.version": $version,
    "org.opencontainers.image.revision": $revision,
    "org.opencontainers.image.vendor": "33mmRRee-org",
    "org.opencontainers.image.base.name": $bootstrap,
    "org.opencontainers.image.base.digest": $bootstrap_digest,
    "io.33mmrree-org.source.commit": $source_commit,
    "io.33mmrree-org.build.source": "https://github.com/33mmRRee-org/Container",
    "io.33mmrree-org.platform": $platform
  } + (if $build_revision == "" then {} else {"io.33mmrree-org.build.revision": $build_revision} end)
  | with_entries(select(.value != ""))
' > "$IMAGE_LABELS"
mkdir context
source "$REPO_ROOT/scripts/build-common.sh"
# The official image supplies build tools, not the final root filesystem.
docker pull --platform "$PLATFORM" "$BOOTSTRAP"
BOOTSTRAP_ID=$(docker image inspect --format '{{.Id}}' "$BOOTSTRAP")
source "$REPO_ROOT/$lower/build.sh"
[[ "$content_key" =~ ^[a-f0-9]{64}$ ]]
platform_tag=$(tr '/' '-' <<< "$PLATFORM")
immutable="$VERSION-$platform_tag-sha${content_key:0:16}"
reference="$image:$immutable"
build_image
printf '%s\n' "$reference" > "$IMAGE_TEST_LIST"
jq -n --arg key "$KEY" --arg platform "$PLATFORM" --arg image "$reference" --arg fingerprint "$content_key" \
  --arg created "$created" --arg revision "$revision" \
  '{key:$key,platform:$platform,image:$image,fingerprint:$fingerprint,created:$created,revision:$revision,tested:false,pushed:false}' > "$RUNNER_TEMP/image.json"