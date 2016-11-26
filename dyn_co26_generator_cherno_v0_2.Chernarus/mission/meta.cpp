/////bmf-v1_03////
///////// ======  Mission meta data
//
// This file contains meta data specific to you mission. It also has the includes for your custom loadouts, and the debriefing information. 
//

/*
Use the fields below to set your mission attributes. For assistance speak to an admin or see the BI wiki for Description.ext
*/

overviewText = "1-26<br />COOP-DYN<br />DYNAMIC<br />Unlimited<br />Advanced Medical<br />Dynamic DAC Generator - Beowulf PMC engage the ChDKZ<br />JIP teleport to Leader<br />Walker";

/*

The OverviewText string is used to easily edit your mission description that appears on the server when your mission is selected.
 Carefully edit each parameter as below, and then construct your string using "<br />" to break each line. YOU CANNOT USE RETURN OR ADDITIONAL SPACES IN THIS LINE, YOU MUST USE BREAK
 DO NOT FILL IN THE DESCRIPTION FIELD IN THE EDITOR'S MISSION INTEL WINDOW, THIS WILL OVERRIDE YOUR STRING	
 

0-60 															// <!-- Suggested Minimum-Maximum players

COOP 															//<!-- Game type - COOP/TvT/Dynamic

Standard Length													//<!-- Expected Game Length - Short (30 Mins ) / Standard ( 1 - 1/2 Hour ) / Long ( 1 1/2 Hours + ) / Persistant (ALiVE Database Enabled)

Spectator Box													//<! -- Respawns - Spectator/Spectator box/Tickets/Limit/Unlimited 

Advanced Medical												//<! -- Medical System - Standard/Advanced/Medevac

Brief description about the mission 							// <!-- A VERY brief overview

Author 															//<!--- This is you!!

*/

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

overviewPicture = "mission\gene_cherno.jpg";								// <!-- Mission Picture (Use jpg at 1024x512 for quality/compression)
loadScreen = "mission\gene_cherno.jpg";									// <!-- Loading Screen Picture (See above)
OnLoadName = "Generator - CHERNARUS";									// <!-- Mission Name (Just Text)
OnLoadMission = "Dynamic DAC Generator - Beowulf PMC engage the ChDKZ"; 			// <!-- A VERY brief overview (Copy from above)

author="Walker";												// <!-- This is you!!				

class Header {
	maxPlayers = 26;						// <!-- CHANGE Where the number is the total playable slots
	minPlayers = 1;
	gameType = COOP;						// <!-- Mission Type
};

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//BSO Loadout System (Add custom loadouts to your mission)
	
class CfgBsoLoadouts {
	#include "loadouts\pmc_g36.cpp"
	#include "loadouts\pmc_416.cpp" 
	#include "loadouts\pmc_ak12.cpp"
};

// Used for custom debriefing screens launched by the admin or triggers ingame. See briefing.sqf for admin interactions
class CfgDebriefing
{  
	class End1
	{
		title = "Mission Completed";
		subtitle = "";
		description = "You have completed your objectives.";
		pictureBackground = "";
		picture = "b_inf";
		pictureColor[] = {0.0,0.3,0.6,1};
	};
	class loser
	{
		title = "Mission Failed";
		subtitle = "";
		description = "You have failed your objectives";
		pictureBackground = "";
		picture = "KIA";
		pictureColor[] = {0.0,0.3,0.6,1};
	};	
};

class Params
{
	class PlayerFaction
	{
		title = "Player Faction";
		texts[] = {"PMC - G36","PMC - HK416","PMC - AK12"};
		values[] = {1,2,3};
		default = 3;
	//	function = "BIS_fnc_paramDaytime"; // (Optional) Function called when player joins, selected value is passed as an argument
 		isGlobal = 1; // (Optional) 1 to execute script / function locally for every player who joins, 0 to do it only on server
	};	
	
	class Daytime
	{
		title = "Time";
		texts[] = {"Morning","Day","Evening","Night"};
		values[] = {6,12,19,0};
		default = 19;
		function = "BIS_fnc_paramDaytime"; // (Optional) Function called when player joins, selected value is passed as an argument
 		isGlobal = 1; // (Optional) 1 to execute script / function locally for every player who joins, 0 to do it only on server
	};
	
	class Weather
	{
		title = "Weather";
		texts[] = {"Clear","Cloudy","Overcast"};
		values[] = {0,0.5,1};
		default = 0.2;
		function = "BIS_fnc_setOvercast"; // (Optional) Function called when player joins, selected value is passed as an argument
 		isGlobal = 1; // (Optional) 1 to execute script / function locally for every player who joins, 0 to do it only on server
	};
};
