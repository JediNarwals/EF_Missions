_vehicle = _this;

if (isServer) then{
_vehicle setObjectTextureGlobal [0, "#(rgb,8,8,3)color(0.1,0.13,0,1)"];
_vehicle setObjectTextureGlobal [1, "#(rgb,8,8,3)color(0.1,0.13,0,1)"];
};

if (side player == east) then {

	[
	_vehicle,
	"Plant Bomb",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_forceRespawn_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_forceRespawn_ca.paa",
	"_this distance _target < 4",
	"_caller distance _target < 4",
	{},
	{},
	{_handle = [_this select 0] execVM "detonate.sqf"; hint "Bomb planted, 15 seconds to detonation";},
	{},
	[_vehicle],
	12,
	12,
	true,
	false
	] call BIS_fnc_holdActionAdd;

}