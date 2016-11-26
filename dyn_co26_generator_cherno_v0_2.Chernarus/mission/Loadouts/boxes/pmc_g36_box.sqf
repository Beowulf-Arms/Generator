if (!isServer) exitWith {};

clearMagazineCargo _this;
clearWeaponCargo _this;
clearItemCargoGlobal _this;


/// Weapons///

_this addWeaponCargoGlobal ["tf47_at4_heat", 20];
_this addWeaponCargoGlobal ["tf47_at4_HEDP", 20];
_this addWeaponCargoGlobal ["tf47_at4_HP", 20];
_this addWeaponCargoGlobal ["launch_NLAW_F", 5];
_this addWeaponCargoGlobal ["MMG_01_tan_F", 2];


///Magazines///

_this addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 50];
_this addMagazineCargoGlobal ["hlc_100Rnd_762x51_M_MG3", 50];
_this addMagazineCargoGlobal ["150Rnd_93x64_Mag", 50];

///Items///

_this addItemCargoGlobal ["RH_eotech553",100]; 
_this addItemCargoGlobal ["rhsusf_acc_SpecterDR",100]; 
_this addItemCargoGlobal ["RH_fa556",100];
_this addItemCargoGlobal ["RH_fa762",100]; 
_this addItemCargoGlobal ["NVGoggles_OPFOR",100]; 
_this addItemCargoGlobal ["ACE_wirecutter",5]; 
