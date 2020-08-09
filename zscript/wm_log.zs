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

class wm_log
{

  static
  void print(String s)
  {
    Console.Printf("%s", StringTable.Localize(s, false));
  }

  static
  void error(String s)
  {
    Console.Printf("[ERROR] Weapon Menu+: %s.", s);
  }

  static
  void log(String s)
  {
    Console.Printf("[LOG] Weapon Menu+: %s.", s);
  }

  static
  void debug(String s)
  {
    if (NO_DEBUG) return;
    Console.Printf("[DEBUG] Weapon Menu+: %s.", s);
  }

  const NO_DEBUG = 1; // == true

} // class wm_log
