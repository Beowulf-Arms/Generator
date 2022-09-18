params ["_pos",["_GSize",30]];

private _group = [_pos] call gene_fnc_spawnGroup;

private _nBuild = nearestBuilding _pos;

[_group, _nBuild, _GSize] call lambs_wp_fnc_taskGarrison;

gene_garrison_groups pushBack _group;
publicVariable "gene_garrison_groups";  
