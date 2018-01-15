if (side player == west) then {

		_subtitles = [
			[ "System",			"Loading, please wait. This may take some time...", 0],
			[ "System",			"Almost done, final touches...", 10],
			[ "System",			"Loading complete, transmitting data...", 20]
		];
		_subtitles spawn BIS_fnc_EXP_camp_playSubtitles;
		sleep 30;
		0 fadeMusic 0;
		sleep 0.1;
		titlecut ["","BLACK IN",7];
		playMusic "EventTrack01a_F_Tacops";
		6 fadeMusic 1;
		_camera = "camera" camCreate [12031.02,4828.08,0.92];
		_camera cameraEffect ["internal", "back"];


		_camera camPrepareTarget [22997.44,62447.75,-77788.77];
		_camera camPreparePos [4353.99,2713.34,90.10];
		_camera camPrepareFOV 0.700;
		_camera camCommitPrepared 0;


		_camera camPrepareTarget [34236.47,98799.71,-3143.63];
		_camera camPreparePos [4570.46,3412.28,447.80];
		_camera camPrepareFOV 0.500;
		_camera camCommitPrepared 21.5;


	0 = execVM "Scripts\IntroText.sqf";
	sleep 16;
	titlecut ["","BLACK OUT",5];
	sleep 5;
	titlecut ["","BLACK IN",5];
	_camera cameraEffect ["terminate", "back"];
	camDestroy _camera;
	terminate PanCamScript;
	6 fadeMusic 0;
	sleep 3;
	6 fadeMusic 1;
	playMusic "AmbientTrack01a_F_Tacops";
};