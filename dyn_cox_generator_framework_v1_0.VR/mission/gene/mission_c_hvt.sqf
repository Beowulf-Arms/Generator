
if (isServer) then {
 if (alive z1) exitwith {[-2, {["BSOMission",["Active Mission. Run the Clear Mission Function first."]] call BIS_fnc_showNotification;}] call CBA_fnc_globalExecute;};



[-2, {["BSOMission",["Incoming Tasking..."]] call BIS_fnc_showNotification;}] call CBA_fnc_globalExecute;

	"m_1" setMarkerPos (getMarkerPos (bso_gene_locations call BIS_fnc_selectRandom));
	bso_gene_taskNum = bso_gene_taskNum + 1; publicVariable "bso_gene_taskNum";

	sleep 3; // waits for server to complete location and task numbering

	_values1 = ["z1",[1,0,0],[4,2,25,5],[2,3,15,5],[1,1,10,5],[],[bso_gene_sideV,0,0,0,0]];
	[(getMarkerPos "m_1"),500,500,0,0,_values1] call DAC_fNewZone;
	waituntil{DAC_NewZone == 0};
	
	_values3 = ["z3",[3,0,0],[2,3,6,2],[1,3,3,4],[],[],[bso_gene_sideV,0,0,0,0]];
	[(getPos HVT1),100,100,0,0,_values3] call DAC_fNewZone;	
	waituntil{DAC_NewZone == 0};
	
	_values2 = ["z2",[1,0,0],[],[],[],[ 2,1,50,1,100,5,[z1,z3]],[bso_gene_sideV,0,0,0,0]];
	[(getMarkerPos "m_1"),700,700,0,0,_values2] call DAC_fNewZone;
	waituntil{DAC_NewZone == 0};
	
	
	
	
	_grp0 = createGroup bso_gene_side;
	HVT1 = _grp0 createUnit [bso_gene_hvt,(getMarkerPos "m_1"),[],100,"FORM"];
	if (isServer) then {0 = [getPosATL HVT1, units group HVT1, 50, false, false] execVM "BSO\Zen_OccupyHouse.sqf";};
	HVT1 forceSpeed 0;
	removeAllWeapons HVT1;
	HVT1 addHeadgear "H_Beret_blk";
	HVT1 addGoggles "G_Sport_Greenblack";
	
	_bso_gene_Rgrp1 = [bso_gene_opfgrp1, bso_gene_opfgrp2, bso_gene_opfgrp3] call BIS_fnc_selectRandom;
	grp1 = [getPos HVT1, bso_gene_side, _bso_gene_Rgrp1] call BIS_fnc_spawnGroup;
	[grp1, getPos HVT1, 10, 1, 0.1, 0.33] call CBA_fnc_taskDefend;	
			
	
// Obj Triggers	
	trg1 = createTrigger ["EmptyDetector", getPos bso_mb_map];
	trg1 setTriggerArea [30, 30, 0, false];
	trg1 setTriggerActivation ["VEHICLE", "PRESENT", false];
	trg1 triggerAttachVehicle [HVT1];
	trg1 setTriggerStatements ["this", format ["if (isServer) then {[""Task_%1"", ""succeeded""] call FHQ_fnc_ttSetTaskState;}; deleteVehicle HVT1; deletevehicle trg2;", bso_gene_taskNum],""];


	trg2 = createTrigger ["EmptyDetector", getMarkerPos "m_1"];
	trg2 setTriggerArea [0, 0, 0, false];
	trg2 setTriggerActivation ["NONE", "NOT PRESENT", false];
	trg2 setTriggerTimeout  [5, 5, 5, false];
	trg2 setTriggerStatements ["!alive hvt1",  format ["if (isServer) then {[""Task_%1"", ""failed""] call FHQ_fnc_ttSetTaskState;};", bso_gene_taskNum],""];	


	_x = [] execVM "mission\gene\obj\bso_gene_markers.sqf";
	
	[[format ["Task_%1",bso_gene_taskNum],"We have identified the location of an enemy commander. Move in and Capture him.",format ["%1. Capture the HVT",bso_gene_taskNum],"Capture HVT"]]call FHQ_fnc_ttAddTasks;
	


	
	//random chance of creating a QRF
	_bso_gene_Rqrf = [1,2,3,4] call BIS_fnc_selectRandom;
	
	//generates location for QRF (if required)
	_qrfTMark = createMarker ["QrfTMark", (getPos HVT1)];
	//"QrfTMark" setMarkerType "mil_box";
	//"QrfTMark" setMarkerColor "ColorBlack";

	switch (_bso_gene_Rqrf) do {	
    case 1: { 
	// RF trigger. DAC QRF
	//[-2,{hint "JUST 1... FOR NOW";},[]] call CBA_fnc_globalExecute;
	diag_log format ["%1, %2 - DAC QRF", player, time];
	trg3 = createTrigger ["EmptyDetector", getPos HVT1];
	trg3 setTriggerArea [100, 100, 0, false];
	trg3 setTriggerActivation [bso_gene_sideX_blu, "PRESENT", false];
	trg3 setTriggerStatements ["this","[0,{_x = [""QrfTMark""]execVM ""mission\gene\obj\bso_gene_qrf_DAC.sqf"";},[]] call CBA_fnc_globalExecute;",""];
		};
    case 2: { 
	// QRF trigger. DAC QRF from 2 directions
	//[-2,{hint "DOUBLE TROUBLE";},[]] call CBA_fnc_globalExecute;
	diag_log format ["%1, %2 - Double DAC QRF", player, time];
	trg3 = createTrigger ["EmptyDetector", getPos HVT1];
	trg3 setTriggerArea [100, 100, 0, false];
	trg3 setTriggerActivation [bso_gene_sideX_blu, "PRESENT", false];
	trg3 setTriggerStatements ["this","[0,{_x = [""QrfTMark""]execVM ""mission\gene\obj\bso_gene_qrf_DAC2.sqf"";},[]] call CBA_fnc_globalExecute;",""];
		};	
	case 3: { 
	// QRF trigger. BSO Helo insertion
	//[-2,{hint "HELOS MATE";},[]] call CBA_fnc_globalExecute;
	diag_log format ["%1, %2 - HELO QRF", player, time];
	trg3 = createTrigger ["EmptyDetector", getPos HVT1];
	trg3 setTriggerArea [100, 100, 0, false];
	trg3 setTriggerActivation [bso_gene_sideX_blu, "PRESENT", false];
	trg3 setTriggerStatements ["this","[0,{_x = [""QrfTMark""]execVM ""mission\gene\obj\bso_gene_qrf_helo.sqf"";},[]] call CBA_fnc_globalExecute;",""];
		};		
    case 4: {
	//[-2,{hint "no QRF today";},[]] call CBA_fnc_globalExecute;};
	diag_log format ["%1, %2 - No QRF", player, time];
	};	
};
	