
if (isServer) then {

[-2, {["BSOMission",["Clearing Mission..."]] call BIS_fnc_showNotification;}] call CBA_fnc_globalExecute;
	
	{if (side _x == bso_gene_side) then {deleteVehicle  _x;};} forEach allUnits;
	
	
	{deleteVehicle _x} forEach nearestObjects [getMarkerPos "m_1", ["EmptyDetector","bso_obj_cache","Land_HelipadEmpty_F"], 3000];

	{ if (typeOf _x in bso_gene_hvt) then { deleteVehicle _x; } } forEach allUnits;

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
	gene_stageAreaPoint setPos (getPos default_stageArea);
	
	sleep 2;
	bso_gene_ObjSet = false; publicVariable "bso_gene_ObjSet";
	[-2, {["BSOMission",["Mission Cleared. Generator ready"]] call BIS_fnc_showNotification;}] call CBA_fnc_globalExecute;
	bso_gene_IntelObj = "NONE"; publicVariable "bso_gene_IntelObj";
	bso_gene_IntelRadius = 0; publicVariable "bso_gene_IntelRadius";

};


