// Will create a Wave based QRF trigger
params ["_cPos","_exitVariable",["_qrfType","random"],["_QRFtRadius",100]];

bso_gene_WaveQRF = true; publicVariable "bso_gene_WaveQRF";

_qrfType = "random";

private _trg = createTrigger ["EmptyDetector", _cPos];
_trg setTriggerArea [_QRFtRadius, _QRFtRadius, 0, false, 50];
_trg setTriggerActivation [bso_gene_side_blu, bso_gene_sideD, false];
_trg setTriggerStatements ["this", format ["[%1, %2] call gene_fnc_qrfWave", _cPos, _qrfType],""];
[str _cPos, _cPos, "ICON", [1, 1], "COLOR:", "ColorRed","TYPE:","mil_triangle","TEXT:", _qrfType] call CBA_fnc_createMarker; 
_trg setTriggerInterval 5;


private _trg2 = createTrigger ["EmptyDetector", _cPos];
_trg2 setTriggerArea [0, 0, 0, false, 0];
_trg2 setTriggerActivation ["LOGIC", "PRESENT", false];
_trg2 setTriggerStatements [format ["%1",_exitVariable], "bso_gene_WaveQRF = false; publicvariable ""bso_gene_WaveQRF""",""];
_trg2 setTriggerInterval 5;
