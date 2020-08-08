#!/bin/bash

# This script finds unused functions in ACS source code.
#
# The source code is supposed to be in source directory and have ".acs"
# extension.
#
# Usage:
# ./scripts/acs-check.sh

functions=$(grep -ni "^function" source/*.acs | sed 's/(.*'//  |  awk '{ print $3 }')

for f in $functions; do
    count=$(grep -ni $f source/*.acs | wc -l)
    if [ $count = "1" ]
    then
       echo $f;
    fi
done
