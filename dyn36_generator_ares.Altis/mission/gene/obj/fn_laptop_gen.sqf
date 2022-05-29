if (!isServer) exitWith {};

params ["_pos",["_distance",100],["_min_house_size",6],["_guarded",true]];

// Get Laptop Location
private _buildingPoss = [_pos, _distance, 1, 5, _min_house_size] call gene_fnc_find_building_pos;

private _laptopPos = selectRandom _buildingPoss;
// create Laptop
private _desk = createVehicle ["Land_PortableDesk_01_olive_F", _laptopPos, [], 0, "CAN_COLLIDE"];
private _laptop = createVehicle ["Land_MultiScreenComputer_01_olive_F",  _laptopPos, [], 0, "CAN_COLLIDE"];

_laptop attachTo [_desk, [0, 0, 0.7]];

[_laptop] call gene_fnc_laptopAction;

// create Laptop guards
if (_guarded) then {
[getPos _laptop, 10] call gene_fnc_spawnGarrison;
};

_laptop


