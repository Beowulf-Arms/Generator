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
			bso_gene_side_blu = "west";
			publicVariable "bso_gene_side_blu";
			bso_gene_side_bluX = west;
			publicVariable "bso_gene_side_bluX";

			bso_gene_blu_landVehcs = [
				"I_BSO_RACS_LAV25",
				"I_BSO_RACS_LAVC2",
				"I_BSO_RACS_M113_AMMO",
				"I_BSO_RACS_M113_M2",
				"I_BSO_RACS_M113_M240",
				"I_BSO_RACS_M113",
				"I_BSO_RACS_m109",
				"I_BSO_RACS_hemtt_cover",
				"I_BSO_RACS_hemtt_open",
				"I_BSO_RACS_LANDROVER",
				"I_BSO_RACS_LANDROVER_M2",
				"I_BSO_RACS_LANDROVER_open",
				"I_BSO_RACS_LANDROVER_SF_GMG",
				"I_BSO_RACS_LANDROVER_SF_M2",
				"I_BSO_RACS_hemtt_ammo",
				"I_BSO_RACS_hemtt_fuel",
				"I_BSO_RACS_hemtt_medical",
				"I_BSO_RACS_hemtt_repair",
				"I_BSO_RACS_M113_MEDICAL",
				"I_BSO_RACS_m1a1",
				"I_BSO_RACS_m60a1",
				"UK3CB_KRG_I_M60A3",
				"UK3CB_B_AAV_US_DES",
				"rhsusf_m1151_m240_v3_usmc_d",
				"rhsusf_m1151_m2_v3_usmc_d",
				"rhsusf_m1240a1_m2crows_usmc_d",
				"rhsusf_m1240a1_m240_usmc_d",
				"rhsusf_m1240a1_m2_usmc_d",
				"rhsusf_M1232_MC_M2_usmc_d",
				"rhsusf_CGRCAT1A2_M2_usmc_d",
				"UK3CB_B_MTVR_Reammo_USMC_DES",
				"UK3CB_B_MTVR_Closed_USMC_DES",
				"UK3CB_B_MTVR_Refuel_USMC_DES",
				"UK3CB_B_MTVR_Open_USMC_DES",
				"UK3CB_B_MTVR_Recovery_USMC_DES",
				"UK3CB_B_MTVR_Repair_USMC_DES",
				"B_BSO_WIESEL_FF",
				"B_BSO_WIESEL_TOW",
				"B_MBT_03_cannon_F",
				"B_MBT_01_TUSK_F",
				"B_MBT_01_cannon_F",
				"APC_Wheeled_01_mortar_base_lxWS",
				"B_MBT_01_mlrs_F",
				"B_MBT_01_arty_F",
				"B_APC_Wheeled_03_cannon_F",
				"APC_Wheeled_01_atgm_base_lxWS",
				"APC_Wheeled_01_command_base_lxWS",
				"B_APC_Wheeled_01_cannon_F",
				"UK3CB_BAF_FV432_Mk3_GPMG_Sand",
				"UK3CB_BAF_FV432_Mk3_RWS_Sand",
				"UK3CB_BAF_Warrior_A3_D",
				"UK3CB_BAF_Warrior_A3_D_Cage",
				"UK3CB_BAF_Warrior_A3_D_Cage_Camo",
				"UK3CB_BAF_Warrior_A3_D_Camo",
				"B_AFV_Wheeled_01_up_cannon_F",
				"B_AFV_Wheeled_01_cannon_F",
				"B_APC_Tracked_01_CRV_F",
				"B_APC_Tracked_01_rcws_F",
				"UK3CB_BAF_Coyote_Logistics_L134A1_D2",
				"UK3CB_BAF_Coyote_Logistics_L134A1_D",
				"UK3CB_BAF_Coyote_Logistics_L111A1_D2",
				"UK3CB_BAF_Coyote_Logistics_L111A1_D",
				"UK3CB_BAF_Coyote_Passenger_L111A1_D",
				"UK3CB_BAF_Coyote_Passenger_L111A1_D2",
				"UK3CB_BAF_Husky_Logistics_GPMG_Sand",
				"UK3CB_BAF_Husky_Logistics_HMG_Sand",
				"UK3CB_BAF_Husky_Passenger_GPMG_Sand",
				"UK3CB_BAF_Husky_Passenger_HMG_Sand",
				"UK3CB_BAF_Jackal2_L111A1_D2",
				"UK3CB_BAF_Jackal2_L111A1_D",
				"UK3CB_BAF_Jackal2_L134A1_D2",
				"UK3CB_BAF_Jackal2_L134A1_D",
				"UK3CB_BAF_LandRover_Amb_Sand_A",
				"UK3CB_BAF_LandRover_Hard_FFR_Sand_A",
				"UK3CB_BAF_LandRover_Snatch_Sand_A",
				"UK3CB_BAF_LandRover_Snatch_FFR_Sand_A",
				"UK3CB_BAF_LandRover_Soft_Sand_A",
				"UK3CB_BAF_LandRover_Soft_FFR_Sand_A",
				"UK3CB_BAF_LandRover_WMIK_GMG_Sand_A",
				"UK3CB_BAF_LandRover_WMIK_GMG_FFR_Sand_A",
				"UK3CB_BAF_LandRover_WMIK_GPMG_Sand_A",
				"UK3CB_BAF_LandRover_WMIK_GPMG_FFR_Sand_A",
				"UK3CB_BAF_LandRover_WMIK_HMG_Sand_A",
				"UK3CB_BAF_LandRover_WMIK_HMG_FFR_Sand_A",
				"UK3CB_BAF_LandRover_WMIK_Milan_Sand_A",
				"UK3CB_BAF_LandRover_WMIK_Milan_FFR_Sand_A",
				"UK3CB_B_M1030_NATO",
				"B_LSV_01_AT_F",
				"B_LSV_01_armed_F",
				"B_LSV_01_unarmed_F",
				"B_Quadbike_01_F"
			];
			publicVariable "bso_gene_blu_landVehcs";

			
			bso_gene_blu_airVehcs = [
				"I_BSO_RACS_AH9",
				"I_BSO_RACS_MH9",
				"I_BSO_RACS_UH60M",
				"RHS_AH1Z",
				"rhsusf_CH53E_USMC_D",
				"rhsusf_CH53E_USMC_D",
				"rhsusf_CH53E_USMC_GAU21_D",
				"RHS_UH1Y_FFAR_d",
				"RHS_UH1Y_d",
				"RHS_UH1Y_UNARMED_d",
				"rhsusf_f22",
				"RHS_A10",
				"RHS_C130J",
				"RHS_C130J_Cargo",
				"B_Plane_CAS_01_dynamicLoadout_F",
				"FIR_AV8B_NA",
				"FIR_AV8B_NA_no_cam",
				"FIR_AV8B",
				"FIR_AV8B_no_cam",
				"B_Plane_Fighter_01_F",
				"B_Plane_Fighter_01_Stealth_F",
				"FIR_AV8B_GR9A",
				"FIR_AV8B_GR9A_no_cam",
				"bso_uh1h_gunship",
				"bso_uh1h_gunship_m",
				"bso_uh1h_gunship_mg",
				"bso_uh1h_mg",
				"bso_uh1h",
				"B_Heli_Transport_03_F",
				"B_Heli_Transport_01_F",
				"B_Heli_Attack_01_dynamicLoadout_F"
			];
			publicVariable "bso_gene_blu_airVehcs";

			bso_gene_blu_boatVehcs = [

				"B_Boat_Armed_01_minigun_F",
				"UK3CB_BAF_RHIB_HMG",
				"UK3CB_BAF_RHIB_GPMG",
				"rksla3_lcvpmk5_1_generic_grey",
				"rksla3_lcvpmk5_viv_generic_grey",
				"rhsusf_mkvsoc"
			];
			publicVariable "bso_gene_blu_boatVehcs";		
		};
};