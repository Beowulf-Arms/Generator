// Generates AO markers and AO markers
	_obj1Mark = createMarker ["obj1", (getMarkerPos "M_1")]; 
	"obj1" setMarkerType "mil_Objective";
	"obj1" setMarkerColor "ColorEast";
	"obj1" setMarkerText format ["%1.", bso_gene_taskNum];	
	
	
	
	_borderMark = createMarker ["border", (getMarkerPos "M_1")]; 
	"border" setMarkerShape  "RECTANGLE";
	"border" setMarkerBrush "Border";
	"border" setMarkerSize [2000, 2000];
	"border" setMarkerColor "ColorEast";	
	
	_border1Mark = createMarker ["border_1", (getMarkerPos "M_1")]; 
	"border_1" setMarkerShape  "RECTANGLE";
	"border_1" setMarkerBrush "Border";
	"border_1" setMarkerSize [2100, 2100];
	"border_1" setMarkerColor "ColorEast";	
	
	_aoMark = createMarker ["ao", [(getMarkerPos "m_1" select 0) -1900, (getMarkerPos "m_1" select 1) -1900]]; 
	"ao" setMarkerType "mil_box";
	"ao" setMarkerColor "ColorEast";
	"ao" setMarkerText "Area of Operations";	



	//Sets Staging Area. Checks if on road, if no road is nearby. Will find a safe spot not in water, and not in AO
	private _StageDir = default_stageArea getDir (getMarkerPos "m_1");
	private _stagePos = (getMarkerPos "m_1") getPos [2500, _stageDir + 180];
	private _nearestRoad = [_stagePos, 300] call BIS_fnc_nearestRoad;
	private _CheckRoad = isNull _nearestRoad;
	if (_CheckRoad) then {
		//Set Safe position near which is flat, but NOT near m_1 or default_stageArea. Will need future change to use default_stageArea if  base is within X instead.
		private _stageSafeAct = [_stagePos, 0, 500, 20, 0, 0.7, 0, [[getMarkerPos "m_1", 2200], [getPos default_stageArea, 1000]]] call BIS_fnc_findSafePos;
		"gene_stageArea" setMarkerPos _stageSafeAct;
		gene_stageAreaPoint setPos _stageSafeAct;
	} else {
		//Set Safe position on road
		private _stageSafeAct = getPos _nearestRoad;
		"gene_stageArea" setMarkerPos _stageSafeAct;
		gene_stageAreaPoint setPos _stageSafeAct;
	};

