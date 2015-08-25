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
// OPFOR		CAF Aggressors Africans			caf_ag_afr_p
  case 9:
  {
    _Unit_Pool_S = [
		"CAF_AG_AFR_P_AK47","CAF_AG_AFR_P_AK47","CAF_AG_AFR_P_SVD",
		"CAF_AG_AFR_P_AK47",
		"CAF_AG_AFR_P_AK74",
		"CAF_AG_AFR_P_GL",
		"CAF_AG_AFR_P_PK",
		"CAF_AG_AFR_P_RPK",
		"CAF_AG_AFR_P_RPG"
	];
    _Unit_Pool_V = [
		"CAF_AG_afr_p_Offroad",
		"CAF_AG_afr_p_Offroad_armed_01",
		"CAF_AG_afr_p_van_01"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// OPFOR		CAF Aggressors Middle Eastern	caf_ag_me_t
  case 10:
  {
    _Unit_Pool_S = [
		"CAF_AG_ME_T_AK47","CAF_AG_ME_T_AK47","CAF_AG_ME_T_SVD",
		"CAF_AG_ME_T_AK47",
		"CAF_AG_ME_T_AK74",
		"CAF_AG_ME_T_GL",
		"CAF_AG_ME_T_PK",
		"CAF_AG_ME_T_RPK",
		"CAF_AG_ME_T_RPG"
	];
    _Unit_Pool_V = [
		"CAF_AG_ME_T_Offroad",
		"CAF_AG_ME_T_Offroad_armed_01",
		"CAF_AG_ME_T_van_01"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// OPFOR		CAF Aggressors Europeans		caf_ag_eeur_r
  case 11:
  {
    _Unit_Pool_S = [
		"CAF_AG_EEUR_R_AK47","CAF_AG_EEUR_R_AK47","CAF_AG_EEUR_R_SVD",
		"CAF_AG_EEUR_R_AK47",
		"CAF_AG_EEUR_R_AK74",
		"CAF_AG_EEUR_R_GL",
		"CAF_AG_EEUR_R_PK",
		"CAF_AG_EEUR_R_RPK",
		"CAF_AG_EEUR_R_RPG"
	];
    _Unit_Pool_V = [
		"CAF_AG_eeur_r_Offroad",
		// "CAF_AG_eeur_r_Offroad_armed_01",
		"O_G_Offroad_01_armed_F",
		"CAF_AG_eeur_r_van_01"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// BLUFOR		CAF (WOODLAND)					CAF_TW		
  case 12:
  {
    _Unit_Pool_S = [
		"CAF_CREWMAN_TW","RCAF_CH147_PILOT_OD","CAF_SECTIONIC_TW",
		"CAF_SECTION2IC_TW",
		"CAF_RIFLEMAN_TW",
		"CAF_RIFLEMANAT_TW",
		"CAF_GRENADIER_TW",
		"CAF_C9GUNNER_TW",
		"CAF_C6GUNNER_TW",
		"CAF_GPMGASST_TW",
		"CAF_84GUNNER_TW",
		"CAF_ATASST_TW",
		"CAF_MEDIC_TW",
		"CAF_CBTENGINEER_TW",
		"CAF_VEHTECH_TW",
		"CAF_SNIPER_TW",
		"CAF_SPOTTER_TW",
		"CAF_RECCE_IC_TW",
		"CAF_RECCE_2IC_TW",
		"CAF_RECCE_C9_TW",
		"CAF_RECCE_SIG_TW"
	];
    _Unit_Pool_V = [
		"caf_HLVW_support",
		"caf_HLVW_open",
		"caf_HLVW_covered",
		"CAF_Quadbike_OD",
		"CAF_TAPV_tw",
		"caf_tapv_50_tw",
		"caf_tapv_gl_tw"
	];
    _Unit_Pool_T = [
		"caf_lav3_isc",
		"CAF_LeopardC2_TW"
	];
    _Unit_Pool_A = [
		"CAF_CH146_F",
		"CAF_CH146_GRIFFON_F",	//medevac
		"CH_147F"
	];
  };
//-------------------------------------------------------------------------------------------------
// BLUFOR		CAF (ARID)						CAF_AR		
  case 13:
  {
    _Unit_Pool_S = [
		"CAF_CREWMAN_AR","RCAF_CH147_PILOT_AR","CAF_SECTIONIC_AR",
		"CAF_SECTION2IC_AR",
		"CAF_RIFLEMAN_AR",
		"CAF_RIFLEMANAT_AR",
		"CAF_GRENADIER_AR",
		"CAF_C9GUNNER_AR",
		"CAF_C6GUNNER_AR",
		"CAF_GPMGASST_AR",
		"CAF_84GUNNER_AR",
		"CAF_ATASST_AR",
		"CAF_MEDIC_AR",
		"CAF_CBTENGINEER_AR",
		"CAF_VEHTECH_AR",
		"CAF_SNIPER_AR",
		"CAF_SPOTTER_AR",
		"CAF_RECCE_IC_AR",
		"CAF_RECCE_2IC_AR",
		"CAF_RECCE_C9_AR",
		"CAF_RECCE_SIG_AR"
	];
    _Unit_Pool_V = [
		"caf_HLVW_support_ar",
		"caf_HLVW_open_AR",
		"caf_HLVW_covered_ar",
		"CAF_Quadbike_AR",
		"CAF_TAPV_ar",
		"caf_tapv_50_ar",
		"caf_tapv_gl_ar"
	];
    _Unit_Pool_T = [
		"caf_lav3_isc_D",
		"CAF_LeopardC2_AR"
	];
    _Unit_Pool_A = ["CAF_CH146_F_D"];
  };
 //-------------------------------------------------------------------------------------------------
// BLUFOR		CAF JTF2						????		
  case 14:
  {
    _Unit_Pool_S = [
		"JTF2_ASSAULTER","RCAF_CH146_PILOT_OD","JTF2_ASSAULTER_TL",	
		"JTF2_ASSAULTER_MG",
		"JTF2_ASSAULTER_MED",
		"JTF2_ASSAULTER_EXP",
		"JTF2_ASSAULTER_MRK",
		"JTF2_ASSAULTER"
	];
    _Unit_Pool_V = ["JTF2_Offroad_armed_01"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = ["CAF_CH146_SF"];
  };
 
//-------------------------------------------------------------------------------------------------
// OPFOR 	CSAT	 (Light Urban Assault Force)			OPF_F
  case 15:
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
// OPFOR 	Takistani Army regulars 					@TKA_A3
  case 16:
   {
    _Unit_Pool_S = [
		"B_TKA_A3_Soldier_Crew", "B_TKA_A3_Soldier_Pilot", "B_TKA_A3_Soldier_SL",
		"B_TKA_A3_Soldier_MG",
		"B_TKA_A3_Soldier_AMG",
		"B_TKA_A3_Soldier_AR",
		"B_TKA_A3_Soldier_LAT",
		"B_TKA_A3_Soldier_AT",
		"B_TKA_A3_Soldier_AAT"
	];
    _Unit_Pool_V = [	// M113 and BTR60 are here, as they are 1 rocket dead, also added ural with AA gun.
		"TKA_A3_M113",
		"TKA_A3_UAZ_SPG9",
		"TKA_A3_Ural_ZU23",
		"TKA_A3_UAZ_MG",
		"TKA_A3_BTR60"
	]; 
    _Unit_Pool_T = [	// No T-55, since with using RHS gear and vehicles T-55 is too OP (2 javelin rockets = no damage done)
		"TKA_A3_BMP2",
		"TKA_A3_T34",
		"TKA_A3_T72"
	]; 
    _Unit_Pool_A = [	 // No Mi-24 since it might be too op in missions
		"TKA_A3_Mi17",
		"TKA_A3_Mi17_rockets"
	];
  };
//-------------------------------------------------------------------------------------------------
// Blufor		CDF					@CDF_A3 mixed with LOP CDF units
  case 17:
   {
    _Unit_Pool_S = [
		"B_CDF_A3_Soldier_Crew", "B_CDF_A3_Soldier_Pilot", "B_CDF_A3_Soldier_GL",
		"B_CDF_A3_Soldier_MG",
		"B_CDF_A3_Soldier_AR",
		"B_CDF_A3_Soldier_Medic",
		"B_CDF_A3_Soldier_RPG",
		"LOP_CDF_Infantry_Marksman"
	];
    _Unit_Pool_V = [
		"LOP_CDF_BTR60",
		"CDF_A3_UAZ_MG",
		"CDF_A3_UAZ_SPG9",
		"CDF_A3_Ural_ZU23"
	];
    _Unit_Pool_T = [
		"CDF_A3_BMP2",
		"LOP_CDF_BMP1",
		"CDF_A3_T72",
		"LOP_CDF_T72BA",
		"LOP_CDF_T72BB"
	];
    _Unit_Pool_A = [
		"CDF_A3_Mi17_rockets",
		"CDF_A3_Mi17"
	];
  };
//-------------------------------------------------------------------------------------------------
// Blufor			CDF					@CDF_A3 clean
  case 18:
   {
    _Unit_Pool_S = [
		"B_CDF_A3_Soldier_Crew", "B_CDF_A3_Soldier_Pilot", "B_CDF_A3_Soldier_GL",
		"B_CDF_A3_Soldier_MG",
		"B_CDF_A3_Soldier_AR",
		"B_CDF_A3_Soldier_Medic",
		"B_CDF_A3_Soldier_RPG"
	];
    _Unit_Pool_V = [
		"CDF_A3_UAZ_MG",
		"CDF_A3_UAZ_SPG9",
		"CDF_A3_Ural_ZU23"
	];
    _Unit_Pool_T = [
		"CDF_A3_BMP2",
		"CDF_A3_T72"
	];
    _Unit_Pool_A = [
		"CDF_A3_Mi17_rockets",
		"CDF_A3_Mi17"
	];
  };
//-------------------------------------------------------------------------------------------------
// moved LOP units to it's own .sqf file
//-------------------------------------------------------------------------------------------------
// INDEPENDENT	Russians digital flora camo			@sud_russians
  case 19:
  {
    _Unit_Pool_S = [
		"SUD_RU_Soldier_Crew", "SUD_RU_Soldier_HPilot", "SUD_RU_Soldier_TL",
		"SUD_RU_Soldier",
		"SUD_RU_Soldier_P",
		"SUD_RU_Soldier_AR",
		"SUD_RU_Soldier_MG",
		"SUD_RU_Soldier_GL",
		"SUD_RU_Soldier_Marksman",
		"SUD_RU_Soldier_Engineer",
		"SUD_RU_Soldier_Sapper",
		"SUD_RU_Soldier_Medic",
		"SUD_RU_Soldier_AT",
		"SUD_RU_Soldier_UAV"
	];
    _Unit_Pool_V = [
		"SUD_Kamaz_transport",
		"SUD_Kamaz_covered"
	];
    _Unit_Pool_T = [
		"RU_MBT_02_cannon_F",
		"RU_APC_BTR100_F",
		"RU_APC_Tracked_02_cannon_F",
		"RU_APC_Tracked_02_AA_F"
	];
    _Unit_Pool_A = [
		"SUD_KA60_RU",
		"SUD_MI48_RU"
	];
  };
//-------------------------------------------------------------------------------------------------  
// INDEPENDENT	Russians SURPAT Camo					@sud_russians
  case 20:
  {
    _Unit_Pool_S = [
		"SUD_RU_Soldier_Crew_S", "SUD_RU_Soldier_HPilot", "SUD_RU_Soldier_TL_S",
		"SUD_RU_Soldier_S",
		"SUD_RU_Soldier_P_S",
		"SUD_RU_Soldier_AR_S",
		"SUD_RU_Soldier_MG_S",
		"SUD_RU_Soldier_GL_S",
		"SUD_RU_Soldier_Marksman_S",
		"SUD_RU_Soldier_Engineer_S",
		"SUD_RU_Soldier_Sapper_S",
		"SUD_RU_Soldier_Medic_S",
		"SUD_RU_Soldier_AT_S"
	];
    _Unit_Pool_V = [
		"SUD_Kamaz_transport",
		"SUD_Kamaz_covered"
	];
    _Unit_Pool_T = [
		"RU_MBT_02_cannon_F",
		"RU_APC_BTR100_F",
		"RU_APC_Tracked_02_cannon_F",
		"RU_APC_Tracked_02_AA_F"
	];
    _Unit_Pool_A = [
		"SUD_KA60_RU",
		"SUD_MI48_RU"
	];
  };
//-------------------------------------------------------------------------------------------------  
// INDEPENDENT	Russians Specnaz						@sud_russians
  case 21:
  {
    _Unit_Pool_S = [
		"SUD_RU_Soldier_Crew", "SUD_RU_Soldier_HPilot", "SUD_RU_Soldier_Specnaz_TL",
		"SUD_RU_Soldier_Specnaz",
		"SUD_RU_Soldier_Specnaz_P",
		"SUD_RU_Soldier_Specnaz_UAV",
		"SUD_RU_Soldier_Specnaz_GL",
		"SUD_RU_Soldier_Specnaz_Engineer",
		"SUD_RU_Soldier_Specnaz_Sapper",
		"SUD_RU_Soldier_Specnaz_Medic",
		"SUD_RU_Soldier_Specnaz_Marksman",
		"SUD_RU_Soldier_Specnaz_HSniper",
		"SUD_RU_Soldier_Specnaz_Camo",
		"SUD_RU_Soldier_Specnaz_Spotter_Camo",
		"SUD_RU_Soldier_Specnaz_HSniper_Camo",
		"SUD_RU_Soldier_Specnaz_UAV"
	];
    _Unit_Pool_V = [
		"SUD_Kamaz_transport",
		"SUD_Kamaz_covered"
	];
    _Unit_Pool_T = [
		"RU_MBT_02_cannon_F",
		"RU_APC_BTR100_F",
		"RU_APC_Tracked_02_cannon_F",
		"RU_APC_Tracked_02_AA_F"
	];
    _Unit_Pool_A = [
		"SUD_KA60_RU",
		"SUD_MI48_RU"
	];
  };
//------------------------------------------------------------------------------------------------- 
// INDEPENDENT	Russians Specnaz SD					@sud_russians
  case 22:
  {
    _Unit_Pool_S = [
		"SUD_RU_Soldier_Crew", "SUD_RU_Soldier_HPilot", "SUD_RU_Soldier_Specnaz_TL_SD",
		"SUD_RU_Soldier_Specnaz_P_SD",
		"SUD_RU_Soldier_Specnaz_UAV_SD",
		"SUD_RU_Soldier_Specnaz_Engineer_SD",
		"SUD_RU_Soldier_Specnaz_Sapper_SD",
		"SUD_RU_Soldier_Specnaz_Medic_SD",
		"SUD_RU_Soldier_Specnaz_Marksman_SD"
	];
    _Unit_Pool_V = [
		"SUD_Kamaz_transport",
		"SUD_Kamaz_covered"
	];
    _Unit_Pool_T = [
		"RU_MBT_02_cannon_F",
		"RU_APC_BTR100_F",
		"RU_APC_Tracked_02_cannon_F",
		"RU_APC_Tracked_02_AA_F"
	];
    _Unit_Pool_A = [
		"SUD_KA60_RU",
		"SUD_MI48_RU"
	];
  };
//------------------------------------------------------------------------------------------------- 
// INDEPENDENT	PG Services (PMC)						@POMI_PMC
  case 23:
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
