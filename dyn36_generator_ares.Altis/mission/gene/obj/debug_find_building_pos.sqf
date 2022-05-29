// example debug call
//[getMarkerPos "m_1", 100, 1, 5, 6] call compile preprocessFileLineNumbers "mission\gene\obj\debug_find_building_pos.sqf";

if (isNil "debug_cleanup") then { debug_cleanup = []; };

{
    deleteVehicle _x;
} forEach debug_cleanup;

private _pos = _this call compile preprocessFileLineNumbers "mission\gene\obj\fn_find_building_pos.sqf";

dbg_pos = _pos;

if ((_pos select 0 select 0) isEqualType []) then {
    {
        private _count = (count _x) - 2;
        {
            if (_forEachIndex == 0) then {
                private _sphere = createVehicle ["Sign_Sphere25cm_F", _x, [], 0, "CAN_COLLIDE"];
                _sphere setObjectTexture [0, "#(rgb,8,8,3)color(1,0,0,1)"];
                debug_cleanup pushBack _sphere;
            } else {
                private _sphere = createVehicle ["Sign_Sphere25cm_F", _x, [], 0, "CAN_COLLIDE"];
                _sphere setObjectTexture [0, format ["#(rgb,8,8,3)color(0,%1,%2,1)", str ((_forEachIndex - 1) / _count),  str (1 - (_forEachIndex - 1) / _count)]];
                debug_cleanup pushBack _sphere;
            };
        } forEach _x;
    } forEach _pos;
} else {
    {
        private _sphere = createVehicle ["Sign_Sphere25cm_F", _x, [], 0, "CAN_COLLIDE"];
        _sphere setObjectTexture [0, "#(rgb,8,8,3)color(1,0,0,1)"];
        debug_cleanup pushBack _sphere;
    } forEach _pos;
};

(allCurators select 0) addCuratorEditableObjects [debug_cleanup, false];

_pos
