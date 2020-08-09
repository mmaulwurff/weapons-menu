/* Copyright Alexander 'm8f' Kromm (mmaulwurff@gmail.com) 2020
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

/**
 * Temporary class for ZScript to ACS transition.
 *
 * This uses play ... const hack to circumvent scoping.
 */
class wm_Acs play
{

// public: /////////////////////////////////////////////////////////////////////////////////////////

  static
  wm_Acs of(int playerNumber)
  {
    let result = new("wm_Acs");
    result.mPlayer = players[playerNumber];
    return result;
  }

  void execute(String script) const
  {
    if (mPlayer.mo) mPlayer.mo.ACS_NamedExecute(script);
  }

  void execute1(String script, int parameter) const
  {
    if (mPlayer.mo) mPlayer.mo.ACS_NamedExecute(script, NO_MAP, parameter);
  }

// private: ////////////////////////////////////////////////////////////////////////////////////////

  const NO_MAP = 0;

  private PlayerInfo mPlayer;

} // class wm_Acs
