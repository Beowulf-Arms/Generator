["BSOMission",["Incoming Tasking..."]] call BIS_fnc_showNotification;

//sleep 3;

//hint "Starting gene...";	
	
if (isServer) then 
{
	"m_1" setMarkerPos (getMarkerPos (["r_1", "r_2", "r_3","r_4","r_5","r_6","r_7","r_8","r_9","r_10","r_11","r_12","r_13","r_14","r_15","r_16","r_17","r_18","r_19","r_20"] call BIS_fnc_selectRandom));
};


	_values1 = ["z1",[1,0,0],[4,2,25,5],[2,3,15,5],[1,1,10,5],[],[2,0,0,0,0]];
	[(getMarkerPos "m_1"),500,500,0,0,_values1] call DAC_fNewZone;
	
	waituntil{DAC_NewZone == 0};
	
	_values2 = ["z2",[1,0,0],[],[],[],[ 2,1,50,1,100,5,[z1]],[2,0,0,0,0]];
	[(getMarkerPos "m_1"),700,700,0,0,_values2] call DAC_fNewZone;
	
	
	
	_grp0 = createGroup east;
	HVT1 = _grp0 createUnit ["I_bso_afr_mil_GL",(getMarkerPos "m_1"),[],250,"FORM"];
	removeAllWeapons HVT1;

	[HVT1, getPos HVT1, 50, 1, true] call CBA_fnc_taskDefend;
	
	grp1 = [getMarkerPos "m_1", resistance, (configfile >> "CfgGroups" >> "Indep" >> "bso_afr_mil_ins" >> "Infantry" >> "bso_afr_mil_ins_groupD")] call BIS_fnc_spawnGroup;
	[grp1, getPos HVT1, 50, 1, true] call CBA_fnc_taskDefend;	

	grp2 = [getMarkerPos "m_1", resistance, (configfile >> "CfgGroups" >> "Indep" >> "bso_afr_mil_ins" >> "Infantry" >> "bso_afr_mil_ins_groupB")] call BIS_fnc_spawnGroup;
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

	["Task_c_hvt","Capture the HVT","We have identified the location of one of the Warlords. Move in and capture him. If he is killed, you will fail the mission."] call SHK_Taskmaster_add;
	
	HVT1 addHeadgear "H_Beret_blk";
	HVT1 addGoggles "G_Sport_Greenblack";
	
//	sleep 10;
	
//	hint "Gene complete";	
	
//fun=["z11",[11,0,0],[ ],[ ],[ ],[ 2,2,50,0,100,20,[z10]],[0,0,0,0]] spawn DAC_Zone