comment "Exported from Arsenal by B. Doom";

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
player forceAddUniform "VSM_MulticamTropic_Crye_Camo";
for "_i" from 1 to 9 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 9 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_EntrenchingTool";
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_tourniquet";
player addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_salineIV_250";};
player addItemToUniform "rhsusf_ANPVS_14";
player addItemToUniform "ACE_IR_Strobe_Item";
player addVest "VSM_RAV_operator_MulticamTropic";
for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 12 do {player addItemToVest "SMA_30Rnd_556x45_M855A1";};
for "_i" from 1 to 3 do {player addItemToVest "SMA_30Rnd_556x45_M855A1_Tracer";};
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_JHP";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellRed";};
player addItemToVest "SmokeShellGreen";
player addItemToVest "SmokeShellBlue";
player addItemToVest "ACE_HandFlare_Red";
player addItemToVest "ACE_HandFlare_Green";
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_green";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_Chemlight_HiRed";};
player addItemToVest "ACE_Chemlight_IR";
player addHeadgear "VSM_Mich2000_2_MulticamTropic";
player addGoggles "VSM_Shemagh_Goggles_OD";

comment "Add weapons";
player addWeapon "SMA_M4afg_OD_SM";
player addPrimaryWeaponItem "SMA_FLASHHIDER1";
player addPrimaryWeaponItem "SMA_SFPEQ_M4TOP_BLK";
player addPrimaryWeaponItem "SMA_eotech552_3XDOWN";
player addWeapon "rhsusf_weap_glock17g4";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";

comment "Set identity";
player setSpeaker "ace_novoice";
