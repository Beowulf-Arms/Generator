["BSOMission",["Incoming Tasking..."]] call BIS_fnc_showNotification;

//sleep 3;

//hint "Starting gene...";	
	
if (isServer) then 
{
	"m_1" setMarkerPos (getMarkerPos (["l_1","l_2","l_3","l_4","l_5","l_6","l_7","l_8","l_9","l_10","l_11","l_12","l_13","l_14","l_15","l_16","l_17","l_18","l_19","l_20","l_21","l_22","l_23","l_24","l_25","l_26","l_27","l_28","l_29","l_30","l_31","l_32","l_33","l_34","l_35","l_36"] call BIS_fnc_selectRandom));
};


	_values1 = ["z1",[1,0,0],[4,2,25,5],[2,3,15,5],[1,1,10,5],[],[0,0,0,0,0]];
	[(getMarkerPos "m_1"),500,500,0,0,_values1] call DAC_fNewZone;
	
	waituntil{DAC_NewZone == 0};
	
	_values2 = ["z2",[1,0,0],[],[],[],[ 2,1,50,1,100,5,[z1]],[0,0,0,0,0]];
	[(getMarkerPos "m_1"),700,700,0,0,_values2] call DAC_fNewZone;
	
	
	
	_grp0 = createGroup east;
	HVT1 = _grp0 createUnit ["O_BSO_FIA_GL",(getMarkerPos "m_1"),[],250,"FORM"];
	removeAllWeapons HVT1;

	[HVT1, getPos HVT1, 50, 1, true] call CBA_fnc_taskDefend;
	
	grp1 = [getMarkerPos "m_1", EAST, (configfile >> "CfgGroups" >> "East" >> "bso_fia_opf" >> "Infantry" >> "BSO_FIA_opf_groupA")] call BIS_fnc_spawnGroup;
	[grp1, getPos HVT1, 50, 1, true] call CBA_fnc_taskDefend;	

	grp2 = [getMarkerPos "m_1", EAST, (configfile >> "CfgGroups" >> "East" >> "bso_fia_opf" >> "Infantry" >> "BSO_FIA_opf_groupB")] call BIS_fnc_spawnGroup;
	[grp2, getPos HVT1, 5, 1, true] call CBA_fnc_taskDefend;		
	
	trg1 = createTrigger ["EmptyDetector", getMarkerPos "hq"];
	trg1 setTriggerArea [30, 30, 0, false];
	trg1 setTriggerActivation ["VEHICLE", "PRESENT", false];
	trg1 triggerAttachVehicle [HVT1];
	trg1 setTriggerStatements ["this", "[""Task_c_hvt"",""succeeded""] call SHK_Taskmaster_upd;",""];


	trg2 = createTrigger ["EmptyDetector", getMarkerPos "m_1"];
	trg2 setTriggerArea [0, 0, 0, false];
	trg2 setTriggerActivation ["NONE", "NOT PRESENT", false];
	trg2 setTriggerStatements ["!alive hvt1", "[""Task_c_hvt"",""failed""] call SHK_Taskmaster_upd;",""];	
	
	"obj1" setMarkerPos (getMarkerPos "m_1");
	"border" setMarkerPos (getMarkerPos "m_1");
	"border_1" setMarkerPos (getMarkerPos "m_1");
	"ao"setMarkerPos [(getMarkerPos "m_1" select 0) -950, (getMarkerPos "m_1" select 1) -950];
	

//};

	["Task_c_hvt","Capture the HVT","We have identified the location of an FIA commander. Move in and eliminate the him."] call SHK_Taskmaster_add;
	
	HVT1 addHeadgear "H_Beret_blk";
	HVT1 addGoggles "G_Sport_Greenblack";
	
//	sleep 10;
	
//	hint "Gene complete";	
	
//fun=["z11",[11,0,0],[ ],[ ],[ ],[ 2,2,50,0,100,20,[z10]],[0,0,0,0]] spawn DAC_Zone