params ["_pos",["_trenchSize", 2.5],["_type","Land_BagFence_01_round_green_F"]];

private _sb1 = createVehicle [_type, [(_pos select 0), (_pos select 1) + _trenchSize], [], 0, "CAN_COLLIDE"];
_sb1 setDir 180;
private _sb2 = createVehicle [_type, [(_pos select 0), (_pos select 1) - _trenchSize], [], 0, "CAN_COLLIDE"];
_sb2 setDir 0;
private _sb3 = createVehicle [_type, [(_pos select 0) - _trenchSize, (_pos select 1)], [], 0, "CAN_COLLIDE"];
_sb3 setDir 90;
private _sb4 = createVehicle [_type, [(_pos select 0) + _trenchSize, (_pos select 1)], [], 0, "CAN_COLLIDE"];
_sb4 setDir 270;