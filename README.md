# Weapon Menu Plus (mod for GZDoom)

What is Weapon Menu Plus?
* It is an extension for GZDoom weapon and inventory handling capabilities;
* It is universal addon for any mod.

## Features

1. Allows fast and reliable weapon selection: you see what you are about to select.
1. Works with any HUD.
1. Menu for inventory items too!
1. Controls in Options -> Weapon Menu Plus Options -> Controls.

   * Fire/Select: if menu is opened, close it and select weapon. If
     menu is closed, fire. If inventory menu is opened, use highlighted item.
   * Alt fire/close menu: close menu, don't select or use anything.
   * Toggle menu: open menu/close menu and select a weapon.
   * Next/previous: if menu is opened, cycle through available weapons or items.
     If menu is closed, cycles through weapons in standard Doom fashion.
     Option: "Open Menu on Next/Prev": if set to "Yes", menu is opened and
     next/previous weapon is highlighted, but not yet selected.
   * Open weapon menu options: opens options. Especially useful for Zandronum.
   * Last used weapon: select last used weapon.
     This key doesn't care if menu is opened or not.
   * Mark weapon for quick access/Select quick access weapon.
   * Fire quick access weapon:
     Draw quick access weapon, fire it once, and return to previous weapon.
     There is an option for fires mode: fire, altfire and no fire.
   * Weapon slot 1-11: if menu is closed, open it.
     Cycle through all weapons in a slot.
   * Keys for changing weapon order: priority in slot and weapon slot itself.
   * Additional weapon-related keys: holster weapon, zoom, zero-damage hitscan attack ("Throw Junk").
   * Open/close inventory menu.
   * Mark/use quick inventory access items.

   Every key bind is optional. You can always use standard key binds
   if you want vanilla behavior.

1. Configurable colors, fonts, and positions: Options -> Weapon Menu Plus Options.

   Be sure you adjust menu position, font and text scale in Options to
   fit your screen and weapon set size. Options take effect after menu
   is reopened.

## Mod support

Weapon menu supports every possible weapon set. If you find a mod that
doesn't work with Weapon Menu, please report.

## Note for HUD developers

Weapon Menu has API: CVar (see cvarinfo.txt) and ZScript (see WeaponMenuInterface.txt), so it can be integrated into your HUD.

## Info

Author: m8f (mmaulwurff@gmail.com)

[GitHub](https://github.com/mmaulwurff/weapons-menu)

[Forum topic](https://forum.zdoom.org/viewtopic.php?f=43&t=59498)

License: GPLv3 (see copying.txt)

# Credits
* All sounds and puff sprites are from [Freedoom](https://freedoom.github.io/).
  Copyright © 2001-2017 Contributors to the Freedoom project. All rights reserved.
* [Fonts by Jimmy / Agent Spork / Memento Mori 2 Team](https://forum.zdoom.org/viewtopic.php?f=37&t=33409#p632308).
* [Gargoyle Wing Small font by NeuralStunner](https://www.realm667.com/index.php/en/font-press/medieval)
* Brass knuckles sprite is based on sprite from [Final Doomer](https://forum.zdoom.org/viewtopic.php?f=43&t=55061#p973066) by Sgt. Shivers. Original looks much better!
* Heretic staff icon is based on player sprite, so credits to Raven Software.
* Shadow Warrior Tiny font: based on font from Shadow Warrior, compiled into Doom font by Jimmy, provided by Kinsie.

# Thanks
* id Software for Doom.
* Marisa Heit (randi), Christoph Oelckers (Graf Zahl), Braden Obrzut (Blzut3), Rachael Alexanderson, Alexey Lysiuk (_mental_), Magnus Norddahl (dpjudas), Chris Robinson, and all contributors for the ZDoom and GZDoom source ports.
* Gutawer and argv for example of ZScript HUD.
* Blue Shadow, Gez, LordMisfit, Vaecrius, and other contributors to ZDoom Wiki.
* Simon Judd for SLADE3.
* Kinsie for Kinsie's Gameplay Mod Test Map.
* wildweasel, GAA1992, Yholl, Sgt. Shivers, PillowBlaster, and other mod authors for inspiration and awesome weapon and gameplay mods.
* ShockwaveS08, Trusty McLegit, Someone64, WallyTheBoogieBug, RikohZX, namsan, Mere_Duke, Rowsol, and other ZDoom Forum users for valuable feedback and bug reporting.
