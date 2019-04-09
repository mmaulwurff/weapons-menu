// initially, weapon holstering was implemented by setting player.PendingWeapon
// to null.
// Some mods (namely, Weapons of Saturn and Accessories to Murder) freeze
// when player's pending weapon is set to null.
// So, not the PendingWeapon is set to a dummy.

class m8f_wm_Holstered : Weapon
{

  Default
  {
    +Weapon.NOALERT;
    +Inventory.UNDROPPABLE;
  }

  States
  {
    Ready:
      TNT1 A 1 A_WeaponReady;
      Wait;

    Select:
      TNT1 A 0 Holster(player);
      TNT1 A 1 A_Raise;
      Wait;

    Deselect:
      TNT1 A 0 Unholster(player);
      Stop;

    Fire:
      Goto Ready;
  }

  // private: //////////////////////////////////////////////////////////////////

  private static void Holster(PlayerInfo player)
  {
    let holstered = m8f_wm_Holstered(player.readyWeapon);
    if (holstered == null) { return; }

    SaveOriginalProperties(holstered, player);

    MaybeSetFov(player);
    MaybeSetSpeed(holstered, player);
  }

  private static void Unholster(PlayerInfo player)
  {
    let holstered = m8f_wm_Holstered(player.readyWeapon);
    if (holstered == null) { return; }

    RestoreOriginalProperties(holstered, player);

    player.mo.A_TakeInventory("m8f_wm_Holstered");
  }

  private static void MaybeSetFov(PlayerInfo player)
  {
    bool fovChangeEnabled = CVar.GetCvar("m8f_wm_HolsterFovEnabled", player).GetInt();
    if (fovChangeEnabled)
    {
      double fovHolstered = CVar.GetCvar("m8f_wm_HolsterFov", player).GetFloat();
      player.SetFov(fovHolstered);
    }
  }

  private static void MaybeSetSpeed(m8f_wm_Holstered holstered, PlayerInfo player)
  {
    double holsterSpeedMultiplier = CVar.GetCvar("M8fWeaponMenuHolsterSpeedMultiplier", player).GetFloat();
    if (holsterSpeedMultiplier != 0.0)
    {
      player.mo.A_SetSpeed(holstered.originalSpeed * holsterSpeedMultiplier);
    }
  }

  private static void SaveOriginalProperties(m8f_wm_Holstered holstered, PlayerInfo player)
  {
    holstered.originalFov   = player.fov;
    holstered.originalSpeed = player.mo.speed;
  }

  private static void RestoreOriginalProperties(m8f_wm_Holstered holstered, PlayerInfo player)
  {
    player.SetFov(holstered.originalFov);
    player.mo.A_SetSpeed(holstered.originalSpeed);
  }

  // private: //////////////////////////////////////////////////////////////////

  private double originalFov;
  private double originalSpeed;

} // class m8f_wm_Holstered
