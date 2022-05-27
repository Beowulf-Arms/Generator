if (isServer) then 
{
	private _bso_m1 = createMarker ["m_1", [0,0]];
	private _bso_m0 = createMarker ["m_0", [0,0]];
	bso_gene_taskNum = 0; publicVariable "bso_gene_taskNum";
	bso_gene_ObjEnd = false; publicVariable "bso_gene_ObjEnd";
	bso_gene_ObjSet = false; publicVariable "bso_gene_ObjSet";
	bso_gene_ObjIntel = "NONE"; publicVariable "bso_gene_Obj";

	// Marker locations
	bso_gene_locations = ["l_1","l_2","l_3","l_4","l_5","l_6","l_7","l_8","l_9","l_10","l_11","l_12","l_13","l_14","l_15","l_16","l_17","l_18","l_19","l_20","l_21","l_22","l_23","l_24","l_25","l_26","l_27","l_28","l_29","l_30","l_31","l_32","l_33","l_34","l_35"];
	publicVariable "bso_gene_locations";

	bso_gene_starts = ["s_1","s_2","s_3"];
	publicVariable "bso_gene_starts";

	bso_gene_end = ["e_1","e_2","e_3"];
	publicVariable "bso_gene_end";


	// Generator units/side variables list
	bso_gene_side_blu = "west";
	publicVariable "bso_gene_side_blu";
	bso_gene_side_bluX = west;
	publicVariable "bso_gene_side_bluX";

	bso_gene_side = east;
	publicVariable "bso_gene_side";

	bso_gene_sideX = "east";
	publicVariable "bso_gene_sideX";

	bso_gene_sideD = switch bso_gene_side do
	{
		case west: { "WEST D" };
		case east: { "EAST D" };
		case resistance: { "GUER D" };
		default {"EAST D"};
	};
	publicVariable "bso_gene_sideD";


	bso_gene_blu_landVehcs = [
		"UK3CB_AAF_B_AAV",
		"UK3CB_AAF_B_LAV25",
		"UK3CB_AAF_B_LAV25_HQ",
		"UK3CB_AAF_B_M1117",
		"UK3CB_AAF_B_M113_M2",
		"UK3CB_AAF_B_M113_M240",
		"UK3CB_AAF_B_M113_AMB",
		"UK3CB_AAF_B_M113_MK19",
		"UK3CB_AAF_B_M113_supply",
		"UK3CB_AAF_B_M113_unarmed",
		"UK3CB_AAF_B_M109",
		"UK3CB_AAF_B_LR_Closed",
		"UK3CB_AAF_B_LR_M2",
		"UK3CB_AAF_B_LR_Open",
		"UK3CB_AAF_B_M1030",
		"UK3CB_AAF_B_M1025_MK19",
		"UK3CB_AAF_B_M1025_M2",
		"UK3CB_AAF_B_M1025_TOW",
		"UK3CB_AAF_B_M1025",
		"UK3CB_AAF_B_M1151",
		"UK3CB_AAF_B_M1151_GPK_M2",
		"UK3CB_AAF_B_M1151_GPK_M240",
		"UK3CB_AAF_B_M1151_GPK_MK19",
		"UK3CB_AAF_B_M1151_OGPK_M2",
		"UK3CB_AAF_B_M1151_OGPK_M240",
		"UK3CB_AAF_B_M1151_OGPK_MK19",
		"UK3CB_AAF_B_M1152",
		"UK3CB_AAF_B_M939",
		"UK3CB_AAF_B_M939_Guntruck",
		"UK3CB_AAF_B_M939_Open",
		"UK3CB_AAF_B_M939_Reammo",
		"UK3CB_AAF_B_M939_Recovery",
		"UK3CB_AAF_B_M939_Fuel",
		"UK3CB_AAF_B_M939_Repair",
		"UK3CB_AAF_B_M998_2DR",
		"UK3CB_AAF_B_M998_4DR",
		"UK3CB_AAF_B_Offroad",
		"UK3CB_AAF_B_Offroad_M2",
		"UK3CB_AAF_B_Quadbike",
		"UK3CB_AAF_B_SUV_Armed",
		"UK3CB_AAF_B_SUV_Armoured",
		"UK3CB_AAF_B_M1A1",
		"UK3CB_AAF_I_LR_SF_AGS30",
		"UK3CB_AAF_I_LR_SF_M2",
		"UK3CB_AAF_I_M60A1",
		"UK3CB_AAF_I_M60A3",
		"I_A_Truck_02_aa_lxWS",
		"I_APC_tracked_03_cannon_F",
		"I_APC_Wheeled_03_cannon_F",
		"I_Truck_02_MRL_F",
		"I_MRAP_03_F",
		"I_MRAP_03_gmg_F",
		"I_MRAP_03_hmg_F",
		"I_Truck_02_ammo_F",
		"I_Truck_02_fuel_F",
		"I_Truck_02_medical_F",
		"I_Truck_02_box_F",
		"I_Truck_02_transport_F",
		"I_Truck_02_covered_F",
		"UK3CB_I_M1030_AAF",
		"gm_demo_aaf_mb_u1300l_cargo",
		"I_Quadbike_01_F",
		"I_Truck_02_cargo_lxWS",
		"I_Truck_02_flatbed_lxWS",
		"I_MBT_03_cannon_F",
		"I_LT_01_AA_F",
		"I_LT_01_AT_F",
		"I_LT_01_cannon_F",
		"I_LT_01_scout_F",
		"UK3CB_AAF_B_FV4201",
		"UK3CB_AAF_B_M270_MLRS_HE",
		"UK3CB_AAF_B_M270_MLRS_CLUSTER"
	];
	publicVariable "bso_gene_blu_landVehcs";

	
	bso_gene_blu_airVehcs = [
		"I_Heli_Transport_02_F",
		"I_Heli_light_03_dynamicLoadout_F",
		"I_Heli_light_03_unarmed_F",
		"I_Plane_Fighter_04_F",
		"I_Plane_Fighter_03_dynamicLoadout_F",
		"UK3CB_AAF_I_L39_PYLON",
		"UK3CB_AAF_I_C130J",
		"UK3CB_AAF_I_C130J_CARGO",
		"UK3CB_AAF_I_C400",
		"UK3CB_AAF_I_Cessna_T41_Armed",
		"UK3CB_AAF_I_Cessna_T41",
		"UK3CB_AAF_B_Gripen_DG",
		"UK3CB_AAF_B_Gripen_G",
		"UK3CB_AAF_B_AH9",
		"UK3CB_AAF_B_AH1Z",
		"UK3CB_AAF_B_Benches_MH9",
		"UK3CB_AAF_B_Unarmed_MH9",
		"UK3CB_AAF_B_UH1H_M240",
		"UK3CB_AAF_B_UH1H_GUNSHIP",
		"UK3CB_AAF_B_UH1H_MED",
		"UK3CB_AAF_B_UH1H",
		"UK3CB_AAF_B_UH60M",
		"UK3CB_AAF_B_UH60M2",
		"UK3CB_AAF_B_Bell412_Armed_dynamicLoadout",
		"UK3CB_AAF_B_Bell412_Utility",
		"FIR_AV8B_NA",
		"FIR_AV8B_NA_no_cam",
		"FIR_AV8B",
		"FIR_AV8B_no_cam",
		"FIR_AV8B_GR9A",
		"FIR_AV8B_GR9A_no_cam"
	];
	publicVariable "bso_gene_blu_airVehcs";

	bso_gene_blu_boatVehcs = [
		"UK3CB_AAF_I_RHIB",
		"UK3CB_AAF_I_RHIB_Gunboat",
		"UK3CB_AAF_I_Skiff",
		"UK3CB_AAF_I_SDV",
		"UK3CB_AAF_I_Rubber_Rhib",
		"rksla3_lcvpmk5_ind_generic_grey",
		"rksla3_lcvpmk5_ind_viv_generic_grey",
		"I_Boat_Armed_01_minigun_F",
		"rhsusf_mkvsoc"
	];
	publicVariable "bso_gene_blu_boatVehcs";


	bso_gene_sideV = 0;
	publicVariable "bso_gene_sideV";

	//Must be unique class, cannot be used elsewhere in Geneasz\
	bso_gene_hvt = ["C_bso_HVT"];
	publicVariable "bso_gene_hvt";

	bso_gene_gl = ["O_BSO_FIA_GL"];
	publicVariable "bso_gene_gl";

	// first entry used for static weapons
	bso_gene_opfgrp = ["O_BSO_FIA_INS","O_BSO_FIA_INS2","O_BSO_FIA_INS3","O_BSO_FIA_AUTO","O_BSO_FIA_LAT","O_BSO_FIA_MG","O_BSO_FIA_DMR","O_BSO_FIA_INS","O_BSO_FIA_INS2","O_BSO_FIA_INS3","O_BSO_FIA_INS4","O_BSO_FIA_INS5","O_BSO_FIA_INS6","O_BSO_FIA_INS7","O_BSO_FIA_LAT","O_BSO_FIA_AUTO","O_BSO_FIA_rMAT","O_BSO_FIA_MAT"];	
	publicVariable "bso_gene_opfgrp";


	bso_gene_opfTrans = ["O_BSO_FIA_OFFROAD_armour","O_BSO_FIA_transport","O_BSO_FIA_OFFROAD","O_BSO_FIA_TRUCK","UK3CB_O_G_LandRover_Closed","UK3CB_O_G_LandRover_Open,","UK3CB_O_G_Hilux_Closed","UK3CB_O_G_Hilux_Open"];
	publicVariable "bso_gene_opfTrans";

	bso_gene_opfArmTrans = ["O_BSO_FIA_gorgan"];
	publicVariable "bso_gene_opfArmTrans";

	
	bso_gene_opfAtkVehc = ["O_BSO_FIA_OFFROAD_ARMED_armour","O_BSO_FIA_OFFROAD_ARMED_armour","O_BSO_FIA_OFFROAD_AT_armour","O_BSO_FIA_OFFROAD_ARMED","O_BSO_FIA_OFFROAD_AT","UK3CB_O_G_LandRover_SF_M2","UK3CB_O_G_Hilux_Zu23_Front","UK3CB_O_G_Hilux_M2","UK3CB_O_G_Hilux_Vulcan_Front","UK3CB_O_G_Hilux_BMP","UK3CB_O_G_LandRover_M2","UK3CB_O_G_Hilux_BTR"];
	publicVariable "bso_gene_opfAtkVehc";

	bso_gene_opfTransHelo = ["O_BSO_FIA_uh1"];
	publicVariable "bso_gene_opfTransHelo";

	
	bso_gene_opfStatic_Arty = ["bso_arty_rokit_cluster_opf","bso_arty_rokit_he_opf","O_BSO_FIA_BSO_M252"];
	publicVariable "bso_gene_opfStatic_Arty";

	bso_gene_opfStatic_AA = ["O_BSO_FIA_M2","bso_bms_launcher_static_mk2_opf"];
	publicVariable "bso_gene_opfStatic_AA";

	gene_patrol_groups = [];
	publicVariable "gene_patrol_groups";

	gene_garrison_groups = [];
	publicVariable "gene_garrison_groups";

	gene_atk_groups = [];
	publicVariable "gene_atk_groups";
};


[] call gene_fnc_vehcSpawnActions;

/*
private _GroupTele = ["GroupTele", 1] call BIS_fnc_getParamValue;
private _LeaderTele = ["LeaderTele", 1] call BIS_fnc_getParamValue;

// Teleporters
private _bsoFlag = ["bso_b_flag", "Teleport to MHQ", "BSO\noti\bso_logo.paa", {}, {true}, {}, [], [0,0,-2.5], 5] call ace_interact_menu_fnc_createAction; 
private _bsoFlagMHQ = ["bso_b_flag_MHQ", "Teleport to MHQ", "", {_x = [b_mhq] execVM "mission\bso_tele.sqf";}, {true}, {}, [], [0,0,-2.5], 5] call ace_interact_menu_fnc_createAction; 

[typeof b_base_flag, 0, [], _bsoFlag] call ace_interact_menu_fnc_addActionToClass;
[typeof b_base_flag, 0, ["bso_b_flag"], _bsoFlagMHQ] call ace_interact_menu_fnc_addActionToClass;


if (_GroupTele == 1) then {
	_bsoFlagGL = ["bso_b_flag_GL", "Teleport to Group Leader", "", {_x = [(leader player)] execVM "mission\bso_tele.sqf";}, {true}, {}, [], [0,0,-2.5], 5] call ace_interact_menu_fnc_createAction; 
	[typeof b_base_flag, 0, ["bso_b_flag"], _bsoFlagGL] call ace_interact_menu_fnc_addActionToClass;
};
*/


_TeleCondition = {
params ["_target", "_player", "_params"];

((count nearestObjects [_player, ["Flag_AAF_F", "USMC_WarfareBVehicleServicePoint"], 100]) > 0) || bso_gene_ObjEnd

};
_TeleExec = {createDialog "GeneTeleMenu";};

_TeleAction = ["bso_gen_tele", "Tele. Menu", "BSO\noti\bso_logo.paa", _TeleExec, _TeleCondition] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions"], _TeleAction] call ace_interact_menu_fnc_addActionToClass;
