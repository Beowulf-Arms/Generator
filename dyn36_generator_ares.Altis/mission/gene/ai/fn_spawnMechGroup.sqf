params ["_position",["_roadDir", 0]];

private _leaderType = selectRandom bso_gene_gl;
private _transType = selectRandom bso_gene_opfTrans;
private _group = createGroup [bso_gene_side, true];

private _spawnPosition = [_position, 0, 100] call BIS_fnc_findSafePos;

private _trans = [_spawnPosition, _roadDir, _transType, _group] call BIS_fnc_spawnVehicle;

// Gets the number of cargo seats as "_cargoSeats" to be filled with transportable units
private _totalSeats = [_transType, true] call BIS_fnc_crewCount; // Number of total seats: crew + non-FFV cargo/passengers + FFV cargo/passengers
private _crewSeats = [_transType, false] call BIS_fnc_crewCount; // Number of crew seats only
private _cargoSeats = _totalSeats - _crewSeats; // Number of total cargo/passenger seats: non-FFV + FFV

private _playerCount = playersNumber bso_gene_side_bluX;
if (_playerCount <= 5) then {_cargoSeats = (_cargoSeats /2)};

for "_i" from 1 to _cargoSeats do {
    private _unitType = selectRandom bso_gene_opfgrp;
    private _unit = _group createUnit [_unitType, _position, [], 5, "NONE"];
    _unit moveInAny vehicle leader _unit;
};

if (bso_gene_IntelObj in ["CACHE","HVT","DOWNLOAD"]) then {
    
   _leader = leader _group;

   [_leader] call gene_fnc_intelAction;

   removeBackpackGlobal _leader;
   _leader addBackpackGlobal "UK3CB_B_O_Radio_Backpack";

   removeHeadgear _leader;
   _leader addHeadgear "H_Beret_blk";

};

_group
