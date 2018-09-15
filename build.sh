#!/bin/bash

acc source/weapon-menu.acs acs/weapon-menu.o \
&& \
rm -f weapon-menu.pk3 \
&& \
git log --date=short --pretty=format:"-%d %ad %s%n" | \
    grep -v "^$" | \
    sed "s/HEAD -> master, //" | \
    sed "s/, origin\/master//" | \
    sed "s/ (HEAD -> master)//" | \
    sed "s/ (origin\/master)//"  |\
    sed "s/- (tag: \(v\?[0-9.]*\))/\n\1\n-/" \
    > changelog.txt \
&& \
zip weapon-menu.pk3 \
    acs/weapon-menu.o \
    filter/doom.doom1/language.enu \
    filter/doom.doom2/language.enu \
    filter/doom.freedoom/language.enu \
    filter/doom.freedoom.phase1/language.enu \
    sounds/WMSWTCH1.wav \
    sounds/WMSWTCH2.wav \
    sounds/WMSWTCH3.wav \
    sounds/WMTHROW.lmp \
    source/*.acs \
    sprites/*.png \
    sprites/*.lmp \
    zscript/*.txt \
    *.lmp \
    *.fon2 \
    *.md \
    *.txt \
    language.enu \
&& \
cp weapon-menu.pk3 weapon-menu-$(git describe --abbrev=0 --tags).pk3 \
&& \
gzdoom -glversion 3 \
       \ #-iwad ~/Programs/Games/wads/doom/freedoom1.wad \
       -file \
       weapon-menu.pk3 \
       ~/Programs/Games/wads/maps/DOOMTEST.wad \
       "$1" "$2" \
       +map test \
       -nomonsters

       #-iwad ~/Programs/Games/wads/doom/HERETIC.WAD \
