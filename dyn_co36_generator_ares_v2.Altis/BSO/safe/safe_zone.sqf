/////bmf-v1_5////
/*
    GrenadeStop v0.8 for ArmA 3 Alpha by Bake (tweaked slightly by Rarek)
    
    DESCRIPTION:
    Stops players from throwing grenades in safety zones.
    
    INSTALLATION:
    Move grenadeStop.sqf to your mission's folder. Then add the
    following line to your init.sqf file (create one if necessary):
    execVM "grenadeStop.sqf";
	execVM "bso\safe_zone.sqf";
    
    CONFIGURATION:
    Edit the #defines below.
*/

#define SAFETY_ZONES [["b_base", 50]] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define MESSAGE "DON'T BE A DICK"

if (isDedicated) exitWith {};
waitUntil {!isNull player};

["ace_firedPlayer", {
    if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
    {
        deleteVehicle (_this select 6);
        titleText [MESSAGE, "PLAIN", 3];
    };
}] call CBA_fnc_addEventHandler;
