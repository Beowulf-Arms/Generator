params ["_pos",["_numGrps",3],["_AtkRadius",300]];


for "_i" from 1 to _numGrps do {

	[_pos, _AtkRadius] call gene_fnc_spawnAtk;

};