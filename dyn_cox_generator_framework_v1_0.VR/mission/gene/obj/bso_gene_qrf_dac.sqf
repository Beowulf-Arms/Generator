private ["_qrfTMark_1"];

_qrfTMark_1 = _this select 0;

if (isServer) then {
_posZ = ["border_2", true] call CBA_fnc_randPosArea;


_qrfSMark = createMarker ["QrfStrMark1", _posZ];
//	"QrfStrMark" setMarkerType "mil_pickup";
//	"QrfStrMark" setMarkerColor "ColorEast";
	
	_Nroad = [(getMarkerPos "QrfStrMark1"),1000] call BIS_fnc_nearestRoad;
	"QrfStrMark1" setMarkerPos (getPos _Nroad);

	

// DAC QRF Waypoints
	_values4 = ["z4",[1,0,0],[],[10],[10],[],[bso_gene_sideV,0,0,0,0]];
	[(getMarkerPos _qrfTMark_1),100,100,0,0,_values4] call DAC_fNewZone;
	waituntil{DAC_NewZone == 0};
	
// DAC QRF 1
	_values5 = ["z5",[1,0,0,0],[],[4,3,1,2],[2,1,1,2],[],[bso_gene_sideV,0,0,0,0]];
	[(getMarkerPos "QrfStrMark1"),100,100,0,0,_values5] call DAC_fNewZone;
	};