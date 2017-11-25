[ missionNamespace, "arsenalOpened", {
    disableSerialization;
    _display = _this select 0;
    {
        ( _display displayCtrl _x ) ctrlSetText "Disabled";
        ( _display displayCtrl _x ) ctrlSetTextColor [ 1, 0, 0, 0.5 ];
        ( _display displayCtrl _x ) ctrlRemoveAllEventHandlers "buttonclick";
    }forEach [ 44146, 44147, 44144, 44148, 44149, 44150 ];
} ] call BIS_fnc_addScriptedEventHandler;
