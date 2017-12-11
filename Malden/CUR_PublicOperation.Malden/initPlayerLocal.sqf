PanCamScript = [] execVM "Scripts\IntroCam.sqf";
0 = execVM "Scripts\initRespawn.sqf";

sleep 25;
["Task_Defend_Island"] call BIS_fnc_taskSetCurrent;
["Task_Refuel"] call BIS_fnc_taskSetCurrent;
["Task_Guard"] call BIS_fnc_taskSetCurrent;