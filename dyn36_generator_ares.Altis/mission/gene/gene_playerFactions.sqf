switch ("PlayerFaction" call BIS_fnc_getParamValue) do
	{
		case 1: { // AAF SF
			bso_gene_side_blu = "west";
			publicVariable "bso_gene_side_blu";
			bso_gene_side_bluX = west;
			publicVariable "bso_gene_side_bluX";

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

		};


		
		case 2:	{ //CSAT SF 
			bso_gene_side_blu = "west";
			publicVariable "bso_gene_side_blu";
			bso_gene_side_bluX = west;
			publicVariable "bso_gene_side_bluX";

			bso_gene_blu_landVehcs = [
				"O_APC_Tracked_02_AA_F",
				"O_APC_Tracked_02_cannon_F",
				"O_APC_Wheeled_02_rcws_v2_F",
				"O_MBT_02_arty_F",
				"O_Truck_02_Ammo_F",
				"O_Truck_02_fuel_F",
				"O_Truck_02_medical_F",
				"O_Truck_02_transport_F",
				"O_Truck_02_box_F",
				"O_Truck_02_covered_F",
				"O_MRAP_02_F",
				"O_MRAP_02_gmg_F",
				"O_MRAP_02_hmg_F",
				"O_LSV_02_unarmed_F",
				"O_LSV_02_armed_F",
				"O_LSV_02_AT_F",
				"UK3CB_O_M1030_CSAT_B",
				"O_Quadbike_01_F",
				"O_Truck_03_ammo_F",
				"O_Truck_03_fuel_F",
				"O_Truck_03_medical_F",
				"O_Truck_03_repair_F",
				"O_Truck_03_transport_F",
				"O_Truck_03_covered_F",
				"O_MBT_04_cannon_F",
				"O_MBT_04_command_F",
				"O_MBT_02_cannon_F",
				"O_bso_csat_iran_BMP3",
				"O_bso_csat_iran_BTR80",
				"O_bso_csat_iran_M113_M",
				"O_bso_csat_iran_mlrs",
				"O_bso_csat_iran_2S3",
				"O_bso_csat_iran_T72"
			];
			publicVariable "bso_gene_blu_landVehcs";

			
			bso_gene_blu_airVehcs = [
				"O_Heli_Light_02_dynamicLoadout_F",
				"O_Heli_Light_02_unarmed_F",
				"O_Heli_Transport_04_F",
				"O_Heli_Transport_04_ammo_F",
				"O_Heli_Transport_04_bench_F",
				"O_Heli_Transport_04_box_F",
				"O_Heli_Transport_04_fuel_F",
				"O_Heli_Transport_04_medevac_F",
				"O_Heli_Transport_04_repair_F",
				"O_Heli_Transport_04_covered_F",
				"O_Heli_Attack_02_dynamicLoadout_F",
				"O_Plane_Fighter_02_F",
				"O_Plane_Fighter_02_Stealth_F",
				"VTI_O_Plane_Fighter_02_Elint_F",
				"O_Plane_CAS_02_dynamicLoadout_F",
				"O_bso_csat_iran_AH1",
				"O_bso_csat_iran_CH47",
				"O_bso_csat_iran_Mi8_FAB",
				"O_bso_csat_iran_Mi8_UPK",
				"O_bso_csat_iran_Mi8",
				"O_bso_csat_iran_xian_inf",
				"O_bso_csat_iran_xian_vehc",
				"O_bso_csat_iran_C130"
			];
			publicVariable "bso_gene_blu_airVehcs";

			bso_gene_blu_boatVehcs = [

				"O_Boat_Transport_01_F",
				"rksla3_lcvpmk5_1_opfor_camo",
				"rksla3_lcvpmk5_viv_opfor_camo",
				"O_Boat_Armed_01_hmg_F",
				"rhsusf_mkvsoc"
			];
			publicVariable "bso_gene_blu_boatVehcs";	



		};
		case 3:	{ //"RACS SF" 
		};
};