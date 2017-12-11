RefuelTank1 setFuel 0.73;
RefuelTank2 setFuel 0.55;

sleep 5;

["Task_Refuel", "Succeeded",true] spawn BIS_fnc_taskSetState;