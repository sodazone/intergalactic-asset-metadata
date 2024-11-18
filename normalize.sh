#!/usr/bin/env bash
set -eu

for SRC in `find v2 -depth`
do
  DST=`dirname "${SRC}"`/`basename "${SRC}" | tr '[A-Z]' '[a-z]'`
  if [ "${SRC}" != "${DST}" ]
  then
    [ ! -e "${DST}" ] && mv -T "${SRC}" "${DST}" || echo "${SRC} was not renamed"
  fi
done
