
set -e -o pipefail

SB_PATCHDIR=${CWD}/patches

# patch -p0 -E --backup --verbose -i ${SB_PATCHDIR}/${NAME}.patch
patch -p1 -E --backup --verbose -i ${SB_PATCHDIR}/${NAME}-systemd-slk.patch
patch -p1 -E --backup --verbose -i ${SB_PATCHDIR}/${NAME}-7.2.2-manpage-dbg-mode.patch
patch -p1 -E --backup --verbose -i ${SB_PATCHDIR}/${NAME}-7.2.1-msg_c_nonoverwrite_merge.patch
patch -p1 -E --backup --verbose -i ${SB_PATCHDIR}/${NAME}-5.8.11-enlarge-cert-info-bufs.patch

set +e +o pipefail
