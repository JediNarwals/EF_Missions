_subtitles = [
   [ "System",   "The Slammers are being refueled...", 0]
  ];
  _subtitles spawn BIS_fnc_EXP_camp_playSubtitles;

sleep 5;

RefuelTank1 setFuel 0.73;
RefuelTank2 setFuel 0.55;

Fuel3 removeAction 0;
Fuel2 removeAction 0;

["Task_Refuel", "Succeeded",true] spawn BIS_fnc_taskSetState;