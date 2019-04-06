
class m8f_wm_InfiniteSlot2AmmoEventHandler : EventHandler
{

  override void NetworkProcess(ConsoleEvent event)
  {
    if (event.name == "m8f_wm_give_min_slot2_ammo") { giveMinSlot2Ammo(); }
  }

// private: ////////////////////////////////////////////////////////////////////

  private static void giveMinSlot2Ammo()
  {
    PlayerInfo player = players[consolePlayer];
    if (player == null) { return; }

    Actor actor = player.mo;
    if (actor == null) { return; }

    Weapon weap = player.ReadyWeapon;
    if (weap == null) { return; }

    bool located;
    int  slot;
    [located, slot] = player.weapons.LocateWeapon(weap.GetClassName());

    if (!located) { return; }

    if (slot != 2) { return; }

    Ammo amm1 = weap.Ammo1;
    int  use  = weap.AmmoUse1;
    if (amm1) { actor.GiveInventory(amm1.GetClassName(), use); }
  }

} // class m8f_wm_InfiniteSlot2AmmoEventHandler
