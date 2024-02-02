#!/bin/bash

DISPLAY=:0.0

if [ "$3" -eq "1" ];
then
  redshift -x;
  cat <<< 0 > /home/nxtperfect/.config/redshift-poly/var.txt;
  exit;
fi

is_on=$(cat /home/nxtperfect/.config/redshift-poly/var.txt);

if [ "$is_on" -eq "1" ];
then
  exit;
else
  redshift -P -O $1 -b $2;
  is_on=1;
fi

cat <<< $is_on > /home/nxtperfect/.config/redshift-poly/var.txt
