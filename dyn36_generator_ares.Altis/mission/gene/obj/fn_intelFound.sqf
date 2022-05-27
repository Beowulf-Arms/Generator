params [];

_mission = bso_gene_IntelObj;

switch _mission do
{
	case "HVT": {
		private _IntRadius = HVT1 getVariable "bso_gene_IntelRadius";
		private _IntMark = HVT1 getVariable "bso_gene_IntelMarker";

		if (_IntRadius <= 25 ) then {

			_IntMark setMarkerPos getPos HVT1;
			_IntMark setMarkerShape "ICON";
			_IntMark setMarkerColor "ColorEast";
			_IntMark setMarkerSize [1, 1];
			_IntMark setMarkerType "hd_destroy";
			//bso_obj_IntelSubjects = (bso_obj_IntelSubjects - _cache);
			publicVariable "bso_obj_IntelSubjects";
			hint "Exact Location of HVT found!";

		} else {

			if (_IntMark == "none") then {

				private _markPos = [[[getPos HVT1, _IntRadius]], []] call BIS_fnc_randomPos;
				_IntMark = createMarker [str HVT1, _markPos];
				_IntMark setMarkerShape "ELLIPSE";
				_IntMark setMarkerColor "ColorEast";
				_IntMark setMarkerBrush  "Border";
				_IntMark setMarkerSize [_IntRadius, _IntRadius];
				HVT1 setVariable ["bso_gene_IntelMarker", _IntMark, true];	
				HVT1 setVariable ["bso_gene_IntelRadius", (_IntRadius / 2), true];	
				hint "Intel on the HVT location found!";

			} else {

				private _markPos = [[[getPos HVT1, _IntRadius]], []] call BIS_fnc_randomPos;
				_IntMark setMarkerPos _markPos;
				_IntMark setMarkerSize [_IntRadius, _IntRadius];
				HVT1 setVariable ["bso_gene_IntelRadius", (_IntRadius / 2), true];	-
				hint "Further intel on the HVT location found!";

			};
		};		

	};
	
	case "CACHE": {
		private _cache = selectRandom bso_obj_IntelSubjects;
		private _IntRadius = _cache getVariable "bso_gene_IntelRadius";
		private _IntMark = _cache getVariable "bso_gene_IntelMarker";

		if (_IntRadius <= 25 ) then {

			_IntMark setMarkerPos getPos _cache;
			_IntMark setMarkerShape "ICON";
			_IntMark setMarkerColor "ColorEast";
			_IntMark setMarkerSize [1, 1];
			_IntMark setMarkerType "hd_destroy";
			bso_obj_IntelSubjects = (bso_obj_IntelSubjects - _cache);
			publicVariable "bso_obj_IntelSubjects";
			hint "Exact Location of a Cache found!";


		} else {

			if (_IntMark == "none") then {

				private _markPos = [[[getPos _cache, _IntRadius]], []] call BIS_fnc_randomPos;
				_IntMark = createMarker [str _cache, _markPos];
				_IntMark setMarkerShape "ELLIPSE";
				_IntMark setMarkerColor "ColorEast";
				_IntMark setMarkerBrush  "Border";
				_IntMark setMarkerSize [_IntRadius, _IntRadius];
				_cache setVariable ["bso_gene_IntelMarker", _IntMark, true];	
				_cache setVariable ["bso_gene_IntelRadius", (_IntRadius / 2), true];
				hint "New intel on a cache location found!";

			} else {

				private _markPos = [[[getPos _cache, _IntRadius]], []] call BIS_fnc_randomPos;
				_IntMark setMarkerPos _markPos;
				_IntMark setMarkerSize [_IntRadius, _IntRadius];
				_cache setVariable ["bso_gene_IntelRadius", (_IntRadius / 2), true];
				hint "Further intel on a cache location found!";

			};
		};

	};
};
