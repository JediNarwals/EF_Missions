enableSaving [false, false];
if(isClass (configFile>>"CfgPatches">>"PA_arsenal"))then{endMission "END2";};
if(isClass (configFile>>"CfgPatches">>"KA_VAA"))then{endMission "END2";};
if(isClass (configFile>>"CfgPatches">>"vaa_arsenal"))then{endMission "END2";};
"respawn_west" setMarkerPosLocal [markerPos "respawn_West" select 0, markerPos "respawn_West" select 1, 35.405];
[] spawn compileFinal preprocessFileLineNumbers "scripts\StupidITstuff.sqf";
waitUntil {!isNull player};