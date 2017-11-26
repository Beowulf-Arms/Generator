
if (isServer) then {
 if (alive z1) exitwith {[-2, {["BSOMission",["Active Mission. Run the Clear Mission Function first."]] call BIS_fnc_showNotification;}] call CBA_fnc_globalExecute;};

[-2, {["BSOMission",["Incoming Tasking..."]] call BIS_fnc_showNotification;}] call CBA_fnc_globalExecute;


	"m_1" setMarkerPos (getMarkerPos (bso_gene_locations call BIS_fnc_selectRandom));
	bso_gene_taskNum = bso_gene_taskNum + 1; publicVariable "bso_gene_taskNum";

	sleep 3; // waits for server to complete location and task numbering
	
	_values1 = ["z1",[1,0,0],[6,2,37,5],[3,3,17,5],[2,1,12,5],[],[bso_gene_sideV,0,0,0,0]];
	[(getMarkerPos "m_1"),500,500,0,0,_values1] call DAC_fNewZone;
	waituntil{DAC_NewZone == 0};
	
// 3rd zone for garrisonedish units	
	_values3 = ["z3",[3,0,0],[2,3,6,2],[1,3,3,4],[],[],[bso_gene_sideV,0,0,0,0]];
	[(getMarkerPos "m_1"),100,100,0,0,_values3] call DAC_fNewZone;	
	waituntil{DAC_NewZone == 0};
	
	_values2 = ["z2",[1,0,0],[],[],[],[ 2,1,50,1,100,5,[z1,z3]],[bso_gene_sideV,0,0,0,0]];
	[(getMarkerPos "m_1"),700,700,0,0,_values2] call DAC_fNewZone;
	waituntil{DAC_NewZone == 0};
	
	
	
// obj trigger	
	trg1 = createTrigger ["EmptyDetector", getMarkerPos "m_1"];
	trg1 setTriggerArea [1000, 1000, 0, false];
	trg1 setTriggerActivation [bso_gene_sideX, "NOT PRESENT", false];
	trg1 setTriggerStatements ["this", format ["if (isServer) then {[""Task_%1"", ""succeeded""] call FHQ_fnc_ttSetTaskState;};", bso_gene_taskNum],""];
	
	

	_x = [] execVM "mission\gene\obj\bso_gene_markers.sqf";
	
	[[format ["Task_%1",bso_gene_taskNum],"The enemy have attacked the marked area. Move in, wipe them out, and destroy any camps you find.",format ["%1. Secure the Area",bso_gene_taskNum],"Secure"]]call FHQ_fnc_ttAddTasks;

	//random chance of creating a QRF
	_bso_gene_Rqrf = [1,2,3,4] call BIS_fnc_selectRandom;


	switch (_bso_gene_Rqrf) do {	
    case 1: { 
	// RF trigger. DAC QRF
	diag_log format ["%1, %2 - DAC QRF", player, time];
	trg3 = createTrigger ["EmptyDetector", (getMarkerPos "m_1")];
	trg3 setTriggerArea [250, 250, 0, false];
	trg3 setTriggerActivation [bso_gene_sideX_blu, "PRESENT", false];
	trg3 setTriggerStatements ["this","[0,{_x = [""m_1""]execVM ""mission\gene\obj\bso_gene_qrf_DAC.sqf"";},[]] call CBA_fnc_globalExecute;",""];
		};
    case 2: { 
	// QRF trigger. DAC QRF from 2 directions
	diag_log format ["%1, %2 - Double DAC QRF", player, time];
	trg3 = createTrigger ["EmptyDetector", (getMarkerPos "m_1")];
	trg3 setTriggerArea [250, 250, 0, false];
	trg3 setTriggerActivation [bso_gene_sideX_blu, "PRESENT", false];
	trg3 setTriggerStatements ["this","[0,{_x = [""m_1""]execVM ""mission\gene\obj\bso_gene_qrf_DAC2.sqf"";},[]] call CBA_fnc_globalExecute;",""];
		};	
	case 3: { 
	// QRF trigger. BSO Helo insertion
	diag_log format ["%1, %2 - Helo QRF", player, time];
	trg3 = createTrigger ["EmptyDetector", (getMarkerPos "m_1")];
	trg3 setTriggerArea [250, 250, 0, false];
	trg3 setTriggerActivation [bso_gene_sideX_blu, "PRESENT", false];
	trg3 setTriggerStatements ["this","[0,{_x = [""m_1""]execVM ""mission\gene\obj\bso_gene_qrf_helo.sqf"";},[]] call CBA_fnc_globalExecute;",""];
		};		
    case 4: {
	diag_log format ["%1, %2 - No QRF", player, time];
	};	
};
