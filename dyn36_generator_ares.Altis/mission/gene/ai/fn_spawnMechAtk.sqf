params ["_pos","_atkPos",["_Radius",300],["_roadDir", 0]];

private _group = [_pos,_roadDir] call gene_fnc_spawnMechGroup;

private _gLeader = leader _group;

private _atkType = floor random 3;

if (_atkType == 1) then {
	[_gLeader, _pos] spawn lambs_wp_fnc_taskAssault;
} else {
	[_group, _pos, _Radius, "MOVE", "AWARE", "YELLOW", "FULL", "VEE"] call CBA_fnc_addWaypoint;
};

_group setVariable ["lambs_danger_enableGroupReinforce", true, true];

gene_patrol_groups pushBack _group;
publicVariable "gene_patrol_groups";  
