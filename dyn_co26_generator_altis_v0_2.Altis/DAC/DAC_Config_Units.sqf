//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 2.1 - 2009    //
//--------------------------//
//    DAC_Config_Units      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private ["_TypNumber","_TempArray","_Unit_Pool_S","_Unit_Pool_V","_Unit_Pool_T","_Unit_Pool_A"];
_TypNumber = _this select 0;_TempArray = [];

switch (_TypNumber) do
{
//-------------------------------------------------------------------------------------------------
// REDFOR (A3)
  case 0:
  {
    _Unit_Pool_S = ["O_BSO_FIA_GL","O_BSO_FIA_INS","O_BSO_FIA_INS2","O_BSO_FIA_INS3","O_BSO_FIA_INS2","O_BSO_FIA_AUTO","O_BSO_FIA_GL","O_BSO_FIA_AUTO","O_BSO_FIA_MG","O_BSO_FIA_DMR","O_BSO_FIA_DOC","O_BSO_FIA_MG","O_BSO_FIA_INS3","O_BSO_FIA_INS2"];
    _Unit_Pool_V = ["O_BSO_FIA_TRUCK","O_BSO_FIA_OFFROAD"];
    _Unit_Pool_T = ["O_BSO_FIA_OFFROAD_ARMED"];
    _Unit_Pool_A = [""];
  };
//-------------------------------------------------------------------------------------------------
// BLUFOR (A3)
  case 1:
  {
    _Unit_Pool_S = ["O_BSO_FIA_GL","O_BSO_FIA_INS","O_BSO_FIA_INS2","O_BSO_FIA_INS3","O_BSO_FIA_INS2","O_BSO_FIA_AUTO","O_BSO_FIA_GL","O_BSO_FIA_AUTO","O_BSO_FIA_MG","O_BSO_FIA_DMR","O_BSO_FIA_DOC","O_BSO_FIA_MG","O_BSO_FIA_INS3","O_BSO_FIA_INS2"];
    _Unit_Pool_V = ["O_BSO_FIA_TRUCK","O_BSO_FIA_OFFROAD"];
    _Unit_Pool_T = ["O_BSO_FIA_OFFROAD_ARMED"];
    _Unit_Pool_A = [""];
  };
//-------------------------------------------------------------------------------------------------
// Independent (A3)
  case 2:
  {
    _Unit_Pool_S = ["O_BSO_FIA_GL","O_BSO_FIA_INS","O_BSO_FIA_INS2","O_BSO_FIA_INS3","O_BSO_FIA_INS2","O_BSO_FIA_AUTO","O_BSO_FIA_GL","O_BSO_FIA_AUTO","O_BSO_FIA_MG","O_BSO_FIA_DMR","O_BSO_FIA_DOC","O_BSO_FIA_MG","O_BSO_FIA_INS3","O_BSO_FIA_INS2"];
    _Unit_Pool_V = ["O_BSO_FIA_TRUCK","O_BSO_FIA_OFFROAD"];
    _Unit_Pool_T = ["O_BSO_FIA_OFFROAD_ARMED"];
    _Unit_Pool_A = [""];
  };
//-------------------------------------------------------------------------------------------------
// Civilians (A3)
  case 3:
  {
    _Unit_Pool_S = ["C_man_1","C_man_1","C_man_1","C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F","C_man_1_1_F","C_man_1_2_F","C_man_1_3_F"];
    _Unit_Pool_V = ["C_Van_01_box_F","C_Van_01_transport_F","C_Offroad_01_F","C_Hatchback_01_sport_F","C_Hatchback_01_F"];
    _Unit_Pool_T = ["C_Van_01_box_F","C_Van_01_transport_F","C_Offroad_01_F","C_Hatchback_01_sport_F","C_Hatchback_01_F"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
  Default
  {
    if(DAC_Basic_Value != 5) then
    {
      DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value",
      hintc "Error: DAC_Config_Units > No valid config number";
    };
    if(true) exitwith {};
  };
};

if(count _this == 2) then
{
  _TempArray = _TempArray + [_Unit_Pool_S,_Unit_Pool_V,_Unit_Pool_T,_Unit_Pool_A];
}
else
{
  _TempArray = _Unit_Pool_V + _Unit_Pool_T + _Unit_Pool_A;
};
_TempArray