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
player forceAddUniform "U_B_PilotCoveralls";
for "_i" from 1 to 9 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 9 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "ACE_tourniquet";
player addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_salineIV_250";};
player addItemToUniform "ACE_morphine";
player addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_HandFlare_Green";};
player addItemToUniform "SmokeShellGreen";
player addItemToUniform "30Rnd_9x21_Mag";
player addItemToUniform "16Rnd_9x21_Mag";
player addHeadgear "H_PilotHelmetFighter_B";

comment "Add weapons";
player addWeapon "hgun_PDW2000_F";
player addPrimaryWeaponItem "rhsusf_acc_T1_low";
player addWeapon "rhs_weap_rsp30_green";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152_1";

comment "Set identity";
player setFace "WhiteHead_02";
player setSpeaker "ace_novoice";
