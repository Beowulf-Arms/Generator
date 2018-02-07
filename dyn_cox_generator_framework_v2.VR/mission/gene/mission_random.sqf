
if (isServer) then {
	if (alive z1) exitwith {[-2, {["BSOMission",["Active Mission. Run the Clear Mission Function first."]] call BIS_fnc_showNotification;}] call CBA_fnc_globalExecute;};

	_bso_gene_Rmission = [1,2,3,4,5] call BIS_fnc_selectRandom;

	switch (_bso_gene_Rmission) do {
    case 1: { [0,{execVM "mission\gene\mission_e_hvt.sqf"},[]] call CBA_fnc_globalExecute; };
    case 2: { [0,{execVM "mission\gene\mission_c_hvt.sqf"},[]] call CBA_fnc_globalExecute; };
    case 3: { [0,{execVM "mission\gene\mission_secure.sqf"},[]] call CBA_fnc_globalExecute; };
    case 4: { [0,{execVM "mission\gene\mission_secure_large.sqf"},[]] call CBA_fnc_globalExecute; };
    case 5: { [0,{execVM "mission\gene\mission_cache.sqf"},[]] call CBA_fnc_globalExecute; };
	};

};
