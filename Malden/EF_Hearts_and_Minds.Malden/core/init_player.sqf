
[] execVM "core\doc.sqf";

[] spawn {
	waitUntil {!isNull player};

	player addRating 9999;
	btc_player_respawn = getPosASL player;
	["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

	player addEventHandler ["Respawn", btc_fnc_eh_player_respawn];
	player addEventHandler ["CuratorObjectPlaced", btc_fnc_eh_CuratorObjectPlaced];
	["ace_treatmentSucceded", btc_fnc_eh_treatment] call CBA_fnc_addEventHandler;

	call btc_fnc_int_add_actions;

	if (player getVariable ["interpreter", false]) then {player createDiarySubject ["Diary log","Diary log"];};

//	removeAllWeapons player;

	waitUntil {scriptDone btc_intro_done};
	{[_x] call btc_fnc_task_create} foreach ((player call BIS_fnc_tasksUnit) select {[_x] call BIS_fnc_taskState isEqualTo "ASSIGNED"});
};

if (btc_debug) then {

	private ["_eh"];

	onMapSingleClick "if (vehicle player == player) then {player setpos _pos} else {vehicle player setpos _pos}";
	player allowDamage false;

	waitUntil {!isNull (findDisplay 12)};
	_eh = ((findDisplay 12) displayCtrl 51) ctrlAddEventHandler ["Draw", btc_fnc_marker_debug];

	btc_marker_debug_cond = true;
	[_eh] spawn btc_fnc_systemchat_debug;
};

//=========================== MISC

player switchCamera "EXTERNAL";											// Check your 6'
enableRadio false;																	// That will clear the voices from my head...
enableSentences FALSE;															// Stop talking to myself
enableSaving [FALSE,FALSE];													// "Everything Not saved will be lost." - Nintendo 'Quit Screen' message
player enableFatigue true;													// Disables fatigue

//=========================== client executions

{_x addCuratorEditableObjects [[player],FALSE];} count allCurators;				// Adds players to Zeus


/*
	@class 			Channel enabler
	@description
			Enables/Disables the channels. Same as description but added for extra peramaters
			How it works:
				"ChannelNumber" enableChannel [Chat,VON];
			Channel Numbers:
				0 = Global
				1 = Side
				2 = Command
				3 = Group
				4 = Vehicle
				5 = Direct
				6 = Systems
			Additional information:
				Admins and system's can still access and use ["Global","Command","System"] chat.
*/

0 enableChannel false;			// Global
1 enableChannel [true, false];	// Side
2 enableChannel true;			// Command
3 enableChannel true;			// Group
4 enableChannel true;			// Vehicle
5 enableChannel true; 			// Direct
6 enableChannel false;			// System
