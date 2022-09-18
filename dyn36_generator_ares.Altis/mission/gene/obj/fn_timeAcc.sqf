/*
	Author: Walker (because the BIS one doesn't work?)

	Description:
	Set time acceleration ratio

	Parameter(s):
	NUMBER - Ratio

	Returns:
	NUMBER - Ratio
*/
if (!isServer) exitWith {};
params [["_ratio",1]];
[_ratio] spawn {
params [["_acc",1]];

	trigger_BSOstart = false;
	waitUntil {trigger_BSOstart};
	sleep 1;
	setTimeMultiplier _acc;
};
_ratio