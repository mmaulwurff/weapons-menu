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

  enum State
  {
    STATE_CLOSED         = 3,
    STATE_INVENTORY      = 5,
    STATE_CLOSED_VISIBLE = 6
  }

  static
  wm_Model of(wm_Acs acs, wm_Settings settings, wm_Data data, int playerNumber)
  {
    let result = new("wm_Model");

    result.mAcs      = acs;
    result.mSettings = settings;
    result.mData     = data;
    result.mState    = 0;
    result.mIsOpened = wm_Cvar.of("wm_IsOpened", players[playerNumber]);

    result.mPlayerNumber = playerNumber;

    result.mAcs.execute1("InitWeaponMenu", result.getWeaponSet());

    return result;
  }

  int  getState() const
  {
    return mState;
  }

  void setState(int state)
  {
    mState = state;
  }

  bool isOpened()    const { return mIsOpened.getBool(); }
  bool isInventory() const { return mstate == STATE_INVENTORY; }

  void open()
  {
    mAcs.execute1("ToggleWeaponMenu", true);
  }

  void close()
  {
    mAcs.execute1("ToggleWeaponMenu", true);
  }

  void closeAndSelect()
  {
    mAcs.execute1("ToggleWeaponMenu", false);
  }

  void openInventory()
  {
    if (!isInventory()) toggleInventory();
  }

  void closeInventory()
  {
    if (isInventory()) toggleInventory();
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

    wm_log.print("Quick Inventory Item List is cleared.");
  }

  void useQuickInventoryItem(int itemIndex)
  {
    if (itemIndex >= N_QUICK_INVENTORY_ITEMS) return;

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

  const N_QUICK_INVENTORY_ITEMS = 10;

  private
  int getWeaponSet() const
  {
    return mSettings.isForcingUniversalMode()
      ? wm_Data.SET_FALLBACK
      : mData.getWeaponSet(players[mPlayerNumber].mo.GetClassName());
  }

  private wm_Acs      mAcs;
  private wm_Settings mSettings;
  private wm_Data     mData;
  private wm_Cvar     mIsOpened;
  private int         mPlayerNumber;

  private int     mState;

} // class wm_Model

class wm_StaticModel play
{

// public: /////////////////////////////////////////////////////////////////////////////////////////

  static int getState() { return getModel().getState(); }
  static void setState(int state) { getModel().setState(state); }

// private: ////////////////////////////////////////////////////////////////////////////////////////

  private static
  wm_Model getModel()
  {
    return wm_EventHandler(EventHandler.Find("wm_EventHandler")).getModel();
  }

} // class wm_StaticModel
