params ["_position",["_grpSize",8]];

private _leaderType = selectRandom bso_gene_gl;

private _group = createGroup [bso_gene_side, true];

_leaderType createUnit [_position, _group, "", 0.7, "CORPORAL"];

for "_i" from 1 to (_grpSize - 1) do {
    private _unitType = selectRandom bso_gene_opfgrp;
    _unitType createUnit [_position, _group];
};

_group
