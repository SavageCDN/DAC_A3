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
		"C_man_polo_1_F","C_man_polo_2_F","C_man_polo_3_F","C_man_polo_4_F","C_man_polo_5_F","C_man_polo_6_F",
		"C_man_1_1_F","C_man_1_2_F","C_man_1_3_F",
		"C_man_shorts_1_F","C_man_shorts_2_F","C_man_shorts_3_F","C_man_p_shorts_1_F",
		"C_man_hunter_1_F","C_man_p_beggar_F","C_man_p_fugitive_F"
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
 // INDEPENDENT		 AAF (Recon)				IND_F
  case 6:
  {
    _Unit_Pool_S = [
		//Vehicle crewman, Pilot, Group Leader
		"I_crew_F","I_Helipilot_F","I_recon_TL_F",
		//Recon Scout
		"I_recon_F",
		//Recon Scout AT
		"I_recon_LAT_F",
		//Recon JTAC
		"I_recon_JTAC_F",
		//Rifleman AT
		"I_Soldier_LAT_F",
		//Explosives Specialist
		"I_recon_exp_F",
		//Recon Medic
		"I_recon_medic_F",
		//Recon Marksman
		"I_recon_M_F"
	];
    _Unit_Pool_V = [
		//Quadbike
		"I_Quadbike_F",
		//Strider
		"I_MRAP_03_F"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [];
  };
//-------------------------------------------------------------------------------------------------
// OPFOR			Rebels Red				OPF_G_F
  case 7:
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
  case 8:
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
  case 9:
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
  case 10:
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
  case 11:
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
  case 12:
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
  case 13:
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
  case 14:
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
  case 15:
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
  case 16:
  {
   	_Unit_Pool_S = [ "O_crew_F", "O_Helipilot_F", "O_soldierU_SL_F", "O_soldierU_TL_F", "O_soldierU_TL_F", "O_soldierU_medic_F", "O_soldierU_medic_F", "O_soldierU_AR_F", "O_soldierU_AR_F", "O_soldierU_F", "O_soldierU_F", "O_soldierU_F", "O_soldierU_F", "O_soldierU_LAT_F", "O_soldierU_LAT_F", "O_soldierU_AT_F", "O_soldierU_AAR_F" ];
	_Unit_Pool_V = ["O_MRAP_02_F","O_MRAP_02_hmg_F"];
	_Unit_Pool_T = ["O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_F"];
	_Unit_Pool_A = ["O_Heli_Light_02_F"];
  };
//-------------------------------------------------------------------------------------------------
// OPFOR 	Takistani Army regulars 					@kae_SZ
  case 17:
  {
    _Unit_Pool_S = [
		"kae_TK_crewman","kae_TK_pilot","kae_TK_FAL_SL",
		"kae_TK_rifleman","kae_TK_m16_rifleman","kae_TK_FAL_rifleman","kae_TK_FAL_rifleman_Ishapore",
		"kae_TK_rifle_AT","kae_TK_m16_rifle_AT","kae_TK_FAL_rifle_AT","kae_TK_lmg","kae_TK_mg",
		"kae_TK_AT","kae_TK_m16_AT","kae_TK_FAL_AT","kae_TK_medic","kae_TK_FAL_medic_Ishapore",
		"kae_TK_soldier_light","kae_TK_m16_soldier_light","kae_TK_FAL_soldier_light"
	];
    _Unit_Pool_V = ["Kae_UAZ_469_TK","Kae_UAZ_469_Open_TK"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = ["Kae_Mi_24p_TK_falanga","Kae_Mi_24p_TK","Kae_Mi_24v_TK","Kae_Mi_24v_TK_falanga"];
  }; //Left out Anti-Air Classes (Can ruin missions with Helicopter insertions if they are scattered over the map uncontrolled: "kae_TK_AA","kae_TK_m16_AA","kae_TK_FAL_AA",
//-------------------------------------------------------------------------------------------------
// OPFOR		Takistani Army Recruits 					@kae_SZ
  case 18:
  {
    _Unit_Pool_S = [
		"kae_TK_crewman","kae_TK_pilot","kae_TK_soldier_light",
		"kae_TK_FAL_rifleman_Ishapore","kae_TK_FAL_rifleman_Ishapore",
		"kae_TK_FAL_rifleman_Ishapore","kae_TK_FAL_rifleman_Ishapore",
		"kae_TK_FAL_rifleman_Ishapore","kae_TK_FAL_rifleman_Ishapore",
		"kae_TK_FAL_rifleman_Ishapore","kae_TK_FAL_rifleman_Ishapore",
		"kae_TK_FAL_rifleman_Ishapore","kae_TK_FAL_rifleman_Ishapore",
		"kae_TK_FAL_medic_Ishapore"
	];
    _Unit_Pool_V = [
		"Kae_UAZ_469_TK","Kae_UAZ_469_Open_TK"
	];
    _Unit_Pool_T = [];
    _Unit_Pool_A = ["Kae_Mi_24p_TK_falanga","Kae_Mi_24p_TK","Kae_Mi_24v_TK","Kae_Mi_24v_TK_falanga"];
  };
//-------------------------------------------------------------------------------------------------
// OPFOR		Takistani Army Special Forces 				@kae_SZ
  case 19:
  {
    _Unit_Pool_S = [
		"kae_TK_T_crewman","kae_TK_T_pilot","kae_TK_T_SL",
		"kae_TK_T_rifleman","kae_TK_T_rifleman_2","kae_TK_T_mg",
		"kae_TK_T_medic","kae_TK_T_marksman","kae_TK_T_AT"
	];
    _Unit_Pool_V = ["Kae_UAZ_469_TK","Kae_UAZ_469_Open_TK"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = ["Kae_Mi_24p_TK_falanga","Kae_Mi_24p_TK","Kae_Mi_24v_TK","Kae_Mi_24v_TK_falanga"];
  };
//-------------------------------------------------------------------------------------------------
// INDEPENDENT	South Zagorian Army Modern 			@kae_SZ
  case 20:
  {
    _Unit_Pool_S = [
		"kae_SZ_2013_crewman","kae_SZ_2013_pilot","kae_SZ_2013_SL",
		"kae_SZ_2013_rifleman_chest","kae_SZ_2013_rifleman_gloves","kae_SZ_2013_marksman",
		"kae_SZ_2013_marksman_545","kae_SZ_2013_lmg","kae_SZ_2013_mg","kae_SZ_2013_rifle_l",
		"kae_SZ_2013_rifle_AT","kae_SZ_2013_AT","kae_SZ_2013_rifleman","kae_SZ_2013_medic",
		"kae_SZ_2013_soldier_light"
	];
    _Unit_Pool_V = ["Kae_UAZ_469_SZ","Kae_UAZ_469_Open_SZ"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [
		"Kae_Mi_24p_SZ","Kae_Mi_24p_SZ_aa","Kae_Mi_24v_SZ","Kae_Mi_24v_SZ_aa",
		"Kae_Mi_24v_SZ_bmb","Kae_Mi_24vp_SZ","Kae_Mi_24vp_SZ_aa2","Kae_Mi_24vp_SZ_aa","Kae_Mi_24vp_SZ_at"
	];
  }; // Left out Troops : "kae_SZ_2013_general" "kae_SZ_2013_AA", "kae_SZ_2013_officer",
//-------------------------------------------------------------------------------------------------
// INDEPENDENT	South Zagorian Army Modern (Plains)		@kae_SZ
  case 21:
  {
    _Unit_Pool_S = [
		"kae_SZ_2013_crewman_P","kae_SZ_2013_pilot_P","kae_SZ_2013_SL_P",
		"kae_SZ_2013_rifleman_chest_P","kae_SZ_2013_rifleman_gloves_P","kae_SZ_2013_marksman_P",
		"kae_SZ_2013_marksman_545_P","kae_SZ_2013_lmg_P","kae_SZ_2013_mg_P",
		"kae_SZ_2013_rifle_l_P","kae_SZ_2013_rifle_AT_P","kae_SZ_2013_AT_P",
		"kae_SZ_2013_rifleman_P","kae_SZ_2013_medic_P","kae_SZ_2013_soldier_light_P"
	];
    _Unit_Pool_V = ["Kae_UAZ_469_SZ","Kae_UAZ_469_Open_SZ"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [
		"Kae_Mi_24p_SZ","Kae_Mi_24p_SZ_aa","Kae_Mi_24v_SZ","Kae_Mi_24v_SZ_aa",
		"Kae_Mi_24v_SZ_bmb","Kae_Mi_24vp_SZ","Kae_Mi_24vp_SZ_aa2","Kae_Mi_24vp_SZ_aa","Kae_Mi_24vp_SZ_at"
	];
  }; // Left out Troops : "kae_SZ_2013_general_P" "kae_SZ_2013_AA_P", "kae_SZ_2013_officer_P",
//-------------------------------------------------------------------------------------------------
// INDEPENDENT	South Zagorian Army Modern (Desert)		@kae_SZ
  case 22:
  {
    _Unit_Pool_S = [
		"kae_SZ_2013_crewman_D","kae_SZ_2013_Pilot_D","kae_SZ_2013_SL_D",
		"kae_SZ_2013_rifleman_chest_D","kae_SZ_2013_rifleman_gloves_D",
		"kae_SZ_2013_marksman_D","kae_SZ_2013_marksman_545_D",
		"kae_SZ_2013_lmg_D","kae_SZ_2013_mg_D",
		"kae_SZ_2013_rifle_l_D","kae_SZ_2013_rifle_AT_D","kae_SZ_2013_AT_D",
		"kae_SZ_2013_rifleman_D","kae_SZ_2013_medic_D","kae_SZ_2013_soldier_light_D"
	];
    _Unit_Pool_V = ["Kae_UAZ_469_SZ_D","Kae_UAZ_469_Open_SZ_D"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [
		"Kae_Mi_24p_SZ","Kae_Mi_24p_SZ_aa","Kae_Mi_24v_SZ","Kae_Mi_24v_SZ_aa",
		"Kae_Mi_24v_SZ_bmb","Kae_Mi_24vp_SZ","Kae_Mi_24vp_SZ_aa2","Kae_Mi_24vp_SZ_aa","Kae_Mi_24vp_SZ_at"
	];
  }; // Left out Troops : "kae_SZ_2013_general_D" "kae_SZ_2013_AA_D", "kae_SZ_2013_officer_D",
//-------------------------------------------------------------------------------------------------
// INDEPENDENT	South Zagorian Army Modern (UN)		@kae_SZ
  case 23:
  {
    _Unit_Pool_S = [
		"kae_SZ_2013_crewman_UN","kae_SZ_2013_Pilot_UN","kae_SZ_2013_SL_UN",
		"kae_SZ_2013_rifleman_chest_UN","kae_SZ_2013_rifleman_gloves_UN",
		"kae_SZ_2013_marksman_UN","kae_SZ_2013_marksman_545_UN",
		"kae_SZ_2013_lmg_UN","kae_SZ_2013_mg_UN",
		"kae_SZ_2013_rifle_l_UN","kae_SZ_2013_rifle_AT_UN",
		"kae_SZ_2013_AT_UN","kae_SZ_2013_rifleman_UN",
		"kae_SZ_2013_medic_UN","kae_SZ_2013_soldier_light_UN"
	];
    _Unit_Pool_V = ["Kae_UAZ_469_UN_SZ","Kae_UAZ_469_Open_UN_SZ"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [
		"Kae_Mi_24p_SZ","Kae_Mi_24p_SZ_aa","Kae_Mi_24v_SZ","Kae_Mi_24v_SZ_aa",
		"Kae_Mi_24v_SZ_bmb","Kae_Mi_24vp_SZ","Kae_Mi_24vp_SZ_aa2","Kae_Mi_24vp_SZ_aa","Kae_Mi_24vp_SZ_at"
	];
  }; // Left out Troops : "kae_SZ_2013_general_UN" "kae_SZ_2013_AA_UN", "kae_SZ_2013_officer_UN",
//-------------------------------------------------------------------------------------------------
// INDEPENDENT	South Zagorian Army Modern (UN Desert)	@kae_SZ
  case 24:
  {
    _Unit_Pool_S = [
		"kae_SZ_2013_crewman_UN_D","kae_SZ_2013_Pilot_UN_D","kae_SZ_2013_SL_UN_D",
		"kae_SZ_2013_rifleman_chest_UN_D","kae_SZ_2013_rifleman_gloves_UN_D",
		"kae_SZ_2013_marksman_UN_D","kae_SZ_2013_marksman_545_UN_D",
		"kae_SZ_2013_lmg_UN_D","kae_SZ_2013_mg_UN_D",
		"kae_SZ_2013_rifle_l_UN_D","kae_SZ_2013_rifle_AT_UN_D",
		"kae_SZ_2013_AT_UN_D","kae_SZ_2013_rifleman_UN_D",
		"kae_SZ_2013_medic_UN_D","kae_SZ_2013_soldier_light_UN_D"
	];
    _Unit_Pool_V = ["Kae_UAZ_469_UN_SZ_D","Kae_UAZ_469_Open_UN_SZ_D"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [
		"Kae_Mi_24p_SZ","Kae_Mi_24p_SZ_aa","Kae_Mi_24v_SZ","Kae_Mi_24v_SZ_aa",
		"Kae_Mi_24v_SZ_bmb","Kae_Mi_24vp_SZ","Kae_Mi_24vp_SZ_aa2","Kae_Mi_24vp_SZ_aa","Kae_Mi_24vp_SZ_at"
	];
  }; // Left out Troops : "kae_SZ_2013_general_UN_D" "kae_SZ_2013_AA_UN_D", "kae_SZ_2013_officer_UN_D",
//-------------------------------------------------------------------------------------------------
// INDEPENDENT	South Zagorian Army Modern (UN Plains)	@kae_SZ
  case 25:
  {
    _Unit_Pool_S = [
		"kae_SZ_2013_crewman_UN_P","kae_SZ_2013_Pilot_UN_P","kae_SZ_2013_SL_UN_P",
		"kae_SZ_2013_rifleman_chest_UN_P","kae_SZ_2013_rifleman_gloves_UN_P",
		"kae_SZ_2013_marksman_UN_P","kae_SZ_2013_marksman_545_UN_P",
		"kae_SZ_2013_lmg_UN_P","kae_SZ_2013_mg_UN_P",
		"kae_SZ_2013_rifle_l_UN_P","kae_SZ_2013_rifle_AT_UN_P",
		"kae_SZ_2013_AT_UN_P","kae_SZ_2013_rifleman_UN_P",
		"kae_SZ_2013_medic_UN_P","kae_SZ_2013_soldier_light_UN_P"
	];
    _Unit_Pool_V = ["Kae_UAZ_469_UN_SZ","Kae_UAZ_469_Open_UN_SZ"];
    _Unit_Pool_T = [];
    _Unit_Pool_A = [
		"Kae_Mi_24p_SZ","Kae_Mi_24p_SZ_aa","Kae_Mi_24v_SZ","Kae_Mi_24v_SZ_aa",
		"Kae_Mi_24v_SZ_bmb","Kae_Mi_24vp_SZ","Kae_Mi_24vp_SZ_aa2","Kae_Mi_24vp_SZ_aa","Kae_Mi_24vp_SZ_at"
	];
  }; // Left out Troops : "kae_SZ_2013_general_UN_P" "kae_SZ_2013_AA_UN_P", "kae_SZ_2013_officer_UN_P",
//-------------------------------------------------------------------------------------------------
// INDEPENDENT	Russians digital flora camo			@sud_russians
  case 26:
  {
    _Unit_Pool_S = [
		"SUD_RU_Soldier_Crew","SUD_RU_Soldier_HPilot","SUD_RU_Soldier_TL",
		"SUD_RU_Soldier","SUD_RU_Soldier_P","SUD_RU_Soldier_AR",
		"SUD_RU_Soldier_MG","SUD_RU_Soldier_GL","SUD_RU_Soldier_Marksman",
		"SUD_RU_Soldier_Engineer","SUD_RU_Soldier_Sapper","SUD_RU_Soldier_Medic",
		"SUD_RU_Soldier_AT","SUD_RU_Soldier_UAV"
	];
    _Unit_Pool_V = ["SUD_Kamaz_transport","SUD_Kamaz_covered"];
    _Unit_Pool_T = ["RU_MBT_02_cannon_F","RU_APC_BTR100_F","RU_APC_Tracked_02_cannon_F","RU_APC_Tracked_02_AA_F"];
    _Unit_Pool_A = ["SUD_KA60_RU","SUD_MI48_RU"];
  };
//-------------------------------------------------------------------------------------------------  
// INDEPENDENT	Russians SURPAT Camo					@sud_russians
  case 27:
  {
    _Unit_Pool_S = [
		"SUD_RU_Soldier_Crew_S","SUD_RU_Soldier_HPilot","SUD_RU_Soldier_TL_S",
		"SUD_RU_Soldier_S","SUD_RU_Soldier_P_S","SUD_RU_Soldier_AR_S",
		"SUD_RU_Soldier_MG_S","SUD_RU_Soldier_GL_S","SUD_RU_Soldier_Marksman_S",
		"SUD_RU_Soldier_Engineer_S","SUD_RU_Soldier_Sapper_S","SUD_RU_Soldier_Medic_S",
		"SUD_RU_Soldier_AT_S"
	];
    _Unit_Pool_V = ["SUD_Kamaz_transport","SUD_Kamaz_covered"];
    _Unit_Pool_T = ["RU_MBT_02_cannon_F","RU_APC_BTR100_F","RU_APC_Tracked_02_cannon_F","RU_APC_Tracked_02_AA_F"];
    _Unit_Pool_A = ["SUD_KA60_RU","SUD_MI48_RU"];
  };
//-------------------------------------------------------------------------------------------------  
// INDEPENDENT	Russians Specnaz						@sud_russians
  case 28:
  {
    _Unit_Pool_S = [
		"SUD_RU_Soldier_Crew","SUD_RU_Soldier_HPilot","SUD_RU_Soldier_Specnaz_TL",
		"SUD_RU_Soldier_Specnaz","SUD_RU_Soldier_Specnaz_P","SUD_RU_Soldier_Specnaz_UAV",
		"SUD_RU_Soldier_Specnaz_GL","SUD_RU_Soldier_Specnaz_Engineer","SUD_RU_Soldier_Specnaz_Sapper",
		"SUD_RU_Soldier_Specnaz_Medic","SUD_RU_Soldier_Specnaz_Marksman","SUD_RU_Soldier_Specnaz_HSniper",
		"SUD_RU_Soldier_Specnaz_Camo","SUD_RU_Soldier_Specnaz_Spotter_Camo",
		"SUD_RU_Soldier_Specnaz_HSniper_Camo","SUD_RU_Soldier_Specnaz_UAV"
	];
    _Unit_Pool_V = ["SUD_Kamaz_transport","SUD_Kamaz_covered"];
    _Unit_Pool_T = ["RU_MBT_02_cannon_F","RU_APC_BTR100_F","RU_APC_Tracked_02_cannon_F","RU_APC_Tracked_02_AA_F"];
    _Unit_Pool_A = ["SUD_KA60_RU","SUD_MI48_RU"];
  };
//------------------------------------------------------------------------------------------------- 
// INDEPENDENT	Russians Specnaz SD					@sud_russians
  case 29:
  {
    _Unit_Pool_S = [
		"SUD_RU_Soldier_Crew","SUD_RU_Soldier_HPilot","SUD_RU_Soldier_Specnaz_TL_SD",
		"SUD_RU_Soldier_Specnaz_P_SD","SUD_RU_Soldier_Specnaz_UAV_SD",
		"SUD_RU_Soldier_Specnaz_Engineer_SD","SUD_RU_Soldier_Specnaz_Sapper_SD",
		"SUD_RU_Soldier_Specnaz_Medic_SD","SUD_RU_Soldier_Specnaz_Marksman_SD"
	];
    _Unit_Pool_V = ["SUD_Kamaz_transport","SUD_Kamaz_covered"];
    _Unit_Pool_T = ["RU_MBT_02_cannon_F","RU_APC_BTR100_F","RU_APC_Tracked_02_cannon_F","RU_APC_Tracked_02_AA_F"];
    _Unit_Pool_A = ["SUD_KA60_RU","SUD_MI48_RU"];
  };
//------------------------------------------------------------------------------------------------- 
// INDEPENDENT	PG Services (PMC)						@POMI_PMC
  case 30:
  {
    _Unit_Pool_S = [
		"PMC_Engineer","PMC_Helipilot","PMC_TL",
		"PMC_Bodyguard1","PMC_FieldSpecialist_LMG","PMC_SecurityCon_MX",
		"PMC_SecurityCon_MXGL","PMC_Medic","PMC_Engineer","PMC_Marksman"
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
