// Will create a dynamic QRF (no trigger!) consisting of a number of groups
params ["_cPos", "_exitVariable",["_qrfType","random"]];

if (!isServer) exitWith {};

while {!_exitVariable} do {

	[_cPos,_qrfType] call gene_fnc_qrfWave;
	//hint "QRF spawned!";
	sleep (floor random [180,240,300]);
};