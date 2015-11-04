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

switch (_TypNumber) do {

    //===================================================================================================//
    // by TheMagnetar                                                                                    //
    //===================================================================================================//

    //===================================================================================================//
    // BW: Bundeswehr (Flecktarn)                                                                        //
    //===================================================================================================//
    case 0: {
        _Unit_Pool_S = [
            "BWA3_Crew_Fleck","BWA3_Helipilot","BWA3_SL_Fleck",  // Crew, Helicopter Pilot and Squad Leader
            "BWA3_TL_Fleck",                                     // Fire Team Leader
            "BWA3_Rifleman_Fleck",                               // Rifleman
            "BWA3_Rifleman_lite_Fleck",                          // Light Rifleman
            //"BWA3_Rifleman_unarmed_Fleck",                       // Unarmed Rifleman
            "BWA3_RiflemanG27_Fleck",                            // Rifleman with G27
            "BWA3_RiflemanG28_Fleck",                            // Rifleman with G28
            "BWA3_Grenadier_Fleck",                              // Grenadier
            "BWA3_GrenadierG27_Fleck",                           // Grenadier with G27
            "BWA3_Autorifleman_Fleck",                           // Automatic Rifleman
            "BWA3_AutoriflemanMG5_Fleck",                        // Automatic Rifleman with MG5
            "BWA3_CombatLifeSaver_Fleck",                        // Combat Life Saver
            "BWA3_Marksman_Fleck",                               // Marksman
            "BWA3_SniperG82_Fleck",                              // Sniper
            "BWA3_Spotter_Fleck",                                // Spotter
            "BWA3_RiflemanAT_RGW90_Fleck",                       // Antitank with RGW90
            "BWA3_RiflemanAT_Pzf3_Fleck",                        // Antitank with Panzerfaust 3
            "BWA3_RiflemanAA_Fliegerfaust_Fleck",                // Antiair with Fliegerfaust
            "BWA3_Engineer_Fleck"                                // Engineer
        ];
        _Unit_Pool_V = [];
        _Unit_Pool_T = [
            "BWA3_Puma_Fleck",                            // IFV Puma
            "BWA3_Leopard2A6M_Fleck"                      // MBT Leopard 2A6M
        ];
        _Unit_Pool_A = [
            "BWA3_Tiger_Gunpod_PARS",                      // UH Tiger GunPod (PARS)
            "BWA3_Tiger_Gunpod_FZ",                        // UH Tiger GunPod (FZ)
            "BWA3_Tiger_Gunpod_Heavy",                     // UH Tiger GunPod (Heavy)
            "BWA3_Tiger_RMK_PARS",                         // UH Tiger RMK (PARS)
            "BWA3_Tiger_RMK_Universal",                    // UH Tiger RMK (Universal)
            "BWA3_Tiger_RMK_FZ",                           // UH Tiger RMK (FZ)
            "BWA3_Tiger_RMK_Heavy"                         // UH Tiger RMK (Heavy)
        ];
    };

    //===================================================================================================//
    // BW: Bundeswehr (Tropentarn)                                                                       //
    //===================================================================================================//
    case 1: {
        _Unit_Pool_S = [
            "BWA3_Crew_Fleck","BWA3_Helipilot","BWA3_TL_Tropen",  // Crew, Helicopter Pilot and Squad Leader
            "BWA3_TL_Tropen",                                     // Fire Team Leader
            "BWA3_Rifleman_Tropen",                               // Rifleman
            "BWA3_Rifleman_lite_Tropen",                          // Light Rifleman
            //"BWA3_Rifleman_unarmed_Tropen",                       // Light Rifleman
            "BWA3_RiflemanG27_Tropen",                            // Rifleman with G27
            "BWA3_RiflemanG28_Tropen",                            // Rifleman with G28
            "BWA3_Grenadier_Tropen",                              // Grenadier
            "BWA3_GrenadierG27_Tropen",                           // Grenadier with G27
            "BWA3_Autorifleman_Tropen",                           // Automatic Rifleman
            "BWA3_AutoriflemanMG5_Tropen",                        // Automatic Rifleman with MG5
            "BWA3_CombatLifeSaver_Tropen",                        // Combat Life Saver
            "BWA3_Marksman_Tropen",                               // Marksman
            "BWA3_SniperG82_Tropen",                              // Sniper
            "BWA3_Spotter_Tropen",                                // Spotter
            "BWA3_RiflemanAT_RGW90_Tropen",                       // Antitank with RGW90
            "BWA3_RiflemanAT_Pzf3_Tropen",                        // Antitank with Panzerfaust 3
            "BWA3_RiflemanAA_Fliegerfaust_Tropen",                // Antiair with Fliegerfaust
            "BWA3_Engineer_Tropen"                                // Engineer
        ];
        _Unit_Pool_V = [];
        _Unit_Pool_T = [
            "BWA3_Puma_Tropen",                            // IFV Puma
            "BWA3_Leopard2A6M_Tropen"                      // MBT Leopard 2A6M
        ];
        _Unit_Pool_A = [
            "BWA3_Tiger_Gunpod_PARS",                      // UH Tiger GunPod (PARS)
            "BWA3_Tiger_Gunpod_FZ",                        // UH Tiger GunPod (FZ)
            "BWA3_Tiger_Gunpod_Heavy",                     // UH Tiger GunPod (Heavy)
            "BWA3_Tiger_RMK_PARS",                         // UH Tiger RMK (PARS)
            "BWA3_Tiger_RMK_Universal",                    // UH Tiger RMK (Universal)
            "BWA3_Tiger_RMK_FZ",                           // UH Tiger RMK (FZ)
            "BWA3_Tiger_RMK_Heavy"                         // UH Tiger RMK (Heavy)
        ];
    };

    //===================================================================================================//
    // BW: Bundeswehr Fernspäher (Flecktarn)                                                             //
    //===================================================================================================//
    case 2: {
        _Unit_Pool_S = [
            "BWA3_Crew_Fleck","BWA3_Helipilot","BWA3_recon_TL_Fleck",  // Crew, Helicopter Pilot and Fire Team Leader
            "BWA3_recon_Fleck",                                        // Fernspäher Scout
            "BWA3_recon_LAT_Fleck",                                    // Fernspäher RGW90
            "BWA3_recon_Pioneer_Fleck",                                // Fernspäher Pioneer
            "BWA3_recon_Medic_Fleck",                                  // Fernspäher Paramedic
            "BWA3_recon_Marksman_Fleck",                               // Fernspäher Marksman
            "BWA3_recon_Radioman_Fleck"                                // Fernspäher radioman
        ];
        _Unit_Pool_V = [];
        _Unit_Pool_T = [];
        _Unit_Pool_A = [];
    };

    //===================================================================================================//
    // BW: Bundeswehr Fernspäher (Tropentarn)                                                            //
    //===================================================================================================//
    case 3: {
        _Unit_Pool_S = [
            "BWA3_Crew_Tropen","BWA3_Helipilot","BWA3_recon_TL_Tropen", // Crew, Helicopter Pilot and Squad Leader
            "BWA3_recon_Tropen",                                        // Fernspäher Scout
            "BWA3_recon_LAT_Tropen",                                    // Fernspäher RGW90
            "BWA3_recon_Pioneer_Tropen",                                // Fernspäher Pioneer
            "BWA3_recon_Medic_Tropen",                                  // Fernspäher Paramedic
            "BWA3_recon_Marksman_Tropen",                               // Fernspäher Marksman
            "BWA3_recon_Radioman_Tropen"                                // Fernspäher radioman
        ];
        _Unit_Pool_V = [];
        _Unit_Pool_T = [];
        _Unit_Pool_A = [];
    };

    //===================================================================================================//
    // DEFAULT                                                                                           //
    //===================================================================================================//
    Default {
        if (DAC_Basic_Value != 5) then {
            DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value",
            hintc "Error: DAC_Config_Units > No valid config number";
        };
        if (true) exitwith {};
    };
};

if (count _this == 2) then {
    _TempArray = _TempArray + [_Unit_Pool_S,_Unit_Pool_V,_Unit_Pool_T,_Unit_Pool_A];
} else {
    _TempArray = _Unit_Pool_V + _Unit_Pool_T + _Unit_Pool_A;
};
_TempArray
