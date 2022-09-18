//create objective defence groups based on weighting
params ["_pos",["_IntRadius",200],["_ExtRadius",800],["_numGrps",6],["_InfWeight",0.5],["_InfTypeWeight",[0.25,0.25,0.25,0.25]],["_MechWeight",0.3],["_MechTypeWeight",[0.16,0.16,0.16,0.16,0.16,0.16]],["_StaticWeight",0.2],["_StaticTypeWeight",[0.5,0.5]]];

private _spawnInfGrps = round (_InfWeight * _numGrps);
private _spawnMechGrps = round (_MechWeight * _numGrps);
private _spawnStaticGrps = round (_StaticWeight * _numGrps);


// Spawn infantry groups
for "_i" from 1 to _spawnInfGrps do {

   private _type = ["close", "far", "camp", "garry"] selectRandomWeighted [_InfTypeWeight select 0, _InfTypeWeight select 1, _InfTypeWeight select 2, _InfTypeWeight select 3];

   switch _Type do 
   {
      case "close":
      {
         // Close Patrol
         private _randomPos = [_pos, 0, _IntRadius, 1, 3, 0.7, 0, [], [_pos, _pos]] call BIS_fnc_findSafePos;
    	   [_randomPos] call gene_fnc_spawnPatrol;
         //[str _randomPos, _randomPos, "ICON", [1, 1], "COLOR:", "ColorRed","TYPE:","mil_triangle","TEXT:","Close patrol Inf"] call CBA_fnc_createMarker; 
      };
      case "far": 
      {
         // Far Patrol
         private _randomPos = [_pos, _IntRadius, _ExtRadius, 1, 0, 0.7, 0, [], [_pos, _pos]] call BIS_fnc_findSafePos;
    	   [_randomPos] call gene_fnc_spawnPatrol;
         //[str _randomPos, _randomPos, "ICON", [1, 1], "COLOR:", "ColorRed","TYPE:","mil_triangle","TEXT:","Far Patrol inf"] call CBA_fnc_createMarker;          
      };
      case "camp": 
      {
         // Camp group
         private _randomPos = [_pos, 0, _IntRadius, 1, 10, 0.7, 0, [], [_pos, _pos]] call BIS_fnc_findSafePos;
    	   [_randomPos] call gene_fnc_spawnCamp;
         //[str _randomPos, _randomPos, "ICON", [1, 1], "COLOR:", "ColorRed","TYPE:","mil_triangle","TEXT:","Camp Inf"] call CBA_fnc_createMarker;   
      };
      case "garry": 
      {
         // Garrison Group
         private _randomPos = [_pos, 0, _IntRadius, 1, 10, 0.7, 0, [], [_pos, _pos]] call BIS_fnc_findSafePos;
    	   [_randomPos] call gene_fnc_spawnGarrison;
         //[str _randomPos, _randomPos, "ICON", [1, 1], "COLOR:", "ColorRed","TYPE:","mil_triangle","TEXT:","Garry Inf"] call CBA_fnc_createMarker;  
      };
   };
};

// Spawn mech groups
for "_i" from 1 to _spawnMechGrps do {

   private _type = ["mechPatrol", "mechPatrolFar", "mechGuard", "AtkPatrol", "AtkPatrolFar", "AtkGuard"] selectRandomWeighted [_MechTypeWeight select 0, _MechTypeWeight select 1, _MechTypeWeight select 2, _MechTypeWeight select 3, _MechTypeWeight select 4, _MechTypeWeight select 5];

   switch _Type do 
   {
      case "mechPatrol":
      {
         // Mech Group Patrol
         private _randomPos = [_pos, 0, _IntRadius, 5, 0, 0.7, 0, [], [_pos, _pos]] call BIS_fnc_findSafePos;
         private _Roads = _randomPos nearRoads 150;
         private _spawnRoad = selectRandom _Roads;
         [getPos _spawnRoad, getDir _spawnRoad] call gene_fnc_spawnMechPatrol;
        // [str _randomPos, _randomPos, "ICON", [1, 1], "COLOR:", "ColorRed","TYPE:","mil_triangle","TEXT:","Mech Patrol Close"] call CBA_fnc_createMarker;  
      };
      case "mechPatrolFar":
      {
         // Mech Group Patrol Far
         private _randomPos = [_pos, _IntRadius, _ExtRadius, 5, 0, 0.7, 0, [], [_pos, _pos]] call BIS_fnc_findSafePos;
         private _Roads = _randomPos nearRoads 150;
         private _spawnRoad = selectRandom _Roads;
         [getPos _spawnRoad, getDir _spawnRoad] call gene_fnc_spawnMechPatrol;
        // [str _randomPos, _randomPos, "ICON", [1, 1], "COLOR:", "ColorRed","TYPE:","mil_triangle","TEXT:","Mech Patrol Far"] call CBA_fnc_createMarker;  
      };
      case "mechGuard": 
      {
         // Mech Group guarding
         private _randomPos = [_pos, 0, _IntRadius, 5, 0, 0.7, 0, [], [_pos, _pos]] call BIS_fnc_findSafePos;
         private _Roads = _randomPos nearRoads 150;
         private _spawnRoad = selectRandom _Roads;
         [getPos _spawnRoad, getDir _spawnRoad] call gene_fnc_spawnMechGuard;
         //[str _randomPos, _randomPos, "ICON", [1, 1], "COLOR:", "ColorRed","TYPE:","mil_triangle","TEXT:","Mech Group Guarding"] call CBA_fnc_createMarker;  
      };
      case "AtkPatrol": 
      {
         // Atk Vehc Patroling
         private _randomPos = [_pos, 0, _IntRadius, 5, 0, 0.7, 0, [], [_pos, _pos]] call BIS_fnc_findSafePos;
         private _Roads = _randomPos nearRoads 150;
         private _spawnRoad = selectRandom _Roads;
         [getPos _spawnRoad, getDir _spawnRoad] call gene_fnc_spawnAtkVPatrol;
         //[str _randomPos, _randomPos, "ICON", [1, 1], "COLOR:", "ColorRed","TYPE:","mil_triangle","TEXT:","Atk Vehc Patrol Close"] call CBA_fnc_createMarker; 
         
      };
      case "AtkPatrolFar": 
      {
         // Atk Vehc Patroling Far
         private _randomPos = [_pos, _IntRadius, _ExtRadius, 5, 0, 0.7, 0, [], [_pos, _pos]] call BIS_fnc_findSafePos;
         private _Roads = _randomPos nearRoads 150;
         private _spawnRoad = selectRandom _Roads;
         [getPos _spawnRoad, getDir _spawnRoad] call gene_fnc_spawnAtkVPatrol;
         //[str _randomPos, _randomPos, "ICON", [1, 1], "COLOR:", "ColorRed","TYPE:","mil_triangle","TEXT:","Atk Vehc Patrol Far"] call CBA_fnc_createMarker; 
      };
      case "AtkGuard": 
      {
         // Atk Vehc guarding
         private _randomPos = [_pos, 0, _IntRadius, 5, 0, 0.7, 0, [], [_pos, _pos]] call BIS_fnc_findSafePos;
         private _Roads = _randomPos nearRoads 150;
         private _spawnRoad = selectRandom _Roads;
         [getPos _spawnRoad, getDir _spawnRoad] call gene_fnc_spawnAtkVGuard;
         //[str _randomPos, _randomPos, "ICON", [1, 1], "COLOR:", "ColorRed","TYPE:","mil_triangle","TEXT:","Atk Vehc Guard"] call CBA_fnc_createMarker;
      };
   };
};


// Spawn static wpns
for "_i" from 1 to _spawnStaticGrps do {

   private _type = ["arty", "antiAir"] selectRandomWeighted [_StaticTypeWeight select 0, _StaticTypeWeight select 1];

   switch _Type do 
   {
      case "arty":
      {
         // Arty
         private _randomPos = [_pos, 0, _IntRadius, 1, 0, 0.2, 0, [], [_pos, _pos]] call BIS_fnc_findSafePos;
         [_randomPos,1] call gene_fnc_spawnStaticWpn;
         //[str _randomPos, _randomPos, "ICON", [1, 1], "COLOR:", "ColorRed","TYPE:","mil_triangle","TEXT:","Static Arty"] call CBA_fnc_createMarker;
      };
      case "antiAir": 
      {
         // Anti-Air
         private _randomPos = [_pos, 0, _IntRadius, 1, 0, 0.2, 0, [], [_pos, _pos]] call BIS_fnc_findSafePos;
         [_randomPos,2] call gene_fnc_spawnStaticWpn;
         //[str _randomPos, _randomPos, "ICON", [1, 1], "COLOR:", "ColorRed","TYPE:","mil_triangle","TEXT:","Static AA"] call CBA_fnc_createMarker;
      };
   };
};