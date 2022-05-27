params [];

if (count bso_obj_IntelSubjects == 0) then { hint "No useful intel here..."};
private _subject = selectRandom bso_obj_IntelSubjects;
private _IntRadius = _subject getVariable "bso_gene_IntelRadius";
private _IntMark = _subject getVariable "bso_gene_IntelMarker";


if (_IntRadius <= 25 ) then {

	_IntMark setMarkerPos getPos _subject;
	_IntMark setMarkerShape "ICON";
	_IntMark setMarkerColor "ColorEast";
	_IntMark setMarkerSize [1, 1];
	_IntMark setMarkerType "hd_destroy";
	bso_obj_IntelSubjects = bso_obj_IntelSubjects - [_subject];
	publicVariable "bso_obj_IntelSubjects";
	hint "Exact Location of an objective found!";

} else {

	if (_IntMark == "none") then {

		private _markPos = [[[getPos _subject, _IntRadius]], []] call BIS_fnc_randomPos;
		_IntMark = createMarker [str _subject, _markPos];
		_IntMark setMarkerShape "ELLIPSE";
		_IntMark setMarkerColor "ColorEast";
		_IntMark setMarkerBrush  "Border";
		_IntMark setMarkerSize [_IntRadius, _IntRadius];
		_subject setVariable ["bso_gene_IntelMarker", _IntMark, true];	
		_subject setVariable ["bso_gene_IntelRadius", (_IntRadius / 2), true];
		hint "New intel on an objective location found!";

	} else {

		private _markPos = [[[getPos _subject, _IntRadius]], []] call BIS_fnc_randomPos;
		_IntMark setMarkerPos _markPos;
		_IntMark setMarkerSize [_IntRadius, _IntRadius];
		_subject setVariable ["bso_gene_IntelRadius", (_IntRadius / 2), true];
		hint "Further intel on an objective location found!";

	};
};
