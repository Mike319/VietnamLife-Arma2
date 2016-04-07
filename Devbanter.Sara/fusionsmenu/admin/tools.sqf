#include <macro.h>
_pathtotools = "fusionsmenu\admin\tools\";
_pathtoweapon = "fusionsmenu\admin\weapons\";
_pathtovehicles = "fusionsmenu\admin\veh\";
_pathtosoldier= "fusionsmenu\admin\spawn\";
_EXECscript1 = 'player execVM "'+_pathtotools+'%1"';
_EXECscript3 = 'player execVM "'+_pathtoweapon+'%1"';
_EXECscript5 = 'player execVM "'+_pathtovehicles+'%1"';
_EXECscript7 = '%2 execVM "'+_pathtovehicles+'%1"';
_EXECscript6 = 'player execVM "'+_pathtosoldier+'%1"';



if ((getPlayerUID player) in ["76561198039773575","76561198150810088","76561198042843082","76561198033878017","76561198018724012","76561198120753139"]) then { //all admins
	if ((getPlayerUID player) in ["76561198039773575","76561198033878017","76561198150810088","76561198042843082","76561198018724012","76561198120753139"]) then { //Admins Go Here aswell
		adminmenu =
		[
			["DevilDog's Menu",true],
				["Tools", [4], "#USER:ToolsMenu", -5, [["expression", ""]], "1", "1"],
				["Cars", [4], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],
				["Weapons", [5], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"],
				["Spawn Groups", [5], "#USER:Soldier", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
		];};
} else {
adminmenu =
[
	["",true],
		//["Toggle Debug", [2], "", -5, [["expression", format[_execdebug,"playerstats.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];};
ToolsMenu =
[
	["Tools",true],
        ["Teleport", [2],  "", -5, [["expression", format[_EXECscript1,"teleport.sqf"]]], "1", "1"],
		["Teleport Player To Me", [3],  "", -5, [["expression", format[_EXECscript1,"tptome.sqf"]]], "1", "1"],		
        ["God Mode", [4],  "", -5, [["expression", format[_EXECscript1,"god.sqf"]]], "1", "1"],
		["Car God Mode", [5],  "", -5, [["expression", format[_EXECscript1,"cargod.sqf"]]], "1", "1"],
		["Heal Self", [6],  "", -5, [["expression", format[_EXECscript1,"heal.sqf"]]], "1", "1"],
		["Heal Player(s)", [7],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
		["Player Markers", [8],  "", -5, [["expression", format[_EXECscript1,"ESP.sqf"]]], "1", "1"],
		["Spectate", [9],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
		["RepairV", [9],  "", -5, [["expression", format[_EXECscript1,"repairflip.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

WeaponMenu =
[
	["Weapons",true],
	//Add Weapons Here Gave some examples :D
		["MX", [2],  "", -5, [["expression", format[_EXECscript3,"mx.sqf"]]], "1", "1"],
		["MK 200", [3],  "", -5, [["expression", format[_EXECscript3,"mk200.sqf"]]], "1", "1"],
		["LRR", [4],  "", -5, [["expression", format[_EXECscript3,"lrr.sqf"]]], "1", "1"],
		["EBR", [5],  "", -5, [["expression", format[_EXECscript3,"ebr.sqf"]]], "1", "1"],
		["GM6", [6],  "", -5, [["expression", format[_EXECscript3,"gm6.sqf"]]], "1", "1"],
		["P07", [7],  "", -5, [["expression", format[_EXECscript3,"phgun.sqf"]]], "1", "1"],
		["Starter Pistol", [8],  "", -5, [["expression", format[_EXECscript3,"spistol.sqf"]]], "1", "1"],
		
			["Next page", [12], "#USER:WeaponMenu2", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenu2 = 
[
	["Weapons 2",true],
	//Add Weapons Here Gave another page because it could get a little confusing :P
		["MX", [2],  "", -5, [["expression", format[_EXECscript3,"mx.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
		
];
VehicleMenu = 
[
	["Vehicles",true],
		["ATV", [2],  "", -5, [["expression", format[_EXECscript5,"ATV.sqf"]]], "1", "1"],
		["Hunter Armed", [3],  "", -5, [["expression", format[_EXECscript5,"hunter.sqf"]]], "1", "1"],
		["Offroad Truck HMG .50", [4],  "", -5, [["expression", format[_EXECscript5,"offroad.sqf"]]], "1", "1"],
		["hemett", [5],  "", -5, [["expression", format[_EXECscript5,"hemett.sqf"]]], "1", "1"],
		["Offroad", [6],  "", -5, [["expression", format[_EXECscript5,"offroad1.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:VehicleMenu2", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenu2 = 
[
	["Vehicles 2",true],
		["Kart Blue", [2],  "", -5, [["expression", format[_EXECscript7,"Kart.sqf",0]]], "1", "1"],
		["Kart Blue/Yellow", [2],  "", -5, [["expression", format[_EXECscript7,"Kart.sqf",1]]], "1", "1"],
		["Kart Black/Orange", [2],  "", -5, [["expression", format[_EXECscript7,"Kart.sqf",2]]], "1", "1"],
		["Kart Red", [2],  "", -5, [["expression", format[_EXECscript7,"Kart.sqf",3]]], "1", "1"],
		//["Remove Karts", [2],  "", -5, [["expression", format[_EXECscript5,"cleanup.sqf",3]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
		
showCommandingMenu "#USER:adminmenu";