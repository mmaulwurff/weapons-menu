class WM_JunkPuff : BulletPuff
{
  Default
  {
    +BLOODLESSIMPACT;
    +PUFFONACTORS;
    +NOBLOCKMAP;
    +NOGRAVITY;
    -ALLOWPARTICLES;
    +RANDOMIZE;
    RenderStyle "Translucent";
    Alpha 0.5;
    VSpeed 0.2;
    Mass 5;
    XScale 0.25;
    YScale 0.25;
  }

   States
   {
   Spawn:
     TNT1 A 0;
    // Intentional fall-through
   Melee:
     TNT1 A 0 A_SpawnItemEx("WM_Junk");
     WMPF CD 4;
     Stop;
  }
}

class WM_Junk : IceChunk
{
  Default
  {
    Gravity 0.5;
    XScale 0.25;
    YScale 0.25;
  }

  States
  {
  Spawn:
    TNT1 A 0;
    ICEC A 99;
    Stop;
  }
}
