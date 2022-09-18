_display = findDisplay 1234;
_listbox = _display displayCtrl 100;
_selection = lbCurSel _listbox;
_selectionData = _listbox lbData _selection;

_vehc = createVehicle [_selectionData, getPos bso_vehcSpawnPos, [], 0, "CAN_COLLIDE"];
_vehc setDir getDir bso_vehcSpawnPos;

_display closeDisplay 1;