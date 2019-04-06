// initially, weapon holstering was implemented by setting player.PendingWeapon
// to null.
// Some mods (namely, Weapons of Saturn and Accessories to Murder) freeze
// when player's pending weapon is set to null.
// So, not the PendingWeapon is set to a dummy.

class m8f_wm_Holstered : Weapon
{

  Default
  {
    +WEAPON.NOALERT;
  }

  States
  {
    Ready:
      TNT1 A 1 A_WeaponReady;
      Loop;

    Select:
      TNT1 A 1 A_Raise(999);
      Loop;

    Deselect:
      TNT1 A 1 A_Lower(999);
      Loop;

    Fire:
      Goto Ready;
  }

} // class m8f_wm_Holstered
