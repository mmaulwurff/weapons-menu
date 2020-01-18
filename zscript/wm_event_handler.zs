/* Copyright Alexander 'm8f' Kromm (mmaulwurff@gmail.com) 2018-2020
 *
 * This file is a part of Weapon Menu+.
 *
 * Weapon Menu+ is free software: you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option) any later
 * version.
 *
 * Weapon Menu+ is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * Weapon Menu+.  If not, see <https://www.gnu.org/licenses/>.
 */

class wm_EventHandler : EventHandler
{

// public: // EventHandler /////////////////////////////////////////////////////

  override
  void NetworkProcess(ConsoleEvent event)
  {
    if (event.name == "wm_print_info")
    {
      printInfo();
    }
  }

// private: ////////////////////////////////////////////////////////////////////

  private
  void printInfo()
  {
    PlayerInfo player = players[consolePlayer];
    PlayerPawn pawn   = player.mo;

    if (pawn == NULL)
    {
      return;
    }

    String readyWeaponName = "NULL";
    if (player.ReadyWeapon)
    {
      readyWeaponName = player.ReadyWeapon.GetClassName();
    }

    console.printf("Player class: %s\n"
                   "Selected weapon class: %s\n"
                  , pawn.GetClassName()
                  , readyWeaponName
                  );
  }

} // class wm_EventHandler : EventHandler
