[west,["Task_OPTIONAL_EVACAI","Task_Defend_Island"],["Friendly units are pinned down! Move to the location and help them","(OPTIONAL) EVAC Team","EVACTeamTask"], getMarkerPos "EVACTeamTask",true,1,true,"meet"] call BIS_fnc_taskCreate;

if (side player == sideLogic) then {

_subtitles = [
	[ "System",			"Just letting you know that the Secure AI team task was created! (Camera Moved)", 0]
];
_subtitles spawn BIS_fnc_EXP_camp_playSubtitles;