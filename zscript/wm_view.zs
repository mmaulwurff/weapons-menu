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

class wm_View ui
{

// public: /////////////////////////////////////////////////////////////////////

  static
  wm_View of(wm_Acs acs, wm_Model model)
  {
    let result = new("wm_View");

    result.mAcs   = acs;
    result.mModel = model;

    return result;
  }

  void show() const
  {
    mAcs.execute("ShowWeaponMenu");
  }

// private: ////////////////////////////////////////////////////////////////////////////////////////

  private wm_Acs   mAcs;
  private wm_Model mModel;

} // class wm_View
