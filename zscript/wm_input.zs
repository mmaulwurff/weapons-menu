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

class wm_Input play
{

// public: /////////////////////////////////////////////////////////////////////////////////////////

  static
  wm_Input of(wm_Model model)
  {
    let result = new("wm_Input");
    result.mModel = model;
    return result;
  }

  void process(String commandLine)
  {
    if (commandLine.Left(3) != "wm_") return;

    Array<String> commandLineParts;
    commandLine.split(commandLineParts, ":");
    String command = commandLineParts[0].Mid(3);

    if      (command == "toggle"           ) mModel.toggle(commandLineParts[1].toInt());
    else if (command == "open"             ) mModel.open();
    else if (command == "close"            ) mModel.close();
    else if (command == "scroll_next"      ) mModel.scrollNext();
    else if (command == "scroll_previous"  ) mModel.scrollPrevious();
    else if (command == "smart_select"     ) mModel.smartSelect(commandLineParts[1].toInt());

    else if (command == "toggle_inventory" ) mModel.toggleInventory();
    else if (command == "open_inventory"   ) mModel.openInventory();
    else if (command == "close_inventory"  ) mModel.closeInventory();

    else if (command == "toggle_quick_inv" ) mModel.toggleQuickInventoryItem();
    else if (command == "clear_quick_inv"  ) mModel.clearQuickInventoryItems();
    else if (command == "use_quick_inv"    ) mModel.useQuickInventoryItem(commandLineParts[1].toInt());

    else if (command == "fire_favorite"    ) mModel.fireFavorite();
    else if (command == "favorite_back"    ) mModel.switchBackFromFavorite();
    else if (command == "mark_favorite"    ) mModel.markAsFavorite();
    else if (command == "select_favorite"  ) mModel.selectFavorite();

    else if (command == "increase_priority") mModel.increasePriority();
    else if (command == "decrease_priority") mModel.decreasePriority();
    else if (command == "decrease_slot"    ) mModel.decreaseSlot();
    else if (command == "apply_new_tag"    ) mModel.applyNewTag();

    else if (command == "print_info"       ) mModel.printInfo();
  }

// private: ////////////////////////////////////////////////////////////////////////////////////////

  private wm_Model mModel;

} // class wm_Input
