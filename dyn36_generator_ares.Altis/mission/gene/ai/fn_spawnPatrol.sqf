//params ["_positionObject"];
params ["_pos",["_PSize",300]];

//private _pos = getPosATL _positionObject;

private _group = [_pos] call gene_fnc_spawnGroup;

[_group, [], _PSize, 6] call lambs_wp_fnc_taskPatrol;

_group setVariable ["lambs_danger_enableGroupReinforce", true, true];

gene_patrol_groups pushBack _group;
publicVariable "gene_patrol_groups";  
