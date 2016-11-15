/////bmf-v1_03////
////// ====	Taskmaster
execVM "mission\briefing.sqf";
  
// ACRE
execVM "bso\acre.sqf";


////// ==== Safety
// Enable ACE weapon Safety and Earplugs in.
#include "BSO\safe\safety.sqf";


/////// ==== Save Disable
enableSaving [false,false];

////// === Mission Log
diag_log format ["###### %1 ######", missionName];
diag_log [diag_frameno, diag_ticktime, time, "Executing init.sqf"];