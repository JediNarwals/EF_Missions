comment "Exported from Arsenal by B.Doom";

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
player forceAddUniform "U_B_HeliPilotCoveralls";
for "_i" from 1 to 9 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 9 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_salineIV_250";};
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_tourniquet";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "SmokeShellGreen";
player addItemToUniform "ACE_HandFlare_Green";
player addVest "rhsusf_spc";
for "_i" from 1 to 2 do {player addItemToVest "30Rnd_556x45_Stanag";};
player addHeadgear "H_PilotHelmetHeli_B";

comment "Add weapons";
player addWeapon "SMA_CTARBLK_F";
player addPrimaryWeaponItem "rhsusf_acc_T1_low";
player addWeapon "rhs_weap_rsp30_green";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152_2";
player linkItem "rhsusf_ANPVS_15";

comment "Set identity";
player setFace "WhiteHead_02";
player setSpeaker "ace_novoice";
