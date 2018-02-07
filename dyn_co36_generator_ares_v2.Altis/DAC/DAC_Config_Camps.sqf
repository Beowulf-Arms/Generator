//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.1b - 2014   //
//--------------------------//
//    DAC_Config_Camps      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private [
			"_CampTyp","_campBasic","_campAmmo","_campStatic","_campWall","_campObjInit",
			"_campUserObj","_campAddUnit","_campRandomObj","_Unit_Pool_C","_array"
		];

			_CampTyp = _this select 0;_array = [];

switch (_CampTyp) do
{
//-------------------------------------------------------------------------------------------------------------------------
	case 0:
	{
		_campBasic     = ["FirePlace_burning_f",["Land_TentDome_F",5,5,0],["Land_TentA_F",-5,-5,0],["Logic",10,15,0],0];
		_campAmmo      = [["Box_FIA_Ammo_F",5,-5,0]];
		_campStatic    = [];
		_campAddUnit   = ["O_BSO_FIA_MG"];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 1:
	{
		_campBasic     = ["FirePlace_burning_f",["Land_TentDome_F",3,3,0],["Land_TentA_F",-3,-3,0],["Logic",2,2,0],0];
		_campAmmo      = [["Box_FIA_Ammo_F",5,-5,0]];
		_campStatic    = [["B_Mortar_01_F",-5,5,0,"O_BSO_FIA_INS"],["B_Mortar_01_F",5,5,0,"O_BSO_FIA_INS"]];
		_campAddUnit   = ["O_BSO_FIA_INS","O_BSO_FIA_INS2","O_BSO_FIA_INS","O_BSO_FIA_MG","O_BSO_FIA_GL"];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 2:
	{
		_campBasic     = ["FlagCarrierINS",["FirePlace_burning_f",15,10,0],["Land_Fort_Watchtower",10,0,0],["Logic",10,15,0],0];
		_campAmmo      = [["Box_FIA_Wps_F",20,2,0],["Box_FIA_Ammo_F",20,0,0],["Box_FIA_Support_F",20,-2,0],["IG_Supplycrate_F",20,-4,0]];
		_campStatic    = [["B_Mortar_01_F",-7,25,0,"O_BSO_FIA_INS"],["B_Mortar_01_F",25,25,0,"O_BSO_FIA_INS"]];
		_campAddUnit   = ["O_BSO_FIA_INS","O_BSO_FIA_INS2","O_BSO_FIA_INS","O_BSO_FIA_MG","O_BSO_FIA_GL"];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	Default {
				if(DAC_Basic_Value != 5) then
				{
					DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value";
					hintc "Error: DAC_Config_Camps > No valid config number";
				};
				if(true) exitwith {};
			};
};

_array = [_campBasic,_campAmmo,_campStatic,_campAddUnit,_campUserObj,_campRandomObj,_campWall,_campObjInit];
_array