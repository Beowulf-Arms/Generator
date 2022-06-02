// Will create a dynamic QRF (no trigger!) consisting of a number of groups
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


	switch _qrfType do
	{
		case "inf": {
			[_qrfPos, _ranPos] call gene_fnc_gene_qrfMech;
			//[str _ranPos, _ranPos, "ICON", [1, 1], "COLOR:", "ColorRed","TYPE:","mil_triangle","TEXT:","Inf QRF"] call CBA_fnc_createMarker; 
		};
		case "mech": {
			[_qrfPos, _ranPos, _qrfAtkDir] call gene_fnc_gene_qrfMech;
			//[str _ranPos, _ranPos, "ICON", [1, 1], "COLOR:", "ColorRed","TYPE:","mil_triangle","TEXT:","MECH QRF"] call CBA_fnc_createMarker; 
		};
	};	

};
