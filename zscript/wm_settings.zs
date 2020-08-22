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

class wm_Settings
{

// public: /////////////////////////////////////////////////////////////////////////////////////////

  static
  wm_Settings of()
  {
    let result = new("wm_Settings");

    PlayerInfo player = players[consolePlayer];

    result.mIsAlwaysShowing         = wm_cvar.of("m8fWeaponMenuAlwaysShow"        , player);
    result.mIsShowingBackground     = wm_cvar.of("m8f_wm_ShowBackground"          , player);
    result.mAvailableColor          = wm_cvar.of("m8FAvailableWeaponColor"        , player);
    result.mHighlightedColor        = wm_cvar.of("m8FHighlightedWeaponColor"      , player);
    result.mSelectedWeaponColor     = wm_cvar.of("m8FSelectedWeaponColor"         , player);
    result.mNoAmmoColor             = wm_cvar.of("m8f_wm_NoAmmoColor"             , player);
    result.mDoubleSpaceBetweenSlots = wm_cvar.of("m8f_wm_DoubleSpaceBetweenSlots" , player);
    result.mIsHighToLow             = wm_cvar.of("m8FWeaponMenuHighToLow"         , player);
    result.mAmmoMode                = wm_cvar.of("m8fWeaponMenuShowAmmoCounts"    , player);
    result.mDisplayMode             = wm_cvar.of("m8f_wm_DisplayMode"             , player);
    result.mYStart                  = wm_cvar.of("m8FWeaponMenuYStart"            , player);
    result.mStepMultiplier          = wm_cvar.of("m8FWeaponMenuStepMultiplier"    , player);
    result.mIsShowingIcons          = wm_cvar.of("m8f_wm_ShowIcons"               , player);
    result.mMenuFont                = wm_cvar.of("m8f_wm_font"                    , player);
    result.mSwitchSound             = wm_cvar.of("m8f_wm_SwitchSound"             , player);

    result.mDisplayNameTags         = wm_cvar.of("DisplayNameTags"                , player);
    result.mNameTagColor            = wm_cvar.of("NameTagColor"                   , player);

    result.mIsForcingUniversalMode  = wm_cvar.of("m8f_wm_ForceFallbackMode"       , player);
    result.mIsOpeningOnScroll       = wm_cvar.of("m8fWeaponMenuOpenOnScroll"      , player);
    result.mIsSkippingNoAmmo        = wm_cvar.of("m8f_wm_SkipNoAmmo"              , player);
    result.mIsInstantSwitch         = wm_cvar.of("m8fWeaponMenuInstantSwitch"     , player);
    result.mIsCycleEnabled          = wm_cvar.of("m8f_wm_cycle_enabled"           , player);
    result.mFavoriteWeapon          = wm_cvar.of("m8fWeaponMenuFavoriteWeapon"    , player);
    result.mFavoriteWeaponFireMode  = wm_cvar.of("m8f_wm_FavoriteFireMode"        , player);

    result.mInventoryXStart         = wm_cvar.of("m8f_wm_InventoryMenuX"          , player);
    result.mInventoryYStart         = wm_cvar.of("m8f_wm_InventoryMenuY"          , player);

    return result;
  }

  bool   isAlwaysShowing()         const { return mIsAlwaysShowing.getBool(); }
  bool   isShowingBackground()     const { return mIsShowingBackground.getBool(); }
  int    availableColor()          const { return mAvailableColor.getInt(); }
  int    highlightedColor()        const { return mHighlightedColor.getInt(); }
  int    selectedWeaponColor()     const { return mSelectedWeaponColor.getInt(); }
  int    noAmmoColor()             const { return mNoAmmoColor.getInt(); }
  bool   doubleSpaceBetweenSlots() const { return mDoubleSpaceBetweenSlots.getInt(); }
  bool   isHighToLow()             const { return mIsHighToLow.getBool(); }
  int    ammoMode()                const { return mAmmoMode.getInt(); }
  int    displayMode()             const { return mDisplayMode.getInt(); }
  double yStart()                  const { return mYStart.getDouble(); }
  double stepMultiplier()          const { return mStepMultiplier.getDouble(); }
  bool   isShowingIcons()          const { return mIsShowingIcons.getBool(); }
  String getMenuFont()             const { return mMenuFont.getString(); }
  String switchSound()             const { return mSwitchSound.getString(); }

  bool   isShowingNameTags()       const { return mDisplayNameTags.getInt() >= 2; }
  int    nameTagColor()            const { return mNameTagColor.getInt(); }

  bool   isForcingUniversalMode()  const { return mIsForcingUniversalMode.getBool(); }
  bool   isOpeningOnScroll()       const { return mIsOpeningOnScroll.getBool(); }
  bool   isSkippingNoAmmo()        const { return mIsSkippingNoAmmo.getBool(); }
  bool   isInstantSwitch()         const { return mIsInstantSwitch.getBool(); }
  bool   isClosingAfterUse()       const { return mIsClosingAfterUse.getBool(); }
  bool   isCycleEnabled()          const { return mIsCycleEnabled.getBool(); }
  int    favoriteWeapon()          const { return mFavoriteWeapon.getInt(); }
  int    favoriteWeaponFireMode()  const { return mFavoriteWeaponFireMode.getInt(); }

  double inventoryXStart()         const { return mInventoryXStart.getDouble(); }
  double inventoryYStart()         const { return mInventoryYStart.getDouble(); }

// private: ////////////////////////////////////////////////////////////////////////////////////////

  private wm_cvar mIsAlwaysShowing;
  private wm_cvar mIsShowingBackground;
  private wm_cvar mAvailableColor;
  private wm_cvar mHighlightedColor;
  private wm_cvar mSelectedWeaponColor;
  private wm_cvar mNoAmmoColor;
  private wm_cvar mDoubleSpaceBetweenSlots;
  private wm_cvar mIsHighToLow;
  private wm_cvar mAmmoMode;
  private wm_cvar mDisplayMode;
  private wm_cvar mYStart;
  private wm_cvar mStepMultiplier;
  private wm_cvar mIsShowingIcons;
  private wm_cvar mMenuFont;
  private wm_cvar mSwitchSound;

  private wm_cvar mDisplayNameTags;
  private wm_cvar mNameTagColor;

  private wm_cvar mIsForcingUniversalMode;
  private wm_cvar mIsOpeningOnScroll;
  private wm_cvar mIsSkippingNoAmmo;
  private wm_cvar mIsInstantSwitch;
  private wm_cvar mIsClosingAfterUse;
  private wm_cvar mIsCycleEnabled;
  private wm_cvar mFavoriteWeapon;
  private wm_cvar mFavoriteWeaponFireMode;

  private wm_cvar mInventoryXStart;
  private wm_cvar mInventoryYStart;

} // class wm_Settings

class wm_StaticSettings
{

// public: /////////////////////////////////////////////////////////////////////////////////////////

  static bool   isAlwaysShowing()         { return getSettings().isAlwaysShowing(); }
  static bool   isShowingBackground()     { return getSettings().isShowingBackground(); }
  static int    availableColor()          { return getSettings().availableColor(); }
  static int    highlightedColor()        { return getSettings().highlightedColor(); }
  static int    selectedWeaponColor()     { return getSettings().selectedWeaponColor(); }
  static int    noAmmoColor()             { return getSettings().noAmmoColor(); }
  static bool   doubleSpaceBetweenSlots() { return getSettings().doubleSpaceBetweenSlots(); }
  static bool   isHighToLow()             { return getSettings().isHighToLow(); }
  static int    ammoMode()                { return getSettings().ammoMode(); }
  static int    displayMode()             { return getSettings().displayMode(); }
  static double yStart()                  { return getSettings().yStart(); }
  static double stepMultiplier()          { return getSettings().stepMultiplier(); }
  static bool   isShowingIcons()          { return getSettings().isShowingIcons(); }
  static String getMenuFont()             { return getSettings().getMenuFont(); }
  static String switchSound()             { return getSettings().switchSound(); }

  static bool   isShowingNameTags()       { return getSettings().isShowingNameTags(); }
  static int    nameTagColor()            { return getSettings().nameTagColor(); }

  static bool   isForcingUniversalMode()  { return getSettings().isForcingUniversalMode(); }
  static bool   isOpeningOnScroll()       { return getSettings().isOpeningOnScroll(); }
  static bool   isSkippingNoAmmo()        { return getSettings().isSkippingNoAmmo(); }
  static bool   isInstantSwitch()         { return getSettings().isInstantSwitch(); }
  static bool   isClosingAfterUse()       { return getSettings().isClosingAfterUse(); }
  static bool   isCycleEnabled()          { return getSettings().isCycleEnabled(); }
  static int    favoriteWeapon()          { return getSettings().favoriteWeapon(); }
  static int    favoriteWeaponFireMode()  { return getSettings().favoriteWeaponFireMode(); }

  static double inventoryXStart()         { return getSettings().inventoryXStart(); }
  static double inventoryYStart()         { return getSettings().inventoryYStart(); }

// private: ////////////////////////////////////////////////////////////////////////////////////////

  private static
  wm_Settings getSettings()
  {
    return wm_EventHandler(EventHandler.Find("wm_EventHandler")).getSettings();
  }

} // class wm_StaticSettings
