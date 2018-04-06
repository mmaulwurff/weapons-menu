Weapon Menu Mod for GZDoom and Zandronum

Features:

1. Allows fast and reliable weapon selection: you see what you are about to select.

2. Works with any HUD.

3. Works with almost any weapon set.

4. Controls in Options -> Customize controls -> "Weapon Menu Keys".

   - Fire/close menu, Alt fire/close menu: if menu is opened, close it.
     If menu is closed, fire.
   - Toggle menu: open and close menu.
   - Next/previous weapon: if menu is opened, cycle through all available weapons.
     If menu is closed, cycles through weapons in standard Doom fashion.
     Option: "Open Menu on Next/Prev": if set to "Yes", menu is opened and
     next/previous weapon is highlighted, but not yet selected.
   - Open weapon menu options: opens options. Especially useful for Zandronum.
   - Last used weapon: select last used weapon.
     This key doesn't care if menu is opened or not.
   - Mark weapon as favorite/Select favorite weapon:
     First, you mark currently selected weapon as favorite with first key.
     Later, you can select it with second key.
   - Weapon slot 1-0: if menu is closed, open it.
     Cycle through all weapons in a slot.
   - Increase weapon priority: for example, if you increase priority of vanilla
     shotgun, single press on "3" will select shotgun instead of SSG.

   Every key bind is optional.

   When you close menu by any means, highlighted weapon becomes selected.

5. Configurable colors, fonts, and positions: Options -> Weapon Menu Options.

   Be sure you adjust menu position, font and text scale in Options to fit your
   screen and weapon set size. Options take effect after menu is reopened.


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

8. Kriegsland: Blutorden (2.3 04/02/18)
   https://forum.zdoom.org/viewtopic.php?f=43&t=57053

9. Complex Doom V27a3
   https://forum.zdoom.org/viewtopic.php?f=43&t=58535

10. Weapons of Saturn (October 31, 2017)
    https://forum.zdoom.org/viewtopic.php?f=43&t=36821

11. Hard-Doom v8.2f
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

22. Freedoom v0.11.3
    https://freedoom.github.io/index.html

23. Smooth Doom (2018-01-13)
    https://forum.zdoom.org/viewtopic.php?f=43&t=45550

24. Trailblazer v1.4b
    https://forum.zdoom.org/viewtopic.php?f=43&t=47494

25. WW-Cola3
    https://forum.zdoom.org/viewtopic.php?f=43&t=55465

26. Netronian Chaos v3
    https://forum.zdoom.org/viewtopic.php?f=43&t=57964

27. The Adventures of Square (Episodes 1-2)
    http://adventuresofsquare.com/


Other weapons are supported, but require initial setup:

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
   - autodetection may have problems with mods that feature weapon upgrades.


Note for weapon mod developers:

1. If you want Weapon Menu to support your mod out of the box, just ask me.

   It will help greatly if your mod uses unique player class/actor name.

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

   Though for better autodetection results it would help if weapon class/actor
   names are meaningful and human readable, and not have special prefix.
   Examples of good names: SuperShotgun, Big_gun, hammer.
   Examples of bad names: Weapon1, autorocketlauncher, MYSUPERGUN, m8f_Shotgun.


Note for HUD developers:

Weapon Menu has API: CVar (see cvarinfo.txt) and ZScript (see WeaponMenuInterface.txt), so it can be integrated into your HUD.

Author: m8f (mmaulwurff@gmail.com)

GitHub: https://github.com/mmaulwurff/weapons-menu

License: CC BY 4.0

Credits:
- click.wav is DSTINK.wav from Freedoom.
  Copyright © 2001-2017 Contributors to the Freedoom project. All rights reserved.
  https://freedoom.github.io/
- Thanks to Gutawer and argv for example of ZScript HUD.

Version: 1.9.
