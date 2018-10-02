class m8f_wm_JunkEventHandler : EventHandler
{

  // Attributes section ////////////////////////////////////////////////////////

  enum PlannedActions
  {
    NOTHING,
    THROW_JUNK,
  }

  private int        _plannedAction;
  private PlayerInfo _player;
  private int        _plannedTime;

  const _planDelay = 5;

  // Overrides section /////////////////////////////////////////////////////////

  override void NetworkProcess(ConsoleEvent event)
  {
    PlayerInfo player = players[event.player];
    if (event.name == "m8f_wm_throw_junk") { planThrowJunk(player); }
  }

  override void WorldTick()
  {
    if (_plannedTime != level.time) { return; }

    switch (_plannedAction)
    {
      case NOTHING: break;

      case THROW_JUNK: throwJunk(); break;

      default: console.printf("WM Warning: Unknown planned action.");
    }
  }

  // Private methods section ///////////////////////////////////////////////////

  private void planThrowJunk(PlayerInfo player)
  {
    if (_plannedAction != NOTHING) { return; }

    _player        = player;
    _plannedAction = THROW_JUNK;
    _plannedTime   = level.time + _planDelay;
  }

  private void throwJunk()
  {
    _plannedAction = NOTHING;

    if (!_player) { return; }

    Actor playerPawn = _player.mo;
    if (!playerPawn) { return; }

    playerPawn.A_PlaySound("wmenu/throw", CHAN_BODY);
    playerPawn.SoundAlert(playerPawn, false);

    double angle      = playerPawn.angle;
    double pitch      = playerPawn.pitch;
    double distance   = 2048.0;
    int    damage     = 0;
    string damageType = "None";
    string puffType   = "WM_JunkPuff";
    int    flags      = LAF_NOIMPACTDECAL;
    playerPawn.LineAttack(angle, distance, pitch, damage, damageType, puffType, flags);
  }

} // class m8f_wm_JunkEventHandler
