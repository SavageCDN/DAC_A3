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
//------------------------------------------------------------------------------------------------- 
// OPFOR RHS Russians								@rhs_afrf3
// Russian Motor Rifle Troops (MSV)	Моторизо́ванные стрелко́вые войска, МСВ		rhs_faction_msv
  case 0:
  {
    _Unit_Pool_S = [
		"rhs_msv_driver_armored","rhs_msv_combatcrew","rhs_msv_sergeant",
		"rhs_msv_rifleman",
		"rhs_msv_grenadier",
		"rhs_msv_at",						//grenadier RPG
		"rhs_msv_strelok_rpg_assist",		//grenadier RPG assistant
		"rhs_msv_aa",
		"rhs_msv_efreitor",
		"rhs_msv_engineer",
		"rhs_msv_machinegunner",
		"rhs_msv_machinegunner_assistant",
		"rhs_msv_marksman",
		"rhs_msv_medic",
		"rhs_msv_LAT",						//rifleman RPG-26
		"rhs_msv_RShG2"						//rifleman RShG2
		
	];
    _Unit_Pool_V = [
		"rhs_tigr_msv",						//MRAP	
		"RHS_UAZ_MSV_01",
		"rhs_uaz_open_MSV_01",
		"RHS_BM21_MSV_01",					//rocket truck
		"rhs_gaz66_msv",
		"rhs_gaz66o_msv",
		"rhs_gaz66_r142_msv",				//radio truck
		"rhs_gaz66_ap2_msv",				//ambulance
		"RHS_Ural_MSV_01",
		"rhs_gaz66_repair_msv",
		"RHS_Ural_Fuel_MSV_01"		
	];
    _Unit_Pool_T = [
		"rhs_btr60_msv",
		"rhs_btr70_msv",
		"rhs_btr80_msv",
		"rhs_btr80a_msv",
		"rhs_bmp1_msv",
		"rhs_bmp1d_msv",
		"rhs_bmp1k_msv",
		"rhs_bmp1p_msv",
		"rhs_brm1k_msv",					//para
		"rhs_bmp2_msv",
		"rhs_bmp2e_msv",
		"rhs_bmp2d_msv",
		"rhs_bmp2k_msv",
		"rhs_prp3_msv"						
	];
    _Unit_Pool_A = [];
  };
//------------------------------------------------------------------------------------------------- 
// BLUFOR RHS Americans							??
// US Army (Woodland)							rhs_faction_usarmy_wd
  case 1:
  {
    _Unit_Pool_S = [
		"rhsusf_army_ocp_combatcrewman","rhsusf_army_ocp_helipilot","rhsusf_army_ocp_teamleader",
		"rhsusf_army_ocp_rifleman",
		"rhsusf_army_ocp_riflemanl",		//light
		"rhsusf_army_ocp_riflemanat",		//M136
		"rhsusf_army_ocp_grenadier",		//grenadier
		"rhsusf_army_ocp_marksman",
		"rhsusf_army_ocp_medic",
		"rhsusf_army_ocp_machinegunner",
		"rhsusf_army_ocp_machinegunnera",	//MG assistant
		"rhsusf_army_ocp_engineer",			
		"rhsusf_army_ocp_autorifleman",
		"rhsusf_army_ocp_aa",				//Stinger
		"rhsusf_army_ocp_javelin"			//Javelin
		
	];
    _Unit_Pool_V = [								
		"rhsusf_m998_w_2dr_fulltop",
		"rhsusf_m998_w_2dr_halftop",
		"rhsusf_m998_w_2dr",					
		"rhsusf_m998_w_4dr_fulltop",
		"rhsusf_m998_w_4dr_halftop",
		"rhsusf_m998_w_4dr",
		"rhsusf_m113_usarmy",
		"rhsusf_m1025_w"
	];
    _Unit_Pool_T = [
		"RHS_M6_wd",
		"rhsusf_m109_usarmy",
		"RHS_M2A2_BUSKI_WD",		
		"RHS_M2A3_BUSKI_wd",
		"RHS_M2A3_BUSKIII_wd",
		"RHS_M2A2_wd",
		"RHS_M2A3_wd",
		"rhsusf_m1a1aimwd_usarmy",					
		"rhsusf_m1a1aim_tuski_wd",
		"rhsusf_m1a2sep1wd_usarmy",
		"rhsusf_m1a2sep1tuskiwd_usarmy"
	];
    _Unit_Pool_A = [];
  };
//------------------------------------------------------------------------------------------------- 
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
