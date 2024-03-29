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

_aaf = [ // BSO AAF
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
	"optic_hamr",
	"ptv_hbrs",
	"rhsusf_acc_t1_high",
	"rhsusf_acc_t1_low",

	"rhsusf_acc_kac_grip_saw_bipod",

	"muzzle_snds_338_black",
	"ptv_rotex308",
	"acc_pointer_ir",

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
	"ACE_M14",
	"ACE_M84",
	"ACE_CTS9",
	"SmokeShell",
	"SmokeShellRed",
	"SmokeShellGreen",
	"SmokeShellBlue",
	"SmokeShellPurple",

	"ACE_Chemlight_HiBlue",
	"ACE_Chemlight_HiGreen",
	"ACE_Chemlight_HiRed",
	"ACE_Chemlight_HiWhite",
	"ACE_Chemlight_HiYellow",
	"ACE_Chemlight_UltraHiOrange",


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
	"ITC_Land_B_AR2e_Packed",
	"ITC_Land_B_AR2i_Packed",
	"ITC_Land_B_AL6_Packed",
	"ITC_Land_B_AL6m_Packed",
	"ITC_Land_BW_RemoteGLTD_Packed",
	"ITC_Land_B_RemoteGLTD_Packed",

	"Binocular",
	"UK3CB_BAF_Soflam_Laserdesignator",
	"Rangefinder",
	"ace_dragon_sight",
	"laserbatteries",

	"UK3CB_BAF_Javelin_CLU",
	"UK3CB_BAF_Javelin_Slung_Tube",

	"ACE_NVG_Gen4_Green",

	// radio
	"ACRE_PRC343",
	"ACRE_PRC148",
	"ACRE_PRC117F",


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
	"usm_bdu_boonie_odg",
	
	"ACE_CableTie"
];

_csat = [// CSAT SF
	// Rifles
	"arifle_Velko_lxWS",

	"hlc_rifle_g3sg1",
	"hlc_rifle_g3sg1ris",
	"hlc_rifle_g3a3v",
	"hlc_rifle_g3a3vris",
	"hlc_rifle_g3ka4",
	"HLC_Rifle_g3ka4_GL",
	"rhs_weap_savz58v_rail_black",
	"rhs_weap_savz58v_ris",
	"arifle_ARX_blk_F",
	"arifle_ARX_hex_F",
	"ptv_AG_k_b",
	"ptv_AG_k_r_b",
	"ptv_AG_GL_k_r_b",
	"ptv_AG_k_r2_b",
	"ptv_AG_c_b",
	"ptv_AG_c_r_b",
	"ptv_AG_c2_b",
	"rhs_weap_ak103",
	"rhs_weap_ak103_npz",
	"rhs_weap_ak103_gp25",
	"rhs_weap_ak103_gp25_npz",
	"rhs_weap_ak103_zenitco01",
	"rhs_weap_ak103_zenitco01_b33",
	"rhs_weap_ak104",
	"rhs_weap_ak104_npz",
	"rhs_weap_ak104_zenitco01",
	"rhs_weap_ak104_zenitco01_b33",
	"rhs_weap_ak105",
	"rhs_weap_ak105_npz",
	"rhs_weap_ak105_zenitco01",
	"rhs_weap_ak105_zenitco01_b33",
	"rhs_weap_ak74m_zenitco01",
	"rhs_weap_ak74m_zenitco01_b33",
	"rhs_weap_ak74mr",
	"rhs_weap_ak74mr_gp25",
	"rhs_weap_pm63",
	"rhs_weap_akm_zenitco01_b33",
	"hlc_rifle_aek971",
	"hlc_rifle_aek971_mtk",
	"hlc_rifle_aek971worn",
	"hlc_rifle_ak12",
	"hlc_rifle_ak12GL",
	"hlc_rifle_aku12",
	"arifle_Katiba_F",
	"arifle_Katiba_C_F",
	"arifle_Katiba_GL_F",


	"rhs_weap_pp2000",
	"SMG_03C_black",
	"SMG_03C_hex",
	"SMG_03C_TR_black",
	"SMG_03C_TR_hex",
	"rhs_weap_M590_8RD",

	// MG
	"ptv_ng5_b",
	"ptv_negev_b",
	"ptv_ng5_sf_b",
	"rhs_weap_pkm",
	"rhs_weap_pkp",
	"LMG_Zafir_F",
	"hlc_lmg_MG3KWS_b",

	// Marks
	"srifle_DMR_01_F",
	"rhs_weap_svdp",
	"rhs_weap_svdp_wd",
	"rhs_weap_svdp_wd_npz",
	"rhs_weap_svdp_npz",
	"rhs_weap_svds",
	"rhs_weap_svds_npz",
	"rhs_weap_asval",
	"rhs_weap_asval_grip",
	"rhs_weap_asval_grip_npz",
	"rhs_weap_asval_npz",
	"srifle_DMR_04_F",
	"srifle_DMR_04_Tan_F",
	"srifle_DMR_05_blk_F",
	"srifle_DMR_05_hex_F",
	"srifle_DMR_05_tan_f",
	"srifle_GM6_F",
	"srifle_GM6_camo_F",
	"rhs_weap_t5000",

	// Pistols
	"hgun_Rook40_F",
	"rhs_weap_pya",
	"RH_mp412",
	"ACE_VMM3",
	"rhs_weap_pp2000_folded",
	"rhs_weap_makarov_pm",
	"hgun_Pistol_heavy_02_F",
	"rhs_weap_6p53",
	"rhs_weap_pb_6p9", 
		"rhs_acc_6p9_suppressor",
	"RH_cz75",
	"UK3CB_CZ75",
	"rhs_weap_cz99",
	"rhs_weap_cz99_etched",
	"RH_Deaglem",
	"RH_deagle",
		"rh_demz",
		"rh_deflash",
		"optic_yorris",
	"RH_gsh18",
	"bso_M320",
	"rhs_weap_M320",



	// Lanchers
	"launch_O_Vorona_brown_F",
	"rhs_weap_m80",
	"rhs_weap_rpg75",
	"rhs_weap_rpg18",
	"rhs_weap_rpg26",
	"rhs_weap_rshg2",
	"launch_RPG32_F",
	"launch_RPG32_green_F",
	"rhs_weap_rpg7",

	// Magazines
		// Rifle mags
	"35Rnd_556x45_Velko_lxWS",
	"bso_mag_35rnd_556_galil_mixed",
	"bso_mag_35rnd_556_galil_tracer",
	"50Rnd_556x45_Velko_lxWS",
	"bso_mag_50rnd_556_galil_mixed",
	"bso_mag_50rnd_556_galil_tracer",
	"hlc_20rnd_762x51_Mk316_G3",
	"hlc_20rnd_762x51_T_G3",
	"rhs_mag_9x19mm_7n31_20",
	"rhs_mag_9x19mm_7n31_44",
	"rhs_30Rnd_762x39mm_Savz58",
	"rhs_30Rnd_762x39mm_Savz58_tracer",
	"rhs_5Rnd_338lapua_t5000",
	"10Rnd_50BW_Mag_F",
	"ptv_35Rnd_556x45_AG",
	"ptv_35Rnd_556x45_AG_Tracer_Red",
	"30Rnd_65x39_caseless_green",
	"30Rnd_65x39_caseless_green_mag_Tracer",
	"rhs_30Rnd_545x39_7N22_AK",
	"rhs_30Rnd_545x39_7U1_AK",
	"rhs_30Rnd_545x39_AK_plum_green",
	"UK3CB_RPK74_60rnd_545x39_GM",
	"rhs_30Rnd_762x39mm_polymer_89",
	"rhs_30Rnd_762x39mm_polymer_tracer",
	"rhs_30Rnd_762x39mm_polymer_U",
	"rhs_75Rnd_762x39mm",


	"50Rnd_570x28_SMG_03",
	"rhsusf_8Rnd_00Buck",
	"rhsusf_8Rnd_Slug",

		//pistol mags
	"16Rnd_9x21_Mag",
	"rhs_mag_9x19_7n31_17",
	"RH_6Rnd_357_Mag",
	"rhs_mag_9x18_8_57N181S",
	"6Rnd_45ACP_Cylinder",
	"rhs_18rnd_9x21mm_7BT3",
	"rhs_18rnd_9x21mm_7N29",
	"rhs_mag_9x18_8_57N181S",
	"RH_16Rnd_9x19_CZ",
	"UK3CB_CZ75_9_20Rnd",
	"rhssaf_mag_15Rnd_9x19_FMJ",
	"rhssaf_mag_15Rnd_9x19_JHP",
	"RH_18Rnd_9x19_gsh",

		// MG mags
	"ptv_150Rnd_556x45_Negev_b",
	"ptv_150Rnd_556x45_Negev_b_Tracer_Red",
	"rhs_100Rnd_762x54mmR_7BZ3",
	"150Rnd_762x54_Box",
	"150Rnd_762x54_Box_Tracer",
	"hlc_100Rnd_762x51_M_MG3",
	"hlc_250Rnd_762x51_M_MG3",
	"hlc_50Rnd_762x51_M_MG3",

		// marks mags
	"10Rnd_762x54_Mag",
	"ACE_10Rnd_762x54_Tracer_mag",
	"rhs_10Rnd_762x54mmR_7N14",
	"rhs_10rnd_9x39mm_SP5",
	"rhs_10rnd_9x39mm_SP6",
	"rhs_20rnd_9x39mm_SP5",
	"rhs_20rnd_9x39mm_SP6",
	"10Rnd_127x54_Mag",
	"10Rnd_93x64_DMR_05_Mag",
	"5Rnd_127x108_APDS_Mag",
	"5Rnd_127x108_Mag",
	"ACE_5Rnd_127x99_Mag",
	"ACE_5Rnd_127x99_AMAX_Mag",
	"ACE_5Rnd_127x99_API_Mag",

		// launchers mags
	"Titan_AT",
	"Titan_AA",
	"Titan_AP",
	"Vorona_HE",
	"Vorona_HEAT",
	"RPG32_Cluster_F",
	"RPG32_HE_F",
	"RPG32_F",
	"rhs_rpg7_OG7V_mag",
	"rhs_rpg7_PG7V_mag",
	"rhs_rpg7_PG7VL_mag",
	"rhs_rpg7_PG7VM_mag",
	"rhs_rpg7_PG7VR_mag",
	"rhs_rpg7_PG7VS_mag",
	"RPG7_Cluster_F",
	"rhs_rpg7_TBG7V_mag",
	"rhs_rpg7_type69_airburst_mag",

	"3Rnd_HE_Grenade_shell",
	"1Rnd_HE_Grenade_shell",
	"3Rnd_UGL_FlareGreen_F",
	"3Rnd_UGL_FlareCIR_F",
	"3Rnd_UGL_FlareRed_F",
	"3Rnd_UGL_FlareWhite_F",
	"3Rnd_UGL_FlareYellow_F",
	"3Rnd_SmokeBlue_Grenade_shell",
	"3Rnd_SmokeGreen_Grenade_shell",
	"3Rnd_SmokeOrange_Grenade_shell",
	"3Rnd_SmokePurple_Grenade_shell",
	"3Rnd_SmokeRed_Grenade_shell",
	"3Rnd_Smoke_Grenade_shell",
	"3Rnd_SmokeYellow_Grenade_shell",
	"UGL_FlareGreen_F",
	"UGL_FlareCIR_F",
	"UGL_FlareRed_F",
	"UGL_FlareWhite_F",
	"UGL_FlareYellow_F",
	"1Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeOrange_Grenade_shell",
	"1Rnd_SmokePurple_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_Smoke_Grenade_shell",
	"1Rnd_SmokeYellow_Grenade_shell",

	"rhs_GDM40",
	"rhs_GRD40_Green",
	"rhs_GRD40_Red",
	"rhs_GRD40_White",
	"rhs_VG40OP_green",
	"rhs_VG40OP_red",
	"rhs_VG40OP_white",
	"rhs_VG40SZ",
	"rhs_VG40TB",
	"rhs_VOG25",
	"rhs_VOG25P",


	"UK3CB_BAF_1Rnd_60mm_Mo_Shells",
	"UK3CB_BAF_1Rnd_60mm_Mo_Smoke_White",
	"UK3CB_BAF_1Rnd_60mm_Mo_Flare_White",
	"UK3CB_BAF_1Rnd_60mm_Mo_WPSmoke_White",
	"UK3CB_BAF_1Rnd_60mm_Mo_AB_Shells",


	// Weapon acc
	"rhs_acc_1pn34",
	"rhs_acc_1pn93_1",
	"rhs_acc_pso1m2",
	"rhs_acc_pso1m21",
	"rhs_acc_1p29",
	"rhs_acc_1p63",
	"rhs_acc_1p78",
	"rhs_acc_1pn93_1",
	"rhs_acc_1pn93_2",
	"rhs_acc_ekp1",
	"rhs_acc_ekp8_02",
	"hlc_optic_goshawk",
	"hlc_optic_kobra",
	"rhs_acc_nita",
	"hlc_optic_1p29",
	"hlc_optic_pso1",
	"rhs_acc_okp7_dovetail",
	"rhs_acc_pgo7v",
	"rhs_acc_pgo7v2",
	"rhs_acc_pgo7v3",
	"rhs_acc_pkas",
	"rhs_acc_pso1m2",
	"rhs_acc_pso1m21",
	"acc_pointer_IR",
	"hlc_muzzle_snds_arsenalcomp",
	"rhs_acc_dtkakm",
	"hlc_muzzle_762sup_ak",
	"rhs_acc_pbs1",
	"rhs_acc_uuk",
	"rhs_acc_dtk",
	"rhs_acc_dtk1",
	"rhs_acc_dtk2",
	"rhs_acc_dtk3",
	"rhs_acc_dtk4short",
	"rhs_acc_dtk1983",
	"hlc_muzzle_545sup_ak",
	"hlc_muzzle_sf3p_762r",
	"rhs_acc_tgpa",
	"rhs_acc_rakurspm",
	"rhs_acc_1p87",
	"optic_dms",
	"optic_dms_weathered_kir_f",
	"optic_dms_weathered_f",
	"optic_aco_grn",
	"optic_aco",
	"optic_aco_grn_smg",
	"optic_aco_smg",
	"rhs_acc_dh520x56",
	"rhs_acc_ekp8_18",
	"optic_arco",
	"optic_arco_blk_f",
	"ace_optic_arco_2d",
	"ace_optic_arco_pip",
	"optic_arco_ak_blk_f",
	"optic_mrco",
	"optic_khs_blk",
	"optic_khs_hex",
	"optic_khs_old",
	"optic_khs_tan",
	"optic_lrps",
	"ace_optic_lrps_2d",
	"ace_optic_lrps_pip",
	"rhs_acc_okp7_picatinny",
	"rhs_acc_grip_ffg2",
	"rhs_acc_grip_rk2",
	"rhs_acc_grip_rk6",
	"rhsusf_acc_grip2",
	"rhsusf_acc_grip2_tan",
	"rhsusf_acc_eotech",
	"rhsusf_acc_eotech_xps3",




	// Grenades
	"HandGrenade",
	"ACE_M14",
	"ACE_M84",
	"ACE_CTS9",
	"SmokeShell",
	"SmokeShellRed",
	"SmokeShellGreen",
	"SmokeShellBlue",
	"SmokeShellPurple",

	"ACE_Chemlight_HiBlue",
	"ACE_Chemlight_HiGreen",
	"ACE_Chemlight_HiRed",
	"ACE_Chemlight_HiWhite",
	"ACE_Chemlight_HiYellow",
	"ACE_Chemlight_UltraHiOrange",


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
	"ACE_CableTie",
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
	"ITC_Land_B_AR2e_Packed",
	"ITC_Land_B_AR2i_Packed",
	"ITC_Land_B_AL6_Packed",
	"ITC_Land_B_AL6m_Packed",
	"ITC_Land_BW_RemoteGLTD_Packed",
	"ITC_Land_B_RemoteGLTD_Packed",

	"Binocular",
	"Laserdesignator_02",
	"Rangefinder",
	"laserbatteries",

	"ACE_NVG_Gen4_Green",

	// radio
	"ACRE_PRC343",
	"ACRE_PRC148",
	"ACRE_PRC117F",


	// uniform
	"U_O_FullGhillie_ard",
	"U_O_FullGhillie_sard",
	"U_O_FullGhillie_lsh",
	"U_O_GhillieSuit",
	"U_O_officer_noInsignia_hex_F",
	"U_O_OfficerUniform_ocamo",
	
	// vest
	"V_HarnessOGL_brn",
	"V_HarnessOGL_gry",
	"V_HarnessO_brn",
	"V_HarnessO_gry",
	"UK3CB_TKP_O_V_6b23_ML_6sh92_radio_BLK",
	"V_PlateCarrier2_blk",
	"V_PlateCarrier1_blk",
	"V_Chestrig_blk",
	"bso_chestrig2_P_blk",
	"UK3CB_V_Pilot_Vest_Black",

	"V_RebreatherIR",


	// backpack
	"B_AssaultPack_ocamo",
	"B_Bergen_hex_F",
	"B_Carryall_ocamo",
	"B_FieldPack_ocamo",
	"O_shield_backpack_lxWS",
	"B_RadioBag_01_hex_F",
	"B_TacticalPack_ocamo",
	"B_ViperHarness_hex_F",
	"B_ViperLightHarness_hex_F",
	"UK3CB_TKA_O_B_RIF_Tan",
	"UK3CB_TKA_O_B_ENG_Tan",
	
	// Hat
	"H_HelmetCrew_O",
	"H_Tank_black_F",
	"H_Beret_CSAT_01_F",
	"H_Bandanna_gry",
	"H_MilCap_ocamo",
	"H_Cap_brn_SPECOPS",
	"lxWS_H_bmask_base",
	"lxWS_H_bmask_hex",
	"H_CrewHelmetHeli_O",
	"H_PilotHelmetFighter_O",
	"H_PilotHelmetHeli_O",
	"UK3CB_TKA_O_H_zsh7a_Des",
	"UK3CB_TKA_O_H_zsh7a_Des_alt",
	"UK3CB_TKA_O_H_zsh7a_mike_Des_alt",
	"UK3CB_TKA_O_H_zsh7a_mike_Des",
	"BSO_H_6B27M_CSAT",
	"BSO_H_6B27M_ess_CSAT",
	"UK3CB_ABP_B_H_6b27m_ess_DES",
	"UK3CB_ABP_B_H_6b27m_DES",
	"UK3CB_ANP_B_H_6b27m_BLK",
	"UK3CB_ANP_B_H_6b27m_ess_bala_BLK",
	"UK3CB_ANP_B_H_6b27m_ess_BLK",
	"UK3CB_ANP_B_H_6b27m_bala_BLK",
	"ptv_viper",
	"ptv_viperg",
	"ptv_vipergc",
	"ptv_viperg_r",
	"ptv_viper_r"
	
];

_racs = [ // RACS SF
	// Rifles
	"hlc_rifle_CQBR",
	"rhs_weap_m16a4_imod",
	"rhs_weap_m16a4_imod_M203",
	"hlc_rifle_G36C",
	"hlc_rifle_G36E1",
	"hlc_rifle_G36KE1",
	"hlc_rifle_G36KA1KSK",
	"hlc_rifle_ACR_SBR_tan",

	"rhs_weap_mk17_CQC",
	"rhs_weap_mk17_LB",
	"rhs_weap_mk17_STD",

	"hlc_smg_mp5sd6",
	"hlc_smg_MP5N",
	"hlc_smg_mp5k_PDW",

	"rhs_weap_M590_8RD",

	"rhs_weap_m249_pip_L",
	"rhs_weap_m249_pip_S_para",
	"MMG_02_black_F",
	"hlc_lmg_mk48mod1",
	"sp_fwa_mag58",

	"rhs_weap_M107",
	"rhs_weap_M107_d",
	"rhs_weap_M107_w",
	"hlc_rifle_psg1",
	"hlc_rifle_samr2",
	"srifle_DMR_03_F",
	"srifle_DMR_03_tan_F",

	"hlc_rifle_SG553SB",
	"hlc_rifle_SG553SB_RIS",
	"hlc_rifle_SG553SB_TAC",
		"hlc_optic_fnstanag4x_550",
		"hlc_optic_kern_550",
		"hlc_optic_zf95",

	"hlc_rifle_auga3",
	"uk3cb_auga3_gl",
	"hlc_30Rnd_556x45_SPR_AUG",
	"hlc_30Rnd_556x45_T_AUG",


	// Pistols
	"sp_fwa_l9a1_hipower_wood",
		"sp_fwa_13Rnd_9mm_HiPower",
	"hgun_ACPC2_F",
		"rhsusf_mag_7x45acp_MHP",
	"hgun_P07_F",
	"hgun_Pistol_heavy_01_F",
		"11Rnd_45ACP_Mag",


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
	"rhs_weap_smaw_green",
		"rhs_weap_optic_smaw",

	// Magazines
	"hlc_30rnd_556x45_SPR_G36",
	"hlc_30rnd_556x45_Tracers_G36",

	"hlc_30rnd_556x45_SPR_L5",
	"hlc_30rnd_556x45_t_L5",

	"hlc_30Rnd_9x19_B_MP5",
	"hlc_30Rnd_9x19_SD_MP5",

	"16Rnd_9x21_Mag",
	"sp_fwa_13Rnd_9mm_HiPower",

	"rhs_mag_20Rnd_SCAR_762x51_mk316_special",
	"rhs_mag_20Rnd_SCAR_762x51_m62_tracer",

	"hlc_30Rnd_556x45_SPR_sg550",
	"hlc_30Rnd_556x45_T_sg550",
	"hlc_30Rnd_556x45_SOST_sg550",

	"sp_fwa_100Rnd_762_mag_turret",
	"sp_fwa_200Rnd_762_mag_turret",
	"sp_fwa_50Rnd_762_mag_turret",

	"rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote",
	"rhsusf_200Rnd_556x45_soft_pouch_coyote",

	"hlc_20rnd_762x51_Mk316_G3",
	"hlc_20rnd_762x51_barrier_G3",
	"hlc_20rnd_762x51_S_G3",
	"hlc_20rnd_762x51_T_G3",
	"ACE_20Rnd_762x51_Mk319_Mod_0_Mag",
	"ACE_20Rnd_762x51_Mag_Tracer",
	"ACE_20Rnd_762x51_Mag_SD",

	"rhsusf_8Rnd_00Buck",
	"rhsusf_8Rnd_Slug",

	"rhsusf_200Rnd_556x45_mixed_soft_pouch",
	"rhsusf_100Rnd_556x45_mixed_soft_pouch",
	"rhsusf_100Rnd_762x51_m80a1epr",
	"130Rnd_338_Mag",

	"rhsusf_mag_10Rnd_STD_50BMG_M33",
	"rhsusf_mag_10Rnd_STD_50BMG_mk211",
	"ptv_10Rnd_127x99_m82_Raufoss",
	"ptv_10Rnd_127x99_m82_Raufoss_T_Red",
	"ACE_10Rnd_127x99_AMAX_Mag",
	"ACE_10Rnd_127x99_API_Mag",

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
	"rhs_mag_smaw_HEAA",
	"rhs_mag_smaw_HEDP",


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
	"rhsusf_acc_eotech",
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
	"optic_hamr",
	"ptv_hbrs",
	"rhsusf_acc_t1_high",
	"rhsusf_acc_t1_low",
	"muzzle_snds_b",
	"muzzle_snds_b_snd_f",
	"rhsusf_acc_aac_scarh_silencer",
	"rhsusf_acc_aac_762sd_silencer",
	"rhsusf_acc_aac_762sdn6_silencer",

	"rhsusf_acc_kac_grip_saw_bipod",

	"muzzle_snds_338_black",
	"ptv_rotex308",
	"acc_pointer_ir",
	"rhsusf_acc_anpeq15_light",

	"optic_ams",
	"optic_ams_snd",
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
	"ACE_M14",
	"ACE_M84",
	"ACE_CTS9",
	"SmokeShell",
	"SmokeShellRed",
	"SmokeShellGreen",
	"SmokeShellBlue",
	"SmokeShellPurple",

	"ACE_Chemlight_HiBlue",
	"ACE_Chemlight_HiGreen",
	"ACE_Chemlight_HiRed",
	"ACE_Chemlight_HiWhite",
	"ACE_Chemlight_HiYellow",
	"ACE_Chemlight_UltraHiOrange",


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
	"ITC_Land_B_AR2e_Packed",
	"ITC_Land_B_AR2i_Packed",
	"ITC_Land_B_AL6_Packed",
	"ITC_Land_B_AL6m_Packed",
	"ITC_Land_BW_RemoteGLTD_Packed",
	"ITC_Land_B_RemoteGLTD_Packed",

	"Binocular",
	"UK3CB_BAF_Soflam_Laserdesignator",
	"Rangefinder",
	"ace_dragon_sight",
	"laserbatteries",

	"UK3CB_BAF_Javelin_CLU",
	"UK3CB_BAF_Javelin_Slung_Tube",

	"ACE_NVG_Gen4_Green",
	"NVGoggles",
	"NVGoggles_INDEP",
	"ACE_NVG_Gen4_Black",
	"ACE_NVG_Gen4",
	"ACE_NVG_Gen4_Green",

	// radio
	"ACRE_PRC343",
	"ACRE_PRC148",
	"ACRE_PRC117F",


	// uniform
	"bso_uniform_racs_slv",
	"bso_uniform_racs",
	"rhs_uniform_g3_m81",
	"rhs_uniform_g3_m81",
	
	// vest
	"mbavkhk",
	"mbavkhk_gl",
	"mbavkhk_r",
	"mbavkhk_l",
	"mbavkhk_mg",
	"mbavkhk_m",
	"mbavkhk_r",
	"V_TacVest_khk",
	"UK3CB_V_Pilot_Vest",

	"V_RebreatherB",


	// backpack
	"UK3CB_TKA_B_B_ASS",
	"UK3CB_BAF_B_Bergen_TAN_Rifleman_A",
	"UK3CB_BAF_B_Bergen_TAN_Rifleman_B",
	"UK3CB_BAF_B_Bergen_TAN_JTAC_H_A",
	"UK3CB_BAF_B_Bergen_TAN_SL_A",
	"UK3CB_BAF_B_Carryall_TAN",
	"UK3CB_BAF_B_Kitbag_TAN",


	// Hat
	"rhsusf_opscore_ut_pelt_cam",
	"rhsusf_opscore_ut_pelt",
	"bso_h_6B27M_RACS",
	"bso_h_6B27M_ess_RACS",

	"H_Cap_blk_Raven",
	"H_Cap_headphones",
	"lxWS_H_Headset",
	"usm_headwrap_blk",
	"usm_headwrap_odg1",
	"H_PilotHelmetHeli_B",
	"H_HelmetCrew_I",
	"H_PilotHelmetFighter_B",
	"U_B_PilotCoveralls",


	"H_Booniehat_indp",
	"H_MilCap_blue",
	"H_Watchcap_sgg",
	"H_Watchcap_blk",
	"H_Hat_camo",
	"H_Cap_red",
	"usm_headwrap_odg2",
	"usm_bdu_cap_odg",
	"usm_bdu_cap_blu",
	"usm_bdu_cap_tan",
	"usm_bdu_boonie_odg",
	"usm_headwrap_des",
	"usm_headwrap_tan",
	
	"ACE_CableTie"
];

private _playerFaction = ["PlayerFaction", 1] call BIS_fnc_getParamValue;
switch (_playerFaction) do {

	case 1: { // BSO AAF
	[_armoury, _aaf] call ace_arsenal_fnc_initBox;
	};


	case 2: { // CSAT SF
	[_armoury, _csat] call ace_arsenal_fnc_initBox;
	};

	case 3: { // RACS SF
	[_armoury, _racs] call ace_arsenal_fnc_initBox;
	};
};