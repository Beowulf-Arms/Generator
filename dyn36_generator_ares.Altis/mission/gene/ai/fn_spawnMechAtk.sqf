params ["_pos","_atkPos",["_Radius",100],["_roadDir", 0]];

private _group = [_pos,_roadDir] call gene_fnc_spawnMechGroup;

private _gLeader = leader _group;

private _atkType = floor random 3;

if (_atkType == 1) then {
	[_group, _atkPos, _Radius, "SAD", "AWARE", "YELLOW", "NORMAL", "VEE"] call CBA_fnc_addWaypoint;

} else {
	[_group, _atkPos, _Radius, "MOVE", "AWARE", "YELLOW", "NORMAL", "VEE"] call CBA_fnc_addWaypoint;
};

_group setVariable ["lambs_danger_enableGroupReinforce", true, true];

gene_patrol_groups pushBack _group;
publicVariable "gene_patrol_groups";  
