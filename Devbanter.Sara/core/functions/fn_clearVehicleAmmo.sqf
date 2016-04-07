/*
	File: fn_clearVehicleAmmo.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Clears the vehicle of ammo types that we don't want.
*/
private["_vehicle","_veh"];
_vehicle = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {}; //DAFUQ
_veh = typeOf _vehicle;

if(_veh == "B_Boat_Armed_01_minigun_F") then
{
	_vehicle removeMagazinesTurret ["200Rnd_40mm_G_belt",[0]];
};
if(_veh == "B_Heli_Attack_01_F") then 
{
	_vehicle removeMagazinesTurret ["4Rnd_AAA_missiles",[0]];
	_vehicle removeMagazinesTurret ["24Rnd_PG_missiles",[0]];
};
if(_veh == "B_APC_Wheeled_01_cannon_F") then 
{
	_vehicle removeMagazinesTurret ["60Rnd_40mm_GPR_Tracer_Red_shells",[0]];
	_vehicle removeMagazinesTurret ["40Rnd_40mm_APFSDS_Tracer_Red_shells",[0]];
};
if(_veh == "B_APC_Wheeled_01_cannon_F") then 
{
	_vehicle removeMagazinesTurret ["60Rnd_40mm_GPR_Tracer_Red_shells",[0]];
	_vehicle removeMagazinesTurret ["40Rnd_40mm_APFSDS_Tracer_Red_shells",[0]];
};
if(_veh == "O_APC_Wheeled_02_rcws_F") then 
{
	_vehicle removeMagazinesTurret ["96Rnd_40mm_G_belt",[0]];
	_vehicle removeMagazinesTurret ["500Rnd_127x99_mag_Tracer_Green",[150]];
};
if(_veh == "B_APC_Tracked_01_rcws_F") then 
{
	_vehicle removeMagazinesTurret ["96Rnd_40mm_G_belt",[0]];
	_vehicle removeMagazinesTurret ["500Rnd_127x99_mag_Tracer_Red",[0]];
};
if(_veh == "O_Heli_Attack_02_black_F") then 
{
	_vehicle removeMagazinesTurret ["8Rnd_LG_scalpel",[0]];
	_vehicle removeMagazinesTurret ["38Rnd_80mm_rockets",[0]];
};

clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;