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
    _Unit_Pool_S = ["I_BSO_chdkz_GL","I_BSO_chdkz_INS","I_BSO_chdkz_INS2","I_BSO_chdkz_INS3","I_BSO_chdkz_INS2","I_BSO_chdkz_AUTO","I_BSO_chdkz_GL","I_BSO_chdkz_AUTO","I_BSO_chdkz_MG","I_BSO_chdkz_DMR","I_BSO_chdkz_DOC","I_BSO_chdkz_MG","I_BSO_chdkz_INS3","I_BSO_chdkz_INS2"];
    _Unit_Pool_V = ["I_BSO_chdkz_GAZ","I_BSO_chdkz_URAL","I_BSO_chdkz_GAZ_OPEN","I_BSO_chdkz_URAL_open","I_BSO_chdkz_uaz"];
    _Unit_Pool_T = ["I_BSO_chdkz_uaz_dshkm","I_BSO_chdkz_GAZ_ZU23","I_BSO_chdkz_BRDM2","I_BSO_chdkz_BTR70"];
    _Unit_Pool_A = [""];
  };
//-------------------------------------------------------------------------------------------------
// BLUFOR (A3)
  case 1:
  {
    _Unit_Pool_S = ["I_BSO_chdkz_GL","I_BSO_chdkz_INS","I_BSO_chdkz_INS2","I_BSO_chdkz_INS3","I_BSO_chdkz_INS2","I_BSO_chdkz_AUTO","I_BSO_chdkz_GL","I_BSO_chdkz_AUTO","I_BSO_chdkz_MG","I_BSO_chdkz_DMR","I_BSO_chdkz_DOC","I_BSO_chdkz_MG","I_BSO_chdkz_INS3","I_BSO_chdkz_INS2"];
    _Unit_Pool_V = ["I_BSO_chdkz_GAZ","I_BSO_chdkz_URAL","I_BSO_chdkz_GAZ_OPEN","I_BSO_chdkz_URAL_open","I_BSO_chdkz_uaz"];
    _Unit_Pool_T = ["I_BSO_chdkz_uaz_dshkm","I_BSO_chdkz_GAZ_ZU23","I_BSO_chdkz_BRDM2","I_BSO_chdkz_BTR70"];
    _Unit_Pool_A = [""];
  };
//-------------------------------------------------------------------------------------------------
// Independent (A3)
  case 2:
  {
    _Unit_Pool_S = ["I_BSO_chdkz_GL","I_BSO_chdkz_INS","I_BSO_chdkz_INS2","I_BSO_chdkz_INS3","I_BSO_chdkz_INS2","I_BSO_chdkz_AUTO","I_BSO_chdkz_GL","I_BSO_chdkz_AUTO","I_BSO_chdkz_MG","I_BSO_chdkz_DMR","I_BSO_chdkz_DOC","I_BSO_chdkz_MG","I_BSO_chdkz_INS3","I_BSO_chdkz_INS2"];
    _Unit_Pool_V = ["I_BSO_chdkz_GAZ","I_BSO_chdkz_URAL","I_BSO_chdkz_GAZ_OPEN","I_BSO_chdkz_URAL_open","I_BSO_chdkz_uaz"];
    _Unit_Pool_T = ["I_BSO_chdkz_uaz_dshkm","I_BSO_chdkz_GAZ_ZU23","I_BSO_chdkz_BRDM2","I_BSO_chdkz_BTR70"];
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