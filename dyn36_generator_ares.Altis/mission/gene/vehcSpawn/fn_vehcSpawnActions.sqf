// BSO Mission Board actions for Generator
_VehcSpawnCondition = {
params ["_target", "_player", "_params"];
((count nearestObjects [spawn_vehc, ["Car", "Tank","Helicopter","Plane"], 10]) == 0);

};

_AirSpawnCondition = {
params ["_target", "_player", "_params"];
((count nearestObjects [spawn_air, ["Car", "Tank","Helicopter","Plane"], 10]) == 0);

};

_BoatSpawnCondition = {
params ["_target", "_player", "_params"];
((count nearestObjects [spawn_boat, ["Ship"], 10]) == 0);

};





_bsoVs = ["bso_vehcSpawner", "Vehc Spawner", "BSO\noti\bso_logo.paa", {bso_vehcSpawnPos = spawn_vehc; bso_vehcList = bso_gene_blu_landVehcs; createDialog "GeneVehcSpawnMenu";}, _VehcSpawnCondition, {}, [], [0,-0.3,0.2], 2] call ace_interact_menu_fnc_createAction;

_bsoAs = ["bso_vehcSpawner", "Vehc Spawner", "BSO\noti\bso_logo.paa", {bso_vehcSpawnPos = spawn_air; bso_vehcList = bso_gene_blu_airVehcs; createDialog "GeneVehcSpawnMenu";}, _AirSpawnCondition, {}, [], [0,-0.3,0.2], 2] call ace_interact_menu_fnc_createAction;

_bsoBs = ["bso_vehcSpawner", "Vehc Spawner", "BSO\noti\bso_logo.paa", {bso_vehcSpawnPos = spawn_boat; bso_vehcList = bso_gene_blu_boatVehcs; createDialog "GeneVehcSpawnMenu";}, _BoatSpawnCondition, {}, [], [0,-0.3,0.2], 2] call ace_interact_menu_fnc_createAction;

[spawnComp_vehc, 0, ["ACE_MainActions"], _bsoVs] call ace_interact_menu_fnc_addActionToObject;
[spawnComp_air, 0, ["ACE_MainActions"], _bsoAs] call ace_interact_menu_fnc_addActionToObject;
[spawnComp_boat, 0, ["ACE_MainActions"], _bsoBs] call ace_interact_menu_fnc_addActionToObject;


