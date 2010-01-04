
SB_PATCHDIR=${CWD}/patches

if [ "${PVER}" -ne 0 ] ; then
  bzcat ${SB_PATCHDIR}/updates/${PSRCARCHIVE} | patch -p1 --verbose || exit 1
fi

C=$(wc -l ${CWD}/${PSRCARCHIVES} | awk '{print $1}')
if [ "$C" -gt 0 ]; then
  for file in $(<${CWD}/${PSRCARCHIVES}) ; do
    pver2=$(echo ${file} | cut -d- -f3 | cut -d. -f1)
    if [ "${pver2}" -gt "${PVER}" ] ;then
      zcat ${SB_PATCHDIR}/updates/${file} | patch -p1 --verbose || exit 1
    fi
  done
fi

zcat ${SB_PATCHDIR}/ncurses.mkhashsize.diff.gz | patch -p1 --verbose || exit 1

zcat ${SB_PATCHDIR}/ncurses-5.7-20090124-config.patch.gz | patch -p1 --verbose || exit 1
zcat ${SB_PATCHDIR}/ncurses-5.6-20070612-libs.patch.gz | patch -p1 --verbose || exit 1
zcat ${SB_PATCHDIR}/ncurses-5.6-20080112-xterm.patch.gz | patch -p1 --verbose || exit 1
zcat ${SB_PATCHDIR}/ncurses-5.6-20080112-urxvt.patch.gz | patch -p1 --verbose || exit 1

