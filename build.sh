#!/bin/bash

acc source/weapon-menu.acs acs/weapon-menu.o \
&& \
rm -f weapon-menu.pk3 \
&& \
zip weapon-menu.pk3 \
    acs/weapon-menu.o \
    sounds/WMSWTCH1.wav \
    sounds/WMSWTCH2.wav \
    sounds/WMSWTCH3.wav \
    source/data.acs \
    source/inventory.acs \
    source/weapon-menu.acs \
    sprites/WDOTA0.png \
    MINIPLWK.lmp \
    MINIPL_W.lmp \
    MM2SFNTO.fon2 \
    README.md \
    WeaponMenuInterface.txt \
    autodetection.cfg \
    cvarinfo.txt \
    keyconf.txt \
    loadacs.txt \
    menudef.txt \
    sndinfo.txt \
    textures.txt \
    zscript.txt \
&& \
cp weapon-menu.pk3 weapon-menu-$(git describe --abbrev=0 --tags).pk3 \
&& \
gzdoom -glversion 3 -file \
       weapon-menu.pk3 \
       ~/Programs/Games/wads/maps/DOOMTEST.wad \
       $1 \
       +map test \
       -nomonsters
