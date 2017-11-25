comment "Exported from Arsenal by Timai";

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "rhs_uniform_cu_ocp";
for "_i" from 1 to 7 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 7 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_EntrenchingTool";
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {player addItemToUniform "Chemlight_green";};
player addVest "rhsusf_iotv_ocp_Rifleman";
for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellRed";
player addItemToVest "SmokeShellGreen";
player addItemToVest "SmokeShellBlue";
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 6 do {player addItemToVest "SMA_30Rnd_556x45_M855A1";};
player addBackpack "B_Kitbag_mcamo";
player addItemToBackpack "rhsusf_ach_helmet_headset_ocp";
player addItemToBackpack "rhs_ess_black";
player addItemToBackpack "rhsusf_ANPVS_14";
for "_i" from 1 to 4 do {player addItemToBackpack "rhsusf_100Rnd_762x51";};
for "_i" from 1 to 2 do {player addItemToBackpack "rhsusf_100Rnd_762x51_m61_ap";};
player addHeadgear "H_MilCap_mcamo";
player addGoggles "G_Aviator";

comment "Add weapons";
player addWeapon "SMA_AUG_A3_F";
player addPrimaryWeaponItem "SMA_SFFL_BLK";
player addPrimaryWeaponItem "SMA_eotechG33_3XDOWN";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";

comment "Make player Mute";
player setSpeaker "ACE_NoVoice";