#!/bin/bash

functions=$(grep -ni "^  int" *.txt | sed 's/(.*'//  |  awk '{ print $3 }')

for f in $functions; do
    count=$(grep -ni $f *.txt | wc -l)
    if [ $count = "1" ]
    then
       echo $f;
    fi
done
