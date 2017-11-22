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
player forceAddUniform "U_B_HeliPilotCoveralls";
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 7 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 7 do {player addItemToUniform "ACE_quikclot";};
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addVest "V_Chestrig_oli";
for "_i" from 1 to 6 do {player addItemToVest "SMA_30Rnd_556x45_M855A1";};
player addHeadgear "H_PilotHelmetHeli_B";

comment "Add weapons";
player addWeapon "SMA_M4CQBR";
player addPrimaryWeaponItem "SMA_eotech552";


comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";


comment "Make player Mute";
player setSpeaker "ACE_NoVoice";