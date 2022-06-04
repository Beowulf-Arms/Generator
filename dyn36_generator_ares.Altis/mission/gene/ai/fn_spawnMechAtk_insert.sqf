params ["_pos","_atkPos",["_DismountRadius",200],["_roadDir", 0]];


private _leaderType = selectRandom bso_gene_gl;
private _transType = selectRandom (bso_gene_opfTrans + bso_gene_opfArmTrans);
private _Tgroup = createGroup [bso_gene_side, true];
private _APCSupport = _transType in bso_gene_opfArmTrans;

private _trans = [_pos, _roadDir, _transType, _Tgroup] call BIS_fnc_spawnVehicle;

// Gets the number of cargo seats as "_cargoSeats" to be filled with transportable units
private _totalSeats = [_transType, true] call BIS_fnc_crewCount; // Number of total seats: crew + non-FFV cargo/passengers + FFV cargo/passengers
private _crewSeats = [_transType, false] call BIS_fnc_crewCount; // Number of crew seats only
private _cargoSeats = _totalSeats - _crewSeats; // Number of total cargo/passenger seats: non-FFV + FFV

private _infGroup = [_pos, _cargoSeats] call gene_fnc_spawnGroup;
private _infGroupLead = leader _infGroup;
{_x moveInAny (_trans select 0)} forEach units group _infGroupLead;

//dismount point
_disDir = _atkPos getDir _pos;
_disPointOg = _atkPos getPos [_DismountRadius, _disDir];
_disPoint = [[[_disPointOg, 50]], []] call BIS_fnc_randomPos;


_infWP1 = [_infGroup, _atkPos, 0, "MOVE", "AWARE", "RED", "FULL", "WEDGE"] call CBA_fnc_addWaypoint;
_infWP1 setWaypointStatements ["true", "this setVariable [""lambs_danger_enableGroupReinforce"", true, true]"];
_infWP2 = [_infGroup, _atkPos, 0, "MOVE", "SAFE", "RED", "NORMAL", "WEDGE", "[this, this, 30] call lambs_wp_fnc_taskGarrison"] call CBA_fnc_addWaypoint;


if (_APCSupport) then {
	// APC Waypoints
	_TransWP1 = [_Tgroup, _disPoint, _DismountRadius, "TR UNLOAD", "SAFE", "GREEN", "NORMAL", "NO CHANGE"] call CBA_fnc_addWaypoint;
	_TransWP1 setWaypointCompletionRadius _DismountRadius;
	_TransWP2 = [_Tgroup, _atkPos, 0, "MOVE", "AWARE", "GREEN", "LIMITED", "NO CHANGE"] call CBA_fnc_addWaypoint;
	_TransWP2 setWaypointStatements ["true", "this setVariable [""lambs_danger_enableGroupReinforce"", true, true]"];

} else {
	// Trans waypoints
	_TransWP1 = [_Tgroup, _disPoint, 0, "TR UNLOAD", "CARELESS", "GREEN", "NORMAL", "NO CHANGE"] call CBA_fnc_addWaypoint;
	_TransWP1 setWaypointCompletionRadius _DismountRadius;
	_TransWP2 = [_Tgroup, _pos, 0, "MOVE", "CARELESS", "GREEN", "NORMAL", "NO CHANGE"] call CBA_fnc_addWaypoint;
	_TransWP2 setWaypointStatements ["true", "cleanUpveh = vehicle leader this; {deleteVehicle _x} forEach crew cleanUpveh + [cleanUpveh];"];
};