
if (isServer) then {
 //if (alive z1) exitwith {[-2, {["BSOMission",["Active Mission. Run the Clear Mission Function first."]] call BIS_fnc_showNotification;}] call CBA_fnc_globalExecute;};


	[-2, {["BSOMission",["Incoming Tasking..."]] call BIS_fnc_showNotification;}] call CBA_fnc_globalExecute;

	"m_1" setMarkerPos (getMarkerPos (bso_gene_locations call BIS_fnc_selectRandom));
	bso_gene_taskNum = bso_gene_taskNum + 1; publicVariable "bso_gene_taskNum";


	sleep 3; // waits for server to complete location and task numbering
	
	
	// Cache creation
	["bso_obj_cache",3,35,200,0,"m_1"] call gene_fnc_cache_gen;

	sleep 5; // waits for cache creation...

   // Foot Patrol Groups
    for "_i" from 1 to 2 do {
    	private _randomPos = [getMarkerPos "m_1", 200, 1000, 1, 0, 0.7, 0, [], [getMarkerPos "m_1", getMarkerPos "m_1"]] call BIS_fnc_findSafePos;
    	[_randomPos] call gene_fnc_spawnPatrol;
	};

	// Vehc Patrol Groups
    for "_i" from 1 to 2 do {
		private _randomPos = [getMarkerPos "m_1", 100, 300, 5, 0, 0.7, 0, [], [getMarkerPos "m_1", getMarkerPos "m_1"]] call BIS_fnc_findSafePos;
		private _nearestRoad = [_randomPos, 500] call BIS_fnc_nearestRoad;
		private _roadPos = getPos _nearestRoad;
		private _SpawnPos = _roadPos;
		//if (_roadPos == [0,0,0]) then {_SpawnPos = _randomPos};
		_roadDir = getDir _nearestRoad;
		[_SpawnPos, _roadDir] call gene_fnc_spawnMechPatrol;
		sleep 1; // seems to combat some strangeness of units spawning on top of each other
	};

	// Atk Vehc Groups
    for "_i" from 1 to 2 do {
		private _randomPos = [getMarkerPos "m_1", 100, 300, 5, 0, 0.7, 0, [], [getMarkerPos "m_1", getMarkerPos "m_1"]] call BIS_fnc_findSafePos;
		private _nearestRoad = [_randomPos, 500] call BIS_fnc_nearestRoad;
		private _roadPos = getPos _nearestRoad;
		private _SpawnPos = _roadPos;
		//if (_roadPos == [0,0,0]) then {_SpawnPos = _randomPos};
		_roadDir = getDir _nearestRoad;
		[_SpawnPos, _roadDir] call gene_fnc_spawnAtkVPatrol;
		sleep 1; // seems to combat some strangeness of units spawning on top of each other
	};




	//obj trigger	
	private _trg1 = createTrigger ["EmptyDetector", getMarkerPos "m_1"];
	_trg1 setTriggerArea [1000, 1000, 0, false];
	_trg1 setTriggerActivation ["CIV", "PRESENT", false];
	_trg1 setTriggerStatements ["count (thisList select {(typeOf _x) in [""bso_obj_cache""]}) == 0", format ["if (isServer) then {[""Task_%1"", ""succeeded""] call FHQ_fnc_ttSetTaskState;};", bso_gene_taskNum],""];
	_trg1 setTriggerInterval 5;
	

	[] call gene_fnc_gene_markers;
	
	[[format ["Task_%1",bso_gene_taskNum],"The enemy are stockpiling weapon caches around the town. Locate and destroy them.",format ["%1. Destroy the weapons caches",bso_gene_taskNum],"Destroy"]]call FHQ_fnc_ttAddTasks;


	// Setup QRF

	private _qrfPos = [getMarkerPos "m_1", 2000, 3000, 20, 0, 0.7, 0, [[getMarkerPos "gene_stageArea", 1000]]] call BIS_fnc_findSafePos;
	private _atkPos = (getMarkerPos "m_1");
	private _tempObj = "Land_HelipadEmpty_F" createVehicle _qrfPos;
	private _qrfAtkDir = (_tempObj getRelDir (getMarkerPos "m_1")) + 180;


	private _trg2 = createTrigger ["EmptyDetector", getMarkerPos "m_1"];
	_trg2 setTriggerArea [300, 300, 0, false];
	_trg2 setTriggerActivation [bso_gene_side_blu, bso_gene_sideD, false];
	_trg2 setTriggerStatements ["this", format ["[%1, %2, %3] call gene_fnc_gene_qrfMech", _qrfPos, _atkPos, _qrfAtkDir],""];
	_trg2 setTriggerInterval 5;

	_TrigMark = createMarker ["qrfTrig", _qrfPos]; 
	"qrfTrig" setMarkerType "mil_pickup";
	"qrfTrig" setMarkerColor "ColorEast";


	
};	