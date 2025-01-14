#!/bin/bash
#
TEMP=tmp.sh
declare -a fileArray=($(ls 0{1..3}*.sh))
for file in "${fileArray[@]}"
do
#??
  cp -f ${file} ${TEMP}
#??
done
rm ${TEMP} 2>/dev/null