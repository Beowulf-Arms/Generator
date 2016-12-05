//_x = [this,"OpsCommander"] execVM "mission\loadouts\loadout_selector.sqf";

_unit      = _this select 0;
_class		= _this select 1;

switch (paramsarray select 0) do {
  case 1: 
  {
	[_unit,"PMC_g36",_class,true] call BSO_fnc_applyLoadout; 
  };
  case 2: 
  {
	[_unit,"PMC_416",_class,true] call BSO_fnc_applyLoadout; 
  };
  case 3: 
  {
	[_unit,"PMC_AK12",_class,true] call BSO_fnc_applyLoadout; 
  };  
};