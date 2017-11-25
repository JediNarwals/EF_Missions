/*
	@file		initPlayerLocal.sqf
	@author		JediNarwals [TG]
	@description

		Initializes the player local scripts.

*/

//------------------- Client Execution

enableRadio false;														// That will clear the voices from my head...
enableSentences FALSE;													// Stop talking to myself
enableSaving [FALSE,FALSE];												// "Everything Not saved will be lost." - Nintendo 'Quit Screen' message
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
