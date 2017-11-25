/*
	file: onPlayerRespawn.sqf

	author: JediNarwals [TG]

	description:
		BIS auto file that runs everytime the player respawns
*/

//----------------- Make things a little nicer on everyone

enableRadio false;														// That will clear the voices from my head...
enableSentences false;													// Stop talking to myself
enableSaving [false,false];												// "Everything Not saved will be lost." - Nintendo 'Quit Screen' message
//player enableFatigue false;											// Disables fatigue
player enableAimPrecision false;										// Does fatigue affect your aim

removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

player forceAddUniform "VSM_MulticamTropic_Crye_Camo";
player addVest "VSM_RAV_operator_MulticamTropic";
player addHeadgear "VSM_Mich2000_2_MulticamTropic";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";

player setSpeaker "ACE_NoVoice";
