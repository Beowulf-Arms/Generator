// Will create a dynamic QRF(s) 
params ["_cPos",["_qrfType","random"],["_numQRF",0],["_QRFtRadius",300],["_QRFSpawnRadiusMin",2000],["_QRFSpawnRadiusMax",3000]];

private _totalQRF = _numQRF;

if (_totalQRF == 0) then {
	_totalQRF = floor random [1,3,4];
};


for "_i" from 1 to _totalQRF do {
	if (_qrfType == "random") then {_qrfType = ["inf", "mech"] selectRandomWeighted [0.3,0.7];};

	private _qrfPos = [getMarkerPos "m_1", _QRFSpawnRadiusMin, _QRFSpawnRadiusMax, 20, 0, 0.7, 0, [[getMarkerPos "gene_stageArea", 1000]]] call BIS_fnc_findSafePos;
	//private _atkPos = (getMarkerPos "m_1");
	private _qrfAtkDir = (_qrfPos getDir _qrfPos) + 180;

	private _ranPos = [[[_cPos, _QRFtRadius]]] call BIS_fnc_randomPos;


	private _trg = createTrigger ["EmptyDetector", _ranPos];
	_trg setTriggerArea [300, 300, 0, false, 50];
	_trg setTriggerActivation [bso_gene_side_blu, bso_gene_sideD, false];
	switch _qrfType do
	{
		case "inf": {
			_trg setTriggerStatements ["this", format ["[%1, %2] call gene_fnc_gene_qrf", _qrfPos, _ranPos],""];
			//[str _ranPos, _ranPos, "ICON", [1, 1], "COLOR:", "ColorRed","TYPE:","mil_triangle","TEXT:","Inf QRF"] call CBA_fnc_createMarker; 
		};
		case "mech": {
			_trg setTriggerStatements ["this", format ["[%1, %2, %3] call gene_fnc_gene_qrfMech", _qrfPos, _ranPos, _qrfAtkDir],""];
			//[str _ranPos, _ranPos, "ICON", [1, 1], "COLOR:", "ColorRed","TYPE:","mil_triangle","TEXT:","MECH QRF"] call CBA_fnc_createMarker; 
		};
	};	
	_trg setTriggerInterval 5;

};
