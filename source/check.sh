#!/bin/bash

functions=$(grep -ni "^function" *.acs | sed 's/(.*'//  |  awk '{ print $3 }')

for f in $functions; do
    count=$(grep -ni $f *.acs | wc -l)
    if [ $count = "1" ]
    then
       echo $f;
    fi
done
