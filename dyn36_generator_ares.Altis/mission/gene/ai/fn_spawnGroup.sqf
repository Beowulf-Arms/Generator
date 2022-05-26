params ["_position",["_grpSize",8]];

private _leaderType = selectRandom bso_gene_gl;

private _group = createGroup [bso_gene_side, true];

_leaderType createUnit [_position, _group, "", 0.7, "CORPORAL"];

private _playerCount = playersNumber bso_gene_side_bluX;

_groupCount = _grpSize;
if (_playerCount <= 5) then {_groupCount = (_grpSize /2)};

for "_i" from 1 to (_groupCount - 1) do {
    private _unitType = selectRandom bso_gene_opfgrp;
    _unitType createUnit [_position, _group];
};

_group
