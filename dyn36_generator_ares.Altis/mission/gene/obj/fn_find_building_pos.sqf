/*

Finds building positions in _range around _center_pos, filtering based on parameters.

Keeps at least _min_spacing meters between found positions, and positions in _avoid_positions.
_min_house_size is the lower bound for the count of buildingPos of a building. Checked before filters.

All positions are ATL.

Blacklist is an array of pairs of building type and a position index array. No a building must only occur once example: [["Land_i_Stone_HouseBig_V1_F", [2]]]

>>> _include_close_positions = False

    Returns Array of Positions. At most _number_of_positions entries. Might be less if no more were found.

>>> _include_close_positions = True:

    Returns: Array of Array of Positions

    Top level array has at most _number_of_positions entries. Might be less if no more were found.

    Nested array contains building positions. First is random, the ones after that are ordered by distance from the first position (closest first).
*/

params [
    "_center_pos",
    "_range",
    "_number_of_positions",
    "_min_spacing",
    ["_min_house_size", 3],
    ["_prefer_highground", true],
    ["_avoid_balconies", true],
    ["_avoid_positions", []],
    ["_include_close_positions", false],
    ["_blacklist", []]
];

private _houselist = _center_pos nearObjects ["house", _range];

private _positions = +_avoid_positions; // Copy, so we don't modify the parameter
private _result = [];

for "_i" from 1 to _number_of_positions do {
    private _attempts = 0;
    while { _attempts < 100 } do {
        _attempts = _attempts + 1;
        
        private _house = selectRandom _houselist;

        if (_positions findIf { _x distance _house < _min_spacing } >= 0) then { continue; };

        private _housepos  = _house buildingPos -1;
        
        if (count _housepos < _min_house_size) then { continue; };

        private _obj_house_pos = +_housepos; // list that we can filter, but still keep the original around

        private _blacklist_index = _blacklist findIf { _x select 0 == typeof _house };

        if (_blacklist_index != -1) then {
            private _building_pos_blacklist = _blacklist select _blacklist_index select 1;
            _building_pos_blacklist sort false; // back to front, so that we can just delete the index
            {
                _obj_house_pos deleteAt _x;
            } forEach _building_pos_blacklist;
        };
    
        if (_avoid_balconies) then {
            _obj_house_pos = _obj_house_pos select {
                private _asl = AGLToASL _x;
                lineIntersects [_asl vectorAdd [0, 0, 0.2], _asl vectorAdd [0, 0, 10]]
            };
        };
        
        if (count _obj_house_pos == 0) then { continue; };

        private "_pos";
        if (_prefer_highground) then {
            private _highground_z = -9999;
            {
                private _asl = AGLToASL _x;
                _highground_z = _highground_z max (_asl select 2);
            } forEach _obj_house_pos;
            private _highground_positions = _obj_house_pos select { (AGLToASL _x) select 2 >= _highground_z - 0.1 };
            _pos = selectRandom _highground_positions;
        } else {
            _pos = selectRandom _obj_house_pos;
        };

        _positions pushBack _pos;

        if (_include_close_positions) then {
            private _result_entry = [_pos];
            _housepos = _housepos - [_pos];
            // sort remaining positions by distance to the seelcted one. stretch Z axis, so that the same floor is preferred
            _result_entry append ([_housepos, [_pos], {
                private _diff = _x vectorDiff _input0;
                _diff set [2, 3 * (_diff select 2)];
                vectorMagnitude _diff
            }] call BIS_fnc_sortBy);
            _result pushBack _result_entry;
        } else {
            _result pushBack _pos;
        };

        break;
    };
    if (_attempts >= 100) then { break; };
};

_result
