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