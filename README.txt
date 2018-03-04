Weapon Menu Mod for GZDoom and Zandronum

Usage:

1. Assign controls in Options -> Customize controls -> "Weapon Menu Keys".

2. Open Weapons Menu by pressing assigned Smart Selection Keys or Open/Close Menu key.

3. Cycle through the Weapons Menu with Smart Selection Keys or Next/Previous weapon keys.

4. Smart Selection Keys cycle through all the weapons in one slot.

5. If Menu is closed, Next/Previous weapon keys act as standard Next/Previous weapon Keys.

6. Close Weapons Menu, and highlighted weapon is selected.

7. Weapons Menu does not affect gameplay. When it is opened, you can run, shoot, do whatever you want to do. New weapon will be selected only when Menu is closed.

8. Be sure you adjust menu position, font and text scale in Options to fit your screen and weapon set size.
   Some options take effect only after Options are closed.

Features:
- provides ability to fast weapon selection even without using number row keys.
- with menu, you see what you are about to select. No more blind weapon choices!
- last used weapon quick access (by assigned key).
- configurable colors, fonts, and positions.
- works with any HUD.
- autoload safe! If weapon set isn't recognized, standard weapon selection is used.
- secret weapons that appear in Menu only when you have them (some mods).
- works with almost any weapon set.
- API: CVar (cvarinfo) and ZScript (WeaponMenuInterface.txt) for HUD developers.

Weapon Menu has two types of weapon support:
1. Out of the box. You load the weapon mod with Menu, it works right away.
2. Autodetected. You load the weapon mod with Menu, you run setup (see below),
   then Menu works.

Weapon Menu supports the following weapons out of the box:

1. Original Doom 2 weapons

2. PerK's Smoother Weapon Animations Enhanced
   https://forum.zdoom.org/viewtopic.php?f=43&t=32628

3. Eriguns: Eriguns1 Standard, Eriguns1 Extended, Eriguns2 (limited)
   https://forum.zdoom.org/viewtopic.php?f=43&t=48208

4. Beautiful Doom 6.3.0
   https://forum.zdoom.org/viewtopic.php?f=43&t=50004

5. Final Doomer 2.4
   https://forum.zdoom.org/viewtopic.php?f=43&t=55061

6. Faspons (Feb 24)
   https://forum.zdoom.org/viewtopic.php?f=43&t=48985

7. HXRTC Project Final Edition (Revised 17 feb 2018)
   https://forum.zdoom.org/viewtopic.php?f=43&t=48074

8. Kriegsland: Blutordnung (2.3 04/02/18)
   https://forum.zdoom.org/viewtopic.php?f=43&t=57053

9. Complex Doom V27a3
   https://forum.zdoom.org/viewtopic.php?f=43&t=58535

10. Weapons of Saturn (October 31, 2017)
    https://forum.zdoom.org/viewtopic.php?f=43&t=36821

11. Hard-Doom v8.1.1
    https://forum.zdoom.org/viewtopic.php?f=43&t=45145

12. Heretic IWAD weapons (not tested)

13. Chex Quest (Single Player)

14. Strife weapons (not tested)

15. Argent (v0.5.3)
    https://forum.zdoom.org/viewtopic.php?f=43&t=52363

16. Doom 64 'weapons only' wad by Nevander (updated 5-29-2016) X version
    https://forum.zdoom.org/viewtopic.php?f=43&t=51596

17. Responsive Weapons + Faster Weapon Switching
    https://forum.zdoom.org/viewtopic.php?f=19&t=38235

18. Dead Marine (v0.9.3)
    https://forum.zdoom.org/viewtopic.php?f=43&t=58521

19. Parkour v1.1
    https://forum.zdoom.org/viewtopic.php?f=43&t=26057

20. Brutal Doom v21 (test feb24)
    http://www.moddb.com/mods/brutal-doom/downloads/brutal-doom-v21-beta

21. Combined Arms v1.0
    https://forum.zdoom.org/viewtopic.php?f=43&t=51066


Other weapons are supported, but required initial setup:

When you load weapon set that is by Weapon Menu out of the box, a
message will appear with a suggestion to try Autodetection. To autodetect
weapons:

1. After you load Weapon Menu with your weapon mod, after the level starts,
   enter 'wmauto' in console.

2. Relax for 2 minutes and watch while the script cycles over all of the
   weapons in your weapon set. Do not do anything while script works, even if you
   think script does nothing. Doing something will mess up the results.

3. When script is finished, it reloads the level, taking away all weapons except
   starting weapons, so it is wise to run it at the start of a new game.

4. Then autodetected weapon set will be remembered until the new autodetection
   will be run, so you can play a megawad or a bunch of maps with the same
   weapon mod. Remembered weapon set will be also stored in a save. But if you
   autodetect one weapon set, save the game with it, then autodetect another
   weapon set and load first save with first weapon set, autodetection data will
   only last until new level is started. Then you will have to autodetect again
   and lose acquired weapons or play without the Menu.

5. Autodetection system has the following limits:
   - no more than 50 weapons in a weapon set.
   - no more than 6 weapons in one slot.
   - weapon names are composed of internal names, so they may be a bit inaccurate.
   - autodetection will detect all the weapons that are in a mod (within limits),
     even if they are unobtainable in a game. So it is recommended to use an
     option to hide not acquired weapons.


Note for weapon mod developers:

1. If you want Weapon Menu to support your mod out of the box, just ask me.

   It will help greatly if your mod uses unique player class/actor
   name. Please do not use one of reserved class names (DoomPlayer,
   PerkDPlayer, EriPlayer, AltPlayer, HellPlayer, BD_DoomPlayer,
   FDPlutPlayer, FDTNTPlayer, FDDoom2Player, FDAliensPlayer,
   FDJPCPPlayer, FDBTSXPlayer, FasPlayer, HXRTCPlayer, FKPlayer,
   ComplexDoomPlayer, SaturnPlayer, DoomMarine, HereticPlayer,
   ChexPlayer, StrifePlayer, ArgPlayer, 64DoomPlayer, DoomPlayerFixed,
   Xplayer, ParkourPlayer, Autodetected, Purist, BDoomer, Doomer2,
   TacticalDoomer, CollabWeaponGuy).

   Also it would help if you supply a list of weapons class/actor
   names, in order that they should appear in the menu, with
   corresponding slots. For example, for standard Doom 2 weapons it
   would be: 1 - Chainsaw, 1 - Fist, 2 - Pistol, 3 - SuperShotgun, 3 -
   Shotgun, 4 - Chaingun, 5 - RocketLauncher, 6 - PlasmaRifle, 7 -
   BFG9000.

   It would be great if you will also provide a list of weapon names too.

   If your mod has weapons that are very rare, or bonus, or secret, they can be
   marked to be hidden from the menu until player gets them.

2. If you want Weapon Menu to support your mod with Autodetection: there is
   high probability that it already is supported!

   Though for better autodetection results it would help if weapon
   class/actor names are meaningful and human readable, and not have
   special prefix. Examples of good names: SuperShotgun, Big_gun,
   hammer. Examples of bad names: Weapon1, autorocketlauncher,
   MYSUPERGUN, m8f_Shotgun.


Author: m8f (mmaulwurff@gmail.com)

GitHub: https://github.com/mmaulwurff/weapons-menu

License: CC BY 4.0

Credits:
- click.wav is DSTINK.wav from Freedoom.
  Copyright © 2001-2017 Contributors to the Freedoom project. All rights reserved.
  https://freedoom.github.io/
- Thanks to Gutawer and argv for example of ZScript HUD.

Version: 1.0

Changelog:
0.1: initial version.
0.2: added automatic selected weapon detecting on level start
added getPrintableWeaponName function for external weapon names.
added weapon set checking, disable menu if weapons are unknown.
added smart slot selection.
0.3: added player class detection; added some weapon sets support.
0.4: added support for dropping weapons and pistol starter scripts.
0.5: added all 6 Final Doomer weapon sets.
0.6: added handling situation when a weapon can not be selected because it has no ammo.
0.7: added weapon name to 'no ammo' message.
0.8: added Faspons and HXRTC Project support.
0.9: added Kriegsland: Blutordnung support.
0.10: added Complex Doom V27a3 support.
0.11: added Weapons of Saturn support.
0.12: added Hard-Doom support.
0.13: added menu colors and position options.
0.14: added menu slot order option.
added Heretic support.
added resorting to standard weapon selection on unknown weapon sets.
0.15: added Chex Quest (Single Player) weapons.
0.16: added Strife weapons.
added option to show/hide not acquired weapons.
0.17: added option to show slot number on left or right side.
added optional highlighting of currently selected weapon.
0.18: added CVar and ZScript API.
0.19: added optional sound on selecting new weapon in menu.
Sound can be set or disabled via ZScript API too.
added Argent 0.5.3 support.
0.20: added Doom 64 'weapons only' by Nevander X version.
added Responsive Weapons + Faster Weapon Switching.
added "Last Used Weapon" key.
0.21: added Dead Marine weapons.
added font options.
bugfixes.
0.22: added Parkour, Combined Arms, and Brutal Doom.
added secret weapon feature (Parkour, Combined Arms and Brutal Doom have them).
added Autodetection System
added menu step multiplier option
1.0: add show/hide weapon names option.
minor fixes.
