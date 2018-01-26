[west,["Task_OPTIONAL_SecureSupplies1","Task_Defend_Island"],["We have located some supplies to gather. Move to the location.","(OPTIONAL) Secure Supplies","Supply1Task"], getMarkerPos "Supply1Task",true,1,true,"box"] call BIS_fnc_taskCreate;
[west,["Task_OPTIONAL_SecureSupplies2","Task_Defend_Island"],["We have located some supplies to gather. Move to the location.","(OPTIONAL) Secure Supplies","Supply2Task"], getMarkerPos "Supply2Task",true,1,true,"box"] call BIS_fnc_taskCreate;

if (side player == sideLogic) then {

_subtitles = [
	[ "System",			"Just letting you know that the Secure Supplies task was created! (Two Locations - Objects added)", 0]
];
_subtitles spawn BIS_fnc_EXP_camp_playSubtitles;