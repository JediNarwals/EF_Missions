if (hasInterface) then {
    [] spawn {
        waitUntil {alive player};
        player setVariable ["loadout",getUnitLoadout player,false];
        player addEventHandler ["Respawn", {
            player setUnitLoadout (player getVariable "loadout");
        }];
    };
};

0 = [] spawn {

	sleep 10;
	private ["_eastTickets", "_westTickets"];
	while {true} do {
	   _eastTickets = [east] call BIS_fnc_respawnTickets;
	   _westTickets = [west] call BIS_fnc_respawnTickets;

	   if (_eastTickets == 0) exitWith {

		   playMusic "EventTrack02_F_Orange";
		   if (side player == east) then {
			   ["OpforLose",false,true,false] call BIS_fnc_endMission;
		   } else {
			   ["BluforWin",true,true,false] call BIS_fnc_endMission;
		   }
	   };
	   if (_westTickets == 0) exitWith {
		   
		   playMusic "EventTrack02_F_Orange";
		   if (side player == east) then {
			   ["OpforWin",true,true,false] call BIS_fnc_endMission;
		   } else {
			   ["BluforLose",false,true,false] call BIS_fnc_endMission;
		   }
		};
	};
};