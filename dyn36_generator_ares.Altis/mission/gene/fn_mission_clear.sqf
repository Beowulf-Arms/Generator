
if (isServer) then {

[-2, {["BSOMission",["Clearing Mission..."]] call BIS_fnc_showNotification;}] call CBA_fnc_globalExecute;
	
	{if (side _x == bso_gene_side) then {deleteVehicle  _x;};} forEach allUnits;
	
	
	deleteMarker "obj1";
	deleteMarker "border";
	deleteMarker "border_1";
	deleteMarker "border_2";
	deleteMarker "ao";
	deleteMarker "QrfStrMark1";
	deleteMarker "QrfStrMark2";
	deleteMarker "QrfTMark";
	deleteMarker "QrfHeloStartMark";
	deleteMarker "QrfHeloEndMark";
	deleteMarker "QrfHeloRally1Mark";
	deleteMarker "QrfHeloRally2Mark";
	deleteMarker "QrfHeloRally3Mark";
	deleteMarker "QrfHeloLZ1Mark";
	deleteMarker "QrfHeloLZ2Mark";
	deleteMarker "QrfHeloLZ3Mark";
	
	"m_1" setMarkerPos (getMarkerPos "m_0");
	"gene_stageArea" setMarkerPos (getPos default_stageArea);


	if (alive trg1) then {deletevehicle trg1;};
	if (alive trg2) then {deletevehicle trg2;};
	if (alive trg3) then {deletevehicle trg3;};
	
	if (alive cache0) then {deletevehicle cache0;};
	if (alive cache1) then {deletevehicle cache1;};
	if (alive cache2) then {deletevehicle cache2;};
	
	sleep 1;
	[-2, {["BSOMission",["Mission Cleared. Generator ready"]] call BIS_fnc_showNotification;}] call CBA_fnc_globalExecute;

};


