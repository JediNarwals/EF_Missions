// by ALIAS
// null = [_object_name,_life_time,_radius,_damage_inflicted_surround,_kill_vehicle_in_fire,_human,_ground] spawn compile preprocessFile "ALfire\fire.sqf";
// Tutorial: https://www.youtube.com/aliascartoons

/*
* Script MP and SP compatible.
** Script runs on client side only so the server is not loaded with unnecessary tasks. 
*** However mind the number of fires they can still cause frames drop. Test and see what it works for you.

_object_name				- the object name you want to set on fire, you can use "this" if you run the script from init field of the object
_life_time					- seconds, fire will be put off after the time you set for life time
_radius						- meters, you want to be covered by fire, note that at certain values the fire doesn't look good, so use it wisely
_damage_inflicted_surround	- 0..1, amount of damage you to be inflicted upon objects close to fire, use smaller values and test damage is in loop
_kill_vehicle_in_fire		- boolean, true if you want the vehicle blowing up when fire is gone, false if you want just to delete the vehicle
_human						- boolean, true if the object set on fire is a footmobile, false if is an object (buildings, wrecks, vehicles etc)
_ground						- string with 2 pre-defined values, "big" to set on fire a large area defined by _radius, "small" to set in fire objects placed in air or ground, here radius only counts for area where de damage is inflicted

For more info see the update tutorial

For more info see the first tutorial
https://www.youtube.com/watch?v=WKakf7yb2WM
*/

// Example using fire.sqf	===========================================================
//- use this script when you want set on fire objects with higher altitude 
null = [this,180,5,0.01,false,false,"small"] spawn compile preprocessFile "ALfire\fire.sqf";

// =========================================================== Example
//- use this script when you want fire covering a larger area, doesn't support altitude tho, in other words it can be set only on ground
null = [this,180,20,0.01,false,false,"big"] spawn compile preprocessFile "ALfire\fire.sqf";