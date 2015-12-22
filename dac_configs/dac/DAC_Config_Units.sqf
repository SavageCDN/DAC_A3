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
// OPFOR 		CSAT				OPF_F
  case 0:
  {
    _Unit_Pool_S = [
		//Vehicle crewman, Pilot, Group Leader
		"O_crew_F","O_Helipilot_F","O_Soldier_TL_F",
		//Rifleman
		"O_Soldier_F",
		//Rifleman lite
		"O_Soldier_lite_F",
		//Grenadier
		"O_Soldier_GL_F",
		//Autorifleman
		"O_Soldier_AR_F",
		//Assistant Autorifleman
		"O_Soldier_AAR_F",
		//Ammobearer
		"O_Soldier_A_F",
		//Rifleman AT
		"O_Soldier_LAT_F",
		//AT Specialist
		"O_Soldier_AT_F",
		//Assistant AT
		"O_Soldier_AAT_F",
		//AA Specialist
		"O_Soldier_AA_F",
		//Assistant AA
		"O_Soldier_AAA_F",
		//Explosives Specialist
		"O_soldier_exp_F",
		//Engineer
		"O_engineer_F",
		//Repair Specialist
		"O_soldier_repair_F",
		//Medic
		"O_medic_F",
		//Marksman
		"O_soldier_M_F",
		//Spotter
		"O_spotter_F",
		//Sniper
		"O_sniper_F"
	];
    _Unit_Pool_V = [
		//Quadbike
		"O_Quadbike_01_F",
		//Ifrit MRAP
		"O_MRAP_02_F",
		//Ifrit MRAP GMG
		"O_MRAP_02_gmg_F",
		//Ifrit MRAP HMG
		"O_MRAP_02_hmg_F",
		//Kamaz Truck covered
		"O_Truck_02_covered_F",
		//Kamaz Truck dump
		"O_Truck_02_transport_F",
		//Kamaz Ammo
		"O_Truck_02_Ammo_F",
		//Kamaz Repair
		"O_Truck_02_box_F",
		//Kamaz Fuel
		"O_Truck_02_fuel_F",
		//Kamaz Medical
		"O_Truck_02_medical_F"
	];
    _Unit_Pool_T = [
		//MSE-3 Marid APC
		"O_APC_Wheeled_02_rcws_F",
		//ZSU-99 Tigris
		"O_APC_Tracked_02_AA_F",
		//BTR-K Kamysh
		"O_APC_Tracked_02_cannon_F",
		//2S9 Sochor
		"O_MBT_02_arty_F",
		//T-100 Varsuk
		"O_MBT_02_cannon_F"
	];
    _Unit_Pool_A = [
		//Mi48 Attack Red
		"O_Heli_Attack_02_F",
		//Mi48 Atttack Black
		"O_Heli_Attack_02_black_F",
		//ORCA Transport armed
		"O_Heli_Light_02_F",
		//ORCA Transport Black unarmed
		"O_Heli_Light_02_unarmed_F"
	];
  };
//-------------------------------------------------------------------------------------------------
// BLUFOR 		NATO					BLU_F
  case 1:
  {
    _Unit_Pool_S = [
		//Vehicle crewman, Pilot, Group Leader
		"B_crew_F","B_Helipilot_F","B_Soldier_TL_F",
		//Rifleman
		"B_Soldier_F",
		//Rifleman lite
		"B_Soldier_lite_F",
		//Grenadier
		"B_Soldier_GL_F",
		//Autorifleman
		"B_Soldier_AR_F",
		//Assistant Autorifleman
		"B_Soldier_AAR_F",
		//Ammobearer
		"B_Soldier_A_F",
		//Rifleman AT
		"B_Soldier_LAT_F",
		//AT Specialist
		"B_Soldier_AT_F",
		//Assistant AT
		"B_Soldier_AAT_F",
		//AA Specialist
		"B_Soldier_AA_F",
		//Assistant AA
		"B_Soldier_AAA_F",
		//Explosives Specialist
		"B_soldier_exp_F",
		//Engineer
		"B_engineer_F",
		//Repair Specialist
		"B_soldier_repair_F",
		//Medic
		"B_medic_F",
		//Marksman
		"B_soldier_M_F",
		//Spotter
		"B_spotter_F",
		//Sniper
		"B_sniper_F"
	];
    _Unit_Pool_V = [
		//Quadbike
		"B_Quadbike_01_F",
		//Hunter MRAP
		"B_MRAP_01_F",
		//Hunter MRAP HMG
		"B_MRAP_01_hmg_F",
		//Hunter MRAP GL
		"B_MRAP_01_gmg_F",
		//HEMTT Transport covered
		"B_Truck_01_covered_F",
		//HEMTT Truck open
		"B_Truck_01_transport_F",
		//HEMTT Ammo
		"B_Truck_01_ammo_F",
		//HEMTT Repair
		"B_Truck_01_Repair_F",
		//HEMTT Fuel
		"B_Truck_01_fuel_F",
		//HEMTT Medical
		"B_Truck_01_medical_F"
	];
    _Unit_Pool_T = [
		//AMV-7 Marshall APC
		"B_APC_Wheeled_01_cannon_F",
		//IFV-6a Cheetah
		"B_APC_Tracked_01_AA_F",
		//IFV-6c Panther
		"B_APC_Tracked_01_rcws_F",
		//M4 Scorcher
		"B_MBT_01_arty_F",
		//M2A1 Slammer
		"B_MBT_01_cannon_F",
		//M2A1 Slammer UP
		"B_MBT_01_TUSK_F",
		//M5 Sandstorm MLRS
		"B_MBT_01_mlrs_F"
	];
    _Unit_Pool_A = [
		//AH9
		"B_Heli_Light_01_armed_F",
		//MH9
		"B_Heli_Light_01_F",
		//AH99
		"B_Heli_Attack_01_F",
		//Ghosthawk
		"B_Heli_Transport_01_F"	
	];
  };
//-------------------------------------------------------------------------------------------------
// INDEPENDENT 		AAF				IND_F
  case 2:
  {
    _Unit_Pool_S = [
		//Vehicle crewman, Pilot, Group Leader
		"I_crew_F","I_Helipilot_F","I_Soldier_TL_F",
		//Rifleman
		"I_Soldier_F",
		//Rifleman lite
		"I_Soldier_lite_F",
		//Grenadier
		"I_Soldier_GL_F",
		//Autorifleman
		"I_Soldier_AR_F",
		//Assistant Autorifleman
		"I_Soldier_AAR_F",
		//Ammobearer
		"I_Soldier_A_F",
		//Rifleman AT
		"I_Soldier_LAT_F",
		//AT Specialist
		"I_Soldier_AT_F",
		//Assistant AT
		"I_Soldier_AAT_F",
		//AA Specialist
		"I_Soldier_AA_F",
		//Assistant AA
		"I_Soldier_AAA_F",
		//Explosives Specialist
		"I_soldier_exp_F",
		//Engineer
		"I_engineer_F",
		//Repair Specialist
		"I_soldier_repair_F",
		//Medic
		"I_medic_F",
		//Marksman
		"I_soldier_M_F",
		//Spotter
		"I_spotter_F",
		//Sniper
		"I_sniper_F"
	];
    _Unit_Pool_V = [
		//Quadbike
		"I_Quadbike_01_F",
		//Strider
		"I_MRAP_03_F",
		//Strider GMG
		"I_MRAP_03_gmg_F",
		//Strider HMG
		"I_MRAP_03_hmg_F",
		//Kamaz Truck covered
		"I_Truck_02_covered_F",
		//Zamak Truck
		"I_Truck_02_transport_F",
		//Zamak Ammo
		"I_Truck_02_ammo_F",
		//Zamak Repair
		"I_Truck_02_box_F",
		//Zamak Fuel
		"I_Truck_02_fuel_F",
		//Zamak Medical
		"I_Truck_02_medical_F"
	];
    _Unit_Pool_T = [
		//AFV-4 Gorgon
		"I_APC_Wheeled_03_cannon_F",
		//FV-720 Mora
		"I_APC_tracked_03_cannon_F",
		//MBT-52 Kuma
		"I_MBT_03_cannon_F"
	];
    _Unit_Pool_A = [
		//WY-55 Hellcat
		"I_Heli_light_03_F",
		//WY-55 Hellcat (green)
		"I_Heli_light_03_unarmed_F",
		//CH-49 Mohawk
		"ch49ind"
	];
  };
//-------------------------------------------------------------------------------------------------
// Civilians				CIV_F
  case 3:
  {
    _Unit_Pool_S = [
		"C_man_w_worker_F","C_man_pilot_F","C_man_1",
		"C_man_polo_1_F",
		"C_man_polo_2_F",
		"C_man_polo_3_F",
		"C_man_polo_4_F",
		"C_man_polo_5_F",
		"C_man_polo_6_F",
		"C_man_1_1_F",
		"C_man_1_2_F",
		"C_man_1_3_F",
		"C_man_shorts_1_F",
		"C_man_shorts_2_F",
		"C_man_shorts_3_F",
		"C_man_p_shorts_1_F",
		"C_man_hunter_1_F",
		"C_man_p_beggar_F",
		"C_man_p_fugitive_F"
	];
    _Unit_Pool_V = [
		"C_Van_01_box_F",
		"C_Van_01_transport_F",
		"C_Hatchback_01_sport_F",
		"C_Hatchback_01_F",
		"C_Quadbike_01_F",
		"C_Offroad_01_F"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// OPFOR 		CSAT (Recon)			OPF_F
  case 4:
  {
    _Unit_Pool_S = [
		//Vehicle crewman, Pilot, Group Leader
		"O_crew_F","O_Helipilot_F","O_recon_TL_F",
		//Recon Scout
		"O_recon_F",
		//Recon Scout AT
		"O_recon_LAT_F",
		//Recon JTAC
		"O_recon_JTAC_F",
		//Rifleman AT
		"O_Soldier_LAT_F",
		//Explosives Specialist
		"O_recon_exp_F",
		//Recon Medic
		"O_recon_medic_F",
		//Recon Marksman
		"O_recon_M_F"
	];
    _Unit_Pool_V = [
		//Quadbike
		"O_Quadbike_F",
		//Ifrit
		"O_MRAP_02_F"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [
		//ORCA Transport armed
		"O_Heli_Light_02_F",
		//ORCA Transport Black unarmed
		"O_Heli_Light_02_unarmed_F"
	];
  };
 //-------------------------------------------------------------------------------------------------
 // BLUFOR			NATO (Recon)				BLU_F
  case 5:
  {
    _Unit_Pool_S = [
		//Vehicle crewman, Pilot, Group Leader
		"B_crew_F","B_Helipilot_F","B_recon_TL_F",
		//Recon Scout
		"B_recon_F",
		//Recon Scout AT
		"B_recon_LAT_F",
		//Recon JTAC
		"B_recon_JTAC_F",
		//Rifleman AT
		"B_Soldier_LAT_F",
		//Explosives Specialist
		"B_recon_exp_F",
		//Recon Medic
		"B_recon_medic_F",
		//Recon Marksman
		"B_recon_M_F"
	];
    _Unit_Pool_V = [
		//Quadbike
		"B_Quadbike_F",
		//Ifrit
		"B_MRAP_02_F"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [
		//AH9
		"B_Heli_Light_01_armed_F",
		//MH9
		"B_Heli_Light_01_F"
	];
  };
//-------------------------------------------------------------------------------------------------
// OPFOR			Rebels Red				OPF_G_F
  case 6:
  {
    _Unit_Pool_S = [
		"O_G_Soldier_F","O_G_Soldier_F","O_G_Soldier_SL_F",
		"O_G_Soldier_AR_F",
		"O_G_Soldier_LAT_F",
		"O_G_Soldier_A_F",
		"O_G_medic_F",
		"O_G_Soldier_F",
		"O_G_Soldier_GL_F",
		"O_G_Soldier_M_F",
		"O_G_engineer_F"
	];
    _Unit_Pool_V = [
		"O_G_Offroad_01_F",
		"O_G_Offroad_01_armed_F"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// BLUFOR		Rebels Blue				BLU_G_F
  case 7:
  {
    _Unit_Pool_S = [
		"B_G_Soldier_F","B_G_Soldier_F","B_G_Soldier_SL_F",
		"B_G_Soldier_AR_F",
		"B_G_Soldier_LAT_F",
		"B_G_Soldier_A_F",
		"B_G_medic_F",
		"B_G_Soldier_F",
		"B_G_Soldier_GL_F",
		"B_G_Soldier_M_F",
		"B_G_engineer_F"
	];
    _Unit_Pool_V = [
		"B_G_Quadbike_01_F",
		"B_G_Offroad_01_F",
		"B_G_Offroad_01_armed_F",
		"B_G_Van_01_transport_F"
	];
    _Unit_Pool_T = ["B_G_Van_01_fuel_F"];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// INDFOR		Rebels Green				IND_G_F
  case 8:
  {
    _Unit_Pool_S = [
		"I_G_Soldier_F","I_G_Soldier_F","I_G_Soldier_SL_F",
		"I_G_Soldier_AR_F",
		"I_G_Soldier_LAT_F",
		"I_G_Soldier_A_F",
		"I_G_medic_F",
		"I_G_Soldier_F",
		"I_G_Soldier_GL_F",
		"I_G_Soldier_M_F",
		"I_G_engineer_F"
	];
    _Unit_Pool_V = [
		"I_G_Offroad_01_F",
		"I_G_Offroad_01_armed_F"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// OPFOR 	CSAT	 (Light Urban Assault Force)			OPF_F
  case 9:
  {
   	_Unit_Pool_S = [
		"O_crew_F", "O_Helipilot_F", "O_soldierU_SL_F", 
		"O_soldierU_TL_F", 
		"O_soldierU_TL_F", 
		"O_soldierU_medic_F", 
		"O_soldierU_medic_F", 
		"O_soldierU_AR_F", 
		"O_soldierU_AR_F", 
		"O_soldierU_F", 
		"O_soldierU_F", 
		"O_soldierU_F", 
		"O_soldierU_F", 
		"O_soldierU_LAT_F", 
		"O_soldierU_LAT_F", 
		"O_soldierU_AT_F", 
		"O_soldierU_AAR_F" 
	];
	_Unit_Pool_V = [
		"O_MRAP_02_F",
		"O_MRAP_02_hmg_F"
	];
	_Unit_Pool_T = [
		"O_APC_Tracked_02_cannon_F",
		"O_APC_Wheeled_02_rcws_F"
	];
	_Unit_Pool_A = ["O_Heli_Light_02_F"];
  };

//------------------------------------------------------------------------------------------------- 
// INDEPENDENT	PG Services (PMC)						@POMI_PMC
  case 10:
  {
    _Unit_Pool_S = [
		"PMC_Engineer", "PMC_Helipilot", "PMC_TL",
		"PMC_Bodyguard1",
		"PMC_FieldSpecialist_LMG",
		"PMC_SecurityCon_MX",
		"PMC_SecurityCon_MXGL",
		"PMC_Medic",
		"PMC_Engineer",
		"PMC_Marksman"
	];
    _Unit_Pool_V = [];
    _Unit_Pool_T = [];
    _Unit_Pool_A = ["PMC_MH9"];
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
