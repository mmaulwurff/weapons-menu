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

class WMZscriptHelper play
{

// public: /////////////////////////////////////////////////////////////////////////////////////////

  static
  String TellAmmo(Actor activator, string weaponClass, bool showSecond)
  {
    if (!activator) { return ""; }
    PlayerInfo player = activator.player;
    if (!player) { return ""; }

    Weapon w = Weapon(activator.FindInventory(weaponClass));
    if (!w)
    {
      return "";
    }

    string message = "";

    Ammo amm1 = w.Ammo1;
    if (amm1)
    {
      message = String.Format("%d/%d", amm1.amount, amm1.maxAmount);
    }

    Ammo amm2 = w.Ammo2;
    if (showSecond && amm2 && amm1 != amm2)
    {
      if (message.length() > 0) { message.AppendFormat(" - "); }
      message.AppendFormat("%d/%d", amm2.amount, amm2.maxAmount);
    }

    return message;
  }

  static bool HasAmmo(Actor activator, string weaponClass)
  {
    if (!activator) { return false; }
    PlayerInfo player = activator.player;
    if (!player) { return false; }

    Weapon w = Weapon(activator.FindInventory(weaponClass));
    if (!w)
    {
      return false;
    }

    bool result   = false;
    Ammo amm1     = w.Ammo1;
    Ammo amm2     = w.Ammo2;
    bool hasAmmo1 = (amm1 != NULL);
    bool hasAmmo2 = (amm2 != NULL);

    if (!hasAmmo1 && !hasAmmo2) { result = true; }
    else
    {
      if (hasAmmo1) { result |= (amm1.amount >= w.AmmoUse1) && (amm1.amount > 0); }
      if (hasAmmo2) { result |= (amm2.amount >= w.AmmoUse2) && (amm2.amount > 0); }
    }

    return result;
  }

  static
  bool IsWeaponReady(Actor activator)
  {
    if (!activator) { return false; }
    PlayerInfo player = activator.player;
    if (!player) { return false; }

    return (player.WeaponState & WF_WEAPONREADY)
        || (player.WeaponState & WF_WEAPONREADYALT);
  }

  static
  bool IsWeaponDeselectable(Actor activator)
  {
    if (!activator) { return false; }
    PlayerInfo player = activator.player;
    if (!player) { return false; }

    return player.WeaponState & WF_WEAPONSWITCHOK;
  }

  static
  void FireWeapon(Actor activator)
  {
    if (!activator) { return; }

    PlayerPawn pawn = PlayerPawn(activator);
    pawn.FireWeapon(NULL);
  }

  static
  void FireWeaponAlt(Actor activator)
  {
    if (!activator) { return; }

    PlayerPawn pawn = PlayerPawn(activator);
    pawn.FireWeaponAlt(NULL);
  }

  static
  String GetInventoryList(Actor activator)
  {
    if (!activator) { return ""; }
    let player = activator.player;
    if (!player) { return ""; }

    string inventoryContents = "";
    int nClasses = AllActorClasses.Size();

    for (int i = 0; i < nClasses; ++i)
    {
      let type = (class<Inventory>)(AllActorClasses[i]);
      if (type == NULL) { continue; }

      readonly<Inventory> inv = GetDefaultByType(type);
      if (!inv.bINVBAR || inv.bAUTOACTIVATE) { continue; }

      string className = inv.GetClassName();
      string tag       = m8f_wm_String.Beautify(inv.GetTag());
      inventoryContents.AppendFormat("%s>%s>", className, tag);
    }

    return inventoryContents;
  }

  static
  String GetInventoryTag(Actor activator, string itemClass)
  {
    if (!activator) { return ""; }
    let player = activator.player;
    if (!player) { return ""; }

    class<Inventory> type = itemClass;
    if (!type)
    {
      wm_log.error(String.Format("unknown inventory type: %s", itemClass));
      return "unknown";
    }

    readonly<Inventory> defaultItem = GetDefaultByType(type);
    if (!defaultItem)
    {
      wm_log.error(String.Format("unknown inventory type: %s", itemClass));
      return "unknown";
    }

    return defaultItem.GetTag();
  }

  static
  String GetSelectedInventory(Actor activator)
  {
    if (!activator) { return ""; }
    let player = activator.player;
    if (!player) { return ""; }

    PlayerPawn pawn = PlayerPawn(activator);

    if (pawn && pawn.InvSel != NULL)
    {
      return pawn.InvSel.GetClassName();
    }
    else
    {
      return "wm_none";
    }
  }

  static
  void SetSelectedInventory(Actor activator, string itemClass)
  {
    if (!activator) { return; }

    PlayerPawn pawn = PlayerPawn(activator);
    pawn.InvSel = pawn.FindInventory(itemClass);
  }

  static
  String GetWeaponList(Actor activator)
  {
    if (!activator) { return ""; }
    let player = activator.player;
    if (!player) { return ""; }

    int nClasses = AllActorClasses.Size();

    wm_WeaponInfo info;

    for (int i = 0; i < nClasses; ++i)
    {
      let type = (class<Weapon>)(AllActorClasses[i]);

      if (type == NULL || type == "Weapon") { continue; }

      bool located;
      int  slot;
      int  priority;
      [located, slot, priority] = player.weapons.LocateWeapon(type);

      // List the weapon only if it is set in a weapon slot.
      if (!located) { continue; }

      readonly<Weapon> def = GetDefaultByType(type);
      if (!def.CanPickup(activator)) { continue; }

      string className = type.GetClassName();

      info.push(className, slot, priority);
    }

    sortWeapons(info);

    int    nWeapons   = info.classes.size();
    string weaponData = "";

    for (int i = 0; i < nWeapons; ++i)
    {
      weaponData.AppendFormat("%s>%d>", info.classes[i], info.slots[i]);
    }

    return weaponData;
  }

  static
  String GetWeaponIcon(Actor activator, string weaponClass)
  {
    if (!activator) return "";
    let player = activator.player;
    if (!player) return "";

    weaponClass = weaponClass.makeLower();

    string specialIcon = wm_StaticData.getIcon(weaponClass);
    if (specialIcon.Length() != 0) return specialIcon;

    Weapon w = Weapon(activator.FindInventory(weaponClass));
    if (!w) return placeholder;

    TextureID iconID = w.SpawnState.GetSpriteTexture(0);
    string    icon   = TexMan.GetName(iconID);

    if (icon == "TNT1A0")   { icon = TexMan.GetName(w.icon); }
    if (icon == "TNT1A0")   { icon = placeholder; }
    if (icon == "ALTHUDCF") { icon = placeholder; }

    return icon;
  }

  static
  String GetTag(Actor activator, string classString)
  {
    Class<Actor> c = classString;
    readonly<Actor> a = GetDefaultByType(c);
    return m8f_wm_String.Beautify(a.GetTag());
  }

// private: ////////////////////////////////////////////////////////////////////////////////////////

  private static void sortWeapons(wm_WeaponInfo info)
  {
    int nWeapons = info.classes.size();

    quickSortWeapons(info, 0, nWeapons - 1);
  }

  private static void quickSortWeapons(wm_WeaponInfo info, int lo, int hi)
  {
    if (lo < hi)
    {
      int p = quickSortWeaponsPartition(info, lo, hi);
      quickSortWeapons(info, lo,    p - 1);
      quickSortWeapons(info, p + 1, hi   );
    }
  }

  private static int quickSortWeaponsPartition(wm_WeaponInfo info, int lo, int hi)
  {
    int pivot = measure(info, hi);
    int i     = lo - 1;

    for (int j = lo; j <= hi - 1; ++j)
    {
      if (measure(info, j) > pivot)
      {
        ++i;
        info.swap(i, j);
      }
    }
    info.swap(i + 1, hi);

    return i + 1;
  }

  private static int measure(wm_WeaponInfo info, int i)
  {
    int slot = info.slots[i];
    if (slot == 0) { slot = 99; }

    slot = 99 - slot; // reverse order

    int measure = slot * 100 + info.priorities[i];

    return measure;
  }

  const placeholder = "NOWEAPONOFF";

} // class WMZscriptHelper

struct wm_WeaponInfo
{

// public: /////////////////////////////////////////////////////////////////////////////////////////

  void push(string className, int slot, int priority)
  {
    classes   .push(className);
    slots     .push(slot);
    priorities.push(priority);
  }

  void swap(int i, int j)
  {
    {
      string tmp = classes[i];
      classes[i] = classes[j];
      classes[j] = tmp;
    }
    {
      int tmp  = slots[i];
      slots[i] = slots[j];
      slots[j] = tmp;
    }
    {
      int tmp = priorities[i];
      priorities[i] = priorities[j];
      priorities[j] = tmp;
    }
  }

// public: /////////////////////////////////////////////////////////////////////////////////////////

  Array<string> classes;
  Array<int>    slots;
  Array<int>    priorities;

} // struct wm_WeaponInfo
