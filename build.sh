#!/bin/bash

acc source/weapon-menu.acs acs/weapon-menu.o \
&& \
rm -f weapon-menu.pk3 \
&& \
git log --pretty=format:"-%d %ai %s%n" > changelog.txt \
&& \
zip weapon-menu.pk3 \
    acs/weapon-menu.o \
    filter/doom.doom1/language.enu \
    filter/doom.doom2/language.enu \
    filter/doom.freedoom/language.enu \
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
    textures.blue \
    textures.green \
    textures.icons \
    textures.txt \
&& \
cp weapon-menu.pk3 weapon-menu-$(git describe --abbrev=0 --tags).pk3 \
&& \
gzdoom -glversion 3 \
       -file \
       weapon-menu.pk3 \
       ~/Programs/Games/wads/maps/DOOMTEST.wad \
       "$1" "$2" \
       +map test \
       -nomonsters

       #-iwad ~/Programs/Games/wads/doom/HERETIC.WAD \
