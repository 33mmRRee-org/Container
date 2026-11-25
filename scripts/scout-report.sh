#!/usr/bin/env bash
set -euo pipefail
# Generate SBOM and vulnerability reports for a local image with Docker Scout.
# Everything is produced locally; nothing is uploaded unless SCOUT_ORG is set,
# and a missing or failing Scout CLI never blocks the build.
image=${1:?Image reference is required}
destination=${2:?Report directory is required}
scout_org=${SCOUT_ORG:-}

if ! docker scout version >/dev/null 2>&1; then
  printf 'Docker Scout CLI is unavailable; skipping reports.\n' >&2
  exit 0
fi

mkdir -p "$destination"
written=0
write_report() {
  local label=$1 output=$2
  shift 2
  if docker scout "$@" --output "$output" "$image" >/dev/null 2>&1 && [ -s "$output" ]; then
    written=$((written + 1))
    printf 'Scout %s report written: %s\n' "$label" "$output"
  else
    printf 'Scout %s report unavailable; continuing without it.\n' "$label" >&2
    rm -f "$output"
  fi
}

write_report 'SBOM (SPDX)' "$destination/sbom.spdx.json" sbom --format spdx
write_report 'SBOM (CycloneDX)' "$destination/sbom.cyclonedx.json" sbom --format cyclonedx
write_report 'vulnerabilities (SARIF)' "$destination/vulnerabilities.sarif" cves --format sarif
write_report 'vulnerabilities (Markdown)' "$destination/vulnerabilities.md" cves --format markdown

if [ "$written" -eq 0 ]; then
  printf 'No Scout reports could be generated for %s.\n' "$image" >&2
fi

# Optional upload. The free Scout tier enables a single repository, so this
# stays opt-in and soft-fails: publishing must not depend on Scout quota.
if [ -n "$scout_org" ]; then
  docker scout push --org "$scout_org" --sbom "$image" >/dev/null 2>&1 \
    || printf 'Scout upload skipped (quota or service unavailable).\n' >&2
fi
