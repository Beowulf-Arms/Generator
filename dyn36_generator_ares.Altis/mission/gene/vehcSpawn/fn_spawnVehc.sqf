_display = findDisplay 1234;
_listbox = _display displayCtrl 100;
_selection = lbCurSel _listbox;
_selectionData = _listbox lbData _selection;

hint format ["%1", _selectionData];

_display closeDisplay 1;