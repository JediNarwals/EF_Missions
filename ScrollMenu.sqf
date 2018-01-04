['Menu'] call
{
  EF_Basic =
  {
    removeAllActions loadoutBox;
    loadoutBox addAction ['Loadouts','[] call EF_MM',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addAction ['Get Rifleman Loadout','Loadouts\Basic\Rifleman.sqf',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addAction ['Get Rifleman Grenadier Loadout','Loadouts\Basic\Grenadier.sqf',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addAction ['Get Rifleman Anti Tank Loadout','Loadouts\Basic\RiflemanAntiTank.sqf',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addAction ['Get Rifleman Anti Tank Assistant Loadout','Loadouts\Basic\RiflemanAntiTankAssistant.sqf',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addAction ['Get Rifleman GPMG Gunner Loadout','Loadouts\Basic\RiflemanGPMGGunner.sqf',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addAction ['Get Rifleman GPMG Assistant Loadout','Loadouts\Basic\RiflemanGPMGAssistant.sqf',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addAction ['Get Rifleman Marksman Loadout','Loadouts\Basic\RiflemanMarksman.sqf',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addAction ['Get Rifleman Section Medic Loadout','Loadouts\Basic\RiflemanSectionMedic.sqf',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addAction ['Get Rifleman Section Signaller Loadout','Loadouts\Basic\RiflemanSignallerSectionLevel.sqf',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addAction ['Get Section Commander IC/2IC Loadout','Loadouts\Basic\SectionCommanderIC&2IC.sqf',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addAction ['Get Platoon Signaller Loadout','Loadouts\Basic\SignallerPlatoonLevel.sqf',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addAction ['Get EOD Loadout','Loadouts\Basic\EOD.sqf',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
  };
  EF_Air=
  {
    removeAllActions loadoutBox;
    loadoutBox addAction ['Loadouts','[] call EF_MM',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addAction ['Get Helicopter Pilot Loadout','Loadouts\Air\AirHelicopterPilot.sqf',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addAction ['Get Jet Pilot Loadout','Loadouts\Air\AirJetPilot.sqf',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
  };
  EF_Armour=
  {
    removeAllActions loadoutBox;
    loadoutBox addAction ['Loadouts','[] call EF_MM',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addAction ['Get Commander Loadout','Loadouts\Armour\armourCommand.sqf',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addAction ['Get Engineer Loadout','Loadouts\Armour\armourEngineer.sqf',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addAction ['Get Medic Loadout','Loadouts\Armour\armourMedic.sqf',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
  };
  EF_MM =
  {
    removeAllActions loadoutBox;
    loadoutBox addAction ['Loadouts','[] call EF_MM',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addAction ['Basic Loadouts','[] call EF_Basic',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addaction ['Armour Loadouts','[] call EF_armour',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
    loadoutBox addaction ['Aviation Loadouts','[] call EF_Air',nil,1.5,true,true,'','((player distance loadoutBox)<3.5)'];
  };
  EF_SM =
  {
    this addAction ['Loadouts','[] call EF_MM',nil,1.5,true,true,'','((_target distance _this)<3.5)'];
  };
  [] call EF_SM;
};
