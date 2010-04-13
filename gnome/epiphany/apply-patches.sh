
set -e -o pipefail

SB_PATCHDIR=${CWD}/patches

zcat ${SB_PATCHDIR}/${NAME}-1.0.1-home-page.patch.gz | patch -p1 -E --backup --verbose
#zcat ${SB_PATCHDIR}/${NAME}-2.18.1-default-bookmarks.patch.gz | patch -p1 -E --backup --verbose

set +e +o pipefail