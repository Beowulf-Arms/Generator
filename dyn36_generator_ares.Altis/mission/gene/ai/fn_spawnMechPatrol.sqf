params ["_pos",["_roadDir", 0],["_PSize",1000]];

private _group = [_pos,_roadDir] call gene_fnc_spawnMechGroup;

[_group, [], _PSize, 8] call lambs_wp_fnc_taskPatrol;

_group setVariable ["lambs_danger_enableGroupReinforce", true, true];

gene_patrol_groups pushBack _group;
publicVariable "gene_patrol_groups";  
