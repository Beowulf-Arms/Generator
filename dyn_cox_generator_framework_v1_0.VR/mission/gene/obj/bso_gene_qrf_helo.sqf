private ["_qrfTMark_1"];

_qrfTMark_1 = _this select 0;

if (isServer) then {
_posHeloStart = ["border_2", true] call CBA_fnc_randPosArea;
_posHeloEnd = ["border_2", true] call CBA_fnc_randPosArea;


//Creates an Start marker on along the hidden border_2 marker
_QrfHeloStart = createMarker ["QrfHeloStartMark", _posHeloStart];
	"QrfHeloStartMark" setMarkerType "mil_start";
	"QrfHeloStartMark" setMarkerColor "ColorEast";
// Moves the Start marker 1500 away from the center of z1	
_HeloStartdir = [z1, (getMarkerpos "QrfHeloStartMark")] call BIS_fnc_relativeDirTo;
_QrfHeloStartPosF = [(getMarkerPos "QrfHeloLZ1Mark"), 1500, _HeloStartdir] call BIS_fnc_relPos;
"QrfHeloStartMark" setMarkerPos _QrfHeloStartPosF;


//Creates an End marker on along the hidden border_2 marker
_QrfHeloEnd = createMarker ["QrfHeloEndMark", _posHeloEnd];
	"QrfHeloEndMark" setMarkerType "mil_end";
	"QrfHeloEndMark" setMarkerColor "ColorEast";
// Moves the End marker 1500 away from the center of z1	
_HeloEnddir = [z1, (getMarkerpos "QrfHeloEndMark")] call BIS_fnc_relativeDirTo;
_QrfHeloEndPosF = [(getMarkerPos "QrfHeloLZ1Mark"), 1500, _HeloEnddir] call BIS_fnc_relPos;
"QrfHeloEndMark" setMarkerPos _QrfHeloEndPosF;



// Finds direction between DAC center and AirStart
_QrfHeloDirC1 = _HeloStartdir + 180; 
	
	
 ///////// BEGIN 1st Call 
  
	
// Finds LZ 1 position and marks it
_posHeloLZ1 = [(getMarkerPos _qrfTMark_1), 100, 250, 20, 0, 20, 0] call BIS_fnc_findSafePos;
_QrfHeloLZ1 = createMarker ["QrfHeloLZ1Mark", _posHeloLZ1];
"QrfHeloLZ1Mark" setMarkerType "hd_pickup";
"QrfHeloLZ1Mark" setMarkerColor "ColorBlack";
"QrfHeloLZ1Mark" setMarkerText "LZ 1";

// Rally 1 Creation
_Rallydir1 = [z1, (getMarkerpos "QrfHeloLZ1Mark")] call BIS_fnc_relativeDirTo;
_Rallydir1 = _RallyDir1 + 180; 

_QrfHeloRally1Pos = [(getMarkerPos "QrfHeloLZ1Mark"), 20, _Rallydir1] call BIS_fnc_relPos;

_QrfHeloRally1 = createMarker ["QrfHeloRally1Mark", _QrfHeloRally1Pos];
"QrfHeloRally1Mark" setMarkerType "mil_flag";
"QrfHeloRally1Mark" setMarkerColor "ColorRed";
"QrfHeloRally1Mark" setMarkerText "Rally 1";


 // Calls heli insertion 1
["QrfHeloStartMark","QrfHeloEndMark","QrfHeloLZ1Mark","QrfHeloRally1Mark",_qrfTMark_1,bso_gene_side,bso_gene_opfTransHelo,bso_gene_opfgrpAir,_QrfHeloDirC1] execVM "mission\bso_heloinsert.sqf"; 
  
  

 sleep 10; //allows last heli to clear
  
 
 
 ///////// BEGIN 2nd CALL  
  
  
// Finds LZ 2 position and marks it
_posHeloLZ2 = [(getMarkerPos _qrfTMark_1), 100, 250, 20, 0, 20, 0] call BIS_fnc_findSafePos;
_QrfHeloLZ2 = createMarker ["QrfHeloLZ2Mark", _posHeloLZ2];
"QrfHeloLZ2Mark" setMarkerType "hd_pickup";
"QrfHeloLZ2Mark" setMarkerColor "ColorBlack";
"QrfHeloLZ2Mark" setMarkerText "LZ 2";  
  
  
// Finds Rally 2 position and marks it
_Rallydir2 = [z1, (getMarkerpos "QrfHeloLZ2Mark")] call BIS_fnc_relativeDirTo;
_Rallydir2 = _RallyDir2 + 180; 
 
_QrfHeloRally2Pos = [(getMarkerPos "QrfHeloLZ2Mark"), 20, _Rallydir2] call BIS_fnc_relPos;

_QrfHeloRally2 = createMarker ["QrfHeloRally2Mark", _QrfHeloRally2Pos];
"QrfHeloRally2Mark" setMarkerType "mil_flag";
"QrfHeloRally2Mark" setMarkerColor "ColorRed";
"QrfHeloRally2Mark" setMarkerText "Rally 2";

 // Calls heli insertion 2
["QrfHeloStartMark","QrfHeloEndMark","QrfHeloLZ2Mark","QrfHeloRally2Mark",_qrfTMark_1,bso_gene_side,bso_gene_opfTransHelo,bso_gene_opfgrpAir,_QrfHeloDirC1] execVM "mission\bso_heloinsert.sqf"; 
 

 
 
 sleep 10; //allows last heli to clear
 
 
 ///////// BEGIN 3rd CALL
 
// Finds LZ 3 position and marks it
_posHeloLZ3 = [(getMarkerPos _qrfTMark_1), 100, 250, 20, 0, 20, 0] call BIS_fnc_findSafePos;
_QrfHeloLZ3 = createMarker ["QrfHeloLZ3Mark", _posHeloLZ3];
"QrfHeloLZ3Mark" setMarkerType "hd_pickup";
"QrfHeloLZ3Mark" setMarkerColor "ColorBlack";
"QrfHeloLZ3Mark" setMarkerText "LZ 3";
 
 
// Finds Rally 3 position and marks it
_Rallydir3 = [z1, (getMarkerpos "QrfHeloLZ3Mark")] call BIS_fnc_relativeDirTo;
_Rallydir3 = _RallyDir3 + 180; 

_QrfHeloRally3Pos = [(getMarkerPos "QrfHeloLZ3Mark"), 20, _Rallydir3] call BIS_fnc_relPos;

_QrfHeloRally3 = createMarker ["QrfHeloRally3Mark", _QrfHeloRally3Pos];
"QrfHeloRally3Mark" setMarkerType "mil_flag";
"QrfHeloRally3Mark" setMarkerColor "ColorRed";
"QrfHeloRally3Mark" setMarkerText "Rally 3"; 


 // Calls heli insertion 3
["QrfHeloStartMark","QrfHeloEndMark","QrfHeloLZ3Mark","QrfHeloRally3Mark",_qrfTMark_1,bso_gene_side,bso_gene_opfTransHelo,bso_gene_opfgrpAir,_QrfHeloDirC1] execVM "mission\bso_heloinsert.sqf";   
};

