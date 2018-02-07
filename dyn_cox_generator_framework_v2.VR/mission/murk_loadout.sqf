/////bmf-v1_5////
//
//	BSO Murk_Loadout Script v1.0
//
// Use this script to assign your own loadouts to Murk Spawned AI.
// This script can also be used to assign textures, apply BIS_fnc_initVehicle 
//changes and any other inits you wish to run on AI spawned through murk spawners. 
//
// Use the execVM line below in the groups waypoint activation. Murk Spawn Init param doesnt seem to work.
//
//
//
// null = [this] execVM "mission\murk_loadout.sqf";
//


// Selects the group leader.
_murker = _this select 0;


// Checks each unit in the group against a list of classnames, and then applies the chosen loadout.
{
	
	if (typeof _x == "O_Soldier_TL_F") then {[_x,"opfor","teamleader",true] call BSO_fnc_applyLoadout;}; 
	if (typeof _x == "O_Soldier_SL_F") then {[_x,"opfor","squadleader",true] call BSO_fnc_applyLoadout;}; 
	if (typeof _x == "O_Soldier_LAT_F") then {[_x,"opfor","RiflemanLat",true] call BSO_fnc_applyLoadout;}; 		
	if (typeof _x == "O_Soldier_F") then {[_x,"opfor","rifleman",true] call BSO_fnc_applyLoadout;}; 
	if (typeof _x == "O_Soldier_AR_F") then {[_x,"opfor","autorifleman",true] call BSO_fnc_applyLoadout;}; 
	if (typeof _x == "O_Support_MG_F") then {[_x,"opfor","machinegunner",true] call BSO_fnc_applyLoadout;}; 
	if (typeof _x == "O_Soldier_M_F") then {[_x,"opfor","marksman",true] call BSO_fnc_applyLoadout;}; 
	if (typeof _x == "O_Crew_F") then {[_x,"opfor","crew",true] call BSO_fnc_applyLoadout;}; 
	

	} foreach units group _murker;
	
	
/*	

// The below uses the BIS_fnc_initVehicle to apply any visual changes to murk spawned units. 
// Use the Vehicle Arsenal to create your vehicle, then use the Export function to generate the BIS_fnc_initVehicle.

[ 
(vehicle _murker), 
 ["Olive",1],  
 ["IFF_Panels_Hide",1] 
] call BIS_fnc_initVehicle;

*/

/*
// This section is used to apply custom textures to units.
// Using this you can create custom uniforms on AI or with some changes, custom vehicle textures.
//

	sleep 3;
	
	{
		_x setObjectTextureGlobal [0,"mission\stripe.jpg"];
	
	} foreach units group _murker;	
	
*/	
	