//if (!isServer) then 
//{

	//{deleteVehicle _x} foreach units grp1; deleteGroup grp1;
	//{deleteVehicle _x} foreach units grp2; deleteGroup grp2;
	["BSOMission",["Clearing AO"]] call BIS_fnc_showNotification;

	
	["z1","z2"] call DAC_fDeleteZone;
	

	
	{if (side _x == East) then {deleteVehicle  _x;};} forEach allUnits;
	
	"obj1" setMarkerPos (getMarkerPos "m_0");
	"border" setMarkerPos (getMarkerPos "m_0");
	"border_1" setMarkerPos (getMarkerPos "m_0");
	"ao"setMarkerPos [(getMarkerPos "m_0" select 0) -950, (getMarkerPos "m_0" select 1) -950];

	
	["Task_secure","canceled"] call SHK_Taskmaster_upd;
	["Task_cache","canceled"] call SHK_Taskmaster_upd;
	["Task_e_hvt","canceled"] call SHK_Taskmaster_upd;
	["Task_c_hvt","canceled"] call SHK_Taskmaster_upd;
	
	deletevehicle trg1;
	deletevehicle trg2;
		
//	sleep 10;
	
//	hint "clear complete";
//};