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

class wm_Data
{

// public: /////////////////////////////////////////////////////////////////////////////////////////

  static
  wm_Data of()
  {
    let result = new("wm_Data");

    result.mIcons = Dictionary.Create();
    result.fillIcons();

    return result;
  }

  String getIcon(String weaponClass) const
  {
    return mIcons.At(weaponClass);
  }

// private: ////////////////////////////////////////////////////////////////////////////////////////

  private
  void fillIcons()
  {
    mIcons.Insert("abortbutton"            , "nutpa0_off"  );
    mIcons.Insert("argfist"                , "wmbrassoff"  );
    mIcons.Insert("artifact"               , "bskla0"      );
    mIcons.Insert("bd_chainsaw"            , "csawa0"      );
    mIcons.Insert("bd_fist"                , "wmbrassoff"  );
    mIcons.Insert("cfsfists"               , "wmbrassoff"  );
    mIcons.Insert("cynetikstrikercannon"   , "csgiconoff"  );
    mIcons.Insert("d3ps"                   , "pista0"      );
    mIcons.Insert("darkmattergun"          , "dmgiconoff"  );
    mIcons.Insert("det_pipebomb"           , "scdsa0"      );
    mIcons.Insert("det_satchelcharge"      , "pdeta0"      );
    mIcons.Insert("doubleknuckles"         , "wmbrassoff"  );
    mIcons.Insert("erifist"                , "wmbrassoff"  );
    mIcons.Insert("fdaliensbfg9000"        , "abfgz0"      );
    mIcons.Insert("fdalienschaingun"       , "achgz0"      );
    mIcons.Insert("fdalienschainsaw"       , "asawz0"      );
    mIcons.Insert("fdaliensfist"           , "afisz0"      );
    mIcons.Insert("fdalienspistol"         , "apisz0"      );
    mIcons.Insert("fdaliensplasmarifle"    , "aplaz0"      );
    mIcons.Insert("fdaliensrocketlauncher" , "arokz0"      );
    mIcons.Insert("fdaliensshotgun"        , "ashtz0"      );
    mIcons.Insert("fdalienssupershotgun"   , "assgz0"      );
    mIcons.Insert("fdbtsxbfg9000"          , "xbfgz0"      );
    mIcons.Insert("fdbtsxchaingun"         , "xchgz0"      );
    mIcons.Insert("fdbtsxchainsaw"         , "xsawz0"      );
    mIcons.Insert("fdbtsxfist"             , "xfisz0"      );
    mIcons.Insert("fdbtsxpistol"           , "xpisz0"      );
    mIcons.Insert("fdbtsxplasmarifle"      , "xplaz0"      );
    mIcons.Insert("fdbtsxrocketlauncher"   , "xrokz0"      );
    mIcons.Insert("fdbtsxshotgun"          , "xshtz0"      );
    mIcons.Insert("fdbtsxsupershotgun"     , "xssgz0"      );
    mIcons.Insert("fddoom2bfg9000"         , "dbfgz0"      );
    mIcons.Insert("fddoom2chaingun"        , "dchgz0"      );
    mIcons.Insert("fddoom2chainsaw"        , "dsawz0"      );
    mIcons.Insert("fddoom2fist"            , "dfisz0"      );
    mIcons.Insert("fddoom2pistol"          , "dpisz0"      );
    mIcons.Insert("fddoom2plasmarifle"     , "dplaz0"      );
    mIcons.Insert("fddoom2rocketlauncher"  , "drokz0"      );
    mIcons.Insert("fddoom2shotgun"         , "dshtz0"      );
    mIcons.Insert("fddoom2supershotgun"    , "dssgz0"      );
    mIcons.Insert("fdjpcpbfg9000"          , "jbfgz0"      );
    mIcons.Insert("fdjpcpchaingun"         , "jchgz0"      );
    mIcons.Insert("fdjpcpfist"             , "jfisz0"      );
    mIcons.Insert("fdjpcppistol"           , "jpisz0"      );
    mIcons.Insert("fdjpcpplasmarifle"      , "jplaz0"      );
    mIcons.Insert("fdjpcprocketlauncher"   , "jrokz0"      );
    mIcons.Insert("fdjpcpshotgun"          , "jshtz0"      );
    mIcons.Insert("fdjpcpsupershotgun"     , "jssgz0"      );
    mIcons.Insert("fdplutbfg9000"          , "pbfgz0"      );
    mIcons.Insert("fdplutchaingun"         , "pchgz0"      );
    mIcons.Insert("fdplutchainsaw"         , "psawz0"      );
    mIcons.Insert("fdplutfist"             , "pfisz0"      );
    mIcons.Insert("fdplutpistol"           , "ppisz0"      );
    mIcons.Insert("fdplutplasmarifle"      , "pplaz0"      );
    mIcons.Insert("fdplutrocketlauncher"   , "prokz0"      );
    mIcons.Insert("fdplutshotgun"          , "pshtz0"      );
    mIcons.Insert("fdplutsupershotgun"     , "pssgz0"      );
    mIcons.Insert("fdtntbfg9000"           , "tbfgz0"      );
    mIcons.Insert("fdtntchaingun"          , "tchgz0"      );
    mIcons.Insert("fdtntchainsaw"          , "tsawz0"      );
    mIcons.Insert("fdtntfist"              , "tfisz0"      );
    mIcons.Insert("fdtntpistol"            , "tpisz0"      );
    mIcons.Insert("fdtntplasmarifle"       , "tplaz0"      );
    mIcons.Insert("fdtntrocketlauncher"    , "trokz0"      );
    mIcons.Insert("fdtntshotgun"           , "tshtz0"      );
    mIcons.Insert("fdtntsupershotgun"      , "tssgz0"      );
    mIcons.Insert("fist"                   , "wmbrassoff"  );
    mIcons.Insert("fists"                  , "wmbrassoff"  );
    mIcons.Insert("fistfixed"              , "wmbrassoff"  );
    mIcons.Insert("fkfist"                 , "wmbrassoff"  );
    mIcons.Insert("knuckles"               , "wmbrassoff"  );
    mIcons.Insert("lewd"                   , "finga0_off"  );
    mIcons.Insert("melee"                  , "wmbrassoff"  );
    mIcons.Insert("perkfist"               , "wmbrassoff"  );
    mIcons.Insert("pkfist"                 , "wmbrassoff"  );
    mIcons.Insert("pumpshotgun"            , "kssga0"      );
    mIcons.Insert("q3bfg10k"               , "bfgiconoff"  );
    mIcons.Insert("q3chaingun"             , "cgiconoff"   );
    mIcons.Insert("q3gauntlet"             , "gticonoff"   );
    mIcons.Insert("q3grenadelauncher"      , "gliconoff"   );
    mIcons.Insert("q3lightninggun"         , "lgiconoff"   );
    mIcons.Insert("q3machinegun"           , "mgiconoff"   );
    mIcons.Insert("q3nailgun"              , "ngiconoff"   );
    mIcons.Insert("q3plasmagun"            , "pgiconoff"   );
    mIcons.Insert("q3railgun"              , "rgiconoff"   );
    mIcons.Insert("q3rocketlauncher"       , "rliconoff"   );
    mIcons.Insert("q3shotgun"              , "sgiconoff"   );
    mIcons.Insert("qlheavymachinegun"      , "hmgiconoff"  );
    mIcons.Insert("staff"                  , "wmstaff_off" );
    mIcons.Insert("trakioncannon"          , "trkiconoff"  );
    mIcons.Insert("weapon_357"             , "hpkup102off" );
    mIcons.Insert("weapon_9mmar"           , "hpkup103off" );
    mIcons.Insert("weapon_crossbow"        , "hpkup109off" );
    mIcons.Insert("weapon_crowbar"         , "hpkup100off" );
    mIcons.Insert("weapon_egon"            , "hpkup112off" );
    mIcons.Insert("weapon_gauss"           , "hpkup111off" );
    mIcons.Insert("weapon_glock"           , "hpkup101off" );
    mIcons.Insert("weapon_handgrenade"     , "hpkup105off" );
    mIcons.Insert("weapon_hornetgun"       , "hpkup113off" );
    mIcons.Insert("weapon_rpg"             , "hpkup110off" );
    mIcons.Insert("weapon_satchel"         , "hpkup106off" );
    mIcons.Insert("weapon_shotgun"         , "hpkup104off" );
    mIcons.Insert("weapon_snark"           , "hpkup108off" );
    mIcons.Insert("weapon_tripmine"        , "hpkup107off" );
    mIcons.Insert("xtremefist"             , "wmbrassoff"  );
    mIcons.Insert("xtremesaw"              , "csawa0"      );
    mIcons.Insert("z-gun"                  , "hxzgunoff"   );
    mIcons.Insert("chainsaw_rekkr"         , "csawa0"      );
    mIcons.Insert("plasmarifle_rekkr"      , "plasa0"      );
    mIcons.Insert("bfg9000_rekkr"          , "bfuga0"      );
    mIcons.Insert("rocketlauncher_rekkr"   , "launa0"      );
    mIcons.Insert("chaingun_rekkr"         , "mguna0"      );
    mIcons.Insert("shotgun_rekkr"          , "shota0"      );
    mIcons.Insert("pistol_rekkr"           , "wmrbow_off"  );
    mIcons.Insert("fist_rekkr"             , "wmrfists_off");
    mIcons.Insert("64_fist"                , "wmbrassoff"  );
    mIcons.Insert("punchdagger"            , "wmdagger_off");
    mIcons.Insert("mantisbunker"           , "mbpua0"      );
    mIcons.Insert("bmssg"                  , "bsgpa0"      );
    mIcons.Insert("bmshotgun"              , "bspua0"      );
    mIcons.Insert("bmmachinegun"           , "dfmga0"      );
    mIcons.Insert("bmgrenader"             , "ggpua0"      );
    mIcons.Insert("bmplasmagun"            , "bmpla0"      );
    mIcons.Insert("dergfist"               , "wm_guncaster_knuckles");
    mIcons.Insert("bayonette"              , "baygz0"      );
    mIcons.Insert("64fist"                 , "wm_doom_64_fist");
    mIcons.Insert("rlfist"                 , "wm_drla_unarmed");
  }

  private Dictionary mIcons;

} // class wm_Data

class wm_StaticData
{

  static
  String getIcon(String weaponClass)
  {
    return wm_EventHandler(EventHandler.Find("wm_EventHandler")).getData().getIcon(weaponClass);
  }

} // class wm_StaticData
