params ["_unit"];

// adds the action to every client and JIP, but also adds it when it was already removed. E.g., Laptop has already been hacked by a player
[
	_unit,											// object the action is attached to
	"Search for Intel",										// Title of the action
	"\a3\ui_f\data\igui\cfg\actions\take_ca.paa",	// Idle icon shown on screen
	"\a3\ui_f\data\igui\cfg\actions\take_ca.paa",	// Progress icon shown on screen
	"_this distance _target < 1",						// Condition for the action to be shown
	"_caller distance _target < 1",						// Condition for the action to progress
	{},													// Code executed when action starts
	{},													// Code executed on every progress tick
	{ _this call gene_fnc_intelFound;},				// Code executed on completion
	{},													// Code executed on interrupted
	[],													// Arguments passed to the scripts as _this select 3
	6,													// action duration in seconds
	0,													// priority
	true,												// Remove on completion
	false												// Show in unconscious state
] remoteExec ["BIS_fnc_holdActionAdd", 0, _unit];	// MP compatible implementation

