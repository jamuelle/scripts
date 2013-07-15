#!/bin/bash

echo "Searching in: " $*
DIRECORIES=$*

find $DIRECORIES  -not -empty -type f -printf "%s\n"\
        | sort -rn \
        | uniq -d \
        | xargs -I{} -n1 find $DIRECORIES  -type f -size {}c -print0 \
        | xargs -0 md5sum \
        | sort \
        | uniq -w32 --all-repeated=separate
