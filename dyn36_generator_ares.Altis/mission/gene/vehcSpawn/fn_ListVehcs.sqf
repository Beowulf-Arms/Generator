_display = findDisplay 1234;
_listbox = _display displayCtrl 100;
{
	_classname = _x;
	_displayName = gettext (configFile >> "CfgVehicles" >> _classname >> "displayname");
	_listbox lbAdd _displayName;
	_listbox lbSetData [_forEachIndex, _x];	
} forEach bso_gene_blu_landVehcs;