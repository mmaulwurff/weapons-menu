Weapon Selection Menu Mod for GZDoom

Usage:

1. Assign keys (or mouse wheel) in Options -> Customize controls ->
   "Weapon Menu Keys"

2. You can open and close menu manually.

3. Next/previous weapon keys behavior: when Menu is closed, as usual. When Menu
   is opened, scroll available weapons in menu.

4. Number keys behavior: open Menu (if not opened), highlight corresponding
   weapon. Cycle weapons in slot if there is more than one (like SG/SSG).

5. When you close Weapons Menu, highlighted weapon is selected.

6. Weapons Menu does not affect gameplay. When it is opened, you can run, shoot,
   do whatever you want to do. New weapon will be selected only when Menu is
   closed.

Features:
- provides ability to fast weapon selection without using numbers row.

- colors in menu: red - no weapon, blue - available weapon, green - selected.

- built-in support for:
  1. Original weapons
  2. PerK's Smoother Weapon Animations Enhanced
  3. Eriguns: Eriguns1 Standard, Eriguns1 Extended, Eriguns2 (limited)
  4. Beautiful Doom
  5. Final Doomer

- weapon sets are detected by player class. So support for other weapon sets can
  be easily added by modifying weapon-menu.acs:
  1. Increment SETS_NUMBER,
  2. Then add new player class to playerClassNames array,
  3. Then add number of weapons in this weapon set to weaponCounts array,
  4. Then add weapon slot list tot slots array,
  5. Then add list of weapon classes to names array,
  6. Then add list of printable weapon names to printableNames array.
  7. Compile ACS.

Author: m8f (mmaulwurff@gmail.com)

GitHub: https://github.com/mmaulwurff/weapons-menu

License: CC BY 4.0

Version: 0.8

Changelog:
0.1 - initial version.

0.2 - changes:
      added automatic selected weapon detecting no level start;
      added getPrintableWeaponName function for external weapon names.
      added weapon set checking, disable menu if weapons are unknown.
      added smart slot selection.

0.3 - changes:
      added player class detection;
      added some weapon sets support.

0.4 - changes:
      added support for dropping weapons and pistol starter scripts.

0.5 - changes:
      added all 6 Final Doomer weapon sets.

0.6 - changes:
      added handling situation when a weapon can not be selected because it has no ammo.

0.7 - changes:
      added weapon name to 'no ammo' message.

0.8 - changes:
      added Faspons support.
      added HXRTC Project Final Edition (Revised 17 feb 2018) support.
