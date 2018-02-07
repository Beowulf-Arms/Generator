
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
	


	_bso_gene_Rgrp1 = [bso_gene_opfgrp1, bso_gene_opfgrp2, bso_gene_opfgrp3] call BIS_fnc_selectRandom;
	grp1 = [getPos cache0, bso_gene_side, _bso_gene_Rgrp1] call BIS_fnc_spawnGroup;
	[grp1, getPos cache0, 10, 1, 0.1, 0.33] call CBA_fnc_taskDefend;	

	_bso_gene_Rgrp2 = [bso_gene_opfgrp1, bso_gene_opfgrp2, bso_gene_opfgrp3] call BIS_fnc_selectRandom;
	grp1 = [getPos cache1, bso_gene_side, _bso_gene_Rgrp2] call BIS_fnc_spawnGroup;
	[grp1, getPos cache1, 10, 1, 0.1, 0.33] call CBA_fnc_taskDefend;	

	_bso_gene_Rgrp3 = [bso_gene_opfgrp1, bso_gene_opfgrp2, bso_gene_opfgrp3] call BIS_fnc_selectRandom;
	grp1 = [getPos cache2, bso_gene_side, _bso_gene_Rgrp3] call BIS_fnc_spawnGroup;
	[grp1, getPos cache2, 10, 1, 0.1, 0.33] call CBA_fnc_taskDefend;		
	
	
//obj trigger	
	trg1 = createTrigger ["EmptyDetector", getMarkerPos "m_1"];
	trg1 setTriggerArea [0, 0, 0, false];
	trg1 setTriggerActivation ["NONE", "NOT PRESENT", false];
	trg1 setTriggerStatements ["!(alive cache0) && !(alive cache1) && !(alive cache2)", format ["if (isServer) then {[""Task_%1"", ""succeeded""] call FHQ_fnc_ttSetTaskState;};", bso_gene_taskNum],""];
	

	_x = [] execVM "mission\gene\obj\bso_gene_markers.sqf";
	
	[[format ["Task_%1",bso_gene_taskNum],"The enemy are stockpiling weapon caches around the town. Locate and destroy them.",format ["%1. Destroy the weapons caches",bso_gene_taskNum],"Destroy"]]call FHQ_fnc_ttAddTasks;



	
	//random chance of creating a QRF
	_bso_gene_Rqrf = [1,2,3,4] call BIS_fnc_selectRandom;
	
	//generates location for QRF (if required)
	_qrfTMark = createMarker ["QrfTMark", (getPos cache0)];
	//"QrfTMark" setMarkerType "mil_box";
	//"QrfTMark" setMarkerColor "ColorBlack";

	switch (_bso_gene_Rqrf) do {	
    case 1: { 
	// RF trigger. DAC QRF
	diag_log format ["%1, %2 - DAC QRF", player, time];
	trg3 = createTrigger ["EmptyDetector", getPos cache0];
	trg3 setTriggerArea [100, 100, 0, false];
	trg3 setTriggerActivation [bso_gene_sideX_blu, "PRESENT", false];
	trg3 setTriggerStatements ["this","[0,{_x = [""QrfTMark""]execVM ""mission\gene\obj\bso_gene_qrf_DAC.sqf"";},[]] call CBA_fnc_globalExecute;",""];
		};
    case 2: { 
	// QRF trigger. DAC QRF from 2 directions
	diag_log format ["%1, %2 - Double DAC QRF", player, time];
	trg3 = createTrigger ["EmptyDetector", getPos cache0];
	trg3 setTriggerArea [100, 100, 0, false];
	trg3 setTriggerActivation [bso_gene_sideX_blu, "PRESENT", false];
	trg3 setTriggerStatements ["this","[0,{_x = [""QrfTMark""]execVM ""mission\gene\obj\bso_gene_qrf_DAC2.sqf"";},[]] call CBA_fnc_globalExecute;",""];
		};	
	case 3: { 
	// QRF trigger. BSO Helo insertion
	diag_log format ["%1, %2 - Helo QRF", player, time];
	trg3 = createTrigger ["EmptyDetector", getPos cache0];
	trg3 setTriggerArea [100, 100, 0, false];
	trg3 setTriggerActivation [bso_gene_sideX_blu, "PRESENT", false];
	trg3 setTriggerStatements ["this","[0,{_x = [""QrfTMark""]execVM ""mission\gene\obj\bso_gene_qrf_helo.sqf"";},[]] call CBA_fnc_globalExecute;",""];
		};		
    case 4: {
	diag_log format ["%1, %2 - NO QRF", player, time];
		};
	};
	
};	