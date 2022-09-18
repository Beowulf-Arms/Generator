//_x = [this] ExecVM "mission\bso_mapTracker.sqf";
_vehicle = _this select 0;
if (isServer) then {
	_MhqMark = createMarker ["b_mhq_mark", (getPos b_mhq)];
	"b_mhq_mark" setMarkerType "mil_flag";
	"b_mhq_mark" setMarkerColor "ColorWest";	
	"b_mhq_mark" setMarkerText "MHQ";	

while {alive _vehicle} do
  {
  "b_mhq_mark" setmarkerpos getpos _vehicle;
  sleep 5;
  };

deletemarker "b_mhq_mark";

};