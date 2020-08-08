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

class m8f_wm_Data : Thinker
{

// public: /////////////////////////////////////////////////////////////////////

  Dictionary icons;

  static
  m8f_wm_Data get()
  {
    let it = ThinkerIterator.Create("m8f_wm_Data", STAT_INFO);
    let p  = m8f_wm_Data(it.Next());

    if (p != null) { return p; }
    else           { return new("m8f_wm_Data").init(); }
  }

  m8f_wm_Data init()
  {
    icons = Dictionary.Create();

    icons.Insert("abortbutton"            , "nutpa0_off"  );
    icons.Insert("argfist"                , "wmbrassoff"  );
    icons.Insert("artifact"               , "bskla0"      );
    icons.Insert("bd_chainsaw"            , "csawa0"      );
    icons.Insert("bd_fist"                , "wmbrassoff"  );
    icons.Insert("cfsfists"               , "wmbrassoff"  );
    icons.Insert("cynetikstrikercannon"   , "csgiconoff"  );
    icons.Insert("d3ps"                   , "pista0"      );
    icons.Insert("darkmattergun"          , "dmgiconoff"  );
    icons.Insert("det_pipebomb"           , "scdsa0"      );
    icons.Insert("det_satchelcharge"      , "pdeta0"      );
    icons.Insert("doubleknuckles"         , "wmbrassoff"  );
    icons.Insert("erifist"                , "wmbrassoff"  );
    icons.Insert("fdaliensbfg9000"        , "abfgz0"      );
    icons.Insert("fdalienschaingun"       , "achgz0"      );
    icons.Insert("fdalienschainsaw"       , "asawz0"      );
    icons.Insert("fdaliensfist"           , "afisz0"      );
    icons.Insert("fdalienspistol"         , "apisz0"      );
    icons.Insert("fdaliensplasmarifle"    , "aplaz0"      );
    icons.Insert("fdaliensrocketlauncher" , "arokz0"      );
    icons.Insert("fdaliensshotgun"        , "ashtz0"      );
    icons.Insert("fdalienssupershotgun"   , "assgz0"      );
    icons.Insert("fdbtsxbfg9000"          , "xbfgz0"      );
    icons.Insert("fdbtsxchaingun"         , "xchgz0"      );
    icons.Insert("fdbtsxchainsaw"         , "xsawz0"      );
    icons.Insert("fdbtsxfist"             , "xfisz0"      );
    icons.Insert("fdbtsxpistol"           , "xpisz0"      );
    icons.Insert("fdbtsxplasmarifle"      , "xplaz0"      );
    icons.Insert("fdbtsxrocketlauncher"   , "xrokz0"      );
    icons.Insert("fdbtsxshotgun"          , "xshtz0"      );
    icons.Insert("fdbtsxsupershotgun"     , "xssgz0"      );
    icons.Insert("fddoom2bfg9000"         , "dbfgz0"      );
    icons.Insert("fddoom2chaingun"        , "dchgz0"      );
    icons.Insert("fddoom2chainsaw"        , "dsawz0"      );
    icons.Insert("fddoom2fist"            , "dfisz0"      );
    icons.Insert("fddoom2pistol"          , "dpisz0"      );
    icons.Insert("fddoom2plasmarifle"     , "dplaz0"      );
    icons.Insert("fddoom2rocketlauncher"  , "drokz0"      );
    icons.Insert("fddoom2shotgun"         , "dshtz0"      );
    icons.Insert("fddoom2supershotgun"    , "dssgz0"      );
    icons.Insert("fdjpcpbfg9000"          , "jbfgz0"      );
    icons.Insert("fdjpcpchaingun"         , "jchgz0"      );
    icons.Insert("fdjpcpfist"             , "jfisz0"      );
    icons.Insert("fdjpcppistol"           , "jpisz0"      );
    icons.Insert("fdjpcpplasmarifle"      , "jplaz0"      );
    icons.Insert("fdjpcprocketlauncher"   , "jrokz0"      );
    icons.Insert("fdjpcpshotgun"          , "jshtz0"      );
    icons.Insert("fdjpcpsupershotgun"     , "jssgz0"      );
    icons.Insert("fdplutbfg9000"          , "pbfgz0"      );
    icons.Insert("fdplutchaingun"         , "pchgz0"      );
    icons.Insert("fdplutchainsaw"         , "psawz0"      );
    icons.Insert("fdplutfist"             , "pfisz0"      );
    icons.Insert("fdplutpistol"           , "ppisz0"      );
    icons.Insert("fdplutplasmarifle"      , "pplaz0"      );
    icons.Insert("fdplutrocketlauncher"   , "prokz0"      );
    icons.Insert("fdplutshotgun"          , "pshtz0"      );
    icons.Insert("fdplutsupershotgun"     , "pssgz0"      );
    icons.Insert("fdtntbfg9000"           , "tbfgz0"      );
    icons.Insert("fdtntchaingun"          , "tchgz0"      );
    icons.Insert("fdtntchainsaw"          , "tsawz0"      );
    icons.Insert("fdtntfist"              , "tfisz0"      );
    icons.Insert("fdtntpistol"            , "tpisz0"      );
    icons.Insert("fdtntplasmarifle"       , "tplaz0"      );
    icons.Insert("fdtntrocketlauncher"    , "trokz0"      );
    icons.Insert("fdtntshotgun"           , "tshtz0"      );
    icons.Insert("fdtntsupershotgun"      , "tssgz0"      );
    icons.Insert("fist"                   , "wmbrassoff"  );
    icons.Insert("fists"                  , "wmbrassoff"  );
    icons.Insert("fistfixed"              , "wmbrassoff"  );
    icons.Insert("fkfist"                 , "wmbrassoff"  );
    icons.Insert("knuckles"               , "wmbrassoff"  );
    icons.Insert("lewd"                   , "finga0_off"  );
    icons.Insert("melee"                  , "wmbrassoff"  );
    icons.Insert("perkfist"               , "wmbrassoff"  );
    icons.Insert("pkfist"                 , "wmbrassoff"  );
    icons.Insert("pumpshotgun"            , "kssga0"      );
    icons.Insert("q3bfg10k"               , "bfgiconoff"  );
    icons.Insert("q3chaingun"             , "cgiconoff"   );
    icons.Insert("q3gauntlet"             , "gticonoff"   );
    icons.Insert("q3grenadelauncher"      , "gliconoff"   );
    icons.Insert("q3lightninggun"         , "lgiconoff"   );
    icons.Insert("q3machinegun"           , "mgiconoff"   );
    icons.Insert("q3nailgun"              , "ngiconoff"   );
    icons.Insert("q3plasmagun"            , "pgiconoff"   );
    icons.Insert("q3railgun"              , "rgiconoff"   );
    icons.Insert("q3rocketlauncher"       , "rliconoff"   );
    icons.Insert("q3shotgun"              , "sgiconoff"   );
    icons.Insert("qlheavymachinegun"      , "hmgiconoff"  );
    icons.Insert("staff"                  , "wmstaff_off" );
    icons.Insert("trakioncannon"          , "trkiconoff"  );
    icons.Insert("weapon_357"             , "hpkup102off" );
    icons.Insert("weapon_9mmar"           , "hpkup103off" );
    icons.Insert("weapon_crossbow"        , "hpkup109off" );
    icons.Insert("weapon_crowbar"         , "hpkup100off" );
    icons.Insert("weapon_egon"            , "hpkup112off" );
    icons.Insert("weapon_gauss"           , "hpkup111off" );
    icons.Insert("weapon_glock"           , "hpkup101off" );
    icons.Insert("weapon_handgrenade"     , "hpkup105off" );
    icons.Insert("weapon_hornetgun"       , "hpkup113off" );
    icons.Insert("weapon_rpg"             , "hpkup110off" );
    icons.Insert("weapon_satchel"         , "hpkup106off" );
    icons.Insert("weapon_shotgun"         , "hpkup104off" );
    icons.Insert("weapon_snark"           , "hpkup108off" );
    icons.Insert("weapon_tripmine"        , "hpkup107off" );
    icons.Insert("xtremefist"             , "wmbrassoff"  );
    icons.Insert("xtremesaw"              , "csawa0"      );
    icons.Insert("z-gun"                  , "hxzgunoff"   );
    icons.Insert("chainsaw_rekkr"         , "csawa0"      );
    icons.Insert("plasmarifle_rekkr"      , "plasa0"      );
    icons.Insert("bfg9000_rekkr"          , "bfuga0"      );
    icons.Insert("rocketlauncher_rekkr"   , "launa0"      );
    icons.Insert("chaingun_rekkr"         , "mguna0"      );
    icons.Insert("shotgun_rekkr"          , "shota0"      );
    icons.Insert("pistol_rekkr"           , "wmrbow_off"  );
    icons.Insert("fist_rekkr"             , "wmrfists_off");
    icons.Insert("64_fist"                , "wmbrassoff"  );
    icons.Insert("punchdagger"            , "wmdagger_off");
    icons.Insert("mantisbunker"           , "mbpua0"      );
    icons.Insert("bmssg"                  , "bsgpa0"      );
    icons.Insert("bmshotgun"              , "bspua0"      );
    icons.Insert("bmmachinegun"           , "dfmga0"      );
    icons.Insert("bmgrenader"             , "ggpua0"      );
    icons.Insert("bmplasmagun"            , "bmpla0"      );
    icons.Insert("dergfist"               , "wm_guncaster_knuckles");
    icons.Insert("bayonette"              , "baygz0"      );
    icons.Insert("64fist"                 , "wm_doom_64_fist");
    icons.Insert("rlfist"                 , "wm_drla_unarmed");

    return self;
  }

} // class m8f_wm_Data
