
if (isServer) then {
 if (alive z1) exitwith {[-2, {["BSOMission",["Active Mission. Run the Clear Mission Function first."]] call BIS_fnc_showNotification;}] call CBA_fnc_globalExecute;};


[-2, {["BSOMission",["Incoming Tasking..."]] call BIS_fnc_showNotification;}] call CBA_fnc_globalExecute;

	"m_1" setMarkerPos (getMarkerPos (bso_gene_locations call BIS_fnc_selectRandom));
	bso_gene_taskNum = bso_gene_taskNum + 1; publicVariable "bso_gene_taskNum";

	sleep 3; // waits for server to complete location and task numbering
	
	

	_null = ["Box_FIA_Ammo_F",3,35,200,0,"m_1"] execVM "mission\gene\obj\bso_cache_gen.sqf";

	_values1 = ["z1",[1,0,0],[4,2,25,5],[2,3,15,5],[1,1,10,5],[],[bso_gene_sideV,0,0,0,0]];
	[(getMarkerPos "m_1"),500,500,0,0,_values1] call DAC_fNewZone;
	waituntil{DAC_NewZone == 0};
	
	_values2 = ["z2",[1,0,0],[],[],[],[ 2,1,50,1,100,5,[z1,z3]],[bso_gene_sideV,0,0,0,0]];
	[(getMarkerPos "m_1"),700,700,0,0,_values2] call DAC_fNewZone;
	waituntil{DAC_NewZone == 0};
	

// 3rd zone for Cache Protection
	_values3 = ["z3",[3,0,0],[2,3,6,2],[1,3,3,4],[],[],[bso_gene_sideV,0,0,0,0]];
	[(getPos cache0),100,100,0,0,_values3] call DAC_fNewZone;	
	waituntil{DAC_NewZone == 0};
	
	
//obj trigger	
	trg1 = createTrigger ["EmptyDetector", getMarkerPos "m_1"];
	trg1 setTriggerArea [0, 0, 0, false];
	trg1 setTriggerActivation ["NONE", "NOT PRESENT", false];
	trg1 setTriggerStatements ["!(alive cache0) && !(alive cache1) && !(alive cache2)", format ["if (isServer) then {[""Task_%1"", ""succeeded""] call FHQ_fnc_ttSetTaskState;};", bso_gene_taskNum],""];
	

	_x = [] execVM "mission\gene\obj\bso_gene_markers.sqf";
	
	[[format ["Task_%1",bso_gene_taskNum],"The enemy are stockpiling weapon caches around the town. Locate and destroy them.",format ["%1. Destroy the weapons caches",bso_gene_taskNum],"Destroy"]]call FHQ_fnc_ttAddTasks;


	};