waitUntil {sleep 1;(!isNull player && time > 0)};

if (side player == west) then {

titlecut ["","BLACK",0];


};

PanCamScript = [] execVM "Scripts\IntroCam.sqf";
0 = execVM "Scripts\initRespawn.sqf";

sleep 55;
["Task_Defend_Island"] call BIS_fnc_taskSetCurrent;
["Task_Refuel"] call BIS_fnc_taskSetCurrent;
["Task_Guard"] call BIS_fnc_taskSetCurrent;