#!/bin/bash

cat > /tmp/plot.tmp <<PLOTCMD
plot d $2
pause -1
PLOTCMD

gnuplot -e "d='$1'" /tmp/plot.tmp
