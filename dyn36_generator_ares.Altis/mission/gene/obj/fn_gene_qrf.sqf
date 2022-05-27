params ["_pos","_atkPos",["_numGrps",0],["_AtkRadius",300]];

if (_numGrps == 0) then {
	_numGrps = floor random [2,3,5];
};

for "_i" from 1 to _numGrps do {

	private _groupPos = [_pos, 0, 150, 0, 0, 50, 0] call BIS_fnc_findSafePos;

	[_groupPos, _atkPos, _AtkRadius] call gene_fnc_spawnAtk;

};