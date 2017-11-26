private ["_qrfTMark_1"];

_qrfTMark_1 = _this select 0;

if (isServer) then {
_posZ1 = ["border_2", true] call CBA_fnc_randPosArea;
_posZ2 = ["border_2", true] call CBA_fnc_randPosArea;


_qrfSMark1 = createMarker ["QrfStrMark1", _posZ1];
	_Nroad1 = [(getMarkerPos "QrfStrMark1"),1000] call BIS_fnc_nearestRoad;
	"QrfStrMark1" setMarkerPos (getPos _Nroad1);

_qrfSMark2 = createMarker ["QrfStrMark2", _posZ2];
	_Nroad2 = [(getMarkerPos "QrfStrMark2"),1000] call BIS_fnc_nearestRoad;
	"QrfStrMark2" setMarkerPos (getPos _Nroad2);	

// DAC QRF Waypoints
	_values4 = ["z4",[2,0,0],[],[30],[20],[],[bso_gene_sideV,0,1,0,1]];
	[(getMarkerPos _qrfTMark_1),250,250,0,0,_values4] call DAC_fNewZone;
	waituntil{DAC_NewZone == 0};
	
// DAC QRF 1
	_values5 = ["z5",[2,0,0,0],[],[4,3,1,2],[1,1,1,2],[],[bso_gene_sideV,0,1,0,1]];
	[(getMarkerPos "QrfStrMark1"),100,100,0,0,_values5] call DAC_fNewZone;
	waituntil{DAC_NewZone == 0};

// DAC QRF 2
	_values6 = ["z6",[2,0,0,0],[],[4,3,1,2],[1,1,1,2],[],[bso_gene_sideV,0,1,0,1]];
	[(getMarkerPos "QrfStrMark2"),100,100,0,0,_values6] call DAC_fNewZone;
	
};	