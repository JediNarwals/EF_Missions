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
player forceAddUniform "VSM_OGA_Crye_Camo";
for "_i" from 1 to 9 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_salineIV_250";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 9 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_tourniquet";
player addItemToUniform "ACE_Flashlight_XL50";
player addVest "rhsusf_spc_crewman";
for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
player addItemToVest "ACE_HandFlare_Green";
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_JHP";};
for "_i" from 1 to 5 do {player addItemToVest "30Rnd_556x45_Stanag";};
player addBackpack "VSM_OGA_Backpack_Compact";
player addItemToBackpack "ToolKit";
player addItemToBackpack "rhsusf_ANPVS_15";
player addHeadgear "rhsusf_cvc_helmet";
player addGoggles "rhsusf_shemagh_gogg_tan";

comment "Add weapons";
player addWeapon "SMA_CTARBLK_F";
player addPrimaryWeaponItem "rhsusf_acc_T1_low";
player addWeapon "rhsusf_weap_glock17g4";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152_1";

comment "Set identity";
player setFace "WhiteHead_20";
player setSpeaker "ace_novoice";
