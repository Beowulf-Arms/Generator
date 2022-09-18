if (!isServer) exitWith {};

params ["_box_type", "_number_of_caches", "_min_spacing", "_range", "_center_pos", "_min_house_size"];

private _positions = [_center_pos, _range, _number_of_caches, _min_spacing, _min_house_size, true, true, [], false, [["Land_i_Stone_HouseBig_V1_F", [2]]]] call gene_fnc_find_building_pos;

private _caches = [];

{
    private _pos = _x;

    private _cache = createVehicle [_box_type, _pos, [], 0, "NONE"];

    clearWeaponCargoGlobal _cache;
    clearMagazineCargoGlobal _cache;
    clearItemCargoGlobal _cache;
    clearBackpackCargoGlobal _cache;

    _cache setPosATL _pos;
    _cache setdir random 360;

    _caches pushBack _cache;
} forEach _positions;

_caches
