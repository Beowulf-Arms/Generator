if (!isServer) exitWith {};

params ["_pos",["_distance",100],["_min_house_size",6],["_guarded",true]];

// Get HVT Location

private _buildingPoss = [_pos, _distance, 1, 5, _min_house_size] call gene_fnc_find_building_pos;

private _hvtPos = selectRandom _buildingPoss;

// create HVT
private _hvtClass = selectRandom bso_gene_hvt;
private _hvtGroup = createGroup [bso_gene_side, true];
private _hvt = _hvtGroup createUnit [ _hvtClass, _hvtPos, [], 0, "CAN_COLLIDE"];
_hvt setdir random 360;
_hvt disableAI "PATH";
// create HVT guards

if (_guarded) then {
 [getPos _hvt, 10] call gene_fnc_spawnGarrison;
};

_hvt


