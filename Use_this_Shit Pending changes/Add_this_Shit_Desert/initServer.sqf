
MGI_fnc_getVehicleLoadout = { 
  _veh = param [0,objNull, [objNull]]; 
  _veh setVariable ["MGIallCont",[]]; 
  (_veh getVariable "MGIallCont") pushBack [_veh,itemCargo _veh,magazineCargo _veh,weaponCargo _veh,backpackCargo _veh]; 
  {(_veh getVariable "MGIallCont") pushBack [_x select 0,itemCargo (_x select 1),magazineCargo (_x select 1),weaponCargo (_x select 1),[]]} forEach everyContainer _veh; 
};

MGI_fnc_setVehicleLoadout = { 
  params [["_newVeh",objNull,[objNull]], ["_oldVeh",objNull,[objNull]]]; 
  if ( {_x isKindOf "CAManBase"} count [_newVeh,_oldVeh] >0 or isnil {_oldVeh getVariable "MGIallCont"}) exitWith {}; 
  if (!isnil {_oldVeh actionParams 0}) then { 
    private _flagArsenalDbl = false;
    if (!isnil {_oldVeh getVariable "bis_addVirtualWeaponCargo_cargo"}) then {
      _newVeh setVariable ["bis_addvirtualweaponcargo_cargo", _oldVeh getVariable ["bis_addvirtualweaponcargo_cargo",""]]
    };
    for "_i" from 0 to (_oldVeh addAction ["",""]) -1 do { 
      if (!_flagArsenalDbl or !(["bis_fnc_arsenal",_oldVeh actionParams _i select 1] call bis_fnc_instring)) then { 
        private _act = _oldVeh actionParams _i; 
        {_act deleteAt 10;true} count [1,2]; 
        [_newVeh,_act] remoteExec ["addaction",0,true]; 
        if(["bis_fnc_arsenal",_oldveh actionParams _i select 1] call bis_fnc_instring) then {_flagArsenalDbl = true}; 
      }; 
    }; 
  };

  if (typeOf _newVeh isEqualTo typeOf _oldVeh) then {
    private _oldTexture = getObjectTextures _oldVeh;   
    if ( count _oldTexture > 0) then {
      for "_i" from 0 to count _oldTexture - 1 do { 
        _oldTexture  set [_i,[_i,_oldTexture select _i]] 
      }; 
      {_newVeh setObjectTextureGlobal _x } forEach _oldTexture; 
    };  
    private _animList = animationNames _oldVeh; 
    if (count _animList > 0) then { 
      _ll = [];   
      for "_i" from 0 to count _animList -1 do { 
        _ll pushBack [_animList select _i,_oldveh animationPhase (_animList select _i)]; 
      {_newVeh animate _x} forEach _ll; 
      }; 
    };
    if (_newVeh isKindOf "air") then {
      private _pylons = getPylonMagazines _oldVeh;
      private _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf _oldVeh >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")};
      {
        _newVeh removeWeaponGlobal getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon")
      } forEach getPylonMagazines _newVeh;
      {
       _newVeh setPylonLoadOut [_forEachIndex + 1, _x, true, _pylonPaths select _forEachIndex]
      } forEach _pylons;
    };
    private _oldTrt = magazinesAllTurrets _oldVeh;
    {_newVeh removeMagazineTurret _x} forEach (magazinesAllTurrets _newVeh apply {[_x select 0,_x select 1]});
    {_newVeh addMagazineTurret _x} forEach _oldTrt;
  };
 
  { 
    _x params ["_cont","_it","_mag","_wp",["_bpk",[]]]; 
    if (_cont isEqualType "") then { 
      _cont = everyContainer _newVeh select (_foreachindex -1) select 1; 
    } else { 
      _cont = _newVeh; 
    }; 
    clearItemCargoGlobal _cont; 
    clearMagazineCargoGlobal _cont; 
    clearWeaponCargoGlobal _cont; 
    clearBackpackCargoGlobal _cont; 
    {_cont addItemCargoGlobal [_x,1];true} count _it; 
    {_cont addMagazineCargoGlobal [_x,1];true} count _mag; 
    {_cont addWeaponCargoGlobal [_x,1];true} count _wp; 
    {_cont addBackpackCargoGlobal [_x,1];true} count _bpk; 
  } forEach (_oldVeh getVariable ["MGIallCont",[]]); 
};

MGI_fnc_VehicleRespawn = {
  if (!isServer && hasInterface) exitWith {};
  params [["_sides",[WEST,EAST,RESISTANCE,CIVILIAN],[[WEST]],[]],["_positions","death",["",["","","",""]],[]],["_delay",10,[0]],["_respOnDisabled",false,[true]]];
  private ["_pos","_positionArray"];
  MGIrespVehDelay = _delay max 2;
  MGIrespOnDisabled = _respOnDisabled;

  fn_pos = {
    params ["_position","_pos"];
    call {
      if !(getMarkerPos _position isEqualTo [0,0,0]) exitWith {_pos = getMarkerPos _position};
      if (_position == "start") exitWith {_pos = getPos _x};
        _pos = [0,0,0];
     };
    _pos
  };

  if (_positions isEqualType "") then { _positions = [_positions]};
  if (_positions isEqualType []) then {
    _nbrSide = count _sides;
    _nbrPos = count _positions;
    if (_nbrPos < _nbrSide) then {
      for "_i" from 0 to (_nbrSide - _nbrPos - 1) do {
        _positions pushback "death";
      };
    };
  };
  _positionArray = [];
  for "_i" from 0 to count _sides - 1 do {
    _positionArray pushback (_sides select _i);
    _positionArray pushback (_positions select _i);
  };
  while {true} do {
    sleep 1;
    _allVehicles = vehicles select {!(_x isKindOf "WeaponHolderSimulated") && !isPlayer _x && local _x};
    {
      if (!(_x getVariable ["MGIrespVehOK",false]) && ((side _x in _sides) or (count crew _x == 0))) then {
        _side = side _x;
        _position = _positionArray select ((_positionArray find _side) + 1);
        if (_position isEqualType CIVILIAN) then {_position = "death"};
        _pos = _position call fn_pos;

        _x setVariable ["MGIrespVehDATA",[typeOf _x ,_pos, side _x, fullcrew _x]];
        _x call MGI_fnc_getVehicleLoadout;

        if (_position == "death") then {
          _x spawn {
            _veh = _this;
            while {alive _veh} do {
              _veh call MGI_fnc_getVehicleLoadout;
              if ({alive (_x select 0)} count (fullCrew _veh) > 0 && canMove _veh) then {
                _fullOldCrew = +(fullCrew _veh select {alive (_x select 0)});
                {(_x select 0) setVariable ["oldGrp",group (_x select 0)]} forEach _fullOldCrew;
                (_veh getVariable "MGIrespVehDATA") set [3,_fullOldCrew];
              } else {
                if(MGIrespOnDisabled && !canmove _veh) exitWith {
                  _veh spawn {
                    params ["_veh"];
                    sleep MGIrespVehDelay/2;
                    if (count crew _veh == 0) then {
                      _veh setDamage [1,false];
                    };
                  };
                };
              };
              sleep 2;
            };
          };
        } else {
          {(_x select 0) setVariable ["oldGrp",group (_x select 0)]} forEach fullCrew _x;
        };
        _x setVariable ["MGIrespVehOK",true];
      };
    } foreach _allVehicles;
  };
};

addMissionEventHandler ["EntityKilled",{
  _destroyed = _this select 0;
  if (_destroyed getVariable ["MGIrespVehOK",false]) then {
    _destroyed spawn {
      _destroyed = _this;
      _type = (_destroyed getVariable "MGIrespVehDATA") select 0;
      _pos = (_destroyed getVariable "MGIrespVehDATA") select 1;
      _side = (_destroyed getVariable "MGIrespVehDATA") select 2;
      _fullOldCrew = (_destroyed getVariable "MGIrespVehDATA") select 3;
      _oldSpeed = speed _destroyed;
      _oldCrew = _fullOldCrew apply {_x select 0};
      _respawnName =["initial point","grid"] select (_pos isEqualTo [0,0,0]);
      _cfgVeh = configfile >> "cfgvehicles" >> typeOf _destroyed;
      _displayName = gettext (_cfgVeh >> "displayName");
      _picture = (gettext (_cfgVeh >> "picture")) call bis_fnc_textureVehicleIcon;
      _curr = currentWaypoint group _destroyed;
      if (_pos isEqualTo [0,0,0]) then {_pos = getpos _destroyed};
      _dir = getDir _destroyed;
      _onGround = (isTouchingGround _destroyed);
      _timer = diag_tickTime;
      waitUntil {isTouchingGround _destroyed or diag_tickTime > _timer + 30};
      sleep MGIrespVehDelay;
      _destroyed hideObjectGlobal true;
      sleep 0.1;
      _newVeh =  createVehicle [_type, _pos, [], 0, ["FLY","NONE"] select _onGround];
      _newVeh setDir _dir;
      [_newVeh,_destroyed] call MGI_fnc_setVehicleLoadout;
      if (_respawnName == "grid") then {
        _respawnName = format [localize "str_a3_bis_fnc_respawnmenuposition_grid",mapgridposition (position _newVeh)];
      } else { _curr = 1};
      sleep 0.1;
      if (["UAV",typeOf _newVeh] call bis_fnc_inString or ["UGV",typeOf _newVeh] call bis_fnc_inString) then {
          createVehicleCrew _newVeh;
          if (["UAV",typeOf _newVeh] call bis_fnc_inString) then {
            _newVeh setVelocityModelSpace [0,_oldSpeed/3.6,0];
          };
      };
      if (count _fullOldCrew > 0) then {
        _grps = [];
        {
          _unit = _x select 0;
          _grp = _unit getVariable ["oldGrp",createGroup civilian];
          _grps pushBackUnique _grp;
          if (!alive _unit or !isTouchingGround _newVeh) then {
            (typeOf _unit) createUnit [getpos _newVeh, _grp, "this allowDamage false; switch toLower (_x select 1) do {
              case 'driver': {this moveInDriver _newVeh};
              case 'commander': {this moveInCommander _newVeh};
              case 'gunner': {this moveInGunner _newVeh};
              case 'cargo': {this moveInCargo [_newVeh,(_x select 2)]};
              case 'turret': {this moveInturret  [_newVeh,(_x select 3)]};
              };
              this allowDamage true;
              if (vehicle _newVeh isKindOf 'plane') then {_newVeh setVelocityModelSpace [0,_oldSpeed/3.6,0]}"];
            } else {
              _unit allowDamage false;
              switch toLower (_x select 1) do {
                case 'driver': {_unit moveInDriver _newVeh};
                case 'commander': {_unit moveInCommander _newVeh};
                case 'gunner': {_unit moveInGunner _newVeh};
                case 'cargo': {_unit moveInCargo [_newVeh,(_x select 2)]};
                case 'turret': {_unit moveInturret  [_newVeh,(_x select 3)]};
              };
              _unit allowDamage true;
            };
        } forEach _fullOldCrew;
        {
          _grp = _x;
          if (count waypoints _grp >1 && (effectiveCommander _newVeh in units _grp)) then {
            _grp selectLeader (effectiveCommander _newVeh);
            [_grp,_curr] spawn {
              params ["_grp","_curr"];
              waituntil {sleep 1; unitReady leader _grp};
              _grp setCurrentWaypoint [_grp,_curr];
              leader _grp doMove (waypointPosition [_grp,_curr]);
            };
          };
        } forEach _grps;
      } else {
        _sideNbr = getNumber (configfile >> "CfgVehicles" >> typeOf _newVeh >> "side");
        _side = [EAST,WEST,INDEPENDENT,CIVILIAN,sideUnknown,sideEnemy,sideFriendly] select _sideNbr;
      };
      ["RespawnVehicle",[_displayName,_respawnName,_picture]] remoteExec ["BIS_fnc_showNotification",_side];

      {deleteVehicle _x} forEach (_oldCrew select {!alive _x});
       sleep 0.1;
      _destroyed setVariable ["MGIrespVehDATA",nil];
      _destroyed setVariable ["MGIrespVehOK",nil];
      deleteVehicle _destroyed;
    };
  };
}];

0 = [[WEST],"start",60,true] spawn MGI_fnc_VehicleRespawn;