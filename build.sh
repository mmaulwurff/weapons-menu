#!/bin/bash

#IWAD=~/Programs/Games/wads/doom/freedoom1.wad
#IWAD=~/Programs/Games/wads/doom/HERETIC.WAD
#IWAD=~/Programs/Games/wads/modules/game/harm1.wad

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
    sounds/*.wav \
    sounds/*.lmp \
    source/*.acs \
    sprites/*.png \
    sprites/*.lmp \
    zscript/*.txt \
    zscript/*.zs \
    *.lmp \
    *.fon2 \
    *.md \
    *.txt \
    language.enu \
&& \
cp weapon-menu.pk3 weapon-menu-$(git describe --abbrev=0 --tags).pk3 \
&& \
gzdoom -iwad $IWAD \
       -file \
       weapon-menu.pk3 \
       ~/Programs/Games/wads/maps/DOOMTEST.wad \
       "$1" "$2" \
       +map test \
       -nomonsters
