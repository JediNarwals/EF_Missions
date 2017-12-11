[west,["Task_Defend_Island"],["Defend the last two locations on Malden. We will contact you when the EVAC is ready!","Defend Malden","DefendMarker"],objNull,1,1,false,"defend"] call BIS_fnc_taskCreate;

[Wiking1,["Task_Refuel"],["Refuel the tanks and then get to the FOB.","Refuel Tanks","Refuelmarker"],getPos Fuel2,1,1,false,"refuel"] call BIS_fnc_taskCreate;

[Wiking2,["Task_Refuel"],["Refuel the tanks and then get to the FOB.","Refuel Tanks","Refuelmarker"],getPos Fuel2,1,1,false,"refuel"] call BIS_fnc_taskCreate;

[Wiking3,["Task_Guard"],["Guard the tanks while they refuel.","Guard Refuel","Refuelmarker"],objNull,1,1,false,"defend"] call BIS_fnc_taskCreate;