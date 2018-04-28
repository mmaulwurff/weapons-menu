#!/bin/bash

acc source/weapon-menu.acs acs/weapon-menu.o \
&& \
rm -f weapon-menu.pk3 \
&& \
zip weapon-menu.pk3 \
    acs/weapon-menu.o keyconf.txt \
    loadacs.txt README.md \
    cvarinfo.txt \
    menudef.txt \
    source/weapon-menu.acs \
    WeaponMenuInterface.txt \
    sounds/WMSWTCH1.wav \
    sounds/WMSWTCH2.wav \
    sounds/WMSWTCH3.wav \
    sndinfo.txt \
    autodetection.cfg \
    zscript.txt \
    MINIPLWK.lmp \
    MINIPL_W.lmp \
    MM2SFNTO.fon2 \
&& \
cp weapon-menu.pk3 weapon-menu-$(git describe --abbrev=0 --tags).pk3 \
&& \
gzdoom -glversion 3 -file \
       weapon-menu.pk3 \
       ~/Programs/Games/wads/maps/DOOMTEST.wad \
       $1 \
       +map test \
       -nomonsters
