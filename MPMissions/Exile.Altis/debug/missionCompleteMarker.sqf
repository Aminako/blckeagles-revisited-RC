////////////////////////////////////////////
// Create, delete and change Mission Markers
// 7/10/15
// by Ghostrider-DbD-
//////////////////////////////////////////
// spawn a temporary marker to indicate the position of a 'completed' mission
// this will not show to JIP players

private["_location","_MainMarker","_name"];
//diag_log format["blck_fnc_missionCompleteMarker:: _this = %1",_this];
_location = _this select 0;
_name = str(random(1000000)) + "MarkerCleared";
_MainMarker = createMarker [_name, _location];
_MainMarker setMarkerColor "ColorBlack";
_MainMarker setMarkerType "n_hq";
_MainMarker setMarkerText "Mission Cleared";
uiSleep 300;
deleteMarker _MainMarker;
//diag_log format["missionCompleteMarker complete script for _this = %1",_this];
