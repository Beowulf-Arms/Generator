/////bmf-v1_5////
////// ====	Taskmaster
execVM "mission\briefing.sqf";

// ACRE
execVM "bso\acre.sqf";

////// ==== Safety
// Enable ACE weapon Safety and Earplugs in.
#include "BSO\safe\safety.sqf";
// Safe Start
// Import all modules.
//fc_safestart_init = compile preprocessFileLineNumbers "BSO\safe\safestart_init.sqf";
// Run all modules.
//[] spawn fc_safestart_init;
// Safe Zone
execVM "bso\safe\safe_zone.sqf";

//Safe Start Hint
// if (isNil "Hint_BSOStart") then { Hint_BSOStart = true; publicVariable "Hint_BSOStart"};
// Adds Admin action to start mission
//_mainAction = ["bso_start_mission", "Start Mission", "", {execVM "bso\safe\safestart_adminAction.sqf"}, {fc_safestart && serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
//[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin"], _mainAction] call ace_interact_menu_fnc_addActionToClass;




/////// ==== Save Disable
enableSaving [false,false];

////// === Mission Log
diag_log format ["###### %1 ######", missionName];
diag_log [diag_frameno, diag_ticktime, time, "Executing init.sqf"];

if (!isServer && isNull player) then  //JIP player
{
	waitUntil {!isNull player};

	[] execVM "BSO\tele\initTeleportToSL.sqf";
};


//while {Hint_BSOStart} do
//	{
//		["BSOSafeStart",["SafeStart is active and weapons are disabled"]] call BIS_fnc_showNotification;
//		sleep 30;
//	}; 