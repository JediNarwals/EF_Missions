enableSaving [false, false];
"respawn_west" setMarkerPosLocal [markerPos "respawn_West" select 0, markerPos "respawn_West" select 1, 35.405];
[] spawn compileFinal preprocessFileLineNumbers "scripts\StupidITstuff.sqf";
waitUntil {!isNull player};