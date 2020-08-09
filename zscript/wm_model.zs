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

class wm_Model play
{

// public: /////////////////////////////////////////////////////////////////////////////////////////

  static
  wm_Model of(wm_Acs acs)
  {
    let result = new("wm_Model");

    result.mAcs = acs;

    result.mAcs.execute1("InitWeaponMenu", wm_Game.getDehackedGameType());

    return result;
  }

  void toggle(bool isClosingWithoutAction)
  {
    mAcs.execute1("ToggleWeaponMenu", isClosingWithoutAction);
  }

  void open()
  {
    mAcs.execute("OpenWeaponMenu");
  }

  void close()
  {
    mAcs.execute("CloseWeaponMenu");
  }

  void openInventory()
  {
    mAcs.execute("WM_OpenInventoryMenu");
  }

  void closeInventory()
  {
    mAcs.execute("WM_CloseInventoryMenu");
  }

  void toggleInventory()
  {
    mAcs.execute("WM_InventoryMenu");
  }

  void toggleQuickInventoryItem()
  {
    mAcs.execute("WM_ToggleQuickInventoryItem");
  }

  void clearQuickInventoryItems()
  {
    mAcs.execute("WM_ClearQuickInventoryItems");
  }

  void useQuickInventoryItem(int itemIndex)
  {
    mAcs.execute1("WM_UseQuickInventoryItem", itemIndex);
  }

  void scrollNext()
  {
    mAcs.execute("scrollnextweapon");
  }

  void scrollPrevious()
  {
    mAcs.execute("scrollpreviousweapon");
  }

  void fireFavorite()
  {
    mAcs.execute("WM_FireFavoriteWeapon");
  }

  void switchBackFromFavorite()
  {
    mAcs.execute("WM_FireFavoriteSwitchBack");
  }

  void markAsFavorite()
  {
    mAcs.execute("WM_MarkWeaponAsFavorite");
  }

  void selectFavorite()
  {
    mAcs.execute("WM_SelectFavoriteWeapon");
  }

  void smartSelect(int slotNumber)
  {
    mAcs.execute1("SmartWeaponSelection", slotNumber);
  }

  void increasePriority()
  {
    mAcs.execute("WM_IncreasePriority");
  }

  void decreasePriority()
  {
    mAcs.execute("WM_IncreaseSlot");
  }

  void decreaseSlot()
  {
    mAcs.execute("WM_DecreaseSlot");
  }

  void applyNewTag()
  {
    mAcs.execute("WM_ApplyTagChange");
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

// private: ////////////////////////////////////////////////////////////////////////////////////////

  private wm_Acs mAcs;

} // class wm_Model
