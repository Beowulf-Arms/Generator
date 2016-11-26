["BSOMission",["Incoming Tasking..."]] call BIS_fnc_showNotification;

//BSO Generator location finder
if (isServer) then 
{
	"m_1" setMarkerPos (getMarkerPos (["r_1", "r_2", "r_3","r_4","r_5","r_6","r_7","r_8","r_9","r_10","r_11","r_12","r_13","r_14","r_15","r_16","r_17","r_18","r_19","r_20"] call BIS_fnc_selectRandom));
};
	
if (isServer) then 
{
	_null = ["Box_FIA_Ammo_F",3,35,200,0,"m_1"] execVM "mission\gene\obj\bso_cache_gen.sqf";
};


	_values1 = ["z1",[1,0,0],[4,2,25,5],[2,3,15,5],[1,1,10,5],[],[2,0,0,0,0]];
	[(getMarkerPos "m_1"),500,500,0,0,_values1] call DAC_fNewZone;
	
	waituntil{DAC_NewZone == 0};
	
	_values2 = ["z2",[1,0,0],[],[],[],[ 2,1,50,1,100,5,[z1]],[2,0,0,0,0]];
	[(getMarkerPos "m_1"),700,700,0,0,_values2] call DAC_fNewZone;
	
	grp1 = [getMarkerPos "m_1", resistance, (configfile >> "CfgGroups" >> "Indep" >> "bso_afr_mil_ins" >> "Infantry" >> "bso_afr_mil_ins_groupA")] call BIS_fnc_spawnGroup;
	[grp1, getPos cache0, 10, 1, true] call CBA_fnc_taskDefend;	

	grp2 = [getMarkerPos "m_1", resistance, (configfile >> "CfgGroups" >> "Indep" >> "bso_afr_mil_ins" >> "Infantry" >> "bso_afr_mil_ins_groupB")] call BIS_fnc_spawnGroup;
	[grp2, getPos cache1, 50, 1, true] call CBA_fnc_taskDefend;		

	grp3 = [getMarkerPos "m_1", resistance, (configfile >> "CfgGroups" >> "Indep" >> "bso_afr_mil_ins" >> "Infantry" >> "bso_afr_mil_ins_groupD")] call BIS_fnc_spawnGroup;
	[grp3, getPos cache2, 50, 1, true] call CBA_fnc_taskDefend;			
	
	trg1 = createTrigger ["EmptyDetector", getMarkerPos "m_1"];
	trg1 setTriggerArea [0, 0, 0, false];
	trg1 setTriggerActivation ["NONE", "NOT PRESENT", false];
	trg1 setTriggerStatements ["!(alive cache0) && !(alive cache1) && !(alive cache2)", "[""Task_cache"",""succeeded""] call SHK_Taskmaster_upd;",""];
	
	
	"obj1" setMarkerPos (getMarkerPos "m_1");
	"border" setMarkerPos (getMarkerPos "m_1");
	"border_1" setMarkerPos (getMarkerPos "m_1");
	"ao"setMarkerPos [(getMarkerPos "m_1" select 0) -950, (getMarkerPos "m_1" select 1) -950];
	

	["Task_cache","Destroy the weapons caches","Rebels are stockpiling weapons and equipment in a caches somewhere in the town. Locate and destroy them."] call SHK_Taskmaster_add;
