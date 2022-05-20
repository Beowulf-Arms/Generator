params ["_pos","_atkPos",["_AtkDir",0],["_numGrps",3],["_AtkVRatio",0.3],["_AtkRadius",300]];

//creates count of atk vehcs.
_numAtkVehc = round (_AtkVRatio * _numGrps);

// if not 0 attack vehcs
if !(_numAtkVehc == 0) then {

	// spawn attack vehcs
	for "_i" from 1 to _numAtkVehc do {
		private _spawnPosition = [_pos, 0, 100] call BIS_fnc_findSafePos;
		[_spawnPosition, _atkPos, _AtkRadius, _AtkDir] call gene_fnc_spawnAtkVAtk;
	};

	// calc number of mech groups
	_numMechs = round (_numGrps - _numAtkVehc);	
	// spawn mech groups
	for "_i" from 1 to _numMechs do {
		private _spawnPosition = [_pos, 0, 100] call BIS_fnc_findSafePos;
		[_spawnPosition, _atkPos, _AtkRadius, _AtkDir] call gene_fnc_spawnMechAtk;
		
	};

} else {
	// if no atk vehcs needed, spawn mech groups.
	for "_i" from 1 to _numGrps do {
		private _spawnPosition = [_pos, 0, 100] call BIS_fnc_findSafePos;
		[_spawnPosition, _atkPos, _AtkRadius, _AtkDir] call gene_fnc_spawnMechAtk;
		
	};
};