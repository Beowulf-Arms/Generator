/*
	Custom Arsenal script

	Allows you to define a list of weapons, equipment, magazines, etc, which can then be selected by a player in the arsenal.

	Define each item in the array below. There is no need for a specific order. I have labelled and split it up for ease of use.

	Place this file in your mission folder, and put the following in the init of a box/object/vehicle to allow players to open the arsenal from that object. OBJECT MUST BE COMPATIBLE WITH ACE INTERACTION.

		[this] execVM "mission\armoury.sqf";


	If the player is holding weapons/equipment when they enter the arsenal. They will be able to select that item, but if they deselect the item and then exit the arsenal. It will be lost for good.
	Players will also be able to duplicate existing items in the arsenal.

	The example below is taken from Walker's "RACS On Tour: Africa" mission.

*/



_armoury = _this select 0;

[_armoury, 
	[
		// Rifles
		"hlc_rifle_hk33a2RIS",
		"hlc_rifle_hk53",
		"hlc_rifle_hk53RAS",
		"hlc_rifle_hk33a2",
		"hlc_rifle_hk33ka3",

		"arifle_Mk20C_F",
		"arifle_Mk20_F",

		"ptv_m14tp_wdl",
		"ptv_m14_socom_wdl",
		"srifle_EBR_F",
		"hlc_smg_MP5N",
		"ptv_cbj_ms",
		"ptv_cbj_ms2",
		"hlc_rifle_CQBR",
		"rhs_weap_hk416d10",
		"rhs_weap_hk416d10_m320",
		"rhs_weap_hk416d145",
		"rhs_weap_hk416d145_m320",
		"hlc_rifle_416D10_st6",
		"hlc_rifle_416D145_CAG",

		"rhs_weap_M590_8RD",

		"hlc_lmg_M60E4",
		"rhs_weap_m249_light_L",
		"rhs_weap_m249_light_S",
		"MMG_02_black_F",

		"srifle_DMR_02_F",
		"SMG_03C_camo",
		"hlc_rifle_awmagnum",
		"hlc_rifle_awMagnum_OD_ghillie",
		"hlc_rifle_awcovert",

		"srifle_GM6_F",



		// Pistols
		"hlc_pistol_P226US",
		"hlc_pistol_P226R_Combat",
		"sp_fwa_l9a1_hipower_wood",


		// Lanchers
		"launch_NLAW_F",
		"UK3CB_BAF_M6",
		"ace_dragon_super",
		"rhs_weap_fgm148",
		"rhs_weap_fim92",
		"RW_Launch_ASM_AS_Loaded",
		"RW_Launch_ASM_HESH_Loaded",
		"rhs_weap_M136",
		"rhs_weap_M136_hedp",
		"rhs_weap_M136_hp",
		"rhs_weap_maaws",
		"rhs_weap_m72_ASM",
		"rhs_weap_m72a7",
		"rhs_weap_m72e9",
		"launch_MRAWS_green_rail_F",
		"launch_MRAWS_green_F",
		"launch_I_Titan_F",
		"launch_I_Titan_short_F",

		// Magazines
		"hlc_30rnd_556x45_b_HK33",
		"hlc_30rnd_556x45_t_HK33",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger_Tracer_Red",
		"hlc_30rnd_556x45_M_G36",
		"hlc_30rnd_556x45_Tracers_G36",
		"ptv_30Rnd_9x19_CBJ_Mag",
		"ptv_30Rnd_9x19_Red_CBJ_Mag",
		"hlc_30Rnd_9x19_B_MP5",
		"rhsusf_20Rnd_762x51_m80_Mag",
		"rhsusf_20Rnd_762x51_m62_Mag",
		"sp_fwa_20Rnd_556_Ruger_Mini14",
		"sp_fwa_20Rnd_556_Ruger_Mini14_tracer",

		"hlc_15Rnd_9x19_B_P226",
		"sp_fwa_13Rnd_9mm_HiPower",

		"ptv_30Rnd_65x25_CBJ_Mag",
		"ptv_30Rnd_65x25_Red_CBJ_Mag",
		"ptv_100Rnd_65x25_CBJ_Mag",
		"ptv_100Rnd_65x25_Red_CBJ_Mag",
		"ptv_30Rnd_9x19_CBJ_Mag",
		"ptv_30Rnd_9x19_Red_CBJ_Mag",
		"ptv_100Rnd_9x19_CBJ_Mag",
		"ptv_100Rnd_9x19_Red_CBJ_Mag",

		"50Rnd_570x28_SMG_03",

		"10Rnd_338_Mag",
		"ACE_10Rnd_338_300gr_HPBT_Mag",
		"ACE_10Rnd_338_API526_Mag",
		"ACE_10Rnd_762x67_Mk248_Mod_1_Mag",
		"ACE_10Rnd_762x67_Mk248_Mod_0_Mag",
		"ACE_10Rnd_762x67_Berger_Hybrid_OTM_Mag",

		"hlc_5rnd_300WM_BTSP_AWM",
		"hlc_5rnd_300WM_AP_AWM",
		"hlc_5rnd_300WM_FMJ_AWM",
		"hlc_5rnd_300WM_mk248_AWM",
		"hlc_5rnd_300WM_SBT_AWM",
		"hlc_5rnd_300WM_T_AWM",
		"rhsusf_5Rnd_300winmag_xm2010",

		"20Rnd_762x51_Mag",
		"ACE_20Rnd_762x51_Mag_Tracer",
		"rhsusf_8Rnd_00Buck",
		"rhsusf_8Rnd_Slug",

		"ptv_5Rnd_86x70_TRG42",
		"30Rnd_9x21_Mag",


		"rhsusf_200Rnd_556x45_mixed_soft_pouch",
		"rhsusf_100Rnd_556x45_mixed_soft_pouch",
		"rhsusf_100Rnd_762x51_m80a1epr",
		"130Rnd_338_Mag",

		"5Rnd_127x108_Mag",
		"5Rnd_127x108_APDS_Mag",
		"ACE_5Rnd_127x99_Mag",
		"ACE_5Rnd_127x99_AMAX_Mag",
		"ACE_5Rnd_127x99_API_Mag",

		"rhs_mag_maaws_HEAT",
		"rhs_mag_maaws_HEDP",
		"rhs_mag_maaws_HE",

		"Titan_AT",
		"Titan_AA",
		"Titan_AP",
		"rhs_fgm148_magazine_AT",
		"rhs_fim92_mag",
		"MRAWS_HE_F",
		"MRAWS_HEAT_F",
		"MRAWS_Cluster_F",

		"rhs_mag_M433_HEDP",
		"rhs_mag_m714_White",
		"rhs_mag_m713_Red",
		"rhs_mag_m715_Green",
		"1Rnd_SmokePurple_Grenade_shell",
		"1Rnd_SmokeBlue_Grenade_shell",
		"UGL_FlareRed_F",
		"UGL_FlareGreen_F",


		"UK3CB_BAF_1Rnd_60mm_Mo_Shells",
		"UK3CB_BAF_1Rnd_60mm_Mo_Smoke_White",
		"UK3CB_BAF_1Rnd_60mm_Mo_Flare_White",
		"UK3CB_BAF_1Rnd_60mm_Mo_WPSmoke_White",
		"UK3CB_BAF_1Rnd_60mm_Mo_AB_Shells",


		// Weapon acc
		"RKSL_optic_EOT552",
		"rksl_optic_eot552x",
		"rhsusf_acc_m952v",
		"rhsusf_acc_rx01",
		"rhsusf_acc_compm4",

		"rhsusf_acc_su230",
		"rhsusf_acc_su230_mrds",
		"rhsusf_acc_su230a",
		"rhsusf_acc_su230a_mrds",
		"rhsusf_acc_acog_mdo",
		"rhsusf_acc_g33_t1",
		"rhsusf_acc_g33_xps3",

		"hlc_optic_hensoldtzo_lo_docter",
		"hlc_optic_hensoldtzo_lo_docter_2d",
		"hlc_optic_hensoldtzo_hi_docter",
		"hlc_optic_hensoldtzo_hi_docter_2d",

		"ptv_specterdr",
		"ptv_specterdr_2d",
		"ptv_specterdr_rmr",
		"ptv_specterdr_rmr_2d",

		"rh_ta01nsn",
		"rh_ta01nsn_2d",

		"hlc_acc_surefiregrip",
		"rhsusf_acc_grip2",
		"hlc_grip_pmvfg_black",
		"rhsusf_acc_rvg_blk",
		"rhsusf_acc_tacsac_blk",
		"rhsusf_acc_tdstubby_blk",
		"rhsusf_acc_grip3",
		"bipod_01_f_blk",

		"optic_lrps",
		"optic_mrco",
		"ptv_hbrs",
		"rhsusf_acc_t1_high",
		"rhsusf_acc_t1_low",

		"muzzle_snds_338_black",
		"ptv_rotex308",

		"rhsusf_acc_m8541_mrds",
		"rhsusf_acc_premier_mrds",
		"rhsusf_acc_leupoldmk4_2_mrds",

		"hlc_optic_pvs4g3",
		"hlc_optic_stanagzf_g3",
		"hlc_optic_stanagzf2d_g3",

		"rhsusf_acc_anpeq15a",
		"uk3cb_baf_llm_flashlight_black",
		"uk3cb_baf_llm_ir_black",

		"muzzle_snds_338_black",
		"rhsusf_acc_harris_bipod",
		"optic_dms",
		"optic_ams",
		"optic_khs_blk",
		"muzzle_snds_570",
		"hlc_muzzle_556nato_kac",
		"hlc_muzzle_556nato_rotexiiic_grey",
		"rh_qdss_nt4",
		"rhsusf_acc_sf3p556",

		// Grenades
		"HandGrenade",
		"SmokeShell",
		"SmokeShellRed",
		"SmokeShellGreen",
		"SmokeShellBlue",
		"SmokeShellPurple",

		"DemoCharge_Remote_Mag",
		"SatchelCharge_Remote_Mag",
		"ATMine_Range_Mag",
		"ClaymoreDirectionalMine_Remote_Mag",
		"APERSBoundingMine_Range_Mag",
		"SLAMDirectionalMine_Wire_Mag",
		"APERSTripMine_Wire_Mag",
		"APERSMine_Range_Mag",
		"ACE_FlareTripMine_Mag",
		"APERSMineDispenser_Mag",
		"AMP_Breaching_Charge_Mag",


		// Medical
		"ACE_salineIV_500",
		"ACE_fieldDressing",
		"ACE_elasticBandage",
		"ACE_morphine",
		"ACE_atropine",
		"ACE_epinephrine",
		"ACE_tourniquet",
		"ACE_quikclot",



		// Other
		"ACE_Flashlight_MX991",
		"ACE_MapTools",
		"ItemMap",
		"ItemGPS",
		"B_UavTerminal",
		"ItemCompass",
		"ACE_EntrenchingTool",
		"ACE_Cellphone",
		"ACE_artilleryTable",
		"ACE_RangeCard",
		"ACE_ATragMX",
		"ACE_UAVBattery",
		"ITC_Land_B_UAV_Packed",

		"Binocular",
		"UK3CB_BAF_Soflam_Laserdesignator",
		"Rangefinder",
		"ace_dragon_sight",
		"laserbatteries",

		// radio
		"ACRE_PRC343",
		"ACRE_PRC148",

	
		// uniform
		"U_I_CombatUniform",
		"U_I_OfficerUniform",
		"U_I_CombatUniform_shortsleeve",
		"UK3CB_AAF_B_U_CombatUniform_Shortsleeve_DIGI_GRN",
		"UK3CB_AAF_B_U_CombatUniform_DIGI_GRN",
		"UK3CB_AAF_B_U_CombatUniform_Shortsleeve_Digi_Mix_01",
		"UK3CB_AAF_B_U_CombatUniform_Digi_Mix_01",
		"UK3CB_AAF_B_U_CombatUniform_Shortsleeve_Digi_Mix_02",
		"UK3CB_AAF_B_U_CombatUniform_Digi_Mix_02",
		"m93_aaf",
		"U_I_FullGhillie_ard",
		"U_I_FullGhillie_lsh",
		"U_I_FullGhillie_sard",
		"U_I_GhillieSuit",
		"UK3CB_AAF_B_U_CombatUniform_Ghillie_DIGI_GRN",
		"UK3CB_AAF_B_U_CombatUniform_Ghillie_DIGI_Mixed",
		"U_I_HeliPilotCoveralls",
		"UK3CB_AAF_I_U_H_Pilot_DIGI_GRN",
		"UK3CB_AAF_B_U_H_Pilot_NATO",
		"UK3CB_AAF_I_U_J_Pilot_DIGI_GRN",
		"UK3CB_AAF_B_U_J_Pilot_NATO",
		"tacs_Uniform_Combat_LS_BS_DGP_BB",
		"UK3CB_AAF_B_U_JumperUniform_DIGI_GRN",
		"UK3CB_AAF_B_U_JumperUniform_Digi_Mix_01",
		"UK3CB_AAF_B_U_JumperUniform_Digi_Mix_02",
		"UK3CB_AAF_B_U_Diving_Uniform_DIGI_BLK",
		
		// vest
		"UK3CB_AAF_O_V_Eagle_CREW_DIGI_GRN",
		"UK3CB_AAF_O_V_Eagle_EOD_DIGI_GRN",
		"UK3CB_AAF_O_V_Eagle_GL_DIGI_GRN",
		"UK3CB_AAF_O_V_Eagle_MG_DIGI_GRN",
		"UK3CB_AAF_O_V_Eagle_MED_DIGI_GRN",
		"UK3CB_AAF_O_V_Eagle_RIF_DIGI_GRN",
		"UK3CB_AAF_O_V_Eagle_SL_DIGI_GRN",
		"UK3CB_AAF_B_V_TacVest_DIGI_GRN",

		"UK3CB_AAF_B_V_Vest_DIGI_GRN",
		"UK3CB_AAF_B_V_MD_Vest_DIGI_GRN",
		"UK3CB_AAF_B_V_CREW_Vest_DIGI_GRN",
		"UK3CB_AAF_B_V_MG_Vest_DIGI_GRN",
		"UK3CB_AAF_B_V_MK_Vest_DIGI_GRN",
		"UK3CB_AAF_B_V_RFL_Vest_DIGI_GRN",
		"UK3CB_AAF_B_V_SL_Vest_DIGI_GRN",

		"V_RebreatherIA",


		// backpack
		"B_AssaultPack_dgtl",
		"B_Bergen_dgtl_F",
		"UK3CB_AAF_B_B_CARRYALL_DIGI_GRN",
		"UK3CB_AAF_B_B_FIELDPACK_DIGI_GRN",
		"B_RadioBag_01_digi_F",
		"UK3CB_AAF_I_B_FIELDPACK_DIGI_GRN_Radio",
		"I_shield_backpack_lxWS",
		"UK3CB_BAF_B_Bergen_OLI_JTAC_H_A",
		"UK3CB_BAF_B_Bergen_OLI_Rifleman_A",
		"UK3CB_BAF_B_Bergen_OLI_SL_A",
		"B_Messenger_Olive_F",
		
		// Hat
		"UK3CB_AAF_B_H_Beret_Airforce_Off",
		"UK3CB_AAF_B_H_Beret_AIR",
		"UK3CB_AAF_B_H_Beret_Army_Off",
		"UK3CB_AAF_B_H_Beret_Army",
		"UK3CB_AAF_B_H_Beret_Navy_Off",
		"UK3CB_AAF_B_H_Beret_Navy",
		"UK3CB_AAF_B_H_Beret_SF_Off",
		"UK3CB_AAF_B_H_Beret_SF",
		"H_Booniehat_dgtl",
		"H_Cap_blk_Raven",
		"pasgt_aaf",
		"pasgt_aafg",
		"pasgt_aafr",
		"H_HelmetCrew_I",
		"H_CrewHelmetHeli_I",
		"H_PilotHelmetHeli_I",
		"H_MilCap_dgtl",
		"H_ParadeDressCap_01_AAF_F",
		"UK3CB_AAF_B_H_PASGT_DIGI_GRN",
		"UK3CB_AAF_B_H_PASGT_RHINO_DIGI_GRN",
		"H_PilotHelmetFighter_I",
		"H_Cap_headphones",
		"lxWS_H_Headset",
		"rhsusf_mich_bare_norotos_arc",
		"rhsusf_mich_bare_norotos_arc_alt",
		"rhsusf_mich_bare_norotos_arc_alt_headset",
		"rhsusf_mich_bare_norotos_arc_headset",
		"usm_headwrap_blk",
		"usm_headwrap_odg1",
		"rhsusf_ach_bare_ess",
		"rhsusf_ach_bare_headset",
		"rhsusf_ach_bare_headset_ess",
		"rhsusf_opscore_mar_fg",
		"rhsusf_opscore_mar_fg_pelt",
		"rhsusf_opscore_rg_cover",
		"rhsusf_opscore_rg_cover_pelt",
		"rhsusf_opscore_fg",
		"rhsusf_opscore_fg_pelt",
		"rhsusf_opscore_fg_pelt_cam",
		"rhsusf_opscore_bk",
		"rhsusf_opscore_bk_pelt",


		"H_Booniehat_indp",
		"H_MilCap_blue",
		"H_Watchcap_sgg",
		"H_Watchcap_blk",
		"H_Bandanna_surfer",
		"UK3CB_H_WideBrim_Hat",
		"H_Hat_camo",
		"rhs_headband",
		"H_Cap_red",
		"usm_headwrap_odg2",
		"usm_bdu_cap_odg",
		"usm_bdu_cap_blu",
		"usm_bdu_cap_tan",
		"usm_bdu_boonie_odg"













	]] call ace_arsenal_fnc_initBox