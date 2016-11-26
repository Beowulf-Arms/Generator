//_x = [this] execVM "mission\loadouts\loadout_box.sqf";

_box      = _this select 0;

switch (paramsarray select 0) do {
  case 1: 
  {
	[_box,"pmc_g36"] call BSO_fnc_makeLoadoutBox;
  };
  case 2: 
  {
	[_box,"pmc_416"] call BSO_fnc_makeLoadoutBox;
  };
  case 3: 
  {
	[_box,"pmc_ak12"] call BSO_fnc_makeLoadoutBox;
  };  
};