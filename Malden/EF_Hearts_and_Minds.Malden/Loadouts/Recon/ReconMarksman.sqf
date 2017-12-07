


removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;


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
player addItemToVest "rhsusf_ANPVS_14";
for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellRed";
player addItemToVest "SmokeShellGreen";
player addItemToVest "SmokeShellBlue";
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 6 do {player addItemToVest "rhsusf_10Rnd_762x51_m993_Mag";};
player addHeadgear "rhs_Booniehat_ocp";
player addGoggles "G_Tactical_Clear";


player addWeapon "rhs_weap_m40a5_d";
player addPrimaryWeaponItem "SMA_ANPEQ15_TAN";
player addPrimaryWeaponItem "ACE_optic_LRPS_PIP";
player addPrimaryWeaponItem "rhsusf_acc_harris_swivel";
player addHandgunItem "muzzle_snds_L";


player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";


player setSpeaker "ACE_NoVoice";