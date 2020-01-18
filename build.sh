#!/bin/bash

set -e

name=weapon-menu-$(git describe --abbrev=0 --tags).pk3

acc source/weapon-menu.acs acs/weapon-menu.o

rm -f "$name"

git log --date=short --pretty=format:"-%d %ad %s%n" | \
    grep -v "^$" | \
    sed "s/HEAD -> master, //" | \
    sed "s/, origin\/master//" | \
    sed "s/ (HEAD -> master)//" | \
    sed "s/ (origin\/master)//"  |\
    sed "s/- (tag: \(v\?[0-9.]*\))/\n\1\n-/" \
    > changelog.txt

zip -R "$name" \
    "*.acs"  \
    "*.enu"  \
    "*.fon2" \
    "*.lmp"  \
    "*.md"   \
    "*.o"    \
    "*.png"  \
    "*.txt"  \
    "*.wav"  \
    "*.zs"

gzdoom -file "$name" "$@"
