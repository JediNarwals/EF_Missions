1 = [] spawn {

	private ["_eastTickets", "_westTickets"];
	while {true} do {
	   sleep 1;

	   _eastTickets = [east] call BIS_fnc_respawnTickets;
	   _westTickets = [west] call BIS_fnc_respawnTickets;
		
	   if (_eastTickets < 10) exitWith {
			"LeadTrack03_F" remoteExec ["playMusic",0];
		};
	   if (_westTickets < 10) exitWith {
			"LeadTrack03_F" remoteExec ["playMusic",0];
		};
	};
};
// For the respawn module
// {(_this select 0) execVM "blu_veh_spawn.sqf";} remoteExecCall ["bis_fnc_call", 0, true]; 
{[blu_fob] execVM "blu_veh_spawn.sqf";} remoteExecCall ["bis_fnc_call", 0, true]; 
{[blu_truck] execVM "blu_veh_spawn.sqf";} remoteExecCall ["bis_fnc_call", 0, true]; 
{[op_fob] execVM "op_veh_spawn.sqf";} remoteExecCall ["bis_fnc_call", 0, true]; 
{[op_truck] execVM "op_veh_spawn.sqf";} remoteExecCall ["bis_fnc_call", 0, true]; 