/*
	ArmA 3 King of Hill
	Code written by Sa-Matra
	Using this code without Sa-Matra's direct permission is forbidden
	
	Special build for Gamed.de
	
	Build ETYKMBSIGDHGNALL
*/
diag_log "====================== A3 King of Hill client started ===========================";enableSentences false;enableEngineArtillery false;settings_trustedUIDs=compileFinal'["76561198018221755", "76561197969399111", "76561197995219018", "76561198034968045", "76561197995346332", "76561197974365745", "76561198033210212", "76561197960667971"]';kgjqqg=compile preprocessFileLineNumbers "client\3rdparty\fn_shellSort.sqf";kgb1a5=compile preprocessFileLineNumbers "client\c_f_keyHandler.sqf";
#include "hpp\defines.hpp"
#include "db\db_loadout.sqf"
#include "db\db_vehicles.sqf"
#include "c_fl_adminMenu.sqf"
#include "c_fl_gameFuncs.sqf"
#include "c_fl_rulesMenu.sqf"
#include "c_fl_groupsMenu.sqf"
#include "c_fl_spawnFuncs.sqf"
#include "c_fl_generalFuncs.sqf"
#include "c_fl_playerActions.sqf"
#include "c_fl_playerVehicles.sqf"
#include "c_fl_playerProgression.sqf"
#include "c_fl_playerSettings.sqf"
#include "c_fl_playerCostumes.sqf"
#include "c_fl_playerLoadout.sqf"
#include "c_fl_playerPerks.sqf"
#include "c_fl_playerIcons.sqf"
#include "c_fl_playerMenu.sqf"
#include "c_fl_playerHUD.sqf"
kgn14n=(actionKeys "CarLeft"+actionKeys "CarRight"+actionKeys "MoveForward"+actionKeys "MoveBack");kg724s=false;kgv91t=isStreamFriendlyUIEnabled;kgfmtd=profileName;kgllpd=0;kg4bsk=false;kgkyng=true;kgqqa5=false;kg9po6=false;kgv74f=false;kg8u9s=[];kga4bj=0;kgs5yy=false;kgmn4v=false;kg2xyw=diag_tickTime+60;kgkq4g=0;kgt2cq=nil;kgs4mv=0;kgxbuo=0;kg3cht=[1000,2000,2000,4000];kgbgkr=1000;kguzdi=false;kgawih=true;kgeitw=true;kg352g=false;kg7ln8=false;kgeu6g=false;kgis8k=0;kgfcpm=false;kgl4pw=false;kgtm2q=call{_0zn=toArray str missionConfigFile;_0zn resize(count _0zn-15);toString _0zn};kgbkl7=[];kgo7rz=objNull;kgnvb7=0;kg9zy6=false;kgyv5m=0;kg8l2f=[0.04,0.06,0.08,0.1,0.15,0.25];kgo62w=objNull;kga73j=false;kgjjgd=[];kggmp7=[];kga2nf=[];kg9fav=[[],[],[],[],[]];kgfv3c=0;kg3gqu=0;kg9nxt=[];kg5rtx=0;kgbo7u=false;kgca36=objNull;kg6vgc=sideUnknown;kge24j=false;kg1lxr=0;kgzrd7=diag_tickTime;kgymt4=false;kgskxp=kgrdur;kglc1q=[];if(isNil{kg5i5w})then{kg5i5w=[];};if(isNil{kgvz48})then{kgvz48=[];};if(isNil{kgygsz})then{kgygsz=[[],[]];};kgsoxm=1;kg9ig1=0;kg7bkn=kgsoxm call kgio3v;kg9ril=1;kgge9y=[];kg4re9=1000;kgvlym=["arifle_TRG21_F"];kgtt65=[];kgyepb=[];kgoewf=[];kg8jf4=0;kgeu96=0;kgv82e=0;kghjek=[];for "_i" from 0 to kg642f do{kghjek set[_i,0];};kg14aj="arifle_TRG21_F";kgmtb2="";kg1pnr="";kgatq5="";kglhhp=["B_Rifleman","O_Rifleman","I_Rifleman"];kgpxsd=[];kgxsdy=[[0,0],[0,0],[0,0]];true spawn{waitUntil{!isNull findDisplay 46};(findDisplay 46)displayAddEventHandler["KeyDown",{_this call kgb1a5}];(findDisplay 46)displayAddEventHandler["MouseMoving",{kg2xyw=diag_tickTime;}];};call kghftm;true spawn{waitUntil{visibleMap};mapAnimAdd[0,0.3,kgdva1];mapAnimCommit;};true spawn{waitUntil{(player==player)&&local player&&!isNull(findDisplay 46)};kguvm4=getPlayerUID player;if(isNil{kguvm4})exitWith{diag_log "myUID is nil!";endMission "LOSER";};if(kguvm4=="")exitWith{diag_log "myUID == """"";endMission "LOSER";};if!(playerSide in kgubgt)exitWith{diag_log format["Bugged side: %1, array is %2",playerSide,kgubgt];endMission "LOSER";};waitUntil{!isNil{kgubgt}&&!isNil{kgnine}};if(kguvm4 in kgjx1m)exitWith{diag_log "You are in kick off list";endMission "LOSER";};if(time>missionNamespace getVariable["settings_teamBalanceStartsAfterTime",300]&&missionNamespace getVariable["settings_teamBalanceEnabled",false])then{_01n=playerSide call kgmmqu;_02n=0;{if(playerSide!=_x)then{_02n=_02n max(_x call kgmmqu)}}forEach kgubgt;if(_01n>=_02n+(missionNamespace getVariable["settings_teamBalanceThreshold",3]))then{endMission(switch(playerSide)do{case blufor:{"TooManyBLUFOR"};case opfor:{"TooManyOPFOR"};case independent:{"TooManyIndep"};default{"LOSER"};});};};disableRemoteSensors true;call kgivqa;call kgulpn;{[_forEachIndex,0]call kgesd5;}forEach kg3cht;call kgb9fq;kgqw4a=[player,profileName];publicVariableServer "kgqw4a";waitUntil{!isNil{kgvaqd}};if(kgvaqd!=sideUnknown&&kgvaqd!=side group player)exitWith{kg6vgc=kgvaqd;call kg46sc;};player call kgvazz;player addEventHandler["Killed",{_this call kg745x;}];player addEventHandler["Respawn",{_this call kgg4sr;}];player addEventHandler["InventoryOpened",{_this call kgveuw}];player addEventHandler["HandleHeal",{_this call kgphwi}];if(count(units group player)>1)then{[player]joinSilent grpNull;};true spawn{waitUntil{!isNil{BIS_fnc_feedback_fatigueBlur}};waitUntil{_03n=BIS_fnc_feedback_fatigueBlur;ppEffectDestroy _03n;waitUntil{BIS_fnc_feedback_fatigueBlur!=_03n};false;};};true spawn{waitUntil{!isNil{BIS_fnc_feedback_damageBlur}};waitUntil{_03n=BIS_fnc_feedback_damageBlur;ppEffectDestroy _03n;waitUntil{BIS_fnc_feedback_damageBlur!=_03n};false;};};player call kgziqs;};"kgq1v5" addPublicVariableEventHandler{if(playerSide in[blufor,opfor])then{{if((_x select 0)==kguvm4)then{if((_x select 1)>=2)then{endMission "LOSER";};};}forEach kgq1v5;};};"kgjx1m" addPublicVariableEventHandler{if(kguvm4 in(_this select 1))exitWith{endMission "LOSER";};};true spawn{waitUntil{!isNil{kgvtx7}};diag_log "Profile version key";diag_log str kgvtx7;};"kgftdm" addPublicVariableEventHandler{_09c=(_this select 1)getVariable["revive_player",objNull];if(local(_09c)&&_09c==player)then{(_this select 1)call kgrw4u;}else{_09c switchMove "amovppnemstpsnonwnondnon";};};"kg5pax" addPublicVariableEventHandler{(_this select 1)call kgt98j;};"kg5oi7" addPublicVariableEventHandler{if(player in crew(_this select 1))then{player setDamage 0;};(_this select 1)call kgf2lk;};"kgimrg" addPublicVariableEventHandler{(_this select 1)call kgcauz;};"kgdpwy" addPublicVariableEventHandler{(_this select 1)call kg1kbw;};"kgs7iq" addPublicVariableEventHandler{(kgubgt select(_this select 1))call kgpse2;};"kgnine" addPublicVariableEventHandler{if(call kgdfux)then{call kgfaiq;};{if(player!=_x&&(_x getVariable["koh_handleheal_unit",objNull]!=_x))then{_x addEventHandler["HandleHeal",{_this call kgphwi}];_x setVariable["koh_handleheal_unit",_x];};}forEach(_this select 1);(_this select 1)call kgnebq;};"kgatxt" addPublicVariableEventHandler{setDate(_this select 1);};"kgvsc7" addPublicVariableEventHandler{30 setFog 0.02;call kgxedq;};"kgqi45" addPublicVariableEventHandler{if(!isNil{kg2utt})exitWith{};playMusic "LeadTrack04_F_EPC";};"kgc35q" addPublicVariableEventHandler{if(playerSide==(_this select 1 select 1))then{_0na=[_this select 1 select 0];{if(alive _x)then{_0na set[count _0na,_x]};}forEach kgbkl7;kgbkl7=_0na;};};"kgk9vp" addPublicVariableEventHandler{if(player in(_this select 1))then{if(kgfv3c==0)then{["Warning","You are being targeted by anti-tank launcher",false,5]call kgumf6;playSound "FD_Start_F";};};};"kgw9b6" addPublicVariableEventHandler{(_this select 1)params["_04n","_05n"];if(_04n==player)then{["Hang in there",format["Player %1 tries to revive you",name _05n],true,5]call kgumf6;};};"kg1ym8" addPublicVariableEventHandler{kg8u9s=(_this select 1);};"kgjs55" addPublicVariableEventHandler{kg1yev=[_this select 1,[call kg5lz9,profileName,profileNameSteam,kguvm4]];publicVariableServer "kg1yev";};"kg87s8" addPublicVariableEventHandler{(_this select 1)call kg7npo;};"kggu5h" addPublicVariableEventHandler{kg5i5w=kggu5h;};"kg26ki" addPublicVariableEventHandler{kgvz48=kg26ki;};"kgqmj3" addPublicVariableEventHandler{kgygsz=kgqmj3;};"kgfsn3" addPublicVariableEventHandler{(_this select 1 select 0)setVelocity(_this select 1 select 1);};"kgi3wj" addPublicVariableEventHandler{if!(vehicle player isKindOf "Air"&&local vehicle player)exitWith{};(_this select 1)params["_09n","_06n"];_0me=side group _06n;if!(_0me in kgubgt)exitWith{};_name=name _06n;_07n=(_0me==side group player);_08n=getText(configFile>>"CfgVehicles">>typeOf(_09n)>>"displayName");[(if(_07n)then{"Notification"}else{"Warning"}),(if(_07n)then{format["Friendly %1 (%2) has entered the airspace",_08n,_name]}else{format["Enemy %1 (%2) has entered the airspace",_08n,_name]}),_07n,7]call kgumf6;};"kg43v5" addPublicVariableEventHandler{(_this select 1)call kg83u4;};"kgsw9l" addPublicVariableEventHandler{if(player!=player)exitWith{};if(player in(_this select 1))then{["Notification","You were kicked out of the vehicle by its owner",true,5]call kgumf6;};};"kgkgb4" addPublicVariableEventHandler{(_this select 1)call kgziah;};"kgjvyy" addPublicVariableEventHandler{(_this select 1)call kg6a1a;};"kgfums" addPublicVariableEventHandler{if(player in(_this select 1)&&player getVariable["koh_safe",-1]>0)then{player setVariable["koh_safe",-1,true];format["You left safe zone because of crew member being out of it."]call kgsxrb;};};"publicVar_checkForProfileResetReturn" addPublicVariableEventHandler{kg8o72=(_this select 1);};onPreloadFinished "kg6wp3 = true; onPreloadFinished """";";kgp3d9=true;