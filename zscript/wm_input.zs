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

class wm_Input
{

// public: /////////////////////////////////////////////////////////////////////////////////////////

  static
  wm_Input of(wm_View view, wm_Model model)
  {
    let result = new("wm_Input");

    result.mView  = view;
    result.mModel = model;

    return result;
  }

  void process(String command)
  {
    if (command.Left(3) != "wm_") return;

    command = command.Mid(3);

    if (command == "print_info")
    {
      mView.printInfo();
    }
  }

// private: ////////////////////////////////////////////////////////////////////////////////////////

  private wm_View  mView;
  private wm_Model mModel;

} // class wm_Input
