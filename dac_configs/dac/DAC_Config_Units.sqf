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

// Takistan Army - regular (OPFOR)
  case 11:
  {
    _Unit_Pool_S = ["CUP_O_TK_Crew", "CUP_O_TK_Pilot", "CUP_O_TK_Soldier_SL", "CUP_O_TK_Soldier", "CUP_O_TK_Soldier_LAT", "CUP_O_TK_Soldier_AT", "CUP_O_TK_Medic", "CUP_O_TK_Soldier_MG", "CUP_O_TK_Soldier_GL", "CUP_O_TK_Soldier_AR", "CUP_O_TK_Soldier_AMG", "CUP_O_TK_Soldier_AAT", "CUP_O_TK_Soldier_AA"];
    _Unit_Pool_V = ["CUP_O_UAZ_MG_TKA", "CUP_O_UAZ_SPG9_TKA", "CUP_O_Ural_ZU23_TKA", "CUP_O_UAZ_Open_TKA", "CUP_O_BRDM2_TKA", "CUP_O_BTR60_TK"];
    _Unit_Pool_T = ["CUP_O_T55_TK", "CUP_O_T72_TKA", "CUP_O_M113_TKA", "CUP_O_BMP2_TKA", "CUP_O_T34_TKA"];
    _Unit_Pool_A = ["CUP_O_Mi17_TK", "CUP_O_UH1H_TKA"];
  };
 
//-------------------------------------------------------------------------------------------------

// Polish Armed Forces - Woodland (BLUFOR)
  case 12:
  {
    _Unit_Pool_S = ["PSZ_PL_WDL10_Soldier_Driver", "PSZ_PL_WDL10_Soldier_Pilot", "PSZ_PL_WDL10_Soldier_TL", "PSZ_PL_WDL10_Soldier_Ammo_PKM", "PSZ_PL_WDL10_Soldier_MG", "PSZ_PL_WDL10_Soldier_Grenadier_RPG7", "PSZ_PL_WDL10_Soldier_AA", "PSZ_PL_WDL10_Soldier_Ammo_RPG7", "PSZ_PL_WDL10_Soldier_Rifleman", "PSZ_PL_WDL10_Soldier_Medic"];
    _Unit_Pool_V = ["PSZ_PL_Star_944", "PSZ_PL_Zbik_M96_W", "PSZ_PL_Zbik_M97_W"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
 
//-------------------------------------------------------------------------------------------------

// Polish Armed Forces - Desert (BLUFOR)
  case 13:
  {
    _Unit_Pool_S = ["PSZ_PL_DES10_Soldier_Driver", "PSZ_PL_DES10_Soldier_Pilot", "PSZ_PL_DES10_Soldier_TL", "PSZ_PL_DES10_Soldier_Ammo_PKM", "PSZ_PL_DES10_Soldier_MG", "PSZ_PL_DES10_Soldier_Grenadier_RPG7", "PSZ_PL_DES10_Soldier_Medic", "PSZ_PL_DES10_Soldier_AA", "PSZ_PL_DES10_Soldier_Ammo_RPG7", "PSZ_PL_DES10_Soldier_Rifleman"];
    _Unit_Pool_V = ["PSZ_PL_Star_944", "PSZ_PL_Zbik_M96_D", "PSZ_PL_Zbik_M97_D"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
 
//-------------------------------------------------------------------------------------------------

// USMC (BLUFOR)
  case 14:
  {
    _Unit_Pool_S = ["CUP_B_USMC_Crew", "CUP_B_USMC_Pilot", "CUP_B_USMC_Soldier_TL", "CUP_B_USMC_Soldier_AR", "CUP_B_USMC_Medic", "CUP_B_USMC_Soldier_Marksman", "CUP_B_USMC_Engineer", "CUP_B_USMC_Soldier_GL", "CUP_B_USMC_Soldier_MG", "CUP_B_USMC_Soldier", "CUP_B_USMC_Soldier_LAT", "CUP_B_USMC_SpecOps"];
    _Unit_Pool_V = ["CUP_B_HMMWV_M2_USMC", "CUP_B_HMMWV_M1114_USMC", "CUP_B_HMMWV_Avenger_USMC", "CUP_B_HMMWV_TOW_USMC", "pook_CRAM", "CUP_B_LAV25M240_USMC", "CUP_B_M1126_ICV_M2_Woodland", "CUP_B_M1128_MGS_Woodland"];
    _Unit_Pool_T = ["CUP_B_M1A1_Woodland_USMC", "CUP_B_M1A2_TUSK_MG_USMC", "CUP_B_AAV_USMC"];
    _Unit_Pool_A = ["CUP_B_MH60S_FFV_USMC", "CUP_B_UH1Y_UNA_USMC", "CUP_B_UH1Y_GUNSHIP_USMC", "MELB_AH6M_L"];
  };
 
//-------------------------------------------------------------------------------------------------

// RACS (INDFOR)
  case 15:
  {
    _Unit_Pool_S = ["CUP_I_RACS_Crew", "CUP_I_RACS_Pilot", "CUP_I_RACS_SL", "CUP_I_RACS_MMG", "CUP_I_RACS_Medic", "CUP_I_RACS_GL", "CUP_I_RACS_Soldier", "CUP_I_RACS_Engineer", "CUP_I_RACS_Soldier_MAT", "CUP_I_RACS_Soldier_AA", "CUP_I_RACS_Soldier_HAT", "CUP_I_RACS_Sniper"];
    _Unit_Pool_V = ["CUP_I_LR_MG_RACS", "CUP_I_LR_Transport_RACS"];
    _Unit_Pool_T = ["CUP_I_T72_RACS", "CUP_I_M113_RACS", "CUP_I_M163_RACS"];
    _Unit_Pool_A = ["CUP_I_UH60L_RACS"];
  };
 
//-------------------------------------------------------------------------------------------------

// NAPA (INDFOR)
  case 16:
  {
    _Unit_Pool_S = ["CUP_I_GUE_Crew", "CUP_I_GUE_Pilot", "CUP_I_GUE_Commander", "CUP_I_GUE_Soldier_AR", "CUP_I_GUE_Ammobearer", "CUP_I_GUE_Officer", "CUP_I_GUE_Soldier_GL", "CUP_I_GUE_Sniper", "CUP_I_GUE_Soldier_MG", "CUP_I_GUE_Engineer", "CUP_I_GUE_Medic", "CUP_I_GUE_Soldier_AKS74", "CUP_I_GUE_Soldier_AKM", "CUP_I_GUE_Soldier_AKSU", "CUP_I_GUE_Soldier_AT", "CUP_I_GUE_Soldier_AA", "CUP_I_GUE_Soldier_AA2", "CUP_I_GUE_Saboteur", "CUP_I_GUE_Soldier_Scout"];
    _Unit_Pool_V = ["CUP_I_Datsun_PK_Random", "CUP_I_Ural_ZU23_NAPA", "CUP_I_BRDM2_NAPA"];
    _Unit_Pool_T = ["CUP_I_T34_NAPA", "CUP_I_T72_NAPA", "CUP_I_BMP2_NAPA"];
    _Unit_Pool_A = [];
  };
 
//-------------------------------------------------------------------------------------------------

// NAPA - ARMED CIVILIANS (INDFOR)
  case 17:
  {
    _Unit_Pool_S = ["CUP_I_GUE_Crew", "CUP_I_GUE_Pilot", "CUP_I_GUE_Forester", "CUP_I_GUE_Local", "CUP_I_GUE_Villager", "CUP_I_GUE_Woodman"];
    _Unit_Pool_V = ["CUP_I_Datsun_PK_Random", "CUP_I_Ural_ZU23_NAPA"];
    _Unit_Pool_T = ["CUP_I_T34_NAPA"];
    _Unit_Pool_A = [];
  };
 
//-------------------------------------------------------------------------------------------------

// TAKISTANI LOKALS (INDFOR)
  case 18:
  {
    _Unit_Pool_S = ["CUP_I_TK_GUE_Mechanic", "CUP_I_TK_GUE_Mechanic", "CUP_I_TK_GUE_Commander", "CUP_I_TK_GUE_Soldier_TL", "CUP_I_TK_GUE_Soldier_MG", "CUP_I_TK_GUE_Mechanic", "CUP_I_TK_GUE_Sniper" , "CUP_I_TK_GUE_Soldier_AT", "CUP_I_TK_GUE_Soldier_AAT" , "CUP_I_TK_GUE_Soldier_M16A2", "CUP_I_TK_GUE_Soldier_GL" , "CUP_I_TK_GUE_Guerilla_Enfield", "CUP_I_TK_GUE_Soldier_HAT", "CUP_I_TK_GUE_Soldier_AK_47S", "CUP_I_TK_GUE_Soldier", "CUP_I_TK_GUE_Demo", "CUP_I_TK_GUE_Guerilla_Medic", "CUP_I_TK_GUE_Soldier_AR", "CUP_I_TK_GUE_Soldier_AA"];
    _Unit_Pool_V = ["CUP_I_Datsun_PK_TK_Random", "CUP_I_Ural_ZU23_TK_Gue", "CUP_I_BRDM2_TK_Gue"];
    _Unit_Pool_T = ["CUP_I_BMP1_TK_GUE", "CUP_I_T34_TK_GUE", "CUP_I_T55_TK_GUE"];
    _Unit_Pool_A = [];
  };
 
//-------------------------------------------------------------------------------------------------

// TAKISTAN REBELS (OPFOR)
  case 19:
  {
    _Unit_Pool_S = ["CUP_O_TK_INS_Mechanic", "CUP_O_TK_INS_Mechanic", "CUP_O_TK_INS_Commander", "CUP_O_TK_INS_Soldier_TL", "CUP_O_TK_INS_Sniper", "CUP_O_TK_INS_Soldier_AT", "CUP_O_TK_INS_Soldier_AAT" , "CUP_O_TK_INS_Soldier_Enfield", "CUP_O_TK_INS_Soldier_FNFAL" , "CUP_O_TK_INS_Soldier", "CUP_O_TK_INS_Soldier_GL" , "CUP_O_TK_INS_Mechanic", "CUP_O_TK_INS_Bomber", "CUP_O_TK_INS_Soldier_MG", "CUP_O_TK_INS_Guerilla_Medic", "CUP_O_TK_INS_Guerilla_Medic", "CUP_O_TK_INS_Soldier_AA"];
    _Unit_Pool_V = ["CUP_O_LR_MG_TKM", "CUP_O_Ural_ZU23_TKM", "CUP_O_LR_SPG9_TKM"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
 
//-------------------------------------------------------------------------------------------------

// SLA - regular (OPFOR)
  case 20:
  {
    _Unit_Pool_S = ["CUP_O_sla_Crew", "CUP_O_sla_Pilot", "CUP_O_sla_Officer", "CUP_O_sla_Soldier_SL", "CUP_O_SLA_Spotter", "CUP_O_sla_Sniper", "CUP_O_sla_Soldier_AT", "CUP_O_sla_Soldier_LAT", "CUP_O_SLA_Soldier_Backpack", "CUP_O_sla_Soldier", "CUP_O_sla_Medic", "CUP_O_sla_Soldier_MG", "CUP_O_sla_Soldier_GL", "CUP_O_sla_Engineer", "CUP_O_sla_Soldier_AR", "CUP_O_sla_Soldier_AMG", "CUP_O_sla_Soldier_AAT", "CUP_O_sla_Soldier_AA"];
    _Unit_Pool_V = ["CUP_O_Ural_ZU23_SLA", "CUP_O_BRDM2_SLA", "CUP_O_BRDM2_HQ_SLA"];
    _Unit_Pool_T = ["CUP_O_BMP2_SLA", "CUP_O_T72_SLA"];
    _Unit_Pool_A = ["CUP_O_Mi8_SLA_2", "CUP_O_Mi8_SLA_1"];
  };
 
//-------------------------------------------------------------------------------------------------

// SLA - SPECIAL FORCES (OPFOR)
  case 21:
  {
    _Unit_Pool_S = ["CUP_O_sla_Crew", "CUP_O_sla_Pilot", "CUP_O_sla_SpecOps_TL", "CUP_O_sla_SpecOps_MG", "CUP_O_sla_SpecOps_LAT", "CUP_O_sla_SpecOps_Demo", "CUP_O_sla_SpecOps"];
    _Unit_Pool_V = ["CUP_O_Ural_ZU23_SLA", "CUP_O_BRDM2_SLA", "CUP_O_BRDM2_HQ_SLA"];
    _Unit_Pool_T = ["CUP_O_BMP2_SLA"];
    _Unit_Pool_A = ["CUP_O_Mi8_SLA_2", "CUP_O_Mi8_SLA_1"];
  };
 
//-------------------------------------------------------------------------------------------------

// SLA - Partisans (OPFOR)
  case 22:
  {
    _Unit_Pool_S = ["CUP_O_sla_Crew", "CUP_O_sla_Pilot", "CUP_O_Partisans_soldier_SL", "CUP_O_Partisans_Engineer", "CUP_O_Partisans_Soldier_AT", "CUP_O_Partisans_soldier_TTsKO", "CUP_O_Partisans_Medic", "CUP_O_Partisans_Soldier_MG", "CUP_O_sla_Miltia"];
    _Unit_Pool_V = ["CUP_O_Ural_ZU23_SLA", "CUP_O_BRDM2_HQ_SLA"];
    _Unit_Pool_T = ["CUP_O_BMP2_SLA", "CUP_O_T72_SLA"];
    _Unit_Pool_A = [];
  };
 
//-------------------------------------------------------------------------------------------------

// Takistan Army - Special Forces (OPFOR)
  case 23:
  {
    _Unit_Pool_S = ["CUP_O_TK_Crew", "CUP_O_TK_Pilot", "CUP_O_TK_SpecOps_TL", "CUP_O_TK_SpecOps_TL", "CUP_O_TK_SpecOps", "CUP_O_TK_SpecOps"];
    _Unit_Pool_V = ["CUP_O_LR_MG_TKA", "CUP_O_LR_SPG9_TKA", "CUP_O_LR_Transport_TKA", "CUP_O_BRDM2_HQ_TKA", "CUP_O_BTR60_TK"];
    _Unit_Pool_T = ["CUP_O_T72_TKA", "CUP_O_M113_TKA", "CUP_O_BMP2_TKA"];
    _Unit_Pool_A = ["CUP_O_UH1H_TKA"];
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
