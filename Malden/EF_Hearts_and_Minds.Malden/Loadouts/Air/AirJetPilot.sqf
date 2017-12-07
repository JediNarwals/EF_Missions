removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

player forceAddUniform "U_B_PilotCoveralls";
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 7 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 7 do {player addItemToUniform "ACE_packingBandage";};
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addVest "V_Chestrig_oli";
for "_i" from 1 to 6 do {player addItemToVest "SMA_30Rnd_556x45_M855A1";};
player addHeadgear "H_PilotHelmetFighter_B";
player addBackpack "ACE_NonSteerableParachute";

player addWeapon "SMA_M4CQBR";
player addPrimaryWeaponItem "SMA_eotech552";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";

player setSpeaker "ACE_NoVoice";

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;
