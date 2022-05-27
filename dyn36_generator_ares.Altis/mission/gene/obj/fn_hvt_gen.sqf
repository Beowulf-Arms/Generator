if (!isServer) exitWith {};

params ["_pos",["_distance",100],["_min_house_size",4],["_guarded",true]];

// Get HVT Location

private _houselist = nearestObjects [_pos, ["house"], _distance];


private _house = selectRandom _houselist;
private _housepos  = _house buildingPos -1;

if (count _housepos < _min_house_size) then { continue; };

private _hvtPos = selectRandom _housepos;

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


