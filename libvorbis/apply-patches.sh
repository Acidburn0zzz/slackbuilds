
set -e -o pipefail

SB_PATCHDIR=${CWD}/patches

zcat ${SB_PATCHDIR}/libvorbis-1.0-m4.patch.gz | patch -p1 -E --backup --verbose

set +e +o pipefail