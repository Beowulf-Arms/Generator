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
_this addMagazineCargoGlobal ["hlc_20rnd_762x51_barrier_G3", 10];
_this addMagazineCargoGlobal ["hlc_20rnd_762x51_T_G3", 4];
_this addMagazineCargoGlobal ["hlc_30rnd_556x45_EPR_G36", 60];
_this addMagazineCargoGlobal ["hlc_30rnd_556x45_Tracers_G36", 20];
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
_this addMagazineCargoGlobal ["RH_12Rnd_45cal_usp", 10];

///Items///

_this addItemCargoGlobal ["ACE_wirecutter",1]; 
_this addItemCargoGlobal ["Medikit",1];
_this addItemCargoGlobal ["FirstAidKit",10]; 