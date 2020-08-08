#!/bin/bash

# This script finds unused functions in ZScript source code.
#
# The source code is supposed to be in zscript directory and have ".zs"
# extension.
#
# Usage:
# ./scripts/zscript-check.sh

functions=$(grep -ni "^  int" zscript/*.zs | sed 's/(.*'//  |  awk '{ print $3 }')

for f in $functions; do
    count=$(grep -ni $f zscript/*.zs | wc -l)
    if [ $count = "1" ]
    then
       echo $f;
    fi
done
