//this = ["OpsCommander"] execVM "mission\loadouts\loadout_selector.sqf"; 

_ammobox      = _this select 0;

if isServer then{

	switch (paramsarray select 0) do {
		case 1: 
		{
			_ammobox execVM "mission\loadouts\boxes\pmc_g36_supply.sqf";
		};
		case 2: 
		{
			_ammobox execVM "mission\loadouts\boxes\pmc_416_supply.sqf";
		};
		case 3: 
		{
			_ammobox execVM "mission\loadouts\boxes\pmc_ak12_supply.sqf";
		};  
	};

};