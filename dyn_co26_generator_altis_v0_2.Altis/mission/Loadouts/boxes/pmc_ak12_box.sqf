if (!isServer) exitWith {};

clearMagazineCargo _this;
clearWeaponCargo _this;
clearItemCargoGlobal _this;


/// Weapons///

_this addWeaponCargoGlobal ["rhs_weap_rpg26", 20];
_this addWeaponCargoGlobal ["rhs_weap_rshg2", 20];
_this addWeaponCargoGlobal ["rhs_weap_rpg7", 2];
_this addWeaponCargoGlobal ["rhs_weap_pkp", 2];
_this addWeaponCargoGlobal ["rhs_weap_pp2000", 10];


///Magazines///

_this addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 50];
_this addMagazineCargoGlobal ["hlc_60Rnd_545x39_t_rpk", 100];
_this addMagazineCargoGlobal ["rhs_100Rnd_762x54mmR", 50];
_this addMagazineCargoGlobal ["rhs_mag_9x19mm_7n31_20", 50];
_this addMagazineCargoGlobal ["rhs_mag_9x19mm_7n31_44", 50];

///Items///

_this addItemCargoGlobal ["optic_ACO_grn",100]; 
_this addItemCargoGlobal ["RH_SFM952V",100]; 
_this addItemCargoGlobal ["optic_MRCO",100]; 
_this addItemCargoGlobal ["hlc_muzzle_545SUP_AK",100];
_this addItemCargoGlobal ["NVGoggles_OPFOR",100]; 
_this addItemCargoGlobal ["ACE_wirecutter",5]; 
_this addItemCargoGlobal ["rhs_acc_rakursPM", 50];
