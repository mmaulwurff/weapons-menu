class m8f_wm_Data : Thinker
{

  m8f_wm_StringMap icons;

  static m8f_wm_Data get()
  {
    let it = ThinkerIterator.Create("m8f_wm_Data", STAT_INFO);
    let p  = m8f_wm_Data(it.Next());

    if (p != null) { return p; }
    else           { return new("m8f_wm_Data").init(); }
  }

  m8f_wm_Data init()
  {
    icons = new("m8f_wm_StringMap");

    icons.push("abortbutton"            , "nutpa0_off"  );
    icons.push("argfist"                , "wmbrassoff"  );
    icons.push("artifact"               , "bskla0"      );
    icons.push("bd_chainsaw"            , "csawa0"      );
    icons.push("bd_fist"                , "wmbrassoff"  );
    icons.push("cfsfists"               , "wmbrassoff"  );
    icons.push("cynetikstrikercannon"   , "csgiconoff"  );
    icons.push("d3ps"                   , "pista0"      );
    icons.push("darkmattergun"          , "dmgiconoff"  );
    icons.push("det_pipebomb"           , "scdsa0"      );
    icons.push("det_satchelcharge"      , "pdeta0"      );
    icons.push("doubleknuckles"         , "wmbrassoff"  );
    icons.push("erifist"                , "wmbrassoff"  );
    icons.push("fdaliensbfg9000"        , "abfgz0"      );
    icons.push("fdalienschaingun"       , "achgz0"      );
    icons.push("fdalienschainsaw"       , "asawz0"      );
    icons.push("fdaliensfist"           , "afisz0"      );
    icons.push("fdalienspistol"         , "apisz0"      );
    icons.push("fdaliensplasmarifle"    , "aplaz0"      );
    icons.push("fdaliensrocketlauncher" , "arokz0"      );
    icons.push("fdaliensshotgun"        , "ashtz0"      );
    icons.push("fdalienssupershotgun"   , "assgz0"      );
    icons.push("fdbtsxbfg9000"          , "xbfgz0"      );
    icons.push("fdbtsxchaingun"         , "xchgz0"      );
    icons.push("fdbtsxchainsaw"         , "xsawz0"      );
    icons.push("fdbtsxfist"             , "xfisz0"      );
    icons.push("fdbtsxpistol"           , "xpisz0"      );
    icons.push("fdbtsxplasmarifle"      , "xplaz0"      );
    icons.push("fdbtsxrocketlauncher"   , "xrokz0"      );
    icons.push("fdbtsxshotgun"          , "xshtz0"      );
    icons.push("fdbtsxsupershotgun"     , "xssgz0"      );
    icons.push("fddoom2bfg9000"         , "dbfgz0"      );
    icons.push("fddoom2chaingun"        , "dchgz0"      );
    icons.push("fddoom2chainsaw"        , "dsawz0"      );
    icons.push("fddoom2fist"            , "dfisz0"      );
    icons.push("fddoom2pistol"          , "dpisz0"      );
    icons.push("fddoom2plasmarifle"     , "dplaz0"      );
    icons.push("fddoom2rocketlauncher"  , "drokz0"      );
    icons.push("fddoom2shotgun"         , "dshtz0"      );
    icons.push("fddoom2supershotgun"    , "dssgz0"      );
    icons.push("fdjpcpbfg9000"          , "jbfgz0"      );
    icons.push("fdjpcpchaingun"         , "jchgz0"      );
    icons.push("fdjpcpfist"             , "jfisz0"      );
    icons.push("fdjpcppistol"           , "jpisz0"      );
    icons.push("fdjpcpplasmarifle"      , "jplaz0"      );
    icons.push("fdjpcprocketlauncher"   , "jrokz0"      );
    icons.push("fdjpcpshotgun"          , "jshtz0"      );
    icons.push("fdjpcpsupershotgun"     , "jssgz0"      );
    icons.push("fdplutbfg9000"          , "pbfgz0"      );
    icons.push("fdplutchaingun"         , "pchgz0"      );
    icons.push("fdplutchainsaw"         , "psawz0"      );
    icons.push("fdplutfist"             , "pfisz0"      );
    icons.push("fdplutpistol"           , "ppisz0"      );
    icons.push("fdplutplasmarifle"      , "pplaz0"      );
    icons.push("fdplutrocketlauncher"   , "prokz0"      );
    icons.push("fdplutshotgun"          , "pshtz0"      );
    icons.push("fdplutsupershotgun"     , "pssgz0"      );
    icons.push("fdtntbfg9000"           , "tbfgz0"      );
    icons.push("fdtntchaingun"          , "tchgz0"      );
    icons.push("fdtntchainsaw"          , "tsawz0"      );
    icons.push("fdtntfist"              , "tfisz0"      );
    icons.push("fdtntpistol"            , "tpisz0"      );
    icons.push("fdtntplasmarifle"       , "tplaz0"      );
    icons.push("fdtntrocketlauncher"    , "trokz0"      );
    icons.push("fdtntshotgun"           , "tshtz0"      );
    icons.push("fdtntsupershotgun"      , "tssgz0"      );
    icons.push("fist"                   , "wmbrassoff"  );
    icons.push("fists"                  , "wmbrassoff"  );
    icons.push("fistfixed"              , "wmbrassoff"  );
    icons.push("fkfist"                 , "wmbrassoff"  );
    icons.push("knuckles"               , "wmbrassoff"  );
    icons.push("lewd"                   , "finga0_off"  );
    icons.push("melee"                  , "wmbrassoff"  );
    icons.push("perkfist"               , "wmbrassoff"  );
    icons.push("pkfist"                 , "wmbrassoff"  );
    icons.push("pumpshotgun"            , "kssga0"      );
    icons.push("q3bfg10k"               , "bfgiconoff"  );
    icons.push("q3chaingun"             , "cgiconoff"   );
    icons.push("q3gauntlet"             , "gticonoff"   );
    icons.push("q3grenadelauncher"      , "gliconoff"   );
    icons.push("q3lightninggun"         , "lgiconoff"   );
    icons.push("q3machinegun"           , "mgiconoff"   );
    icons.push("q3nailgun"              , "ngiconoff"   );
    icons.push("q3plasmagun"            , "pgiconoff"   );
    icons.push("q3railgun"              , "rgiconoff"   );
    icons.push("q3rocketlauncher"       , "rliconoff"   );
    icons.push("q3shotgun"              , "sgiconoff"   );
    icons.push("qlheavymachinegun"      , "hmgiconoff"  );
    icons.push("staff"                  , "wmstaff_off" );
    icons.push("trakioncannon"          , "trkiconoff"  );
    icons.push("weapon_357"             , "hpkup102off" );
    icons.push("weapon_9mmar"           , "hpkup103off" );
    icons.push("weapon_crossbow"        , "hpkup109off" );
    icons.push("weapon_crowbar"         , "hpkup100off" );
    icons.push("weapon_egon"            , "hpkup112off" );
    icons.push("weapon_gauss"           , "hpkup111off" );
    icons.push("weapon_glock"           , "hpkup101off" );
    icons.push("weapon_handgrenade"     , "hpkup105off" );
    icons.push("weapon_hornetgun"       , "hpkup113off" );
    icons.push("weapon_rpg"             , "hpkup110off" );
    icons.push("weapon_satchel"         , "hpkup106off" );
    icons.push("weapon_shotgun"         , "hpkup104off" );
    icons.push("weapon_snark"           , "hpkup108off" );
    icons.push("weapon_tripmine"        , "hpkup107off" );
    icons.push("xtremefist"             , "wmbrassoff"  );
    icons.push("xtremesaw"              , "csawa0"      );
    icons.push("z-gun"                  , "hxzgunoff"   );
    icons.push("chainsaw_rekkr"         , "csawa0"      );
    icons.push("plasmarifle_rekkr"      , "plasa0"      );
    icons.push("bfg9000_rekkr"          , "bfuga0"      );
    icons.push("rocketlauncher_rekkr"   , "launa0"      );
    icons.push("chaingun_rekkr"         , "mguna0"      );
    icons.push("shotgun_rekkr"          , "shota0"      );
    icons.push("pistol_rekkr"           , "wmrbow_off"  );
    icons.push("fist_rekkr"             , "wmrfists_off");
    icons.push("64_fist"                , "wmbrassoff"  );
    icons.push("punchdagger"            , "wmdagger_off");
    icons.push("mantisbunker"           , "mbpua0"      );
    icons.push("bmssg"                  , "bsgpa0"      );
    icons.push("bmshotgun"              , "bspua0"      );
    icons.push("bmmachinegun"           , "dfmga0"      );
    icons.push("bmgrenader"             , "ggpua0"      );
    icons.push("bmplasmagun"            , "bmpla0"      );
    icons.push("dergfist"               , "wm_guncaster_knuckles");
    icons.push("bayonette"              , "baygz0"      );
    icons.push("64fist"                 , "wm_doom_64_fist");
    icons.push("rlfist"                 , "wm_drla_unarmed");

    return self;
  }

} // class m8f_wm_Data
