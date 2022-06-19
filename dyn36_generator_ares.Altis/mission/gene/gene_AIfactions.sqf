private _aiFaction = ["AIFaction", 1] call BIS_fnc_getParamValue;


switch (_aiFaction) do

{

	case 1: { // BSO FIA
		// Side to be used for OPFOR faction
		bso_gene_side = east;
		bso_gene_sideX = "east";
		bso_gene_sideD = switch bso_gene_side do
		{
			case west: { "WEST D" };
			case east: { "EAST D" };
			case resistance: { "GUER D" };
			default {"EAST D"};
		};
		//bso_gene_sideV = 0;
		//publicVariable "bso_gene_sideV";

		//HVT objective HVTs. Must be unique class, cannot be used elsewhere in Gene
		bso_gene_hvt = ["C_bso_HVT"];

		// Group Leader. Created for all infantry groups. Can be any unit (or = opfgrp)
		bso_gene_gl = ["O_BSO_FIA_GL"];

		// Array of infantry used for faction. First entry used for static weapons. To reduce ratio of "special" weapons, add more non-specials. EG Multiple rifle classes.
		bso_gene_opfgrp = ["O_BSO_FIA_INS","O_BSO_FIA_INS2","O_BSO_FIA_INS3","O_BSO_FIA_AUTO","O_BSO_FIA_LAT","O_BSO_FIA_MG","O_BSO_FIA_DMR","O_BSO_FIA_INS","O_BSO_FIA_INS2","O_BSO_FIA_INS3","O_BSO_FIA_INS4","O_BSO_FIA_INS5","O_BSO_FIA_INS6","O_BSO_FIA_INS7","O_BSO_FIA_LAT","O_BSO_FIA_AUTO","O_BSO_FIA_rMAT","O_BSO_FIA_MAT"];	 

		// Transports. Used for QRF dropoffs initial defence groups. EG Landrover, Truck, Van
		bso_gene_opfTrans = ["O_BSO_FIA_OFFROAD_armour","O_BSO_FIA_transport","O_BSO_FIA_OFFROAD","O_BSO_FIA_TRUCK","UK3CB_O_G_LandRover_Closed","UK3CB_O_G_LandRover_Open,","UK3CB_O_G_Hilux_Closed","UK3CB_O_G_Hilux_Open"];

		// APCs. Used for QRF mech assaults and initial defence groups. EG BTRs, BMP, Warrior, Gorgan
		bso_gene_opfArmTrans = ["O_BSO_FIA_gorgan"];

		// Attack Vehicles. Random ratios used for non-transport patrol vehcs + QRF. EG Tanks (T-72, M60), Technicals, Humvees, Recon Vehcs (BRDM)
		bso_gene_opfAtkVehc = ["O_BSO_FIA_OFFROAD_ARMED_armour","O_BSO_FIA_OFFROAD_ARMED_armour","O_BSO_FIA_OFFROAD_AT_armour","O_BSO_FIA_OFFROAD_ARMED","O_BSO_FIA_OFFROAD_AT","UK3CB_O_G_LandRover_SF_M2","UK3CB_O_G_Hilux_Zu23_Front","UK3CB_O_G_Hilux_M2","UK3CB_O_G_Hilux_Vulcan_Front","UK3CB_O_G_Hilux_BMP","UK3CB_O_G_LandRover_M2","UK3CB_O_G_Hilux_BTR"];

		// Transport Heli. Used for Helo Insert - NOT IN USE CURRENTLY 05/22
		bso_gene_opfTransHelo = ["O_BSO_FIA_uh1"];

		// Static Weapon Artillery. Used for Initial Defence.
		bso_gene_opfStatic_Arty = ["bso_arty_rokit_cluster_opf","bso_arty_rokit_he_opf","O_BSO_FIA_BSO_M252"];

		// Static Weapon Turrets. Mainly used for 360 degree Anti-air due to spawning. Can be any Vehc technically... EG M2. 50cal, BMS static launcher
		bso_gene_opfStatic_AA = ["O_BSO_FIA_M2","bso_bms_launcher_static_mk2_opf"];
		
		// All variables to be declared
		publicVariable "bso_gene_side";
		publicVariable "bso_gene_sideX";
		publicVariable "bso_gene_sideD";
		publicVariable "bso_gene_hvt";
		publicVariable "bso_gene_gl";
		publicVariable "bso_gene_opfgrp";
		publicVariable "bso_gene_opfTrans";
		publicVariable "bso_gene_opfArmTrans";
		publicVariable "bso_gene_opfAtkVehc";
		publicVariable "bso_gene_opfTransHelo";
		publicVariable "bso_gene_opfStatic_Arty";
		publicVariable "bso_gene_opfStatic_AA";
	};

	case 2: { // BSO CSAT - IRAN
		// Side to be used for OPFOR faction
		bso_gene_side = east;
		bso_gene_sideX = "east";
		bso_gene_sideD = switch bso_gene_side do
		{
			case west: { "WEST D" };
			case east: { "EAST D" };
			case resistance: { "GUER D" };
			default {"EAST D"};
		};
		//bso_gene_sideV = 0;
		//publicVariable "bso_gene_sideV";

		//HVT objective HVTs. Must be unique class, cannot be used elsewhere in Gene
		bso_gene_hvt = ["O_bso_csat_iran_COM"];

		// Group Leader. Created for all infantry groups. Can be any unit (or = opfgrp)
		bso_gene_gl = ["O_bso_csat_iran_GL"];

		// Array of infantry used for faction. First entry used for static weapons. To reduce ratio of "special" weapons, add more non-specials. EG Multiple rifle classes.
		bso_gene_opfgrp = ["O_bso_csat_iran_rifle","O_bso_csat_iran_rifle","O_bso_csat_iran_rifle","O_bso_csat_iran_AUTO","O_bso_csat_iran_lat","O_bso_csat_iran_MG","O_bso_csat_iran_DMR","O_bso_csat_iran_rifle","O_bso_csat_iran_rifle","O_bso_csat_iran_rifle","O_bso_csat_iran_rifle","O_bso_csat_iran_rifle","O_bso_csat_iran_rifle","O_bso_csat_iran_rifle","O_bso_csat_iran_lat","O_bso_csat_iran_AUTO","O_bso_csat_iran_MAT","O_bso_csat_iran_MAT","O_bso_csat_iran_AA_BMS_MK2"];	

		// Transports. Used for QRF dropoffs initial defence groups. EG Landrover, Truck, Van
		bso_gene_opfTrans = ["O_bso_csat_iran_typhoon_open","O_bso_csat_iran_typhoon","O_bso_csat_iran_otokar_trans","O_bso_csat_iran_M113_M","O_bso_csat_iran_KAMAZ","O_bso_csat_iran_KAMAZ_OPEN","O_bso_csat_iran_otokar_hmg"];

		// APCs. Used for QRF mech assaults and initial defence groups. EG BTRs, BMP, Warrior, Gorgan
		bso_gene_opfArmTrans = ["O_bso_csat_iran_otokar_hmg","O_bso_csat_iran_BM2T","O_bso_csat_iran_BMP3"];

		// Attack Vehicles. Random ratios used for non-transport patrol vehcs + QRF. EG Tanks (T-72, M60), Technicals, Humvees, Recon Vehcs (BRDM)
		bso_gene_opfAtkVehc = ["O_bso_csat_iran_ifrit_hmg","O_bso_csat_iran_lsv2_armed","O_bso_csat_iran_lsv2_at","O_bso_csat_iran_t14","O_bso_csat_iran_t100","O_bso_csat_iran_BM2T"];

		// Transport Heli. Used for Helo Insert - NOT IN USE CURRENTLY 05/22
		bso_gene_opfTransHelo = ["O_bso_csat_iran_taru_transport"];

		// Static Weapon Artillery. Used for Initial Defence.
		bso_gene_opfStatic_Arty = ["bso_arty_rokit_cluster_opf","bso_arty_rokit_he_opf","O_bso_csat_iran_mk6"];

		// Static Weapon Turrets. Mainly used for 360 degree Anti-air due to spawning. Can be any Vehc technically... EG M2. 50cal, BMS static launcher
		bso_gene_opfStatic_AA = ["rhs_KORD_high_VDV","bso_bms_launcher_static_mk2_opf"];

		// All variables to be declared
		publicVariable "bso_gene_side";
		publicVariable "bso_gene_sideX";
		publicVariable "bso_gene_sideD";
		publicVariable "bso_gene_hvt";
		publicVariable "bso_gene_gl";
		publicVariable "bso_gene_opfgrp";
		publicVariable "bso_gene_opfTrans";
		publicVariable "bso_gene_opfArmTrans";
		publicVariable "bso_gene_opfAtkVehc";
		publicVariable "bso_gene_opfTransHelo";
		publicVariable "bso_gene_opfStatic_Arty";
		publicVariable "bso_gene_opfStatic_AA";
	};


	case 3: { // 3CB Takistani National Army
		// Side to be used for OPFOR faction
		bso_gene_side = east;
		bso_gene_sideX = "east";
		bso_gene_sideD = switch bso_gene_side do
		{
			case west: { "WEST D" };
			case east: { "EAST D" };
			case resistance: { "GUER D" };
			default {"EAST D"};
		};
		//bso_gene_sideV = 0;
		//publicVariable "bso_gene_sideV";

		//HVT objective HVTs. Must be unique class, cannot be used elsewhere in Gene
		bso_gene_hvt = ["UK3CB_TKA_O_OFF"];

		// Group Leader. Created for all infantry groups. Can be any unit (or = opfgrp)
		bso_gene_gl = ["UK3CB_TKA_O_SL"];

		// Array of infantry used for faction. First entry used for static weapons. To reduce ratio of "special" weapons, add more non-specials. EG Multiple rifle classes.
		bso_gene_opfgrp = ["UK3CB_TKA_O_RIF_2","UK3CB_TKA_O_RIF_1","UK3CB_TKA_O_RIF_2","UK3CB_TKA_O_AR","UK3CB_TKA_O_LAT","UK3CB_TKA_O_MG","UK3CB_TKA_O_MK","UK3CB_TKA_O_RIF_1","UK3CB_TKA_O_RIF_2","UK3CB_TKA_O_RIF_1","UK3CB_TKA_O_RIF_2","UK3CB_TKA_O_RIF_1","UK3CB_TKA_O_RIF_2","UK3CB_TKA_O_RIF_1","UK3CB_TKA_O_LAT","UK3CB_TKA_O_AR","UK3CB_TKA_O_AT","UK3CB_TKA_O_AT","UK3CB_TKA_O_AA"];	

		// Transports. Used for QRF dropoffs initial defence groups. EG Landrover, Truck, Van
		bso_gene_opfTrans = ["UK3CB_TKA_O_MTLB_PKT","UK3CB_TKA_O_M113_M2","UK3CB_TKA_O_URAL_OPEN","UK3CB_TKA_O_URAL","UK3CB_TKA_O_UAZ_Closed","UK3CB_TKA_O_UAZ_Open","UK3CB_TKA_O_GAZ_Vodnik_PKT"];

		// APCs. Used for QRF mech assaults and initial defence groups. EG BTRs, BMP, Warrior, Gorgan
		bso_gene_opfArmTrans = ["UK3CB_TKA_O_BMP1","UK3CB_TKA_O_BMP2","UK3CB_TKA_O_BTR60","UK3CB_TKA_O_BTR70","UK3CB_TKA_O_BTR80","UK3CB_TKA_O_BTR80A","UK3CB_TKA_O_M113_M2"];

		// Attack Vehicles. Random ratios used for non-transport patrol vehcs + QRF. EG Tanks (T-72, M60), Technicals, Humvees, Recon Vehcs (BRDM)
		bso_gene_opfAtkVehc = ["UK3CB_TKA_O_BRDM2","UK3CB_TKA_O_GAZ_Vodnik_Cannon","UK3CB_TKA_O_GAZ_Vodnik_KVPT","UK3CB_TKA_O_GAZ_Vodnik_PKT","UK3CB_TKA_O_Hilux_DSHKM","UK3CB_TKA_O_Hilux_M2","UK3CB_TKA_O_Hilux_Zu23_Front","UK3CB_TKA_O_LR_SF_M2","UK3CB_TKA_O_UAZ_MG","UK3CB_TKA_O_T72A","UK3CB_TKA_O_T72B","UK3CB_TKA_O_T72BM","UK3CB_TKA_O_BMP2","UK3CB_TKA_O_BTR80A"];

		// Transport Heli. Used for Helo Insert - NOT IN USE CURRENTLY 05/22
		bso_gene_opfTransHelo = ["UK3CB_TKA_O_Mi8"];

		// Static Weapon Artillery. Used for Initial Defence.
		bso_gene_opfStatic_Arty = ["bso_arty_rokit_cluster_opf","bso_arty_rokit_he_opf","bso_arty_2b14_opf"];

		// Static Weapon Turrets. Mainly used for 360 degree Anti-air due to spawning. Can be any Vehc technically... EG M2. 50cal, BMS static launcher
		bso_gene_opfStatic_AA = ["UK3CB_TKA_O_KORD_high","bso_bms_launcher_static_mk2_opf","UK3CB_TKA_O_ZU23"];

		// All variables to be declared
		publicVariable "bso_gene_side";
		publicVariable "bso_gene_sideX";
		publicVariable "bso_gene_sideD";
		publicVariable "bso_gene_hvt";
		publicVariable "bso_gene_gl";
		publicVariable "bso_gene_opfgrp";
		publicVariable "bso_gene_opfTrans";
		publicVariable "bso_gene_opfArmTrans";
		publicVariable "bso_gene_opfAtkVehc";
		publicVariable "bso_gene_opfTransHelo";
		publicVariable "bso_gene_opfStatic_Arty";
		publicVariable "bso_gene_opfStatic_AA";
	};	


	case 4: { // 3CB NAPA
		// Side to be used for OPFOR faction
		bso_gene_side = east;
		bso_gene_sideX = "east";
		bso_gene_sideD = switch bso_gene_side do
		{
			case west: { "WEST D" };
			case east: { "EAST D" };
			case resistance: { "GUER D" };
			default {"EAST D"};
		};
		//bso_gene_sideV = 0;
		//publicVariable "bso_gene_sideV";

		//HVT objective HVTs. Must be unique class, cannot be used elsewhere in Gene
		bso_gene_hvt = ["C_bso_HVT"];

		// Group Leader. Created for all infantry groups. Can be any unit (or = opfgrp)
		bso_gene_gl = ["UK3CB_NAP_O_SL"];

		// Array of infantry used for faction. First entry used for static weapons. To reduce ratio of "special" weapons, add more non-specials. EG Multiple rifle classes.
		bso_gene_opfgrp = ["UK3CB_NAP_O_RIF_1","UK3CB_NAP_O_RIF_2","UK3CB_NAP_O_RIF_1","UK3CB_NAP_O_AR","UK3CB_NAP_O_LAT","UK3CB_NAP_O_MG","UK3CB_NAP_O_MK","UK3CB_NAP_O_SEN_1","UK3CB_NAP_O_SEN_2","UK3CB_NAP_O_SEN_3","UK3CB_NAP_O_RIF_1","UK3CB_NAP_O_RIF_2","UK3CB_NAP_O_RIF_1","UK3CB_NAP_O_RIF_2","UK3CB_NAP_O_LAT","UK3CB_NAP_O_AR","UK3CB_NAP_O_AT","UK3CB_NAP_O_AT","UK3CB_NAP_O_AA"];	

		// Transports. Used for QRF dropoffs initial defence groups. EG Landrover, Truck, Van
		bso_gene_opfTrans = ["UK3CB_NAP_O_BTR40","UK3CB_NAP_O_Datsun_Open","UK3CB_NAP_O_Gaz66_Covered","UK3CB_NAP_O_Gaz66_Open","UK3CB_NAP_O_Hilux_Closed","UK3CB_NAP_O_Hilux_Open","UK3CB_NAP_O_Kraz255_Open","UK3CB_NAP_O_V3S_Closed","UK3CB_NAP_O_V3S_Open","UK3CB_NAP_O_UAZ_Closed","UK3CB_NAP_O_UAZ_Open","UK3CB_NAP_O_Ural","UK3CB_NAP_O_Ural_Open","UK3CB_NAP_O_Zil131_Covered","UK3CB_NAP_O_Zil131_Open"];

		// APCs. Used for QRF mech assaults and initial defence groups. EG BTRs, BMP, Warrior, Gorgan
		bso_gene_opfArmTrans = ["UK3CB_NAP_O_BMP1","UK3CB_NAP_O_BMP2","UK3CB_NAP_O_BTR40_MG","UK3CB_NAP_O_BTR60","UK3CB_NAP_O_MTLB_PKT"];

		// Attack Vehicles. Random ratios used for non-transport patrol vehcs + QRF. EG Tanks (T-72, M60), Technicals, Humvees, Recon Vehcs (BRDM)
		bso_gene_opfAtkVehc = ["UK3CB_NAP_O_BMP2","UK3CB_NAP_O_BRDM2","UK3CB_NAP_O_Hilux_Dshkm","UK3CB_NAP_O_Hilux_Spg9","UK3CB_NAP_O_Hilux_Zu23_Front","UK3CB_NAP_O_T72A","UK3CB_NAP_O_T55","UK3CB_NAP_O_T72B","UK3CB_NAP_O_T72BM","UK3CB_NAP_O_T72BA","UK3CB_NAP_O_T72BB"];

		// Transport Heli. Used for Helo Insert - NOT IN USE CURRENTLY 05/22
		bso_gene_opfTransHelo = ["UK3CB_CHD_O_Mi8"];

		// Static Weapon Artillery. Used for Initial Defence.
		bso_gene_opfStatic_Arty = ["bso_arty_rokit_cluster_opf","bso_arty_rokit_he_opf","bso_arty_2b14_opf"];

		// Static Weapon Turrets. Mainly used for 360 degree Anti-air due to spawning. Can be any Vehc technically... EG M2. 50cal, BMS static launcher
		bso_gene_opfStatic_AA = ["UK3CB_NAP_O_DSHKM","bso_bms_launcher_static_mk2_opf","UK3CB_NAP_O_ZU23"];

		// All variables to be declared
		publicVariable "bso_gene_side";
		publicVariable "bso_gene_sideX";
		publicVariable "bso_gene_sideD";
		publicVariable "bso_gene_hvt";
		publicVariable "bso_gene_gl";
		publicVariable "bso_gene_opfgrp";
		publicVariable "bso_gene_opfTrans";
		publicVariable "bso_gene_opfArmTrans";
		publicVariable "bso_gene_opfAtkVehc";
		publicVariable "bso_gene_opfTransHelo";
		publicVariable "bso_gene_opfStatic_Arty";
		publicVariable "bso_gene_opfStatic_AA";
	};	


	case 5: { // AAF (INDFOR)
		// Side to be used for OPFOR faction
		bso_gene_side = resistance;
		bso_gene_sideX = "resistance";
		bso_gene_sideD = switch bso_gene_side do
		{
			case west: { "WEST D" };
			case east: { "EAST D" };
			case resistance: { "GUER D" };
			default {"EAST D"};
		};
		//bso_gene_sideV = 0;
		//publicVariable "bso_gene_sideV";

		//HVT objective HVTs. Must be unique class, cannot be used elsewhere in Gene
		bso_gene_hvt = ["UK3CB_AAF_I_OFF"];

		// Group Leader. Created for all infantry groups. Can be any unit (or = opfgrp)
		bso_gene_gl = ["I_soldier_SL_F"];

		// Array of infantry used for faction. First entry used for static weapons. To reduce ratio of "special" weapons, add more non-specials. EG Multiple rifle classes.
		bso_gene_opfgrp = ["I_soldier_F","I_soldier_F","I_soldier_F","I_Soldier_AR_F","I_Soldier_LAT_F","I_Soldier_rMAT_F","I_Soldier_MG_F","I_Soldier_M_F","I_soldier_F","I_soldier_F","I_soldier_F","I_soldier_F","I_soldier_F","I_soldier_F","I_soldier_F","I_Soldier_LAT_F","I_Soldier_AR_F","I_Soldier_MG_F","I_Soldier_MAT_F","I_BSO_AAF_AA_BMS_MK2"];	

		// Transports. Used for QRF dropoffs initial defence groups. EG Landrover, Truck, Van
		bso_gene_opfTrans = ["UK3CB_AAF_I_LR_Closed","UK3CB_AAF_I_LR_Open","gm_demo_aaf_mb_u1300l_cargo","I_Truck_02_covered_F","I_Truck_02_transport_F"];

		// APCs. Used for QRF mech assaults and initial defence groups. EG BTRs, BMP, Warrior, Gorgan
		bso_gene_opfArmTrans = ["I_APC_Wheeled_03_cannon_F","I_APC_tracked_03_cannon_F"];

		// Attack Vehicles. Random ratios used for non-transport patrol vehcs + QRF. EG Tanks (T-72, M60), Technicals, Humvees, Recon Vehcs (BRDM)
		bso_gene_opfAtkVehc = ["UK3CB_AAF_I_LR_SF_M2","UK3CB_AAF_B_M1151_GPK_M240","UK3CB_AAF_B_M1151_GPK_M2","UK3CB_AAF_I_FV4201","UK3CB_AAF_I_M60A1","UK3CB_AAF_I_M60A3","I_MBT_03_cannon_F","I_LT_01_AT_F","I_LT_01_cannon_F"];

		// Transport Heli. Used for Helo Insert - NOT IN USE CURRENTLY 05/22
		bso_gene_opfTransHelo = ["I_Heli_Transport_02_F"];

		// Static Weapon Artillery. Used for Initial Defence.
		bso_gene_opfStatic_Arty = ["bso_arty_rokit_cluster_opf","bso_arty_rokit_he_opf","I_BSO_AAF_BSO_M252"];

		// Static Weapon Turrets. Mainly used for 360 degree Anti-air due to spawning. Can be any Vehc technically... EG M2. 50cal, BMS static launcher
		bso_gene_opfStatic_AA = ["I_HMG_02_high_F","bso_bms_launcher_static_mk2_ind"];

		// All variables to be declared
		publicVariable "bso_gene_side";
		publicVariable "bso_gene_sideX";
		publicVariable "bso_gene_sideD";
		publicVariable "bso_gene_hvt";
		publicVariable "bso_gene_gl";
		publicVariable "bso_gene_opfgrp";
		publicVariable "bso_gene_opfTrans";
		publicVariable "bso_gene_opfArmTrans";
		publicVariable "bso_gene_opfAtkVehc";
		publicVariable "bso_gene_opfTransHelo";
		publicVariable "bso_gene_opfStatic_Arty";
		publicVariable "bso_gene_opfStatic_AA";
	};	
};
