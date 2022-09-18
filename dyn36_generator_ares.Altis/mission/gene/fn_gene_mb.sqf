// BSO Mission Board actions for Generator

//_bsoMb = ["ACE_MainActions", "Interactions", "", {true}, {true}, {}, [], [0,0,-0.15], 1.5] call ace_interact_menu_fnc_createAction;
_bsoMb0 = ["bso_mission_board", "BSO Mission Board", "BSO\noti\bso_logo.paa", {true}, {true}, {}, [], [0,-0.3,0.2], 2] call ace_interact_menu_fnc_createAction;

_bsoMb0a = ["bso_mission_board_0", "Generate Obj.","",{true},{true},{}] call ace_interact_menu_fnc_createAction;
//_bsoMb1 = ["bso_mission_board_1", "Secure Area","",{[0,{execVM "mission\gene\mission_secure.sqf"},{}] call CBA_fnc_globalExecute;},{true}] call ace_interact_menu_fnc_createAction;
//_bsoMb1a = ["bso_mission_board_1a", "Secure Area - Large","",{[0,{execVM "mission\gene\mission_secure_large.sqf"},{}] call CBA_fnc_globalExecute;},{true}] call ace_interact_menu_fnc_createAction;
_bsoMb2 = ["bso_mission_board_2", "Destroy Weapons Cache","",{[0,{[]call gene_fnc_mission_cache},{}] call CBA_fnc_globalExecute;},{!bso_gene_ObjSet}] call ace_interact_menu_fnc_createAction;
_bsoMb3 = ["bso_mission_board_4", "Capture HVT","",{[0,{[]call gene_fnc_mission_capHVT},{}] call CBA_fnc_globalExecute;},{true}] call ace_interact_menu_fnc_createAction;
_bsoMb4 = ["bso_mission_board_4", "Eliminate HVT","",{[0,{[]call gene_fnc_mission_elimHVT},{}] call CBA_fnc_globalExecute;},{true}] call ace_interact_menu_fnc_createAction;
_bsoMb5 = ["bso_mission_board_5", "Download Data","",{[0,{[]call gene_fnc_mission_dlLaptop},{}] call CBA_fnc_globalExecute;},{true}] call ace_interact_menu_fnc_createAction;

//_bsoMbR = ["bso_mission_board_R", "Random Obj.","",{execVM "mission\gene\mission_random.sqf"},{true}] call ace_interact_menu_fnc_createAction;
_bsoMbC = ["bso_mission_board_C", "Clear Obj.","",{[0,{[]call gene_fnc_mission_clear},{}] call CBA_fnc_globalExecute;},{true}] call ace_interact_menu_fnc_createAction;

//[typeof bso_mb_map, 0, [], _bsoMb] call ace_interact_menu_fnc_addActionToObject;
[typeof bso_mb_map, 0, [], _bsoMb0] call ace_interact_menu_fnc_addActionToClass;
[typeof bso_mb_map, 0, ["bso_mission_board"], _bsoMb0a] call ace_interact_menu_fnc_addActionToClass;
//[typeof bso_mb_map, 0, ["bso_mission_board","bso_mission_board_0"], _bsoMb1] call ace_interact_menu_fnc_addActionToClass;
//[typeof bso_mb_map, 0, ["bso_mission_board","bso_mission_board_0"], _bsoMb1a] call ace_interact_menu_fnc_addActionToClass;
[typeof bso_mb_map, 0, ["bso_mission_board","bso_mission_board_0"], _bsoMb2] call ace_interact_menu_fnc_addActionToClass;
[typeof bso_mb_map, 0, ["bso_mission_board","bso_mission_board_0"], _bsoMb3] call ace_interact_menu_fnc_addActionToClass;
[typeof bso_mb_map, 0, ["bso_mission_board","bso_mission_board_0"], _bsoMb4] call ace_interact_menu_fnc_addActionToClass;
[typeof bso_mb_map, 0, ["bso_mission_board","bso_mission_board_0"], _bsoMb5] call ace_interact_menu_fnc_addActionToClass;

//[typeof bso_mb_map, 0, ["bso_mission_board"], _bsoMbR] call ace_interact_menu_fnc_addActionToClass;
[typeof bso_mb_map, 0, ["bso_mission_board"], _bsoMbC] call ace_interact_menu_fnc_addActionToClass;


