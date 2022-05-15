if (isServer) then 
{
	private _bso_m1 = createMarker ["m_1", [0,0]];
	private _bso_m0 = createMarker ["m_0", [0,0]];
	bso_gene_taskNum = 0; publicVariable "bso_gene_taskNum";

	// Marker locations
	bso_gene_locations = ["l_1","l_2","l_3","l_4","l_5","l_6","l_7","l_8","l_9","l_10","l_11","l_12","l_13","l_14","l_15","l_16","l_17","l_18","l_19","l_20","l_21","l_22","l_23","l_24","l_25","l_26","l_27","l_28","l_29","l_30","l_31","l_32","l_33","l_34","l_35","l_36"];
	publicVariable "bso_gene_locations";

	bso_gene_starts = ["s_1","s_2","s_3"];
	publicVariable "bso_gene_starts";

	bso_gene_end = ["e_1","e_2","e_3"];
	publicVariable "bso_gene_end";


	// Generator units/side variables list
	bso_gene_side_blu = "west";
	publicVariable "bso_gene_side_blu";

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


	bso_gene_sideV = 0;
	publicVariable "bso_gene_sideV";

	bso_gene_hvt = "O_BSO_FIA_GL";
	publicVariable "bso_gene_hvt";

	bso_gene_gl = ["O_BSO_FIA_GL"];
	publicVariable "bso_gene_gl";

	bso_gene_opfgrp = ["O_BSO_FIA_GL","O_BSO_FIA_AUTO","O_BSO_FIA_MG","O_BSO_FIA_DMR","O_BSO_FIA_INS","O_BSO_FIA_INS2","O_BSO_FIA_INS3"];
	publicVariable "bso_gene_opfgrp";


	bso_gene_opfTrans = ["O_BSO_FIA_OFFROAD_armour","O_BSO_FIA_transport","O_BSO_FIA_OFFROAD","O_BSO_FIA_TRUCK"];
	publicVariable "bso_gene_opfTrans";

	bso_gene_opfArmTrans = ["O_BSO_FIA_gorgan"];
	publicVariable "bso_gene_opfArmTrans";

	
	bso_gene_opfAtkVehc = ["O_BSO_FIA_OFFROAD_ARMED_armour","O_BSO_FIA_OFFROAD_AT_armour","O_BSO_FIA_OFFROAD_ARMED","O_BSO_FIA_OFFROAD_AT"];
	publicVariable "bso_gene_opfAtkVehc";

	bso_gene_opfTransHelo = ["O_BSO_FIA_uh1"];
	publicVariable "bso_gene_opfTransHelo";

	gene_patrol_groups = [];
	publicVariable "gene_patrol_groups";

	gene_garrison_groups = [];
	publicVariable "gene_garrison_groups";

	gene_atk_groups = [];
	publicVariable "gene_atk_groups";
	

};


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
