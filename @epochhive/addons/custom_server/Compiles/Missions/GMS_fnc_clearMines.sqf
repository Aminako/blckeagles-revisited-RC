// removes mines in a region centered around a specific position.
/*
	for DBD Clan
	By Ghostrider-DBD-
	Copyright 2016
	Last Modified 8-13-16
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/
#include "\q\addons\custom_server\Configs\blck_defines.hpp";
 
params ["_mines"];
//_mines = _this select 0;  // array containing the mines to be deleted
//diag_log format["deleting %1 mines----- >>>> ", count _mines];
{
	deleteVehicle _x;
} forEach _mines;

