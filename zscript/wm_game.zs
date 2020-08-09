/* Copyright Alexander Kromm (mmaulwurff@gmail.com) 2019-2020
 *
 * This file is part of Weapon Menu+.
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

class wm_Game
{

  static
  bool isTitlemap()
  {
    bool isTitlemap = (level.mapname == "TITLEMAP");
    return isTitlemap;
  }

  static
  bool isRekkr()
  {
    return (Wads.FindLump("REKCREDS") != -1);
  }

  static
  bool isAbortM()
  {
    return isExistingClass("AbortButton");
  }

  static
  bool isCyanDoom()
  {
    return isExistingClass("STMinigun")
        && isExistingClass("Daedabus")
        && isExistingClass("VitalitySerum");
  }

// private: ////////////////////////////////////////////////////////////////////////////////////////

  static
  bool isExistingClass(String className)
  {
    Class c = className;
    return (c != NULL);
  }

} // class wm_Game
