#!/usr/bin/env python3
"""Retain upstream installroot stages and add a download-only cache export."""
import pathlib
import re
import sys

source = pathlib.Path(sys.argv[1]).read_text()

# Upstream has shipped both `RUN mkdir /mnt/sys-root;` and the newer
# `RUN set -e; mkdir /mnt/sys-root;`, so accept either form.
mkdir_pattern = re.compile(r'RUN (set -e; )?mkdir /mnt/sys-root;')
mkdir_match = mkdir_pattern.search(source)
if 'FROM ${SYSBASE} AS system-build' not in source or mkdir_match is None:
    raise RuntimeError('Upstream AlmaLinux build stages changed; review the cache adapter')
guard = mkdir_match.group(1) or ''
# Docker requires build flags to precede the shell command word.
source = source.replace(mkdir_match.group(0),
    'RUN --mount=type=bind,from=package-cache,target=/seed-cache,readonly '
    + guard + 'mkdir -p /mnt/sys-root/var/cache/dnf; '
    'cp -a /seed-cache/dnf/. /mnt/sys-root/var/cache/dnf/;')
source = re.sub(r'\bdnf (install|reinstall)', r'dnf --setopt=keepcache=True \1', source)
cleanup_pattern = re.compile(r'dnf\s+--installroot\s+/mnt/sys-root\s+clean\s+all;')
cleanup_match = cleanup_pattern.search(source)
if cleanup_match is None:
    raise RuntimeError('Upstream AlmaLinux package cleanup changed')
cleanup = cleanup_match.group(0)
source = source.replace(cleanup, 'mkdir -p /saved-package-cache/dnf; '
    'cp -a /mnt/sys-root/var/cache/dnf/. /saved-package-cache/dnf/; ' + cleanup)
head, separator, tail = source.rpartition('FROM scratch\n')
if not separator:
    raise RuntimeError('Upstream AlmaLinux final stage must use scratch')
source = head + 'FROM scratch AS container-image\n' + tail
source += '\nFROM scratch AS package-downloads\nCOPY --from=system-build /saved-package-cache/ /\n'
pathlib.Path(sys.argv[2]).write_text(source)
