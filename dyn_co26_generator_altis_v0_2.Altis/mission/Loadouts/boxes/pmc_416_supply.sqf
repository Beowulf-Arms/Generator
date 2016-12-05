if (!isServer) exitWith {};

clearMagazineCargo _this;
clearWeaponCargo _this;
clearItemCargoGlobal _this;


/// Weapons///

_this addWeaponCargoGlobal ["tf47_at4_heat", 2];
_this addWeaponCargoGlobal ["tf47_at4_HEDP", 2];
_this addWeaponCargoGlobal ["tf47_at4_HP", 2];
_this addWeaponCargoGlobal ["launch_NLAW_F", 2];


///Magazines///

_this addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 4];
_this addMagazineCargoGlobal ["hlc_100Rnd_762x51_M_MG3", 10];
_this addMagazineCargoGlobal ["150Rnd_93x64_Mag", 5];
_this addMagazineCargoGlobal ["Chemlight_green", 5];
_this addMagazineCargoGlobal ["Chemlight_red", 5];
_this addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m993_Mag", 5];
_this addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m62_Mag", 2];
_this addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 60];
_this addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red", 20];
_this addMagazineCargoGlobal ["ACE_HandFlare_Green", 5];
_this addMagazineCargoGlobal ["ACE_HandFlare_Red", 5];
_this addMagazineCargoGlobal ["SmokeShellBlue", 5];
_this addMagazineCargoGlobal ["SmokeShellGreen", 5];
_this addMagazineCargoGlobal ["SmokeShellOrange", 5];
_this addMagazineCargoGlobal ["SmokeShellPurple", 5];
_this addMagazineCargoGlobal ["SmokeShellRed", 5];
_this addMagazineCargoGlobal ["SmokeShellYellow", 5];
_this addMagazineCargoGlobal ["rhs_mag_m67", 10];
_this addMagazineCargoGlobal ["rhs_mag_mk84", 5];
_this addMagazineCargoGlobal ["11Rnd_45ACP_Mag", 10];

///Items///

_this addItemCargoGlobal ["ACE_wirecutter",1]; 
_this addItemCargoGlobal ["Medikit",1];
_this addItemCargoGlobal ["FirstAidKit",10]; 