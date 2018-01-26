if (side player == west) then {

diag_log format ["%1 Spawned and is correctly BLUFOR.", player];

};


if (side player == sideLogic) then {
titlecut ["","BLACK IN",5];

_subtitles = [
	[ "System",			"Virutal Client Loaded Successfully.", 0]
];
_subtitles spawn BIS_fnc_EXP_camp_playSubtitles;
};