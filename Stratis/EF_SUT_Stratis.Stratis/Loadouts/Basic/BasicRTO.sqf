removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

player forceAddUniform "VSM_MulticamTropic_Crye_Camo";
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
player addVest "VSM_RAV_operator_MulticamTropic";
player addItemToVest "rhsusf_ANPVS_14";
for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellRed";
player addItemToVest "SmokeShellGreen";
player addItemToVest "SmokeShellBlue";
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 7 do {player addItemToVest "SMA_30Rnd_556x45_M855A1";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_IR_Strobe_Item";};
player addBackpack "tf_rt1523g_big_bwmod";

player addHeadgear "VSM_Mich2000_2_MulticamTropic";
player addGoggles "VSM_Shemagh_Goggles_OD";

player addWeapon "SMA_M4afg_OD_SM";
player addPrimaryWeaponItem "SMA_FLASHHIDER1";
player addPrimaryWeaponItem "SMA_SFPEQ_M4TOP_BLK";
player addPrimaryWeaponItem "SMA_eotech552_3XDOWN";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";

player setSpeaker "ACE_NoVoice";
