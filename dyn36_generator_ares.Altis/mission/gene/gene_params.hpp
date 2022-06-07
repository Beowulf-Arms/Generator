class Params
{
	class Daytime
	{
		title = "Time";
		texts[] = {"Morning","Late Morning","Midday","Afternoon","Evening","Night"};
		values[] = {6,9,12,15,18,0};
		default = 9;
		function = "BIS_fnc_paramDaytime"; // (Optional) Function called when player joins, selected value is passed as an argument
 		isGlobal = 0; // (Optional) 1 to execute script / function locally for every player who joins, 0 to do it only on server
	};
	
	class Weather
	{
		title = "Weather";
		texts[] = {"Clear","Some Cloud","Cloudy","Overcast","Stormy"};
		values[] = {0,0.25,0.5,0.75,1};
		default = 0.25;
		function = "BIS_fnc_setOvercast"; // (Optional) Function called when player joins, selected value is passed as an argument
 		isGlobal = 0; // (Optional) 1 to execute script / function locally for every player who joins, 0 to do it only on server
	};
	
	class Time
	{
		title = "Time Acceleration";
		texts[] = {"Normal","3x","6x","12x"};
		values[] = {1,3,6,12};
		default = 6;
		function = "gene_fnc_timeAcc"; // (Optional) Function called when player joins, selected value is passed as an argument
 		isGlobal = 0; // (Optional) 1 to execute script / function locally for every player who joins, 0 to do it only on server
	};
	
	class AIFaction
	{
		title = "Enemy Faction";
		texts[] = {"(BSO) FIA","(BSO) CSAT Iran","(3CB) Takistani Army","(3CB) NAPA","AAF (INDFOR)"};
		values[] = {1,2,3,4,5};
		default = 1;
	};

    /*	
        class GroupTele
        {
            title = "Group Leader Teleport Flag";
            texts[] = {"Enabled","Disabled"};
            values[] = {1,0};
            default = 1;
        };	

        class LeaderTele
        {
            title = "Mission Leader Teleport Flag";
            texts[] = {"Enabled","Disabled"};
            values[] = {1,0};
            default = 1;
        };	
    */	
};