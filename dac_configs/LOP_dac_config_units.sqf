//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.1b - 2014   //
//--------------------------//
//    DAC_Config_Camps      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private ["_TypNumber","_TempArray","_Unit_Pool_S","_Unit_Pool_V","_Unit_Pool_T","_Unit_Pool_A"];
_TypNumber = _this select 0;_TempArray = [];

switch (_TypNumber) do
{
//-------------------------------------------------------------------------------------------------
// LOP configs added by Don [6.Rus] 	(DonElSarjo)
//-------------------------------------------------------------------------------------------------
// Afghan Militia (Leight's Opfor Pack) - INDEPENDENT
case 0:
{
_Unit_Pool_S = [
	"LOP_AM_Infantry_Engineer",
	"LOP_AM_Infantry_Engineer", // double engineer since there is no helis
	"LOP_AM_Infantry_TL",
	"LOP_AM_Infantry_AT", 
	"LOP_AM_Infantry_AR", 
	"LOP_AM_Infantry_Corpsman", 
	"LOP_AM_Infantry_GL", 
	"LOP_AM_Infantry_Marksman", 
	"LOP_AM_Infantry_Rifleman",
	"LOP_AM_Infantry_Rifleman_2",
	"LOP_AM_Infantry_SL"
];
_Unit_Pool_V = [
	"LOP_AM_Landrover", 
	"LOP_AM_Landrover_M2", 
	"LOP_AM_Offroad", 
	"LOP_AM_Offroad_M2", 
	"LOP_AM_Truck"
];
_Unit_Pool_T = [
	"LOP_AM_BTR60", 
	"LOP_AM_M113_W", 
	"LOP_AM_T72BA"
];
_Unit_Pool_A = [];
};
//-------------------------------------------------------------------------------------------------
// African Militia (Leight's Opfor Pack) - INDEPENDENT
case 1:
{
_Unit_Pool_S = [
	"LOP_AFR_Driver", 
	"LOP_AFR_Driver",	// same, no heli
	"LOP_AFR_Infantry_TL",
	"LOP_AFR_Infantry_AT", 
	"LOP_AFR_Infantry_Corpsman", 
	"LOP_AFR_Infantry_GL", 
	"LOP_AFR_Infantry_IED", 
	"LOP_AFR_Infantry_AR", 
	"LOP_AFR_Infantry_Marksman", 
	"LOP_AFR_Infantry", 
	"LOP_AFR_Infantry_SL"
];
_Unit_Pool_V = [
	"LOP_AFR_Landrover", 
	"LOP_AFR_Landrover_M2", 
	"LOP_AFR_Offroad", 
	"LOP_AFR_Offroad_M2", 
	"LOP_AFR_Truck"
];
_Unit_Pool_T = [
	"LOP_AFR_BTR60", 
	"LOP_AFR_M113_W", 
	"LOP_AFR_T72BA"
];
_Unit_Pool_A = [];
};
//-------------------------------------------------------------------------------------------------
// ISTS (Leight's Opfor Pack) - INDEPENDENT
case 2:
{
_Unit_Pool_S = [
	"LOP_ISTS_Infantry_Engineer", 
	"LOP_ISTS_Infantry_Engineer", // no heli
	"LOP_ISTS_Infantry_TL",
	"LOP_ISTS_Infantry_AT", 
	"LOP_ISTS_Infantry_AR", 
	"LOP_ISTS_Infantry_Corpsman", 
	"LOP_ISTS_Infantry_GL", 
	"LOP_ISTS_Infantry_Marksman", 
	"LOP_ISTS_Soldier", 
	"LOP_ISTS_Infantry_SL"
];
_Unit_Pool_V = [
	"LOP_ISTS_Landrover", 
	"LOP_ISTS_Landrover_M2", 
	"LOP_ISTS_Offroad", 
	"LOP_ISTS_Offroad_M2", 
	"LOP_ISTS_Truck"
];
_Unit_Pool_T = [
	"LOP_ISTS_BTR60", 
	"LOP_ISTS_M113_W", 
	"LOP_ISTS_T72BA"
];
_Unit_Pool_A = [];
};
//-------------------------------------------------------------------------------------------------
// RACS (Leight's Opfor Pack) - INDEPENDENT
case 3:
{
_Unit_Pool_S = [
	"LOP_RACS_Infantry_Crewman", 
	"LOP_RACS_Infantry_Pilot", 
	"LOP_RACS_Infantry_TL",
	"LOP_RACS_Infantry_AT", 
	"LOP_RACS_Infantry_AT_Asst", 
	"LOP_RACS_Infantry_Corpsman", 
	"LOP_RACS_Infantry_Engineer", 
	"LOP_RACS_Infantry_GL", 
	"LOP_RACS_Infantry_MG", 
	"LOP_RACS_Infantry_MG_Asst", 
	"LOP_RACS_Infantry_Marksman", 
	"LOP_RACS_Infantry_Rifleman", 
	"LOP_RACS_Infantry_SL"
];
_Unit_Pool_V = [
	"LOP_RACS_Landrover", 
	"LOP_RACS_Landrover_M2", 
	"LOP_RACS_Offroad", 
	"LOP_RACS_Offroad_M2", 
	"LOP_RACS_Truck"
];
_Unit_Pool_T = [
	"LOP_RACS_M113_W",
	"LOP_RACS_T72BA"
];
_Unit_Pool_A = [
	"LOP_RACS_MH9_armed",
	"LOP_RACS_MH9",
	"LOP_RACS_UH60M"
];
};
//-------------------------------------------------------------------------------------------------
// Iraqi Army (Leight's Opfor Pack) - BLUFOR // no support units
case 4:
{
_Unit_Pool_S = [
	"LOP_IA_Infantry_Crewman", 
	"LOP_IA_Infantry_Crewman", 	//no heli
	"LOP_IA_Infantry_TL",
	"LOP_IA_Infantry_AT", 
	"LOP_IA_Infantry_AT_Asst", 
	"LOP_IA_Infantry_Corpsman", 
	"LOP_IA_Infantry_Engineer", 
	"LOP_IA_Infantry_GL", 
	"LOP_IA_Infantry_MG", 
	"LOP_IA_Infantry_MG_Asst", 
	"LOP_IA_Infantry_Marksman", 
	"LOP_IA_Infantry_Rifleman", 
	"LOP_IA_Infantry_SL"
];
_Unit_Pool_V = [
	"LOP_IA_BM21", 
	"LOP_IA_HEMTT_Mover_D", 
	"LOP_IA_HEMTT_Box_D", 
	"LOP_IA_HEMTT_Transport_D", 
	"LOP_IA_HEMTT_Covered_D", 
	"LOP_IA_M1025_W_M2", 
	"LOP_IA_M1025_W_Mk19", 
	"LOP_IA_M1025_D", 
	"LOP_IA_M998_D_4DR", 
	"LOP_IA_Offroad", 
	"LOP_IA_Offroad_M2", 
	"LOP_IA_Truck"
];
_Unit_Pool_T = [
	"LOP_IA_BMP1",
	"LOP_IA_BMP2",
	"LOP_IA_M113_W",
	"LOP_IA_M1A1_AIM_D",
	"LOP_IA_ZSU234"
];
_Unit_Pool_A = [];
};
//-------------------------------------------------------------------------------------------------
// Chernarus Defence Force (Leight's Opfor Pack) - BLUFOR // no support units
case 5:
{
_Unit_Pool_S = [
	"LOP_CDF_Infantry_Crewman", 
	"LOP_CDF_Infantry_Pilot", 
	"LOP_CDF_Infantry_TL",
	"LOP_CDF_Infantry_AA", 
	"LOP_CDF_Infantry_AA", 
	"LOP_CDF_Infantry_AT_Asst", 
	"LOP_CDF_Infantry_Corpsman", 
	"LOP_CDF_Infantry_Engineer", 
	"LOP_CDF_Infantry_GL", 
	"LOP_CDF_Infantry_MG", 
	"LOP_CDF_Infantry_MG_Asst", 
	"LOP_CDF_Infantry_Marksman", 
	"LOP_CDF_Infantry_Officer", 
	"LOP_CDF_Infantry_Rifleman",
	"LOP_CDF_Infantry_SL"
];
_Unit_Pool_V = [
	"LOP_CDF_BM21", 
	"LOP_CDF_KAMAZ_Transport", 
	"LOP_CDF_KAMAZ_Covered", 
	"LOP_CDF_UAZ" ,
	"LOP_CDF_UAZ_Open", 
	"LOP_CDF_Ural", 
	"LOP_CDF_Ural_open"
];
_Unit_Pool_T = [
	"LOP_CDF_BMD1", 
	"LOP_CDF_BMD2", 
	"LOP_CDF_BMP1", 
	"LOP_CDF_BMP1D", 
	"LOP_CDF_BMP2", 
	"LOP_CDF_BMP2D", 
	"LOP_CDF_BTR60", 
	"LOP_CDF_BTR70", 
	"LOP_CDF_T72BA", 
	"LOP_CDF_T72BB", 
	"LOP_CDF_ZSU234"
];
_Unit_Pool_A = [
	"LOP_CDF_Mi24V_AT", 
	"LOP_CDF_Mi24V_FAB", 
	"LOP_CDF_Mi24V_UPK23", 
	"LOP_CDF_Mi8MT_Cargo", 
	"LOP_CDF_Mi8MTV3_FAB", 
	"LOP_CDF_Mi8MTV3_UPK23"
];
};
//-------------------------------------------------------------------------------------------------
// Afghan Army (Leight's Opfor Pack) - BLUFOR
case 6:
{
_Unit_Pool_S = [
	"LOP_AA_Infantry_Crewman", 
	"LOP_AA_Infantry_Crewman",	//no heli
	"LOP_AA_Infantry_TL",
	"LOP_AA_Infantry_AT", 
	"LOP_AA_Infantry_AT_Asst", 
	"LOP_AA_Infantry_Corpsman", 
	"LOP_AA_Infantry_Engineer", 
	"LOP_AA_Infantry_GL", 
	"LOP_AA_Infantry_MG", 
	"LOP_AA_Infantry_MG_Asst", 
	"LOP_AA_Infantry_Marksman", 
	"LOP_AA_Infantry_Rifleman", 
	"LOP_AA_Infantry_SL"
];
_Unit_Pool_V = [
	"LOP_AA_M1025_W_M2", 
	"LOP_AA_M1025_W_Mk19", 
	"LOP_AA_M1025_D", 
	"LOP_AA_M998_D_4DR", 
	"LOP_AA_Offroad", 
	"LOP_AA_Offroad_M2", 
	"LOP_AA_Truck"
];
_Unit_Pool_T = [
	"LOP_AA_BMP1", 
	"LOP_AA_BMP2", 
	"LOP_AA_M113_W", 
	"LOP_AA_ZSU234"
];
_Unit_Pool_A = [];
};
//-------------------------------------------------------------------------------------------------
// Afghan Police (Leight's Opfor Pack) - BLUFOR
case 7:
{
_Unit_Pool_S = [
	"LOP_AA_Police_Rifleman",
	"LOP_AA_Police_Rifleman",	//no heli
	"LOP_AA_Police_TL",
	"LOP_AA_Police_Corpsman",
	"LOP_AA_Police_MG",
	"LOP_AA_Police_Rifleman",
	"LOP_AA_Police_SL"
];
_Unit_Pool_V = [
	"LOP_AA_Offroad_Police", 
	"LOP_AA_Offroad_M2_Police"
];
_Unit_Pool_T = [
	"LOP_AA_Offroad_Police", 
	"LOP_AA_Offroad_M2_Police"
];
_Unit_Pool_A = [];
};
//-------------------------------------------------------------------------------------------------
// ChDKZ (Leight's Opfor Pack) - OPFOR
case 8:
{
_Unit_Pool_S = [
	"LOP_ChDKZ_Infantry_Crewman", 
	"LOP_ChDKZ_Infantry_Pilot", 
	"LOP_ChDKZ_Infantry_TL",
	"LOP_ChDKZ_Infantry_AT", 
	"LOP_ChDKZ_Infantry_Bardak", 
	"LOP_ChDKZ_Infantry_Commander", 
	"LOP_ChDKZ_Infantry_Corpsman", 
	"LOP_ChDKZ_Infantry_Engineer", 
	"LOP_ChDKZ_Infantry_GL", 
	"LOP_ChDKZ_Infantry_MG", 
	"LOP_ChDKZ_Infantry_Marksman", 
	"LOP_ChDKZ_Infantry_Rifleman", 
	"LOP_ChDKZ_Infantry_SL"
];
_Unit_Pool_V = [
	"LOP_ChDKZ_BM21", 
	"LOP_ChDKZ_UAZ", 
	"LOP_ChDKZ_UAZ_Open", 
	"LOP_ChDKZ_Ural", 
	"LOP_ChDKZ_Ural_open"
];
_Unit_Pool_T = [
	"LOP_ChDKZ_BMP1", 
	"LOP_ChDKZ_BMP1D", 
	"LOP_ChDKZ_BMP2", 
	"LOP_ChDKZ_BMP2D", 
	"LOP_ChDKZ_BTR60", 
	"LOP_ChDKZ_BTR70", 
	"LOP_ChDKZ_T72BA", 
	"LOP_ChDKZ_T72BB", 
	"LOP_ChDKZ_ZSU234"
];
_Unit_Pool_A = [
	"LOP_ChDKZ_Mi8MT_Cargo", 
	"LOP_ChDKZ_Mi8MTV3_FAB", 
	"LOP_ChDKZ_Mi8MTV3_UPK23"
];
};
//-------------------------------------------------------------------------------------------------
// SLA (Leight's Opfor Pack) - OPFOR
case 9:
{
_Unit_Pool_S = [
	"LOP_SLA_Infantry_Crewman", 
	"LOP_SLA_Infantry_Pilot", 
	"LOP_SLA_Infantry_TL",
	"LOP_SLA_Infantry_AA",
	"LOP_SLA_Infantry_AT",
	"LOP_SLA_Infantry_AT_Asst",
	"LOP_SLA_Infantry_Corpsman",
	"LOP_SLA_Infantry_Engineer", 
	"LOP_SLA_Infantry_GL", 
	"LOP_SLA_Infantry_MG", 
	"LOP_SLA_Infantry_MG_Asst", 
	"LOP_SLA_Infantry_Marksman", 
	"LOP_SLA_Infantry_Officer", 
	"LOP_SLA_Infantry_Rifleman", 
	"LOP_SLA_Infantry_SL"
];
_Unit_Pool_V = [
	"LOP_SLA_BM21", 
	"LOP_SLA_UAZ", 
	"LOP_SLA_UAZ_Open", 
	"LOP_SLA_Ural", 
	"LOP_SLA_Ural_open"
];
_Unit_Pool_T = [
	"LOP_SLA_BMP1", 
	"LOP_SLA_BMP1D", 
	"LOP_SLA_BMP2", 
	"LOP_SLA_BMP2D", 
	"LOP_SLA_BTR60", 
	"LOP_SLA_BTR70", 
	"LOP_SLA_T72BA", 
	"LOP_SLA_T72BB", 
	"LOP_SLA_ZSU234"
];
_Unit_Pool_A = [
	"LOP_SLA_Mi8MT_Cargo", 
	"LOP_SLA_Mi8MTV3_FAB", 
	"LOP_SLA_Mi8MTV3_UPK23"
];
};
//-------------------------------------------------------------------------------------------------
// Novorussian force (Leight's Opfor Pack) - OPFOR
case 10:
{
_Unit_Pool_S = [
	"LOP_US_Infantry_Crewman", 
	"LOP_US_Infantry_Crewman",	//no heli
	"LOP_US_Infantry_TL",
	"LOP_US_Infantry_AA",
	"LOP_US_Infantry_AT",
	"LOP_US_Infantry_AT_Asst",
	"LOP_US_Infantry_Corpsman",
	"LOP_US_Infantry_Engineer", 
	"LOP_US_Infantry_GL", 
	"LOP_US_Infantry_MG", 
	"LOP_US_Infantry_MG_Asst", 
	"LOP_US_Infantry_Marksman", 
	"LOP_US_Infantry_Officer", 
	"LOP_US_Infantry_Rifleman", 
	"LOP_US_Infantry_SL"
];
_Unit_Pool_V = [
	"LOP_US_BM21", 
	"LOP_US_UAZ", 
	"LOP_US_UAZ_Open", 
	"LOP_US_Ural", 
	"LOP_US_Ural_open"
];
_Unit_Pool_T = [
	"LOP_US_BMP1", 
	"LOP_US_BMP1D", 
	"LOP_US_BMP2", 
	"LOP_US_BMP2D", 
	"LOP_US_BTR60", 
	"LOP_US_BTR70", 
	"LOP_US_T72BA", 
	"LOP_US_T72BB", 
	"LOP_US_ZSU234"
];
_Unit_Pool_A = [];
};
//-------------------------------------------------------------------------------------------------
// African civilians (Leight's Opfor Pack) - CIV
case 11:
{
_Unit_Pool_S = [
	"LOP_AFR_Civ_Man_01", 
	"LOP_AFR_Civ_Man_01_S", 
	"LOP_AFR_Civ_Man_02", 
	"LOP_AFR_Civ_Man_02_S", 
	"LOP_AFR_Civ_Man_03", 
	"LOP_AFR_Civ_Man_03_S", 
	"LOP_AFR_Civ_Man_04", 
	"LOP_AFR_Civ_Man_04_S", 
	"LOP_AFR_Civ_Man_05", 
	"LOP_AFR_Civ_Man_05_S", 
	"LOP_AFR_Civ_Man_06", 
	"LOP_AFR_Civ_Man_06_S"
];
_Unit_Pool_V = [
	"LOP_AFR_Civ_Hatchback", 
	"LOP_AFR_Civ_Offroad", 
	"LOP_AFR_Civ_Landrover", 
	"LOP_AFR_Civ_UAZ", 
	"LOP_AFR_Civ_UAZ_Open", 
	"LOP_AFR_Civ_Ural", 
	"LOP_AFR_Civ_Ural_open"
];
_Unit_Pool_T = [
	"LOP_AFR_Civ_Hatchback", 
	"LOP_AFR_Civ_Offroad", 
	"LOP_AFR_Civ_Landrover", 
	"LOP_AFR_Civ_UAZ", 
	"LOP_AFR_Civ_UAZ_Open", 
	"LOP_AFR_Civ_Ural", 
	"LOP_AFR_Civ_Ural_open"
];
_Unit_Pool_A = [];
};
//-------------------------------------------------------------------------------------------------
// Takistani civilians (Leight's Opfor Pack) - CIV
case 12:
{
_Unit_Pool_S = [
	"LOP_Tak_Civ_Man_01", 
	"LOP_Tak_Civ_Man_02", 
	"LOP_Tak_Civ_Man_04"
];
_Unit_Pool_V = [
	"LOP_TAK_Civ_Hatchback", 
	"LOP_TAK_Civ_Offroad", 
	"LOP_TAK_Civ_Landrover", 
	"LOP_TAK_Civ_UAZ", 
	"LOP_TAK_Civ_UAZ_Open", 
	"LOP_TAK_Civ_Ural", 
	"LOP_TAK_Civ_Ural_open"
];
_Unit_Pool_T = [
	"LOP_TAK_Civ_Hatchback", 
	"LOP_TAK_Civ_Offroad", 
	"LOP_TAK_Civ_Landrover", 
	"LOP_TAK_Civ_UAZ", 
	"LOP_TAK_Civ_UAZ_Open", 
	"LOP_TAK_Civ_Ural", 
	"LOP_TAK_Civ_Ural_open"
];
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
