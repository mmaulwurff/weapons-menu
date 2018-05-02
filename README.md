# Weapon Menu Mod for GZDoom and Zandronum

## Features

1. Allows fast and reliable weapon selection: you see what you are about to select.
1. Works with any HUD.
1. Works with almost any weapon set.
1. Controls in Options -> Customize controls -> "Weapon Menu Keys".

   * Fire/Select: if menu is opened, close it and select weapon. If
     menu is closed, fire.
   * Alt fire/close menu: the same, but do not select new weapon, just close menu.
   * Toggle menu: open menu/close menu and select a weapon.
   * Next/previous weapon: if menu is opened, cycle through all available weapons.
     If menu is closed, cycles through weapons in standard Doom fashion.
     Option: "Open Menu on Next/Prev": if set to "Yes", menu is opened and
     next/previous weapon is highlighted, but not yet selected.
   * Open weapon menu options: opens options. Especially useful for Zandronum.
   * Last used weapon: select last used weapon.
     This key doesn't care if menu is opened or not.
   * Mark weapon for quick access/Select quick access weapon.
   * Fire/Altfire quick access weapon:
     Draw quick access weapon, fire it once, and return to previous weapon.
   * Weapon slot 1-11: if menu is closed, open it.
     Cycle through all weapons in a slot.
   * Increase weapon priority: for example, if you increase priority of vanilla
     shotgun, single press on "3" will select shotgun instead of SSG.
   * Increase/decrease weapon slot: changes weapon slot.

   Every key bind is optional. You can always use standard key binds
   if you want vanilla behavior.

1. Configurable colors, fonts, and positions: Options -> Weapon Menu Options.

   Be sure you adjust menu position, font and text scale in Options to
   fit your screen and weapon set size. Options take effect after menu
   is reopened.

## Weapon Menu supports the following weapons out of the box

1. Original Doom 2 weapons
1. [PerK's Smoother Weapon Animations Enhanced](https://forum.zdoom.org/viewtopic.php?f=43&t=32628)
1. [Eriguns: Eriguns 1 Standard and Extended, Eriguns 2 (limited)](https://forum.zdoom.org/viewtopic.php?f=43&t=48208)
1. [Beautiful Doom 6.3.2](https://forum.zdoom.org/viewtopic.php?f=43&t=50004)
1. [Final Doomer 2.4](https://forum.zdoom.org/viewtopic.php?f=43&t=55061)
1. [Faspons (Feb 24)](https://forum.zdoom.org/viewtopic.php?f=43&t=48985)
1. [HXRTC Project Final Edition (Revised 17 feb 2018)](https://forum.zdoom.org/viewtopic.php?f=43&t=48074)
1. [Kriegsland: Blutorden (2.3 04/02/18)](https://forum.zdoom.org/viewtopic.php?f=43&t=57053)
1. [Complex Doom V27a3](https://forum.zdoom.org/viewtopic.php?f=43&t=58535)
1. [Weapons of Saturn (October 31, 2017)](https://forum.zdoom.org/viewtopic.php?f=43&t=36821)
1. [Hard-Doom v8.2f](https://forum.zdoom.org/viewtopic.php?f=43&t=45145)
1. Heretic IWAD weapons (not tested)
1. [Chex Quest](http://www.chucktropolis.com/gamers.htm)
1. Strife weapons (not tested)
1. [Argent (v0.5.3)](https://forum.zdoom.org/viewtopic.php?f=43&t=52363)
1. [Doom 64 'weapons only' wad by Nevander (updated 5-29-2016) X version](https://forum.zdoom.org/viewtopic.php?f=43&t=51596)
1. [Responsive Weapons + Faster Weapon Switching](https://forum.zdoom.org/viewtopic.php?f=19&t=38235)
1. [Dead Marine (v0.9.3)](https://forum.zdoom.org/viewtopic.php?f=43&t=58521)
1. [Parkour v1.1](https://forum.zdoom.org/viewtopic.php?f=43&t=26057)
1. [Brutal Doom v21 (test feb24)](http://www.moddb.com/mods/brutal-doom/downloads/brutal-doom-v21-beta)
1. [Combined Arms v1.0](https://forum.zdoom.org/viewtopic.php?f=43&t=51066)
1. [Freedoom v0.11.3](https://freedoom.github.io/index.html)
1. [Smooth Doom (2018-01-13)](https://forum.zdoom.org/viewtopic.php?f=43&t=45550)
1. [Trailblazer v1.4c](https://forum.zdoom.org/viewtopic.php?f=43&t=47494)
1. [WW-Cola3](https://forum.zdoom.org/viewtopic.php?f=43&t=55465)
1. [Netronian Chaos v3](https://forum.zdoom.org/viewtopic.php?f=43&t=57964)
1. [The Adventures of Square (Episodes 1-2)](http://adventuresofsquare.com/)
1. [Doom Incarnate v1.5](https://forum.zdoom.org/viewtopic.php?f=43&t=58594#p1029236)
1. [Project MSX 0.2a](https://forum.zdoom.org/viewtopic.php?t=25836#p492521)
1. [Accessories to Murder](https://forum.zdoom.org/viewtopic.php?t=36877#p699326)
1. [DoomRL Arsenal v1.05](https://forum.zdoom.org/viewtopic.php?t=37044#p703341)
1. [High Noon Drifter v1.2c](https://forum.zdoom.org/viewtopic.php?f=43&t=57098#p1006858)
1. [Tactical Chainsaw](https://www.doomworld.com/idgames/combos/ph_stuff) (works only for mods that have a chainsaw)
1. [UAC Survival Pack](http://www.moddb.com/mods/brutal-doom/addons/pipebombs-for-brutal-doom-v19) (works with everything)
1. [X-Weapon](https://forum.zdoom.org/viewtopic.php?f=43&t=37254#p707405)
1. [Harmony](http://rabotik.nl/harmony.htm)
1. [Doom Delta](https://forum.zdoom.org/viewtopic.php?f=43&t=52262#p912321) (v2.0 11-2-2017)

## Other weapons are supported, but require initial setup

When you load weapon set that is by not supported by Weapon Menu out
of the box, a message will appear with a suggestion to try 'wmauto' script:

1. After you load Weapon Menu with your weapon mod, after the level starts, enter 'wmauto' in console.

2. Relax and wait until the detection process is finished. The script
   will report the progress. Do not do anything while script works,
   even if you think script does strange things or does nothing. Doing
   something will mess up the results.

3. When script is finished, it reloads the level, taking away all
   weapons except starting weapons, so it is wise to run it at the
   start of a new game.

4. Then detected weapon set will be remembered until the new detection
   will be run, so you can play a megawad or a bunch of maps with the
   same weapon mod. Remembered weapon set will be also stored in a
   save. But if you detect one weapon set, save the game with it, then
   detect another weapon set and load first save with first weapon
   set, detection data will only last until new level is started. Then
   you will have to detect again and lose acquired weapons or play
   without the Menu.

5. Detection system has the following limits:
   * no more than 250 weapons in a weapon set.
   * weapon names are composed of internal names, so they may be inaccurate.
   * the script will detect all the weapons that are in a mod (within limits),
     even if they are unobtainable in a game. So it is recommended to use an
     option to hide not acquired weapons.
   * autodetection may have problems with mods that feature weapon upgrades.

## Note for weapon mod developers

If you want Weapon Menu to support your mod out of the box:

* Your mod must have unique player class/actor name.

* Please supply a list of weapons with slots and tags, in order that they should appear in the menu. For example, for standard Doom 2 weapons it would be:

```
| slot | class name     | displayed name  |
|------+----------------+-----------------|
|    1 | Chainsaw       | Chainsaw        |
|    1 | Fist           | Brass Knuckles  |
|    2 | Pistol         | Pistol          |
|    3 | SuperShotgun   | Super Shotgun   |
|    3 | Shotgun        | Shotgun         |
|    4 | Chaingun       | Chaingun        |
|    5 | RocketLauncher | Rocket Launcher |
|    6 | PlasmaRifle    | Plasma Rifle    |
|    7 | BFG9000        | BFG 9000        |
```

* If your mod has weapons that are very rare, or bonus, or secret, they can be marked so to be hidden from the menu until player gets them.

* If you want to test your weapon mod support by yourself, see comments in source/data.acs file.

## Note for HUD developers

Weapon Menu has API: CVar (see cvarinfo.txt) and ZScript (see WeaponMenuInterface.txt), so it can be integrated into your HUD.

## Info

Author: m8f (mmaulwurff@gmail.com)

[GitHub](https://github.com/mmaulwurff/weapons-menu)

[Forum topic](https://forum.zdoom.org/viewtopic.php?f=43&t=59498)

License: CC BY 4.0

Credits:
* WMSWTCH*.wav are from [Freedoom](https://freedoom.github.io/).
  Copyright © 2001-2017 Contributors to the Freedoom project. All rights reserved.
* [Fonts by Jimmy / Agent Spork / Memento Mori 2 Team](https://forum.zdoom.org/viewtopic.php?f=37&t=33409#p632308)
* Thanks to Gutawer and argv for example of ZScript HUD.
