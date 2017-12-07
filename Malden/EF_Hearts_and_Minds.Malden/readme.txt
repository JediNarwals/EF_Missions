original mission here: https://github.com/Vdauphin/HeartsAndMinds/releases (v1.17.3 used currently)
edited by Verstanden

steps to update to new version:
- download latest version of github
- delete mission.sqm and rename mission_Tanoa.sqm into mission.sqm
- rename =BTC=co@30_Hearts_and_Minds.Altis into =BTC=co@30_Hearts_and_Minds.Malden
- import into Eden - save - close
- replace mission.sqm with old mission.sqm from prior version. If changes were made to the official mission.sqm (check changelog/git) you should make those manually. Alternatively use new mission.sqm and then use old mission and custom compositions to adjust the objects on the map.
- remove arsenal:
 Remove (or comment out) the line here:
/core/fnc/int/add_actions.sqf#L86:
btc_gear_object addAction ["<t color='#ff1111'>Arsenal</t>", "['Open',true] spawn BIS_fnc_arsenal;"];
- keep loadouts from eden:
 remove (or comment out) this line here 
/core/initplayer.sqf#L19:
removeAllWeapons player;
- change default parameters:
copy old /core/def/param.hpp from prior version. If changes were made to the official mission.sqm (check changelog/git) you should make those manually. Alternatively use new mission.sqm and use Eden to adjust the objects on the map.
- Prevent AI from spawning near the base
    in arma editor: create your base where you want.
    in arma editor: create a marker next to your base name for exemple : base_safe_zone
    open with your text editor file core/fnc/city/init.sqf L38-L41 , uncomment (remove /* and */ command):

    /*

    //if you want a safe area

    if (_position distance getMarkerPos "base_safe_zone" < 500) exitWith {};

    */

Note : you can tweak radius of desactivation by changing 500 meters by more or less. Make sure your marker radius is large enough to reach out and overlap the epicenter of the town you want to black out.