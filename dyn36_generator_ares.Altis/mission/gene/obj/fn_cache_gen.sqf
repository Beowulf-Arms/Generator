//    Date: 11-8-2014
// Purpose: Places Caches
//  Author: Monsoon
//	_null = [BOX,NCACHES,_CACHECONCENTRATION,_RANGE,_MARKER_R] execVM "mission\gene\obj\bso_cache_gen.sqf";

//	//DEFAULT VALUES
//	NCACHES             =   5;  // number of caches to place
//	_CACHECONCENTRATION =  35;  // how closely spaced should they be?
//	_RANGE              = 200;  // how far should we search from the center of town?
//	_MARKER_R           =  50;  // how large should said markers be?  (0 off)

if(!isServer) exitWith{};


_box      = _this select 0;
NCACHES   = _this select 1;
_cc       = _this select 2;
_range    = _this select 3;
_marker_r = _this select 4;
_MARK     = _this select 5;

_markers = 1;
if(_marker_r == 0) then{_markers = 0;};

_DEBUG = false;
/////////////
placecache = {
	if(!isServer) exitWith{};

	_box     = _this select 0;
	_pos     = _this select 1;
	_index   = _this select 2;
	_marks   = _this select 3;
	_marks_r = _this select 4;

	_unit = createVehicle [_box, _pos,[],0,"NONE"];

	_name = format["cache%1",_index];
	_unit setVehicleVarName _name;
	_unit setVariable ["INDEX",_index,true];
	_unit setVariable ["PLANTER",0,true];
	_unit Call Compile Format["%1=_This ; PublicVariable ""%1""",_name];

	clearWeaponCargoGlobal _unit;
	clearMagazineCargoGlobal _unit;
	clearItemCargoGlobal _unit;
	clearBackpackCargoGlobal _unit;

	_unit setPosATL _pos;
	_unit setdir random 360;
//	_unit attachTo [CACHE_GL];
//	[[_unit],"addcacheEH"] call BIS_fnc_MP;


	//[getPos _unit] call gene_fnc_spawnGarrison;
};
////////////////////////

sleep 3;

// TEST LOCATIONS
_caches = [
			//[20173,11585,54.3212],
			//[20162.6,11608,51.9007],
			//[20196.1,11599.5,56.7127],
			//[20162.1,11551.6,55.5284],
			//[20194.7, 11611.8, 60.6579]
		];


_towns  = nearestLocations [getMarkerPos _MARK,["NameVillage","NameCity","NameCityCapital"],1000];
_center = locationPosition (_towns select 0);

_houselist = nearestObjects [_center,["house"],_range];
_nhouses   = count _houselist;

_ncaches = count _caches;


_cachePositions = [];

NCACHESCREATED = 0;

if(!_DEBUG) then{
	for [{_i=0}, {_i<NCACHES}, {_i=_i+1}] do{

		_moveOn = false;
		while{!_moveOn} do{
			_ran       = floor random _nhouses;
			_house     = _houselist select _ran;
			_housepos  = [_house] call BIS_fnc_buildingPositions;
			_nhousepos = count _housepos;
			if(_nhousepos > 3) then{ //changed 3 from 0. Should make only larger buildings used....
				_ranpos = floor random _nhousepos;
				_pos    = _housepos select _ranpos;

				_minDistance = 10000;
				{
					_dist = _x distance _pos;
					if(_dist < _minDistance) then{_minDistance = _dist;};
				}forEach _cachePositions;

				if(_minDistance > _cc) then{
					//player sidechat format["placing cache at %1",_pos];
					[_box,_pos,_i,_markers,_marker_r] spawn placecache;
					_moveOn = true;
					NCACHESCREATED = NCACHESCREATED + 1;
					_cachePositions = _cachePositions + [_pos];
				};
				_houselist set [_ran,-1];
				_houselist = _houselist - [-1];
				_nhouses   = _nhouses - 1;
			};
		};
	};
} 
else{
	player sidechat "IN DEBUG CACHE PLACEMENT";
	for [{_i=0}, {_i<NCACHES}, {_i=_i+1}] do{
		_ran  = floor random _ncaches;
		_pos  = ASLToATL(_caches select _ran);
		[_box,_pos, _i,_markers,_marker_r] spawn placecache;
		
		_caches set [_ran,-1];
		_caches  = _caches - [-1];
		_ncaches = _ncaches - 1;
		NCACHESCREATED = NCACHESCREATED + 1;
	};
};

[[format["created %1/%2 caches",NCACHES,NCACHESCREATED]],"rcp_broadcast"] call BIS_fnc_MP;
CACHEPOS = _cachePositions;
publicVariable "CACHEPOS";

//RCP_CACHES_PLACED = true;
//publicVariable "RCP_CACHES_PLACED";