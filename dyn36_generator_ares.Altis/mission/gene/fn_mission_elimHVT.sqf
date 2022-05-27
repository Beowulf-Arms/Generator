
if (isServer) then {
 //if (alive z1) exitwith {[-2, {["BSOMission",["Active Mission. Run the Clear Mission Function first."]] call BIS_fnc_showNotification;}] call CBA_fnc_globalExecute;};


	[-2, {["BSOMission",["Incoming Tasking..."]] call BIS_fnc_showNotification;}] call CBA_fnc_globalExecute;

	"m_1" setMarkerPos (getMarkerPos (bso_gene_locations call BIS_fnc_selectRandom));
	bso_gene_taskNum = bso_gene_taskNum + 1; publicVariable "bso_gene_taskNum";
	bso_gene_ObjSet = true; publicVariable "bso_gene_ObjSet";
	bso_gene_ObjEnd = false; publicVariable "bso_gene_ObjEnd";
	bso_gene_IntelObj = "CACHE"; publicVariable "bso_gene_IntelObj";

	sleep 3; // waits for server to complete location and task numbering
	
	HVT1 = [getMarkerPos "m_1"] call gene_fnc_hvt_gen;
	HVT1 setVariable ["bso_gene_IntelRadius", 300, true];


	private _weightArray = [
		[0.5,0.3,0.2], // 50% Inf "default"
		[0.7,0,0.3], // no Vehcs
		[0.4,0.4,0.2], // split vehcs/inf
		[0.2,0.8,0] //mad max
	];
	
	weighting = _weightArray selectRandomWeighted [0.3,0.3,0.2,0.2];
	publicVariable "weighting";
	private _numGroups = (floor random [5,7,10]);
	private _infW = (weighting select 0); // Infantry Weight
	private _infTypeW = [0.25,0.25,0.25,0.25];// Infantry Type weight
	private _mechW = (weighting select 1); // Mech weight
	private _mechTypeW = [0.16,0.16,0.16,0.16,0.16,0.16];// Mech Type Weight
	private _staticW = (weighting select 2); // Static Weight
	private _staticTypeW = [0.5,0.5];// Static Type Weight

   // Create defence groups
	[
		getMarkerPos "m_1", // Position to spawn defence
		200,//Internal Radius of Objective
		400,//External Radius of Objective
		_numGroups, // Number of groups
		_infW, // Infantry Weight
		_infTypeW, // Infantry Type weight
		_mechW, // Mech weight
		_mechTypeW, // Mech Type Weight
		_staticW, // Static Weight
		_staticTypeW // Static Type Weight
		
	] call gene_fnc_setupDefence;


	//obj trigger	
	private _trg1 = createTrigger ["EmptyDetector", getMarkerPos "m_1", false];
	_trg1 setTriggerArea [1000, 1000, 0, false];
	_trg1 setTriggerActivation ["CIV", "PRESENT", false];
	_trg1 setTriggerStatements ["!alive HVT1", format ["[""Task_%1"", ""succeeded""] call FHQ_fnc_ttSetTaskState; bso_gene_ObjEnd = true; publicVariable ""bso_gene_ObjEnd""", bso_gene_taskNum],""];
	_trg1 setTriggerInterval 5;
	

	[] call gene_fnc_gene_markers;
	
	[[format ["Task_%1",bso_gene_taskNum],"Locate the HVT, and eliminate them.",format ["%1. Eliminate HVT",bso_gene_taskNum],"Eliminate", getMarkerPos "M_1", "assigned", "kill"]]call FHQ_fnc_ttAddTasks;

	// Setup QRF
	[getPos HVT1] call gene_fnc_qrf_setup;

};	
