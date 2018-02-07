// Generates AO markers and AO markers
	_obj1Mark = createMarker ["obj1", (getMarkerPos "M_1")]; 
	"obj1" setMarkerType "mil_Objective";
	"obj1" setMarkerColor "ColorEast";
	"obj1" setMarkerText format ["%1.", bso_gene_taskNum];	
	
	
	
	_borderMark = createMarker ["border", (getMarkerPos "M_1")]; 
	"border" setMarkerShape  "RECTANGLE";
	"border" setMarkerBrush "Border";
	"border" setMarkerSize [1000, 1000];
	"border" setMarkerColor "ColorEast";	
	
	_border1Mark = createMarker ["border_1", (getMarkerPos "M_1")]; 
	"border_1" setMarkerShape  "RECTANGLE";
	"border_1" setMarkerBrush "Border";
	"border_1" setMarkerSize [1100, 1100];
	"border_1" setMarkerColor "ColorEast";	
	
	//used for qrf spawning
	_borderMark = createMarker ["border_2", (getMarkerPos "M_1")]; 
	"border_2" setMarkerShape  "RECTANGLE";
	"border_2" setMarkerBrush "Border";
	"border_2" setMarkerSize [1500, 1500];
	"border_2" setMarkerAlpha 0;	
	
	_aoMark = createMarker ["ao", [(getMarkerPos "m_1" select 0) -900, (getMarkerPos "m_1" select 1) -900]]; 
	"ao" setMarkerType "mil_box";
	"ao" setMarkerColor "ColorEast";
	"ao" setMarkerText "Area of Operations";	
