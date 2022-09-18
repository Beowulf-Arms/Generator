params ["_pos",["_roadDir", 0],["_GSize",50]];

private _group = [_pos,_roadDir] call gene_fnc_spawnMechGroup;

createGuardedPoint [bso_gene_side, _pos, -1, objNull];

[_group, _pos, _GSize, "GUARD", "SAFE", "YELLOW", "NORMAL", "STAG COLUMN"] call CBA_fnc_addWaypoint;

_group setVariable ["lambs_danger_enableGroupReinforce", true, true];

gene_patrol_groups pushBack _group;
publicVariable "gene_patrol_groups";  
