Weapon Selection Menu Mod for GZDoom

Usage:

1. Assign controls in Options -> Customize controls -> "Weapon Menu Keys".

2. Open Weapons Menu by pressing assigned Smart Selection Keys or Open/Close Menu key.

3. Cycle through the Weapons Menu with Smart Selection Keys or Next/Previous weapon keys.

4. Smart Selection Keys cycle through all the weapons in one slot.

5. If Menu is closed, Next/Previous weapon keys act as standard Next/Previous weapon Keys.

6. Close Weapons Menu, and highlighted weapon is selected.

7. Weapons Menu does not affect gameplay. When it is opened, you can run, shoot, do whatever you want to do. New weapon will be selected only when Menu is closed.

Features:
- provides ability to fast weapon selection even without using number row keys.
- with menu, you see what you are about to select. No more blind weapon choices!
- last used weapon quick access (by assigned key).
- configurable colors and position.
- will work with any HUD.
- autoload safe! If weapon set isn't recognized, standard weapon selection is used.
- API: CVar (cvarinfo) and ZScript (WeaponMenuInterface.txt) for HUD developers.

Has support for:
1. Original weapons

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

Weapon sets are detected by player class. So support for other weapon sets can
be easily added by modifying weapon-menu.acs:
  1. Increment SETS_NUMBER constant,
  2. Then add new player class to "playerClassNames" array,
  3. Then add number of weapons in this weapon set to "weaponCounts" array,
  4. Then add weapon slot list to "slots" array,
  5. Then add list of weapon classes to "names" array,
  6. Then add list of printable weapon names to "printableNames" array.
  7. Compile ACS.

Author: m8f (mmaulwurff@gmail.com)

GitHub: https://github.com/mmaulwurff/weapons-menu

License: CC BY 4.0

Credits:
- click.wav is DSTINK.wav from Freedoom.
  Copyright © 2001-2017 Contributors to the Freedoom project. All rights reserved.
  https://freedoom.github.io/
- Thanks to Gutawer and argv for example of ZScript HUD.

Version: 0.20

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
added Responsive Weapons + Faster Weapon Switching
added "Last Used Weapon" key.
