/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/
#include "hpp\idcs.hpp"
#include "hpp\defines.hpp"
#define kgbpd8	10000
#define kgcaid	100000
kg8k2h=[kgw31g,kgf39b,kgl1n5,kgcw99,kgjmn3,kgz924,kgdtiy];kgvo2t={disableSerialization;private["_0a"];_0a=_this;[_0a,""]call bis_fnc_guiEffectTiles;(_0a displayCtrl kgogpe)ctrlSetText kgfmtd;(_0a displayCtrl kgogpe)ctrlShow!isStreamFriendlyUIEnabled;kgh4hz=[];for "_i" from 0 to count(kg8k2h)-1 do{kgh4hz set[_i,ctrlPosition(_0a displayCtrl(kg8k2h select _i))];};kgdryg=[(profilenamespace getvariable["GUI_BCG_RGB_R",0.3843]),(profilenamespace getvariable["GUI_BCG_RGB_G",0.7019]),(profilenamespace getvariable["GUI_BCG_RGB_B",0.8862]),1];call kgrhfn;call kg2rzt;kgnvb7=call kg3g1m;kglgte=false;};kg4ebi={if(kglgte)then{call kgozi8;call kgttgb;switch(call kg3g1m)do{case(kgnvb7):{};default{call kg2nt4;call kgdqcx;};};call kgfx6i;};};kgrhfn={disableSerialization;private["_0a","_08k"];_0a=uiNamespace getVariable "KingOfHill_Perks";_08k=call kg65tw;private["_09i"];_09i=kgh4hz select(kg8k2h find kgdtiy)select 3;for "_i" from 0 to 99 do{private["_0we","_0gg","_09k","_0al","_0bl","_0cl","_0qc","_0dl"];_0gg=_0a displayCtrl(kgw31g+_i);_09k=_0a displayCtrl(kgf39b+_i);_0al=_0a displayCtrl(kgl1n5+_i);_0bl=_0a displayCtrl(kgcw99+_i);_0cl=_0a displayCtrl(kgjmn3+_i);_0qc=_0a displayCtrl(kgz924+_i);_0dl=_0a displayCtrl(kgdtiy+_i);_0we=[_0gg,_09k,_0al,_0bl,_0cl,_0qc,_0dl];if(_i<count(_08k))then{private["_0el","_0g","_0c"];_0c=(_08k select _i);_0el=database_loadout_perksList select _0c;_0g=call(_0el select 1);for "_j" from 0 to count(_0we)-1 do{private["_pos"];_pos=+(kgh4hz select _j);_pos set[1,_09i*_i+(_pos select 1)];(_0we select _j)ctrlShow true;(_0we select _j)ctrlSetPosition _pos;(_0we select _j)ctrlCommit 0;};_0cl ctrlSetText(_0el select 4);_09k ctrlSetText(_0el select 5);_0qc ctrlSetStructuredText parseText(_0el select 6);if((_0el select 0)in kgge9y)then{_0bl ctrlSetBackgroundColor kgdryg;_0al ctrlShow false;}else{_0bl ctrlShow false;};switch(true)do{case((_0el select 0)in kggu5h):{_0al ctrlEnable false;_0dl ctrlSetStructuredText parseText "<br/>DISABLED";};case(kgsoxm<_0g):{_0al ctrlEnable false;_0dl ctrlSetStructuredText parseText format["<br/>LEVEL %1 REQUIRED",_0g];};default{_0al ctrlEnable true;_0dl ctrlShow false;};};if(count(kgge9y)==kg9ril)then{_0al ctrlEnable false;};}else{{_x ctrlShow false;_x ctrlSetPosition[0,0,-0.1,-0.1];_x ctrlCommit 0;}forEach _0we;};};};kg3vuz={disableSerialization;private["_0a","_08k","_0el"];_0a=uiNamespace getVariable "KingOfHill_Perks";_08k=call kg65tw;_0el=database_loadout_perksIndexes select(_08k select _this);if((_0el in kgge9y)||count(kgge9y)==kg9ril)exitWith{};kgge9y set[count kgge9y,_0el];call kgrhfn;call kg2rzt;call kgxqcw;kglgte=true;};kg2rzt={disableSerialization;private["_0a"];_0a=uiNamespace getVariable "KingOfHill_Perks";for "_i" from 0 to 2 do{private["_0fl","_0gg","_09k","_0al"];_0fl=2-_i;_0gg=_0a displayCtrl(kgxgfi+_0fl);_09k=_0a displayCtrl(kg79b9+_0fl);_0al=_0a displayCtrl(kgd3bc+_0fl);_0gl=_0a displayCtrl(kgrs6p+_0fl);switch(true)do{case(_i<count(kgge9y)):{_0gg ctrlSetBackgroundColor[0,0,0,1];_09k ctrlShow true;_09k ctrlSetText(database_loadout_perksList select(database_loadout_perksIndexes find(kgge9y select _i))select 5);_0al ctrlShow true;_0al ctrlSetText "Remove";_0gl ctrlShow false;};case(_i<kg9ril):{_0gg ctrlSetBackgroundColor[0,0,0,0.7];_0gl ctrlSetStructuredText parseText "Empty";_0gl ctrlShow true;{_x ctrlShow false}forEach[_09k,_0al];};case(_i==kg9ril):{_0gg ctrlSetBackgroundColor[0,0,0,0.2];_09k ctrlShow false;_0al ctrlShow true;_0al ctrlSetText "Unlock slot";_0gl ctrlSetStructuredText parseText((call kgo5wx)call kg9tze);_0gl ctrlShow true;};default{_0gg ctrlSetBackgroundColor[0,0,0,0.2];{_x ctrlShow false}forEach[_09k,_0al,_0gl];};};};};kg13eh={disableSerialization;private["_0a","_0hl"];_0a=uiNamespace getVariable "KingOfHill_Perks";_0hl=2-_this;switch(true)do{case(_0hl==kg9ril):{if(kg4re9>=call kgo5wx)then{kg4re9=kg4re9-(call kgo5wx);kg9ril=kg9ril+1;playSound "KOH_Cash";call kgrhfn;call kg2rzt;call kgxqcw;kglgte=true;}else{false call kgbz2a;};};case(_0hl<count(kgge9y)):{kgge9y=[kgge9y,_0hl]call BIS_fnc_removeIndex;call kgrhfn;call kg2rzt;call kgxqcw;kglgte=true;};};};kg65tw={private["_08k"];_08k=[];for "_i" from 0 to count(database_loadout_perksList)-1 do{if(call(database_loadout_perksList select _i select 2))then{_08k set[count _08k,_i];};};_08k};kgo5wx={switch(kg9ril)do{case 1:{kgbpd8};default{kgcaid};};};kg9tze={format["<t color='#aaffaa'>%1 $</t>",_this];};kgiwqi={private["_0s","_0c"];_0s="";for "_i" from 0 to count(_this)-1 do{_0c=({if((_x select 0)==(_this select _i))exitWith{_forEachIndex};}forEach database_loadout_perksList);_0s=_0s+format["%1%2",(if(_i>0)then{", "}else{""}),(if(!isNil{_0c})then{database_loadout_perksList select _0c select 4}else{"#ERROR#"})];};_0s};kgv7w3={private "_0le";_0le=[];{if(switch(true)do{case(_x in kggu5h):{false};case(_x<0):{false};case(_x>=count(database_loadout_perksList)):{false};default{true};})then{_0le pushBack _x;};}forEach kgge9y;kgge9y=_0le;};