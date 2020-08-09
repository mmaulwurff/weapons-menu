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

class wm_View
{

// public: /////////////////////////////////////////////////////////////////////

  static
  wm_View of()
  {
    if (wm_Game.isTitlemap())
    {
      return NULL;
    }

    let result = new("wm_View");

    let player = players[consolePlayer].mo;
    if (player == NULL) { return NULL; }

    int dehackedGameType = wm_Game.getDehackedGameType();
    result.executeACS1(player, "InitWeaponMenu", dehackedGameType);

    return result;
  }

  void printInfo() const
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

    wm_log.log(String.Format( "player class: %s, selected weapon class: %s"
                            , pawn.GetClassName()
                            , readyWeaponName
                            ));
  }

  void show() const
  {
    let player = players[consolePlayer].mo;
    if (player == NULL) { return; }

    executeACS(player, "ShowWeaponMenu");
  }

// private: ////////////////////////////////////////////////////////////////////

  /**
   * Temporary hack co circumvent scoping.
   */
  private play
  void executeACS(Actor a, String script) const
  {
    a.ACS_NamedExecute(script);
  }

  private play
  void executeACS1(Actor a, String script, int n) const
  {
    a.ACS_NamedExecute(script, 0, n);
  }

} // class wm_View
