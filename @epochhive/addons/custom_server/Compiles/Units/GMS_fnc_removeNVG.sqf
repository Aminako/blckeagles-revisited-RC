/*
	by Ghostrider
	8-13-16
	Remove NVG from AI
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/
*/
#include "\q\addons\custom_server\Configs\blck_defines.hpp";

params["_unit"];
//diag_log format["+--+ removing NVG for unit %1",_unit];

if (blck_useNVG) then
{
	if (_unit getVariable ["hasNVG",false]) then
	{
		
		_unit unassignitem "NVGoggles"; _unit removeweapon "NVGoggles";
	};
};
