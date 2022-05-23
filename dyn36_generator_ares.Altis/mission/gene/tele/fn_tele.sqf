params [["_TeleLocation", base_flag]];

_display = findDisplay 1235;
_display closeDisplay 1;


_TeleObject = vehicle player;

if (_teleObject == player) then {player setPos getPos _TeleLocation} else {

_telePos = [_TeleLocation, 0, 50, _safeDistance, 6, 15, 0] call BIS_fnc_findSafePos;
_TeleObject setPos _telePos;

};
