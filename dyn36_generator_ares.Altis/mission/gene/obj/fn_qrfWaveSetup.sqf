// Will create a dynamic QRF (no trigger!) consisting of a number of groups
params ["_cPos", "_exitVariable",["_waveTimings",[180,240,300]],["_qrfType","random"],["_numQRF",1],["_QRFtRadius",300],["_QRFSpawnRadiusMin",2000],["_QRFSpawnRadiusMax",3000]];

if (!isServer) exitWith {};

while {!(missionNameSpace getVariable _exitVariable)} do {

	[_cPos,_qrfType,_numQRF,_QRFtRadius,_QRFSpawnRadiusMin,_QRFSpawnRadiusMax] call gene_fnc_qrfWave;
	//hint "QRF spawned!";
	sleep (floor random _waveTimings);
};