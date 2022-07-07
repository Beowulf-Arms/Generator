// [this] execVM "mission\ammoBox.sqf"; // put this in the init of the box
private["_box"];
_box = _this select 0;
if (isServer) then {

	clearMagazineCargoGlobal _box;
	clearWeaponCargoGlobal _box;
	clearItemCargoGlobal _box;
	clearItemCargoGlobal _box;

	private _playerFaction = ["PlayerFaction", 1] call BIS_fnc_getParamValue;
	switch (_playerFaction) do 
	{
		case 1: { //AAF SF
			_box addMagazineCargoGlobal  ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger", 40];
			_box addMagazineCargoGlobal  ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger_Tracer_Red", 20];

			_box addMagazineCargoGlobal  ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 6];
			_box addMagazineCargoGlobal  ["rhsusf_100Rnd_556x45_mixed_soft_pouch", 6];
			_box addMagazineCargoGlobal  ["rhsusf_100Rnd_762x51_m80a1epr", 4];
			
			_box addMagazineCargoGlobal  ["20Rnd_762x51_Mag", 4];
			_box addMagazineCargoGlobal  ["ACE_20Rnd_762x51_Mag_Tracer", 4];

			_box addMagazineCargoGlobal  ["rhsusf_8Rnd_00Buck", 4];
			_box addMagazineCargoGlobal  ["rhsusf_8Rnd_Slug", 4];
			
			_box addMagazineCargoGlobal  ["hlc_15Rnd_9x19_B_P226", 4];
			_box addMagazineCargoGlobal  ["ptv_5Rnd_86x70_TRG42", 4];
			
			_box addMagazineCargoGlobal  ["30Rnd_9x21_Mag", 4];

			_box addMagazineCargoGlobal  ["HandGrenade", 16];
			_box addMagazineCargoGlobal  ["ACE_M14", 16];
			_box addMagazineCargoGlobal  ["ACE_M84", 16];
			_box addMagazineCargoGlobal  ["ACE_CTS9", 3];
			_box addMagazineCargoGlobal  ["SmokeShell", 8];
			_box addMagazineCargoGlobal  ["SmokeShellRed", 1];
			_box addMagazineCargoGlobal  ["SmokeShellGreen", 1];
			_box addMagazineCargoGlobal  ["SmokeShellBlue", 1];
			_box addMagazineCargoGlobal  ["SmokeShellPurple", 1];

			_box addMagazineCargoGlobal  ["rhs_charge_tnt_x2_mag", 2];
			_box addMagazineCargoGlobal  ["DemoCharge_Remote_Mag", 2];
			_box addMagazineCargoGlobal  ["ATMine_Range_Mag", 2];
			
			_box addWeaponCargoGlobal  ["launch_NLAW_F", 2];
			
			_box addMagazineCargoGlobal  ["rhs_mag_maaws_HEAT", 2];
			_box addMagazineCargoGlobal  ["rhs_mag_maaws_HE", 2];
			
			_box addMagazineCargoGlobal  ["Titan_AT", 2];
			
			_box addMagazineCargoGlobal  ["Titan_AA", 2];

			_box addMagazineCargoGlobal  ["rhs_mag_M433_HEDP", 6];
			_box addMagazineCargoGlobal  ["rhs_mag_m714_White", 4];
			_box addMagazineCargoGlobal  ["rhs_mag_m713_Red", 2];
			_box addMagazineCargoGlobal  ["rhs_mag_m715_Green", 2];
			_box addMagazineCargoGlobal  ["1Rnd_SmokePurple_Grenade_shell", 2];
			_box addMagazineCargoGlobal  ["1Rnd_SmokeBlue_Grenade_shell", 2];
			_box addMagazineCargoGlobal  ["UGL_FlareRed_F", 4];
			_box addMagazineCargoGlobal  ["UGL_FlareGreen_F", 4];

			_box addItemCargoGlobal  ["ACE_SpareBarrel", 2];

			_box addItemCargoGlobal  ["ACE_salineIV_500", 10];
			_box addItemCargoGlobal  ["ACE_tourniquet", 10];
			_box addItemCargoGlobal  ["ACE_morphine", 10];
			_box addItemCargoGlobal  ["ACE_epinephrine", 5];
			_box addItemCargoGlobal  ["ACE_elasticBandage", 20];
			_box addItemCargoGlobal  ["ACE_packingBandage", 20];
			_box addItemCargoGlobal  ["ACE_CableTie", 4];
		};


		case 2: { // CSAT SF
			_box addMagazineCargoGlobal  ["30Rnd_65x39_caseless_green", 40];
			_box addMagazineCargoGlobal  ["30Rnd_65x39_caseless_green_mag_Tracer", 20];

			_box addMagazineCargoGlobal  ["150Rnd_762x54_Box", 6];
			
			_box addMagazineCargoGlobal  ["10Rnd_762x54_Mag", 8];
			_box addMagazineCargoGlobal  ["ACE_10Rnd_762x54_Tracer_mag", 6];

			_box addMagazineCargoGlobal  ["rhsusf_8Rnd_00Buck", 4];
			_box addMagazineCargoGlobal  ["rhsusf_8Rnd_Slug", 4];
			
			_box addMagazineCargoGlobal  ["16Rnd_9x21_Mag", 12];
			_box addMagazineCargoGlobal  ["5Rnd_127x108_APDS_Mag", 4];

			_box addMagazineCargoGlobal  ["HandGrenade", 16];
			_box addMagazineCargoGlobal  ["ACE_M14", 16];
			_box addMagazineCargoGlobal  ["ACE_M84", 16];
			_box addMagazineCargoGlobal  ["ACE_CTS9", 3];
			_box addMagazineCargoGlobal  ["SmokeShell", 8];
			_box addMagazineCargoGlobal  ["SmokeShellRed", 1];
			_box addMagazineCargoGlobal  ["SmokeShellGreen", 1];
			_box addMagazineCargoGlobal  ["SmokeShellBlue", 1];
			_box addMagazineCargoGlobal  ["SmokeShellPurple", 1];

			_box addMagazineCargoGlobal  ["rhs_charge_tnt_x2_mag", 2];
			_box addMagazineCargoGlobal  ["DemoCharge_Remote_Mag", 2];
			_box addMagazineCargoGlobal  ["ATMine_Range_Mag", 2];
			
			_box addWeaponCargoGlobal  ["rhs_weap_rpg26", 4];
			
			_box addMagazineCargoGlobal  ["RPG32_F", 4];
			_box addMagazineCargoGlobal  ["RPG32_HE_F", 4];
			_box addMagazineCargoGlobal  ["Vorona_HEAT", 2];
			_box addMagazineCargoGlobal  ["Vorona_HE", 2];
			
			_box addMagazineCargoGlobal  ["Titan_AA", 2];

			_box addMagazineCargoGlobal  ["1Rnd_HE_Grenade_shell", 10];
			_box addMagazineCargoGlobal  ["3Rnd_Smoke_Grenade_shell", 4];
			_box addMagazineCargoGlobal  ["3Rnd_SmokeRed_Grenade_shell", 2];
			_box addMagazineCargoGlobal  ["3Rnd_SmokeGreen_Grenade_shell", 2];
			_box addMagazineCargoGlobal  ["1Rnd_SmokePurple_Grenade_shell", 2];
			_box addMagazineCargoGlobal  ["1Rnd_SmokeBlue_Grenade_shell", 2];
			_box addMagazineCargoGlobal  ["UGL_FlareRed_F", 4];
			_box addMagazineCargoGlobal  ["UGL_FlareGreen_F", 4];

			_box addItemCargoGlobal  ["ACE_SpareBarrel", 2];

			_box addItemCargoGlobal  ["ACE_salineIV_500", 10];
			_box addItemCargoGlobal  ["ACE_tourniquet", 10];
			_box addItemCargoGlobal  ["ACE_morphine", 10];
			_box addItemCargoGlobal  ["ACE_epinephrine", 5];
			_box addItemCargoGlobal  ["ACE_elasticBandage", 20];
			_box addItemCargoGlobal  ["ACE_packingBandage", 20];
			_box addItemCargoGlobal  ["ACE_CableTie", 4];
		};


		case 3: { // RACS SF
			_box addMagazineCargoGlobal  ["hlc_30rnd_556x45_SPR_L5", 40];
			_box addMagazineCargoGlobal  ["hlc_30rnd_556x45_t_L5", 20];

			_box addMagazineCargoGlobal  ["rhsusf_200Rnd_556x45_soft_pouch_coyote", 6];
			_box addMagazineCargoGlobal  ["rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote", 6];
			_box addMagazineCargoGlobal  ["sp_fwa_100Rnd_762_mag_turret", 4];
			
			_box addMagazineCargoGlobal  ["rhs_mag_20Rnd_SCAR_762x51_mk316_special", 4];
			_box addMagazineCargoGlobal  ["rhs_mag_20Rnd_SCAR_762x51_m62_tracer", 4];

			_box addMagazineCargoGlobal  ["rhsusf_8Rnd_00Buck", 4];
			_box addMagazineCargoGlobal  ["rhsusf_8Rnd_Slug", 4];
			
			_box addMagazineCargoGlobal  ["hlc_15Rnd_9x19_B_P226", 4];
			_box addMagazineCargoGlobal  ["5Rnd_127x108_APDS_Mag", 4];

			_box addMagazineCargoGlobal  ["HandGrenade", 16];
			_box addMagazineCargoGlobal  ["ACE_M14", 16];
			_box addMagazineCargoGlobal  ["ACE_M84", 16];
			_box addMagazineCargoGlobal  ["ACE_CTS9", 3];
			_box addMagazineCargoGlobal  ["SmokeShell", 8];
			_box addMagazineCargoGlobal  ["SmokeShellRed", 1];
			_box addMagazineCargoGlobal  ["SmokeShellGreen", 1];
			_box addMagazineCargoGlobal  ["SmokeShellBlue", 1];
			_box addMagazineCargoGlobal  ["SmokeShellPurple", 1];

			_box addMagazineCargoGlobal  ["rhs_charge_tnt_x2_mag", 2];
			_box addMagazineCargoGlobal  ["DemoCharge_Remote_Mag", 2];
			_box addMagazineCargoGlobal  ["ATMine_Range_Mag", 2];
			
			_box addWeaponCargoGlobal  ["launch_NLAW_F", 2];
			
			_box addMagazineCargoGlobal  ["rhs_mag_maaws_HEAT", 2];
			_box addMagazineCargoGlobal  ["rhs_mag_maaws_HE", 2];
			
			_box addMagazineCargoGlobal  ["Titan_AT", 2];
			
			_box addMagazineCargoGlobal  ["Titan_AA", 2];

			_box addMagazineCargoGlobal  ["rhs_mag_M433_HEDP", 6];
			_box addMagazineCargoGlobal  ["rhs_mag_m714_White", 4];
			_box addMagazineCargoGlobal  ["rhs_mag_m713_Red", 2];
			_box addMagazineCargoGlobal  ["rhs_mag_m715_Green", 2];
			_box addMagazineCargoGlobal  ["1Rnd_SmokePurple_Grenade_shell", 2];
			_box addMagazineCargoGlobal  ["1Rnd_SmokeBlue_Grenade_shell", 2];
			_box addMagazineCargoGlobal  ["UGL_FlareRed_F", 4];
			_box addMagazineCargoGlobal  ["UGL_FlareGreen_F", 4];

			_box addItemCargoGlobal  ["ACE_SpareBarrel", 2];

			_box addItemCargoGlobal  ["ACE_salineIV_500", 10];
			_box addItemCargoGlobal  ["ACE_tourniquet", 10];
			_box addItemCargoGlobal  ["ACE_morphine", 10];
			_box addItemCargoGlobal  ["ACE_epinephrine", 5];
			_box addItemCargoGlobal  ["ACE_elasticBandage", 20];
			_box addItemCargoGlobal  ["ACE_packingBandage", 20];
			_box addItemCargoGlobal  ["ACE_CableTie", 4];
		};

	};
};