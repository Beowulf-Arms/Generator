params ["_pos","_atkPos",["_Radius",100]];

//private _pos = getPosATL _positionObject;

private _group = [_pos] call gene_fnc_spawnGroup;

private _atkType = floor random 3;

private _gLeader = leader _group;

if (_atkType == 1) then {
	[_gLeader, _atkPos] spawn lambs_wp_fnc_taskAssault;
} else {
	private _wp1 = [_group, _atkPos, _Radius, "MOVE", "AWARE", "YELLOW", "FULL", "VEE"] call CBA_fnc_addWaypoint;
};


_group setVariable ["lambs_danger_enableGroupReinforce", true, true];

gene_atk_groups pushBack _group;
publicVariable "gene_atk_groups";  
