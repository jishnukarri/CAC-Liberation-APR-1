/*
    File: iraqvsusarmyarsneal.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2020-05-11
    Last Update: 2025-01-18
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
    CUP Mods = https://steamcommunity.com/sharedfiles/filedetails/?id=583544987,https://steamcommunity.com/sharedfiles/filedetails/?id=497661914,https://steamcommunity.com/sharedfiles/filedetails/?id=541888371,https://steamcommunity.com/sharedfiles/filedetails/?id=497660133
    CPF = https://steamcommunity.com/workshop/filedetails/?id=1369691841 
    CTab = https://steamcommunity.com/sharedfiles/filedetails/?id=2511318948&searchtext=CTAB   
    */

    KPLIB_arsenalWeapons = [
        //M16 Series
        "CUP_arifle_M16A1",
        "CUP_arifle_M16A1GL",
        "CUP_arifle_M16A1GL_FS",
        "CUP_arifle_M16A1E1",
        "CUP_arifle_M16A1E1GL",
        "CUP_arifle_M16A2",
        "CUP_arifle_Colt727",
        "CUP_arifle_Colt727_M203",
        "CUP_arifle_M16A2_GL",
        "CUP_arifle_M16A4_Base",
        "CUP_arifle_M16A4_Grip",
        "CUP_arifle_M16A4_GL",
        //M4 Series
        "CUP_arifle_M4A1_black",
        "CUP_arifle_M4A1_MOE_short_black",
        "CUP_arifle_M4A1_MOE_short_desert",
        "CUP_arifle_M4A1_MOE_black",
        "CUP_arifle_M4A1_MOE_desert",
        "CUP_arifle_M4A1_standard_short_dsrt",
        "CUP_arifle_M4A1_standard_short_black",
        "CUP_arifle_M4A1_standard_dsrt",
        "CUP_arifle_M4A1_standard_black",
        "CUP_arifle_M4A1",
        "CUP_arifle_M4A1_desert_carryhandle",
        "CUP_arifle_M4A1_desert",
        "CUP_arifle_M4A3_black",
        "CUP_arifle_M4A3_desert",
        "CUP_arifle_M4A1_BUIS_GL",
        "CUP_arifle_M4A1_GL_carryhandle",
        "CUP_arifle_M4A1_GL_carryhandle_desert",
        "CUP_arifle_M4A1_BUIS_desert_GL",
        "CUP_arifle_M4A1_SOMMOD_black",
        "CUP_arifle_M4A1_SOMMOD_tan",
        //M249 Series
        "CUP_lmg_m249_SQuantoon",
        "CUP_lmg_m249_pip1",
        "CUP_lmg_m249_pip3",
        "CUP_lmg_m249_pip4",
        "CUP_lmg_M249_E1",
        "CUP_lmg_M249_E2",
        "CUP_lmg_m249_para",
        "CUP_lmg_m249_para_gl",
        //M240 Series
        "CUP_lmg_M240_B",
        "CUP_lmg_M240",
        //M60 Series
        "CUP_lmg_M60",
        "CUP_lmg_M60E4_norail",
        "CUP_lmg_M60E4_norail_desert",
        "CUP_lmg_M60E4",
        "CUP_M60A4_EP1",
        "CUP_lmg_M60E4_desert",


        //Sniper Rifles
        "CUP_srifle_M40A3",
        "CUP_arifle_SBR_black",
        "CUP_srifle_G22_des",
        "CUP_srifle_M14_DMR",
        
        //Secondary Weapons
        "CUP_hgun_Browning_HP",
        "CUP_hgun_Deagle",
        "CUP_hgun_Glock17",
//        "CUP_hgun_Mac10",

        //Launchers
        "CUP_launch_Javelin",
        "CUP_launch_FIM92Stinger",
        "CUP_launch_M136",
        "CUP_launch_M72A6_Special",
        "CUP_launch_Mk153Mod0",
        "CUP_launch_Mk153Mod0_blk",

        //CSW
        "CUP_2b14_carry",
        "ace_csw_carryMortarBaseplate",
        "ace_csw_kordCarryTripod",
        "ace_csw_kordCarryTripodLow",
        "CUP_m2_carry",
        "CUP_TOW2_carry",
        "ace_dragon_super",
        "ace_csw_m220CarryTripod"
    ];
    
    KPLIB_arsenalMagazines = [
        //M17 Ammo
        "CUP_21Rnd_9x19_M17_Black",
        "CUP_21Rnd_9x19_M17_Coyote",
        "CUP_17Rnd_9x19_glock17",
        "CUP_hgun_Deagle",
        //"CUP_30Rnd_45ACP_MAC10_M",
        "CUP_13Rnd_9x19_Browning_HP",
        "ACE_16Rnd_9x19_mag",
        //M16 Ammo
        "CUP_20Rnd_556x45_Stanag",
        "CUP_20Rnd_556x45_Stanag_Tracer_Red",
        "CUP_30Rnd_556x45_Emag",
        "CUP_30Rnd_556x45_Emag_Tracer_Red",
        "CUP_30Rnd_556x45_PMAG_BLACK_PULL",
        "CUP_30Rnd_556x45_PMAG_BLACK_PULL_Tracer_Red",
        "CUP_30Rnd_556x45_PMAG_COYOTE_PULL",
        "CUP_30Rnd_556x45_PMAG_COYOTE_PULL_Tracer_Red",
        "CUP_30Rnd_556x45_PMAG_OD_PULL",
        "CUP_30Rnd_556x45_PMAG_BLACK_Tracer_Red",
        "CUP_30Rnd_556x45_PMAG_OD_PULL_Tracer_Red",
        "CUP_30Rnd_556x45_PMAG_BLACK",
        "CUP_30Rnd_556x45_PMAG_COYOTE",
        "CUP_30Rnd_556x45_PMAG_COYOTE_Tracer_Red",
        "CUP_30Rnd_556x45_PMAG_OD",
        "CUP_30Rnd_556x45_PMAG_OD_Tracer_Red",
        "CUP_30Rnd_556x45_PMAG_BLACK_RPL",
        "CUP_30Rnd_556x45_PMAG_BLACK_RPL_Tracer_Red",
        "CUP_30Rnd_556x45_PMAG_COYOTE_RPL",
        "CUP_30Rnd_556x45_PMAG_COYOTE_RPL_Tracer_Red",
        "CUP_30Rnd_556x45_PMAG_OD_RPL",
        "CUP_30Rnd_556x45_Stanag_Mk16_black",
        "CUP_30Rnd_556x45_Stanag_Tracer_Red",
        "CUP_30Rnd_556x45_Stanag_Tracer_Yellow",
        "CUP_30Rnd_556x45_Stanag",
        "CUP_30Rnd_556x45_Stanag_L85_Tracer_Red",
        "CUP_30Rnd_556x45_X95",
        "CUP_30Rnd_556x45_X95_Tracer_Red",
        "CUP_60Rnd_556x45_SureFire",
        "CUP_60Rnd_556x45_SureFire_Tracer_Red",

        //SecondaryMags
        "CUP_1Rnd_HE_M203",
        "CUP_1Rnd_HEDP_M203",
        "CUP_FlareWhite_M203",
        "CUP_1Rnd_StarFlare_White_M203",
        "CUP_1Rnd_StarCluster_White_M203",
        "CUP_FlareGreen_M203",
        "CUP_1Rnd_StarCluster_Green_M203",
        "CUP_1Rnd_StarFlare_Green_M203",
        "CUP_FlareRed_M203",
        "CUP_1Rnd_StarCluster_Red_M203",
        "CUP_1Rnd_StarFlare_Red_M203",
        "CUP_FlareYellow_M203",
        "CUP_1Rnd_SmokeRed_M203",
        "CUP_1Rnd_Smoke_M203",
        "CUP_1Rnd_SmokeGreen_M203",
        "CUP_1Rnd_SmokeYellow_M203",
        "ACE_HuntIR_M203",
        "ACE_40mm_Flare_white",
        "ACE_40mm_Flare_green",
        "ACE_40mm_Flare_red",
        "CUP_7Rnd_50AE_Deagle",
        //M249 Ammo
        "CUP_100Rnd_TE4_Green_Tracer_556x45_M249",
        "CUP_100Rnd_TE4_Red_Tracer_556x45_M249",
        "CUP_100Rnd_TE4_Yellow_Tracer_556x45_M249",
        "CUP_200Rnd_TE4_Green_Tracer_556x45_L110A1",
        "CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1",
        "CUP_200Rnd_TE4_Yellow_Tracer_556x45_L110A1",
        "CUP_200Rnd_TE4_Green_Tracer_556x45_M249",
        "CUP_200Rnd_TE4_Green_Tracer_556x45_M249_Pouch",
        "CUP_200Rnd_TE1_Red_Tracer_556x45_M249",
        "CUP_200Rnd_TE1_Red_Tracer_556x45_M249_Pouch",
        "CUP_200Rnd_TE4_Red_Tracer_556x45_M249",
        "CUP_200Rnd_TE4_Red_Tracer_556x45_M249_Pouch",
        "CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249",
        "CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249_Pouch",
        //M240/60 Ammo
        "CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",
        "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",
        "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",
        "CUP_100Rnd_TE4_LRT4_Yellow_Tracer_762x51_Belt_M",
        //Sniper Ammo
        "CUP_5Rnd_762x51_M24",
        "CUP_1Rnd_762x51_CZ584",
        "CUP_5Rnd_762x67_G22",
        "CUP_20Rnd_762x51_DMR",
        "CUP_20Rnd_TE1_Red_Tracer_762x51_DMR",

        //Launcher Ammo
        "CUP_Javelin_M",
        "CUP_SMAW_HEDP_M",
        "CUP_SMAW_HEAA_M",
        "CUP_SMAW_NE_M",
        "Titan_AA",
        "CUP_Stinger_M",
        //Drones
        "Item_Mavic",
        "Item_Mavic3T",
        "DRNP_AR2_battery",

        //CSW
        "ace_csw_50Rnd_127x108_mag",
        "ace_csw_100Rnd_127x99_mag",
        "ace_csw_100Rnd_127x99_mag_green",
        "CUP_compats_122mm_wp",
        "ace_csw_20Rnd_20mm_G_belt",
        "ACE_1Rnd_82mm_Mo_HE",
        "ACE_1Rnd_82mm_Mo_Illum",
        "ACE_1Rnd_82mm_Mo_Smoke",
        "CUP_compats_TOW2_M"
    ];
    
    KPLIB_arsenalItems = [
        //Uniforms
        "CFP_75th_CRYE_V1b_Full",
        "CFP_75th_CRYE_V2_Full",
        "CFP_75th_CRYE_V2b_Full",
        "CFP_75th_CRYE_V3_Full",
        "CFP_75th_CRYE_V3b_Full",
        "CFP_75th_CRYE_V4_Full",
        "CFP_75th_CRYE_V4b_Full",
        "CFP_75th_CRYE_V1b_Sleeved",
        "CFP_75th_CRYE_V2_Sleeved",
        "CFP_75th_CRYE_V2b_Sleeved",
        "CFP_75th_CRYE_V3_Sleeved",
        "CFP_75th_CRYE_V3b_Sleeved",
        "CFP_75th_CRYE_V4_Sleeved",
        "CFP_75th_CRYE_V4b_Sleeved",
        "CFP_75th_CRYE_Tee2",
        "CFP_75th_CRYE_Tee",
        "CFP_75th_CRYEG3_V3",
        "CFP_75th_CRYEG3_V3b",
        "CFP_75th_CRYEG3_V1",
        "CFP_75th_CRYEG3_V1b",
        "CFP_75th_CRYEG3_V4",
        "CFP_75th_CRYEG3_V2",
        "CFP_75th_CRYEG3_V2b",
        "CFP_U_Crye_AOR1",
        "CUP_U_CRYE_G3C_AOR1",
        "CFP_U_Crye_AOR1_SS",
        "CFP_U_FieldUniform_acu",
        "CUP_U_B_USArmy_PilotOverall",


        //Vests
        "CUP_V_B_Armatus_US_MCam",
        "CUP_V_B_Armatus_MCam",
        "CFP_CarrierRig_Breacher_Multicam",
        "CFP_CarrierRig_Gunner_Multicam",
        "CFP_CarrierRig_Operator_Multicam",
        "CFP_LBT6094_breacher_Multicam",
        "CFP_LBT6094_MG_Multicam",
        "CFP_RAV_operator_Multicam",
        "CFP_US_pasgt_alice_SAW_Assistant_DBDU",
        "CFP_US_pasgt_alice_SAW_Assistant_ERDL",
        "CFP_US_pasgt_alice_SAW_DBDU",
        "CFP_US_pasgt_alice_SAW_ERDL",
        "CFP_US_pasgt_alice_engineer_DBDU",
        "CFP_US_pasgt_alice_engineer_ERDL",
        "CFP_US_pasgt_alice_Medic_DBDU",
        "CFP_US_pasgt_alice_officer_DBDU",
        "CFP_US_pasgt_alice_Pioneer_DBDU",
        "CFP_US_pasgt_alice_Rifleman_DBDU",
        "CFP_US_pasgt_alice_SquadLeader_DBDU",
        "CFP_US_pasgt_alice_TeamLead_DBDU",
        "CUP_V_B_RRV_MG",
        "CUP_V_B_RRV_TL_CB",
        "CUP_V_B_Ciras_MCam",
        "CUP_V_B_Ciras_Olive",
        "CUP_V_B_USArmy_PilotVest",
        "CUP_V_B_PilotVest",
        "CUP_V_CZ_vest20",
        "CUP_H_RUS_ZSH_Shield_Down",
        "CUP_H_RUS_ZSH_Shield_Up",

        //Headwear
        "CUP_H_LWHv2_MARPAT_des_NVG_gog_cov2",
        "CUP_H_LWHv2_MARPAT_des_NVG_gog2_cov2",
        "CUP_H_LWHv2_MARPAT_des_comms_cov_fr",
        "CUP_H_LWHv2_MARPAT_NVG_gog_cov2",
        "CUP_H_LWHv2_MARPAT_comms_cov_fr",
        "CUP_H_OpsCore_Covered_MCAM_SF",
        "CUP_H_OpsCore_Covered_MCAM_US_SF",
        "CFP_OpsC_Cov_Goggles_Off_AOR1",
        "CFP_OpsC_Cov_Goggles_Off",
        "CFP_OpsC_Med_AOR1",
        "CFP_OpsC_Uncov_Goggles",
        "CFP_OpsC_Uncov_Goggle_Off",
        "CFP_OpsC_Uncov_Shemagh",
        "CFP_OpsC_Uncovered",
        "CFP_PASGTHelmet_DBDU5",
        "CUP_H_PASGTv2_WDL_CF",
        "CFP_PASGTHelmet_DBDU4",
        "CFP_PASGTHelmet_DBDU6",
        "SP_PASGTHelmet_Green2",
        "CUP_H_PASGTv2_NVG_desert",
        "CUP_H_PASGTv2_NVG_DCU",
        "CFP_PASGTHelmet_DBDU2",
        "CUP_H_US_patrol_cap_DCU",
        "CUP_H_US_patrol_cap_desert",

        //Facewear
        "SP_Balaclava_USMulticam",
        "SP_Balaclava_Tan",
        "SP_Balaclava_UKMultiTerrain",
        "CFP_Oakley_Goggles_MCam",
        "CFP_Oakley_Goggles_MCam_Drk",
        "G_Bandanna_aviator",
        "G_Bandanna_Syndikat1",
        "CFP_Beard",
        "CUP_Beard_Blonde",
        "CUP_Beard_Brown",
        "CFP_Beard_Grey",
        "CUP_G_ESS_BLK_Scarf_Face_Blk",
        "CUP_G_ESS_KHK_Scarf_Face_Tan",
        "CUP_G_ESS_BLK_Scarf_Blk_Beard_Blonde",
        "CUP_G_ESS_BLK_Scarf_White_GPS_Beard_Blonde",
        "CUP_G_PMC_Facewrap_Black_Glasses_Dark",
        "CUP_G_PMC_Facewrap_Black_Glasses_Dark_Headset",
        "SP_Goggles_Black",
        "CFP_Foretex",
        "CUP_G_GPS",
        "CUP_G_Scarf_Face_Tan",
        "CFP_Neck_Wrap_Atacs",
        "CFP_Neck_Wrap_Atacs2",
        "CFP_Neck_Wrap2",
        "CFP_Neck_Wrap3",
        "CUP_G_Beard_Shades_Blonde",
        "CFP_Shemagh_Face_Atacsau",
        "CUP_G_Tan_Scarf_GPS_Beard",
        //NVGs
        "CFP_ANPVS15_Camo_V3",
        "CFP_ANPVS15_Camo_V1",
        "CUP_NVG_GPNVG_black",
        "CUP_NVG_GPNVG_tan",
        "SP_MouthScarf_Tan",
        
        //Binoculars
        "CUP_SOFLAM",
        "Laserdesignator",
        "Rangefinder",
        "ACE_VectorDay",
        "CUP_Vector21Nite",
        //Maps
        "ItemMap",
        "B_UavTerminal",
        "ItemGPS",
        "ItemRadio",
        "ItemCompass",
        "ACE_Altimeter",
        "ItemWatch",
        
        //Miscualaneous
        "ACE_CableTie",
        "ItemcTab",
        "ACE_EarPlugs",
        "ItemAndroid",
        "ItemcTabHCam",
        "ACE_IR_Strobe_Item",
        "ace_marker_flags_black",
        "ace_marker_flags_green",
        "ItemMicroDAGR",
        "ACE_rope12",
        "ACE_rope15",
        "ACE_rope18",
        "ACE_rope27",
        "ACE_rope3",
        "ACE_rope36",
        "ACE_rope6",
        "ACE_Sandbag_empty",
        "ACE_SpareBarrel",
        "ACE_SpraypaintBlack",
        "ACE_SpraypaintGreen",
        "ACE_UAVBattery",
        
        //AceMedical
        "ACE_adenosine",
        "ACE_fieldDressing",
        "ACE_elasticBandage",
        "ACE_packingBandage",
        "ACE_quikclot",
        "ACE_bloodIV",
        "ACE_bloodIV_250",
        "ACE_bloodIV_500",
        "ACE_bodyBag",
        "ACE_epinephrine",
        "ACE_morphine",
        "ACE_painkillers",
        "ACE_personalAidKit",
        "ACE_plasmaIV",
        "ACE_plasmaIV_250",
        "ACE_plasmaIV_500",
        "ACE_salineIV",
        "ACE_salineIV_250",
        "ACE_salineIV_500",
        "ACE_splint",
        "ACE_surgicalKit",
        "ACE_suture",
        "ACE_tourniquet",

        //AceTools/Explosives
        "ACE_ATragMX",
        "ACE_Cellphone",
        "ACE_Chemlight_Shield",
        "ACE_DAGR",
        "ACE_DeadManSwitch",
        "ACE_DefusalKit",
        "ACE_EntrenchingTool",
        "ACE_Fortify",
        "ACE_Flashlight_MX991",
        "ACE_HuntIR_monitor",
        "ACE_Kestrel4500",
        "ACE_Flashlight_KSF1",
        "ACE_Clacker",
        "ACE_Flashlight_XL50",
        "ACE_MapTools",
        "ACE_microDAGR",
        "MineDetector",
        "acex_intelitems_notepad",
        "ACE_PlottingBoard",
        "ACE_RangeCard",
        "ACE_SpottingScope",
        "ACE_Tripod",
        "ToolKit",
        "ACE_wirecutter",
        "TrainingMine_Mag",
        "ACE_FlareTripMine_Mag",
        "APERSMine_Range_Mag",
        "APERSTripMine_Wire_Mag",
        "SLAMDirectionalMine_Wire_Mag",
        "CUP_PipeBomb_M",
        "APERSBoundingMine_Range_Mag",
        "ClaymoreDirectionalMine_Remote_Mag",
        "ATMine_Range_Mag",
        "DemoCharge_Remote_Mag",
        "CUP_Mine_M",
        "APERSMineDispenser_Mag",

        //Grednades
        "ACE_M14",
        "Chemlight_blue",
        "Chemlight_green",
        "ACE_Chemlight_IR",
        "ACE_CTS9",
        "ACE_Chemlight_White",
        "HandGrenade",
        "CUP_HandGrenade_M67",
        "CUP_HandGrenade_L109A1_HE",
        "CUP_HandGrenade_L109A2_HE",
        "ACE_M84",
        "SmokeShell",
        "CUP_HandGrenade_RGO",
        "MiniGrenade",

        //Scopes
        "CUP_optic_ACOG2",
        "CUP_optic_ACOG_TA01B_Black",
        "CUP_optic_SUSAT",
        "CUP_optic_ACOG_TA01B_RMR_Coyote",
        "CUP_optic_RCO",
        "CUP_optic_SB_3_12x50_PMII",
        "CUP_optic_SB_3_12x50_PMII_Tan",
        "CUP_optic_SB_11_4x20_PM_tan",
        "CUP_optic_SB_11_4x20_PM",
        "optic_Nightstalker",
        "optic_SOS",
        "ACE_optic_SOS_2D",
        "CUP_optic_AIMM_ZDDOT_BLK",
        "CUP_optic_ZDDot",
        "CUP_optic_MRad",
        "CUP_optic_LeupoldMk4_MRT_tan",
        "CUP_optic_LeupoldMk4_20x40_LRT",
        "optic_KHS_blk",
        "CUP_optic_HensoldtZO_RDS",
        "CUP_optic_HensoldtZO_RDS_desert",
        "optic_Holosight_smg",
        "optic_Holosight_smg_blk_F",
        "CUP_optic_Eotech533",
        "CUP_optic_G33_HWS_COYOTE",
        "CUP_optic_G33_HWS_BLK",
        "CUP_optic_Elcan_Coyote",
        "CUP_optic_Elcan_SpecterDR_RMR",
        "CUP_optic_Elcan_SpecterDR_KF_RMR",
        "CUP_optic_Elcan_SpecterDR_KF",
        "CUP_optic_Elcan_SpecterDR_black",
        "CUP_optic_Elcan_SpecterDR_KF",
        "CUP_optic_CWS_NV_RDS",
        "optic_Yorris",
        "CUP_optic_MicroT1_OD",
        "CUP_optic_MicroT1_low",
        "CUP_optic_MicroT1",
        "CUP_optic_AIMM_COMPM4_BLK",

        //Muzzles
        "CUP_muzzle_snds_FAMAS_Arid",
        "CUP_muzzle_snds_FAMAS",
        "CUP_muzzle_mfsup_Flashhider_556x45_Black",
        "ACE_muzzle_mzls_L",
        "CUP_muzzle_snds_G36_black",
        "CUP_muzzle_mfsup_SCAR_L",
        "CUP_muzzle_snds_SCAR_L",
        "CUP_muzzle_snds_M16",
        "CUP_muzzle_snds_M16_desert",
        "muzzle_snds_M",
        "muzzle_snds_m_snd_F",

        //Rails
        "CUP_acc_ANPEQ_15_Black",
        "CUP_acc_ANPEQ_15_OD_Top",
        "CUP_acc_ANPEQ_15_Flashlight_Black_L",
        "CUP_acc_ANPEQ_15_Top_Flashlight_Black_L",
        "CUP_acc_ANPEQ_2_grey",
        "CUP_acc_ANPEQ_2_Black_Top",
        "CUP_acc_ANPEQ_2_Flashlight_Black_L",
        "CUP_acc_ANPEQ_2_Flashlight_Coyote_L",
        "CUP_acc_Zenit_2DS",
        "CUP_acc_XM8_light_module",
        "acc_flashlight",

        //Biopods
        "bipod_01_F_blk",
        "bipod_01_F_mtp",
        "bipod_01_F_snd",
        "CUP_bipod_Harris_1A2_L_BLK",
        "CUP_bipod_Harris_1A2_L",
        "CUP_bipod_VLTOR_Modpod_black",
        "CUP_bipod_VLTOR_Modpod",
        "CUP_Bipod_G36",
        "CUP_bipod_VLTOR_Modpod_black"
    ];
    
    KPLIB_arsenalBackpacks = [
        "B_UAV_01_backpack_F",
        "B_UGV_02_Science_backpack_F",
        "CUP_B_UAVTerminal_Black",
        "CUP_B_AssaultPack_ACU",
        "CUP_B_AssaultPack_Coyote",
        "CFP_B_USPack_Mcam",
        "CUP_B_Raid_bag_SSO_Ataka_2_Khaki",
        "pook_spotternet_west4_Pack",
        "pook_spotternet_east4_Pack",
        "B_Carryall_cbr",
        "B_Carryall_mcamo",
        "CFP_Carryall_Multicam",
        "CFP_B_USPack_Mcam",
        "CUP_B_US_IIID_OEFCP",

        //ladder ace
        "ACE_TacticalLadder_Pack",

        //gun bags

        "CUP_B_Tow_Gun_Bag",
        "CUP_B_TOW_Tripod_Bag",
        "ace_gunbag_Tan",

        //bags
        "B_Kitbag_mcamo",
        "B_Kitbag_tan",
        "CFP_Kitbag_EDRL",
        "CFP_Kitbag_PolygonDesert",
        "CFP_Kitbag_Tropentarn",
        "CUP_B_RUS_Patrol_bag_6E5_Desert",
        "CUP_B_RUS_Patrol_bag_Desert",
        "CUP_B_RUS_Raid_bag_Desert",
        "CUP_B_Raid_bag_SSO_Ataka_2_Rug_Khaki",
        "CUP_B_Raid_bag_SSO_Ataka_2_Khaki",
        "CUP_B_AFU_IIID_MM14",
        "CUP_T10_Parachute_backpack",
        "CUP_B_Kord_Gun_Bag",
        "CUP_B_M2_Gun_Bag",
        "pook_spotternet_east15_Pack",
        "pook_spotternet_west15_Pack",
        "pook_spotternet_east17_Pack",
        "pook_spotternet_west17_Pack"
    ];