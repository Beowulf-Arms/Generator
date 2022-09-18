params ["_laptop"];

// Action to start download
[
	_laptop,											// object the action is attached to
	"Start Download",										// Title of the action
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",	// Idle icon shown on screen
	"",	// Progress icon shown on screen
	"(_this distance _target < 2) && (bso_gene_laptopStatus == 0)",						// Condition for the action to be shown
	"_caller distance _target < 2",						// Condition for the action to progress
	{},													// Code executed when action starts
	{},													// Code executed on every progress tick
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		[0,{[_this] call gene_fnc_downloadStart},[_target]] call CBA_fnc_globalExecute;
		hint "Download Started...";
	},				// Code executed on completion
	{},													// Code executed on interrupted
	[],													// Arguments passed to the scripts as _this select 3
	10,													// action duration in seconds
	0,													// priority
	false,												// Remove on completion
	false												// Show in unconscious state
] remoteExec ["BIS_fnc_holdActionAdd", 0, _laptop];	// MP compatible implementation


// Action to check download status
[
	_laptop,											// object the action is attached to
	"Check Download Percentage",										// Title of the action
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",	// Idle icon shown on screen
	"",	// Progress icon shown on screen
	"(_this distance _target < 2) && (bso_gene_laptopStatus > 0)",						// Condition for the action to be shown
	"_caller distance _target < 2",						// Condition for the action to progress
	{},													// Code executed when action starts
	{},													// Code executed on every progress tick
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		hint format ["Download is at %1", bso_gene_laptopStatus];
	},				// Code executed on completion
	{},													// Code executed on interrupted
	[],													// Arguments passed to the scripts as _this select 3
	2,													// action duration in seconds
	0,													// priority
	false,												// Remove on completion
	false												// Show in unconscious state
] remoteExec ["BIS_fnc_holdActionAdd", 0, _laptop];	// MP compatible implementation


// action to take USB
[
	_laptop,											// object the action is attached to
	"Take USB",										// Title of the action
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",	// Idle icon shown on screen
	"",	// Progress icon shown on screen
	"(_this distance _target < 2) && (bso_gene_laptopStatus == 100)",						// Condition for the action to be shown
	"_caller distance _target < 2",						// Condition for the action to progress
	{},													// Code executed when action starts
	{},													// Code executed on every progress tick
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		bso_gene_laptopStatus = 0; publicVariable "bso_gene_laptopStatus";
		_USB = [_caller, "FlashDisk", true] call CBA_fnc_addItem;
		hint  "USB now in inventory (or on the ground if your inventory is full...)";
	},				// Code executed on completion
	{},													// Code executed on interrupted
	[],													// Arguments passed to the scripts as _this select 3
	2,													// action duration in seconds
	0,													// priority
	false,												// Remove on completion
	false												// Show in unconscious state
] remoteExec ["BIS_fnc_holdActionAdd", 0, _laptop];	// MP compatible implementation



// action to return USB to missionboard
[
	bso_mb_map,											// object the action is attached to
	"Return USB",										// Title of the action
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",	// Idle icon shown on screen
	"",	// Progress icon shown on screen
	"(_this distance _target < 2) && ([_this, ""FlashDisk""] call BIS_fnc_hasItem)",						// Condition for the action to be shown
	"_caller distance _target < 2",						// Condition for the action to progress
	{},													// Code executed when action starts
	{},													// Code executed on every progress tick
	{
		params ["_target", "_caller", "_actionId", "_arguments"];			
		bso_gene_dataCaptured = true; publicVariable "bso_gene_dataCaptured";
		_caller removeItem "FlashDisk";
	},				// Code executed on completion
	{},													// Code executed on interrupted
	[],													// Arguments passed to the scripts as _this select 3
	2,													// action duration in seconds
	0,													// priority
	true,												// Remove on completion
	false												// Show in unconscious state
] remoteExec ["BIS_fnc_holdActionAdd", 0, _laptop];	// MP compatible implementation