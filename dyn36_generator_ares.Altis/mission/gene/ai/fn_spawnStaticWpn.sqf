// Spawns static weapon 
params ["_position",["_Type",0],["_space",10]];

private _gunner = bso_gene_gl select 0;

private _group = createGroup [bso_gene_side, true];
private _spawnPosition = [_position, 0, 100,_space] call BIS_fnc_findSafePos;

private _staticWpnType = selectRandom [bso_gene_opfStatic_Arty, bso_gene_opfStatic_AA];
private _staticWpn = selectRandom _staticWpnType;

// selects type. Uses random if not defined
switch _Type do 
{
   case 0:{};
   case 1: 
    {
        private _staticWpn = selectRandom bso_gene_opfStatic_Arty;
    };
   case 2: 
    {
        private _staticWpn = selectRandom bso_gene_opfStatic_AA;
    };
   default{};
};

//creates vehicle
private _Static  = createVehicle [_staticWpn, _spawnPosition, [], 0, "NONE"];

//Fills crew slots
_totalSeats = [_staticWpn, true] call BIS_fnc_crewCount;
for "_i" from 1 to _totalSeats do {
    private _unitType = bso_gene_opfgrp select 0;
    private _unit = _group createUnit [_unitType, _position, [], 5, "NONE"];
    _unit moveInAny _Static;
};


if (_staticWpn in bso_gene_opfStatic_Arty) then {

    [_group] call lambs_wp_fnc_taskArtilleryRegister;

};

[_spawnPosition] call gene_fnc_spawnTrench;

_group
