params ["_pos",["_CSize",30]];

private _group = [_pos] call gene_fnc_spawnGroup;

[_group, _pos, _CSize, [], false, true] call lambs_wp_fnc_taskCamp;

gene_garrison_groups pushBack _group;
publicVariable "gene_garrison_groups";  
