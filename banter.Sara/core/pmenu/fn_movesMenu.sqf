#include <macro.h>
/*
	File: fn_movesMenu.sqf
	Author: Jack "Scarso" Farhall
*/

private["_display","_list","_moves"];
disableSerialization;

_moves = [
    ["Kung Fu","AmovPercMstpSnonWnonDnon_exerciseKata"],
	["Push Ups","AmovPercMstpSnonWnonDnon_exercisePushup"],
	["Teebag (Fast)","AmovPercMstpSnonWnonDnon_exercisekneeBendB"],
	["Teebag (Normal)","AmovPercMstpSnonWnonDnon_exercisekneeBendA"],
	["Scared","AmovPercMstpSnonWnonDnon_Scared"],
	["fap","A3L_Fap"],
	["Dance","Dancing"],
	["Crazy Dance","Crazy_Dancing"]
	];

waitUntil {!isNull (findDisplay 2900)};
_display = findDisplay 2900;
_list = _display displayCtrl 2902;
//Purge List
lbClear _list;

{
	
	_list lbAdd format["%1", _x select 0];
	_list lbSetdata [(lbSize _list)-1,str(_x select 1)];
} foreach _moves;