if (!isServer) exitWith {};

params ["_box_type", "_number_of_caches", "_min_spacing", "_range", "_center_pos", "_min_house_size"];

private _houselist = nearestObjects [_center_pos, ["house"], _range];

private _caches = [];

for "_i" from 0 to _number_of_caches - 1 do {
    private _attempts = 0;
    while { _attempts < 100 } do {
        _attempts = _attempts + 1;
        
        private _house = selectRandom _houselist;
        private _housepos  = _house buildingPos -1;

        if (count _housepos < _min_house_size) then { continue; };

        private _pos = selectRandom _housepos;

        if (_caches findIf { _x distance _pos < _min_spacing } >= 0) then { continue; };

        private _cache = createVehicle [_box_type, _pos, [], 0, "NONE"];

        clearWeaponCargoGlobal _cache;
        clearMagazineCargoGlobal _cache;
        clearItemCargoGlobal _cache;
        clearBackpackCargoGlobal _cache;

        _cache setPosATL _pos;
        _cache setdir random 360;

        _caches pushBack _cache;
    };
    if (_attempts >= 100) then { break; };
};

_caches
