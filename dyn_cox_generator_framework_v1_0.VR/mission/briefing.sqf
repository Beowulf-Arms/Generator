/////bmf-v1_5////

// Here you can find the mission briefing, ACRE Languages, admin end conditions and allow for marker visibility to only certain factions.
// You will have to set your debriefing information in the Meta.cpp file because ArmA.
// See the BSO Mission Makers Wiki for the downloadable PDF on the FHQ briefing and task system for full instructions
//
// The system uses filters for setting who has been set a task or briefing. 
// Included are the filters for sides in the Add Tasks section. These are the same filters which can be used in the AddBriefings section in the same way.
//
//   Task Entries
//		_taskID - REQUIRED. I.D. of the task used for scripting. 
//		_description - REQUIRED. Full description of the task.
//		_title - REQUIRED. Title of task seen in the task list.
//		_shorttitle - REQUIRED?. Title seen on map if linked to markers, or 3d view. 
//		_target - marker or object defined location of the task
//		_initial - Task status. For example "assigned"
//		_type - Type of task which dictates the icoons used on the map and task list.
//
//
//	The following line is used to mark an objective as successful. Note how only the server calls the task change. More info can be found in the FHQ Guide.
//       if (isServer) then {["task1", "succeeded"] call FHQ_fnc_ttSetTaskState;};
//
// "<br/>" can be used to start new lines and create paragraphs


[
  {true}, //All factions/units will be able to see the tasks following this filter. This line will also use the "Obj1" marker and create an attack mark linked to the task.
	["Task0", "Generate new tasks at the Map Board at the base.", "0. Generator", "Destroy"]

		
] call FHQ_fnc_ttAddTasks;

// Much like tasks, you can use filters for factions, group names and specific units 
//
// "<br/>" can be used to start new lines and create paragraphs
//
// Below are the default entries that are expected in standard Beowulf Missions. Edit them or create new ones, but ensure you get all of the important information accross.


[
	{true},
  ["Generator","You are acting as Quick Reaction Force. Await tasking, and deploy as per the Operations Commanders plan.
  <br/>
  <br/>
  If you do not wish to take part in operations, please use the Spectator facility, or disconnect from the server. Otherwise you will be kicked for the sake of other players.
  "],
  ["Tasking","New objectives can be generated from the Mission Board. You can also clear the current task using the Mission Board"],
  ["COMSIG","Operations comms and signal are follows
					<br/>
					<br/>
					<br/>
				SABRE-1 - CH1 SR
					<br/>
				SABRE-2 - CH2 SR
					<br/>
				SABRE-3 - CH3 SR
					<br/>
				SABRE-4 - CH4 SR
					<br/>
				SABRE-5 - CH5 SR
					<br/>
				SABRE-0 - CH6 SR
					<br/>
					<br/>
				Task Force net - CH1 LR
					<br/>
				Air Net - CH2 LR
				"], 

  ["ROE","You are a REGULAR force. You have access to BluForce Tracker. Use of OpFor weapons and equipment is strictly prohibited!"],				
  ["JIP Players","Players who Join In Progress should teleport to their group leader via the scroll action upon joining. Or using the flag pole at the base, teleport the MHQ."],				
  ["Loadouts and Equipment","A Loadout box and additional equipment will be located in the base. You should obtain permission from the Ops Commander to use important assets."],
  ["Spectator","You may spectate the action from the base using the spectator laptop."],
  ["Notes","As usual. Don't be a dick..."],


  ["Credits","Created by: Walker"]
] call FHQ_fnc_ttAddBriefing;



// Here a list of languages to be used in ACRE are set. Define each language as per the examples below, and then set which side uses which.

	bso_acre_languages = [["en","English"],["gr","Greek"]]; // Define languages here
	
	bso_acre_language_blufor = ["en"]; //Language all BluFor will speak
	bso_acre_language_opfor = ["gr"]; //Language all OpFor will speak
	bso_acre_language_indfor = ["gr","en"]; //Language all IndFor will speak
	bso_acre_language_civilian = ["gr"]; //Language all Civilians will speak

[west,"b_base", "Base"] call BIS_fnc_addRespawnPosition;
[west, b_mhq, "MHQ"] call BIS_fnc_addRespawnPosition;

_x = [] execVM "mission\bso_gene.sqf";

_isAdmin = serverCommandAvailable "#kick";
if (_isAdmin) then {execVM "mission\bso_gene_admin.sqf"};

_x = [] execVM "mission\bso_gene_mb.sqf";

