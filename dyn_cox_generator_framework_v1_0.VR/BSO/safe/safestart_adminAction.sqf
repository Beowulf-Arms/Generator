/////bmf-v1_5////
//_unit = _this select 0;
//_id = _this select 2;

//_unit removeAction _id;

// End SafeStart on all other clients
[[],"fc_safestart_fnc_unsafety", true, true, true] call BIS_fnc_MP;
Hint_BSOStart = false; publicVariable "Hint_BSOStart";
Trigger_BSOStart = true; publicVariable "Trigger_BSOStart";

