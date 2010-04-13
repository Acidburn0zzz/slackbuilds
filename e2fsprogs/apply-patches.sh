
set -e -o pipefail

SB_PATCHDIR=${CWD}/patches

zcat ${SB_PATCHDIR}/${NAME}-1.40.4-sb_feature_check_ignore.patch.gz | patch -p1 -E --backup --verbose

set +e +o pipefail