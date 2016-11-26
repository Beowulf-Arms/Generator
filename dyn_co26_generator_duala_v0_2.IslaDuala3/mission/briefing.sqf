/////bmf-v1_03////

// Here you can find the mission briefing, admin end conditions and allow for marker visibility to only certain factions.
// You will have to set your debriefing information in the Meta.cpp file because ArmA.
// See BSO\shk_taskmaster.sqf for instructions
// "<br/>" can be used to start new lines and create paragraphs

[[
  ["Task0","OP Generator","Objectives can be generated by an admin or at the Mission Board."]
  
],[

  ["OP Generator","Your task force is acting as a QRF, and are on standby ready to put down any attacks by local power hungry rebel warlords attacking local towns"],
  ["Tasking","New objectives can be generated from the Mission Board. You can also clear the current task using the Mission Board"],
  ["COMSIG","Operations comms and signal are follows
					<br/>
					<br/>
				SABRE-0 - CH5 SR
					<br/>
				SABRE-1 - CH1 SR
					<br/>
				SABRE-2 - CH2 SR
					<br/>
				HITMAN - CH3 SR
					<br/>
					<br/>
				Task Force net - CH1 LR
					<br/>
				Air Net - CH2 LR
				"], 
  ["HALO Pole","Using the HALO flag pole at the HQ, you will be able to HALO jump to anywhere on the map. Set your chosen altitude (2k recommended) in the dialogue box and click on the map where you wish to jump.
<br/>
The parachute should be pulled (action menu) at around 300m. Once you land your backpack will be returned to you.
  "],				
  ["Notes","Loadout box and additional equipment can be found at the HQ. You can also use the spectator laptop to spectate the action."],


  ["Credits","Created by: Walker"]

]] call compile preprocessfilelinenumbers "BSO\shk_taskmaster.sqf";




// Mission end conditions. By editing the "end" and "loser" configs in meta.cpp you can have the admin end the mission with a debrief.
// BSO Generator Admin Actions

_mainAction = ["bso_end_mission", "Mission End Conditions", "", {}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
_mainAction1 = ["bso_gen_mission", "BSO Mission Board", "BSO\noti\bso_logo.paa", {}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
_mainAction2 = ["bso_gen_obj", "Gene Obj.", "", {}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin"], _mainAction] call ace_interact_menu_fnc_addActionToClass;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin"], _mainAction1] call ace_interact_menu_fnc_addActionToClass;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_gen_mission"], _mainAction2] call ace_interact_menu_fnc_addActionToClass;

_sub1 = ["bso_end_mission_1", "Mission Success", "", {[-2,{["end1",true,4] call BIS_fnc_endMission;},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
_sub2 = ["bso_end_mission_2", "Mission Failed", "", {[-2,{["loser",false,4] call BIS_fnc_endMission;},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;


_sub3 = ["bso_start_mission_1", "Secure Area", "", {[-2,{execVM "mission\gene\mission_secure.sqf"},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
_sub3a = ["bso_start_mission_1a", "Secure Area - Large", "", {[-2,{execVM "mission\gene\mission_secure_large.sqf"},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
_sub4 = ["bso_start_mission_2", "Destroy Weapons Cache", "", {[-2,{execVM "mission\gene\mission_cache.sqf"},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
_sub5 = ["bso_start_mission_3", "Capture HVT", "", {[-2,{execVM "mission\gene\mission_c_hvt.sqf"},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;
_sub6 = ["bso_start_mission_4", "Eliminate HVT", "", {[-2,{execVM "mission\gene\mission_e_hvt.sqf"},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;

_subC = ["bso_start_mission_C", "Clear Obj.", "", {[-2,{execVM "mission\gene\mission_clear.sqf"},[]] call CBA_fnc_globalExecute;}, {serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction;


[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_end_mission"], _sub1] call ace_interact_menu_fnc_addActionToClass;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_end_mission"], _sub2] call ace_interact_menu_fnc_addActionToClass;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_gen_mission","bso_gen_obj"], _sub3] call ace_interact_menu_fnc_addActionToClass;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_gen_mission","bso_gen_obj"], _sub3a] call ace_interact_menu_fnc_addActionToClass;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_gen_mission","bso_gen_obj"], _sub4] call ace_interact_menu_fnc_addActionToClass;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_gen_mission","bso_gen_obj"], _sub5] call ace_interact_menu_fnc_addActionToClass;
[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_gen_mission","bso_gen_obj"], _sub6] call ace_interact_menu_fnc_addActionToClass;

[typeOf player, 1, ["ACE_SelfActions","bso_admin_admin","bso_gen_mission"], _subC] call ace_interact_menu_fnc_addActionToClass;


// BSO Mission Board actions for Generator

//_bsoMb = ["ACE_MainActions", "Interactions", "", {true}, {true}, {}, [], [0,0,-0.15], 1.5] call ace_interact_menu_fnc_createAction;
_bsoMb0 = ["bso_mission_board", "BSO Mission Board", "BSO\noti\bso_logo.paa", {true}, {true}, {}, [], [0,0,-0.15], 1.5] call ace_interact_menu_fnc_createAction;
_bsoMb0a = ["bso_mission_board_0", "Generate Obj.","",{true},{true},{}] call ace_interact_menu_fnc_createAction;
_bsoMb1 = ["bso_mission_board_1", "Secure Area","",{[-2,{execVM "mission\gene\mission_secure.sqf"},{}] call CBA_fnc_globalExecute;},{true}] call ace_interact_menu_fnc_createAction;
_bsoMb1a = ["bso_mission_board_1a", "Secure Area - Large","",{[-2,{execVM "mission\gene\mission_secure_large.sqf"},{}] call CBA_fnc_globalExecute;},{true}] call ace_interact_menu_fnc_createAction;
_bsoMb2 = ["bso_mission_board_2", "Destroy Weapons Cache","",{[-2,{execVM "mission\gene\mission_cache.sqf"},{}] call CBA_fnc_globalExecute;},{true}] call ace_interact_menu_fnc_createAction;
_bsoMb3 = ["bso_mission_board_3", "Capture HVT","",{[-2,{execVM "mission\gene\mission_c_hvt.sqf"},{}] call CBA_fnc_globalExecute;},{true}] call ace_interact_menu_fnc_createAction;
_bsoMb4 = ["bso_mission_board_4", "Eliminate HVT","",{[-2,{execVM "mission\gene\mission_e_hvt.sqf"},{}] call CBA_fnc_globalExecute;},{true}] call ace_interact_menu_fnc_createAction;

_bsoMbC = ["bso_mission_board_C", "Clear Obj.","",{[-2,{execVM "mission\gene\mission_clear.sqf"},{}] call CBA_fnc_globalExecute;},{true}] call ace_interact_menu_fnc_createAction;

//[typeof bso_mb_map, 0, [], _bsoMb] call ace_interact_menu_fnc_addActionToObject;
[typeof bso_mb_map, 0, [], _bsoMb0] call ace_interact_menu_fnc_addActionToClass;
[typeof bso_mb_map, 0, ["bso_mission_board"], _bsoMb0a] call ace_interact_menu_fnc_addActionToClass;
[typeof bso_mb_map, 0, ["bso_mission_board","bso_mission_board_0"], _bsoMb1] call ace_interact_menu_fnc_addActionToClass;
[typeof bso_mb_map, 0, ["bso_mission_board","bso_mission_board_0"], _bsoMb1a] call ace_interact_menu_fnc_addActionToClass;
[typeof bso_mb_map, 0, ["bso_mission_board","bso_mission_board_0"], _bsoMb2] call ace_interact_menu_fnc_addActionToClass;
[typeof bso_mb_map, 0, ["bso_mission_board","bso_mission_board_0"], _bsoMb3] call ace_interact_menu_fnc_addActionToClass;
[typeof bso_mb_map, 0, ["bso_mission_board","bso_mission_board_0"], _bsoMb4] call ace_interact_menu_fnc_addActionToClass;

[typeof bso_mb_map, 0, ["bso_mission_board"], _bsoMbC] call ace_interact_menu_fnc_addActionToClass;






if (!isServer && isNull player) then  //JIP player
{
	waitUntil {!isNull player};

	[] execVM "mission\tele\initTeleportToSL.sqf";
};