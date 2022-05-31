// Will create a dynamic QRF(s) 
params ["_cPos","_qrfType"];
if (!isServer) exitWith {};
[_cPos, _qrfType] spawn {
	params ["_cPos","_qrfType"];
	while {bso_gene_WaveQRF} do {

	// Number of separate QRFs that come at once
		private _totalQRF = floor random [1,2,3];

		private _qrfTypeW = "";
		for "_i" from 1 to _totalQRF do {
			switch _qrfType do
			{
				case "inf": {
					_qrfTypeW = ["inf", "mech"] selectRandomWeighted [1,0];
				};
				case "mech": {
					_qrfTypeW = ["inf", "mech"] selectRandomWeighted [0,1];
				};
				case "random": {
					_qrfTypeW = ["inf", "mech"] selectRandomWeighted [0.3,0.7];
				};	
			};
			private _qrfPos = [""];
			if (_qrfTypeW == "inf") then {

				private _qrfPos = [getMarkerPos "m_1", 1000, 1500, 20, 0, 0.7, 0, [[getMarkerPos "gene_stageArea", 1000]]] call BIS_fnc_findSafePos;
			} else {
				private _qrfPos = [getMarkerPos "m_1", 1000, 1500, 20, 0, 0.7, 0, [[getMarkerPos "gene_stageArea", 1000]]] call BIS_fnc_findSafePos;
			};
			//private _atkPos = (getMarkerPos "m_1");
			private _tempObj = "Land_HelipadEmpty_F" createVehicle _qrfPos;
			private _qrfAtkDir = (_tempObj getRelDir _qrfPos) + 180;

			switch _qrfTypeW do
			{
				case "inf": {
					[_qrfPos,_cPos] call gene_fnc_gene_qrf;
				};
				case "mech": {
					[_qrfPos, _cPos, _qrfAtkDir] call gene_fnc_gene_qrfMech;
				};
			};
		};
		sleep (floor random [18,30,60]);
	};
};