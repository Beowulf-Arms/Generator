params ["_pos",["_AtkDir",0],["_numGrps",3],["_AtkVRatio",0.3],["_AtkRadius",300]];


_numAtkVehc = round (_AtkVRatio * _numGrps);

if !(_atkVRatio == 0) then {
	_numMechs = round (_numGrps - _numAtkVehc);

	for "_i" from 1 to _numMechs do {
		[_pos, _AtkRadius, _AtkDir] call gene_fnc_spawnAtkVAtk;
		sleep 1;
	};
};


for "_i" from 1 to _numMechs do {
	[_pos, _AtkRadius, _AtkDir] call gene_fnc_spawnMechAtk;
	sleep 1;
};