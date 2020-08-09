/* Copyright Alexander Kromm (mmaulwurff@gmail.com) 2019-2020
 *
 * This file is part of Target Spy.
 *
 * Target Spy is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Target Spy is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Target Spy.  If not, see <https://www.gnu.org/licenses/>.
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

} // class wm_Game
