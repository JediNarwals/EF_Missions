[west,["Task_OPTIONAL_SecureAmbush","Task_Defend_Island"],["A small infantry convoy has been hit! Move to the location and secure any survivors and vehicles.","(OPTIONAL) Secure Ambush","AmbushTask"], getMarkerPos "AmbushTask",true,1,true,"search"] call BIS_fnc_taskCreate;

if (side player == sideLogic) then {

_subtitles = [
	[ "System",			"Just letting you know that the Secure Ambush task was created! (Hunters)", 0]
];
_subtitles spawn BIS_fnc_EXP_camp_playSubtitles;

};