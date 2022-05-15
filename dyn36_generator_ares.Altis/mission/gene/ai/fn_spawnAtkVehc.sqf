params ["_position",["_roadDir", 0]];

private _leaderType = selectRandom bso_gene_gl;

private _transType = selectRandom bso_gene_opfAtkVehc;

private _group = createGroup [bso_gene_side, true];
private _trans = [_position, _roadDir, _transType, _group] call BIS_fnc_spawnVehicle;


_group
