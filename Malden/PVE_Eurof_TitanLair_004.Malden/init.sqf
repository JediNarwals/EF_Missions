if (hasInterface) then {
    [] spawn {
        waitUntil {alive player};
        player setVariable ["loadout",getUnitLoadout player,false];
        player addEventHandler ["Respawn", {
            player setUnitLoadout (player getVariable "loadout");
        }];
    };
};
enableRadio false;

if (isServer) then {
	{
		if(side _x == east) then
		{
			_x unassignItem "NVGoggles_OPFOR";
			_x removeItem "NVGoggles_OPFOR";
		};
	} foreach (allUnits);
};