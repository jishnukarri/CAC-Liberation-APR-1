/*
    File: custom.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2017-10-07
    Last Update: 2020-05-25
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Custom (default NATO) player preset.

    Needed Mods:
        - None

    Optional Mods:
        - CAC_FACTIONS
        - CUP All
        -CPF
 
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
KPLIB_b_fobBuilding     = "Land_Cargo_HQ_V3_F";                         // This is the main FOB HQ building.
KPLIB_b_fobBox          = "Base_WarfareBContructionSite";                     // This is the FOB as a container.
KPLIB_b_fobTruck        = "B_Truck_01_box_F";                           // This is the FOB as a vehicle.
KPLIB_b_arsenal         = "AmmoCrates_NoInteractive_Medium";                            // This is the virtual arsenal as portable supply crates.
KPLIB_b_mobileRespawn = ["CUP_B_BAF_Coyote_L2A1_D", "CUP_B_RHIB2Turret_USMC", "CFP_B_USARMY_2003_MH_6J_Little_Bird_DES_01"];                           // This is the mobile respawn (and medical) truck.
KPLIB_b_potato01        = "CFP_B_USARMY_2003_CH_47F_VIV_DES_01";              // This is Potato 01, a multipurpose mobile respawn as a helicopter.
KPLIB_b_crewUnit        = "CFP_B_USARMY_2003_Crewman_DES_01";                                   // This defines the crew for vehicles.
KPLIB_b_heliPilotUnit   = "CFP_B_USARMY_2003_Pilot_DES_01";                              // This defines the pilot for helicopters.
KPLIB_b_addHeli         = "CFP_B_USARMY_2003_UH_60M_DES_01";                          // These are the additional helicopters which spawn on the Freedom or at Chimera base.
KPLIB_b_addBoat         = "CFP_B_USMC_RHIB_Mk19_DES_01";                      // These are the boats which spawn at the stern of the Freedom.
KPLIB_b_logiTruck       = "CFP_B_USARMY_2003_MTVR_DES_01";                     // These are the trucks which are used in the logistic convoy system.
KPLIB_b_smallStorage    = "ContainmentArea_02_sand_F";                  // A small storage area for resources.
KPLIB_b_largeStorage    = "ContainmentArea_01_sand_F";                  // A large storage area for resources.
KPLIB_b_logiStation     = "Land_RepairDepot_01_tan_F";                  // The building defined to unlock FOB recycling functionality.
KPLIB_b_airControl      = "POOK_ANMPQ53_Base";                        // The building defined to unlock FOB air vehicle functionality.
KPLIB_b_slotHeli        = "Land_HelipadSquare_F";                       // The helipad used to increase the GLOBAL rotary-wing cap.
KPLIB_b_slotPlane       = "Land_AGS_hangar";                       // The hangar used to increase the GLOBAL fixed-wing cap.
KPLIB_b_crateSupply     = "CargoNet_01_box_F";                          // This defines the supply crates, as in resources.
KPLIB_b_crateAmmo       = "B_CargoNet_01_ammo_F";                       // This defines the ammunition crates.
KPLIB_b_crateFuel       = "CargoNet_01_barrels_F";                      // This defines the fuel crates.

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
KPLIB_b_infantry = [
    ["CFP_B_USARMY_2003_Rifleman_Light_DES_01",10,0,0],                                        // Rifleman (Light)
    ["CFP_B_USARMY_2003_Rifleman_DES_01",10,0,0],                                             // Rifleman
    ["CFP_B_USARMY_2003_Rifleman_AT_DES_01",15,0,0],                                         // Rifleman (AT)
    ["CFP_B_USARMY_2003_Grenadier_DES_01",15,0,0],                                          // Grenadier
    ["CFP_B_USARMY_2003_Automatic_Rifleman_DES_01",15,0,0],                                          // Autorifleman
    ["CFP_B_USARMY_2003_Machinegunner_DES_01",15,0,0],                                         // Heavygunner
    ["CFP_B_USARMY_2003_Marksman_DES_01",15,0,0],                                           // Marksman
    ["CFP_B_USARMY_2003_Marksman_DES_01",15,0,0],                                        // Sharpshooter
    ["CFP_B_USARMY_2003_AT_Specialist_Javelin_DES_01",20,0,0],                                         // AT Specialist
    ["CFP_B_USARMY_2003_AA_Specialist_DES_01",20,0,0],                                         // AA Specialist
    ["CFP_B_USARMY_2003_Medic_DES_01",15,0,0],                                               // Combat Life Saver
    ["CFP_B_USARMY_2003_Engineer_DES_01",15,0,0],                                            // Engineer
    ["CFP_B_USARMY_2003_EOD_Engineer_DES_01",15,0,0],                                         // Explosives Specialist
    ["CFP_B_USARMY_2003_SF_Rifleman_DES_01",15,0,0],                                               // Recon Scout
    ["CFP_B_USARMY_2003_AT_Specialist_DES_01",15,0,0],                                           // Recon Scout (AT)
    ["CFP_B_USARMY_2003_SF_Marksman_DES_01",15,0,0],                                             // Recon Marksman
    ["CFP_B_USARMY_2003_SF_Marksman_DES_01",15,0,0],                                  // Recon Sharpshooter
    ["CFP_B_USARMY_2003_SF_Medic_DES_01",15,0,0],                                         // Recon Paramedic
    ["CFP_B_USARMY_2003_SF_Explosives_Specialist_DES_01",15,0,0],                                           // Recon Demolition Expert
    ["CFP_B_USARMY_2003_Sniper_DES_01",15,5,0],                                              // Sniper
    ["CFP_B_USARMY_2003_Sniper_DES_01",15,5,0],                                         // Sniper (Arid)
    ["CFP_B_USARMY_2003_Sniper_DES_01",15,5,0],                                         // Sniper (Lush)
    ["CFP_B_USARMY_2003_Sniper_DES_01",15,5,0],                                        // Sniper (Semi-Arid)
    ["CFP_B_USARMY_2003_Spotter_DES_01",10,0,0],                                             // Spotter
    ["CFP_B_USARMY_2003_Crewman_DES_01",10,0,0],                                                // Crewman
    ["CFP_B_USARMY_2003_AT_Specialist_Javelin_DES_01",10,0,0],                                          // Para Trooper
    ["CFP_B_USARMY_2003_Pilot_DES_01",10,0,0],                                            // Helicopter Crew
    ["CFP_B_USARMY_2003_Pilot_DES_01",10,0,0],                                           // Helicopter Pilot
    ["CFP_B_USARMY_2003_Pilot_DES_01",10,0,0]                                                // Pilot
];

KPLIB_b_vehLight = [
    ["CFP_B_USARMY_2003_HMMWV_Unarmed_DES_01",10,10,20],                                     //CFP_B_USARMY_2003_HMMWV_Unarmed_DES_01
    ["CFP_B_USARMY_2003_M1151_Unarmed_DES_01",10,10,20],
    ["CFP_B_USARMY_2003_HMMWV_Transport_DES_01",20,10,20],
    ["CFP_B_USARMY_2003_MTVR_DES_01",20,10,10],
    ["CFP_B_USARMY_2003_HMMWV_Ambulance_DES_01",10,5,5],
    ["CFP_B_USARMY_2003_M1152_ECV_DES_01",10,0,0],
    ["CFP_B_USARMY_2003_HMMWV_SOV_M2_DES_01",10,10,5],
    ["CFP_B_USARMY_2003_HMMWV_SOV_Mk19_DES_01",20,10,10],
    ["CFP_B_USARMY_2003_HMMWV_M2_DES_01",10,10,10],
    ["CFP_B_USARMY_2003_M1165_GMV_M134_DES_01",10,10,10],
    ["CFP_B_USARMY_2003_M1151_M2_DES_01",10,10,10],
    ["CFP_B_USARMY_2003_M1151_MK19_DES_01",10,10,10]
];

KPLIB_b_vehHeavy = [
    ["CFP_B_USARMY_2003_HMMWV_M1151_M2_DES_01",25,20,20],
    ["CFP_B_USARMY_2003_HMMWV_MK19_DES_01",20,20,0],
    ["CFP_B_USARMY_2003_M1151_M2_Deployment_DES_01",20,20,0],
    ["CFP_B_USARMY_2003_HMMWV_TOW_DES_01",20,20,20],
    ["CFP_B_USARMY_2003_M1167_TOW_DES_01",20,20,20],
    ["CFP_B_USARMY_2003_M113A3_DES_01",25,25,25],
    ["CFP_B_USARMY_2003_M2A2_Bradley_IFV_DES_01",25,30,25],
    ["CFP_B_USARMY_2003_M2A3_ERA_Bradley_IFV_DES_01",25,25,25],
    ["CFP_B_USARMY_2003_M1A1_Abrams_DES_01",30,30,30],
    ["CFP_B_USARMY_2003_M1A2_Abrams_TUSK_DES_01",35,35,35],
    ["CFP_B_USARMY_2003_M6_Linebacker_DES_01",50,50,50],
    ["CFP_B_USARMY_2003_HMMWV_Avenger_DES_01",100,100,100],
    ["CFP_B_USARMY_2003_M270_MLRS_HE_DES_01",150,200,200]
];



KPLIB_b_vehAir = [
    ["CUP_B_AH6X_USA",50,50,50],                                  
    ["CFP_B_USARMY_2003_MH_6M_MELB_DES_01",100,50,50],
    ["CFP_B_USARMY_2003_MH_6J_Recon_DES_01",100,50,50],
    ["CFP_B_USARMY_2003_UH_60M_MEV_DES_01",100,70,50],
    ["USAF_RQ4A",50,70,70],
    ["CFP_B_USARMY_2003_MH_6M_Recon_DES_01",100,50,50],
    ["CFP_B_USARMY_2003_UH_60M_DES_01",100,100,100],
    ["CFP_B_USARMY_2003_CH_47F_DES_01",100,200,100],
    ["CFP_B_USARMY_2003_AH_6M_DES_01",150,200,150],
    ["CFP_B_USARMY_2003_AH_6J_DES_01",150,200,175],
    ["CFP_B_USARMY_2003_AH_64D_DES_01",200,200,175],
    ["USAF_MQ9",200,180,150],
    ["USAF_C130J",200,200,200],
    ["CFP_B_USARMY_2003_A10A_Thunderbolt_II_DES_01",200,200,200],
    ["USAF_A10",200,200,200],
    ["B_Plane_Fighter_01_F",200,200,200]
];

KPLIB_b_vehStatic = [
    ["CFP_B_USARMY_2003_M119_DES_01",50,50,50],                                             // Mk30A HMG .50
    ["CFP_B_USARMY_2003_M2_Machine_Gun_DES_01",50,50,50],                                        // Mk30 HMG .50 (Raised)
    ["CFP_B_USARMY_2003_M2_Minitripod_DES_01",50,50,50],                                           // Mk30 HMG .50 (Autonomous)
    ["CFP_B_USARMY_2003_M252_81mm_Mortar_DES_01",50,50,50],                                             // Mk32A GMG 20mm
    ["CFP_B_USARMY_2003_TOW_Tripod_DES_01",50,50,50],                                        // Mk32 GMG 20mm (Raised)
    ["CUP_B_CUP_Stinger_AA_pod_US",50,50,50],                                           // Mk32 GMG 20mm (Autonomous)
    ["pook_MIM104_PAC3_Base",250,500,0]                                     // MIM-145 Defender
];

KPLIB_b_objectsDeco = [
    ["Land_Cargo_House_V1_F",0,0,0],
    ["Land_Cargo_Patrol_V1_F",0,0,0],
    ["Land_Cargo_Tower_V1_F",0,0,0],
    ["Flag_NATO_F",0,0,0],
    ["Flag_US_F",0,0,0],
    ["Flag_UK_F",0,0,0],
    ["Flag_White_F",0,0,0],
    ["Land_Medevac_house_V1_F",0,0,0],
    ["Land_Medevac_HQ_V1_F",0,0,0],
    ["Flag_RedCrystal_F",0,0,0],
    ["CamoNet_BLUFOR_F",0,0,0],
    ["CamoNet_BLUFOR_open_F",0,0,0],
    ["CamoNet_BLUFOR_big_F",0,0,0],
    ["Land_PortableLight_single_F",0,0,0],
    ["Land_PortableLight_double_F",0,0,0],
    ["Land_LampSolar_F",0,0,0],
    ["Land_LampHalogen_F",0,0,0],
    ["Land_LampStreet_small_F",0,0,0],
    ["Land_LampAirport_F",0,0,0],
    ["Land_HelipadCircle_F",0,0,0], // Strictly aesthetic - as in it does not increase helicopter cap!
    ["Land_HelipadRescue_F",0,0,0], // Strictly aesthetic - as in it does not increase helicopter cap!
    ["PortableHelipadLight_01_blue_F",0,0,0],
    ["PortableHelipadLight_01_green_F",0,0,0],
    ["PortableHelipadLight_01_red_F",0,0,0],
    ["Land_CampingChair_V1_F",0,0,0],
    ["Land_CampingChair_V2_F",0,0,0],
    ["Land_CampingTable_F",0,0,0],
    ["MapBoard_altis_F",0,0,0],
    ["MapBoard_stratis_F",0,0,0],
    ["MapBoard_seismic_F",0,0,0],
    ["Land_Pallet_MilBoxes_F",0,0,0],
    ["Land_PaperBox_open_empty_F",0,0,0],
    ["Land_PaperBox_open_full_F",0,0,0],
    ["Land_PaperBox_closed_F",0,0,0],
    ["Land_DieselGroundPowerUnit_01_F",0,0,0],
    ["Land_ToolTrolley_02_F",0,0,0],
    ["Land_WeldingTrolley_01_F",0,0,0],
    ["Land_Workbench_01_F",0,0,0],
    ["Land_GasTank_01_blue_F",0,0,0],
    ["Land_GasTank_01_khaki_F",0,0,0],
    ["Land_GasTank_01_yellow_F",0,0,0],
    ["Land_GasTank_02_F",0,0,0],
    ["Land_BarrelWater_F",0,0,0],
    ["Land_BarrelWater_grey_F",0,0,0],
    ["Land_WaterBarrel_F",0,0,0],
    ["Land_WaterTank_F",0,0,0],
    ["Land_BagFence_Round_F",0,0,0],
    ["Land_BagFence_Short_F",0,0,0],
    ["Land_BagFence_Long_F",0,0,0],
    ["Land_BagFence_Corner_F",0,0,0],
    ["Land_BagFence_End_F",0,0,0],
    ["Land_BagBunker_Small_F",0,0,0],
    ["Land_BagBunker_Large_F",0,0,0],
    ["Land_BagBunker_Tower_F",0,0,0],
    ["Land_HBarrier_1_F",0,0,0],
    ["Land_HBarrier_3_F",0,0,0],
    ["Land_HBarrier_5_F",0,0,0],
    ["Land_HBarrier_Big_F",0,0,0],
    ["Land_HBarrierWall4_F",0,0,0],
    ["Land_HBarrierWall6_F",0,0,0],
    ["Land_HBarrierWall_corner_F",0,0,0],
    ["Land_HBarrierWall_corridor_F",0,0,0],
    ["Land_HBarrierTower_F",0,0,0],
    ["Land_CncBarrierMedium_F",0,0,0],
    ["Land_CncBarrierMedium4_F",0,0,0],
    ["Land_Concrete_SmallWall_4m_F",0,0,0],
    ["Land_Concrete_SmallWall_8m_F",0,0,0],
    ["Land_CncShelter_F",0,0,0],
    ["Land_CncWall1_F",0,0,0],
    ["Land_CncWall4_F",0,0,0],
    ["Land_Sign_WarningMilitaryArea_F",0,0,0],
    ["Land_Sign_WarningMilAreaSmall_F",0,0,0],
    ["Land_Sign_WarningMilitaryVehicles_F",0,0,0],
    ["Land_Razorwire_F",0,0,0],
    ["Land_ClutterCutter_large_F",0,0,0],
    //cup
    ["CUP_A2_tent_east_ep1",0,0,0],
    ["Land_fortified_nest_small_EP1",0,0,0],
    ["Land_Barrack2_EP1",0,0,0],
    ["Land_CamoNetB_EAST_EP1",0,0,0],
    ["Land_CamoNet_EAST_EP1",0,0,0],
    ["Land_fortified_nest_big_EP1",0,0,0],
    ["Land_fort_bagfence_round",0,0,0],
    ["Land_fort_bagfence_corner",0,0,0],
    ["Land_fort_bagfence_long",0,0,0],
    ["FenceWood",0,0,0],
    ["Land_CamoNetVar_EAST_EP1",0,0,0],
    ["Land_fort_artillery_nest_EP1",0,0,0],
    ["CUP_A2_tent2_west_ep1",0,0,0],
    ["Land_Fort_Watchtower_EP1",0,0,0],
    ["Land_HBarrier1",0,0,0],
    ["Land_fort_rampart_EP1",0,0,0],
    ["Land_CamoNetB_NATO_EP1",0,0,0],
    ["Land_CamoNet_NATO_EP1",0,0,0],
    ["Land_HBarrier_large",0,0,0],
    ["Land_HBarrier5",0,0,0],
    ["Land_CncWall1_F",0,0,0],
    ["Land_CncBarrierMedium_F",0,0,0],
    ["Land_BagFence_Round_F",0,0,0],
    ["Land_BagFence_Long_F",0,0,0],
    ["Land_BagFence_Short_F",0,0,0],
    ["Land_BagFence_Corner_F",0,0,0],
    ["Land_BagFence_End_F",0,0,0],
    ["Land_CncBarrierMedium4_F",0,0,0],
    ["Land_CamoNetVar_NATO_EP1",0,0,0],
    ["76n6ClamShell_EP1",0,0,0],
    ["Land_ScrapHeap_1_F",0,0,0],
    ["WaterPump_01_forest_F",0,0,0],
    ["WaterPump_01_sand_F",0,0,0],
    ["Misc_cargo_cont_small2",0,0,0],
    ["Land_HBarrier_1_F",0,0,0],
    ["Land_Cargo20_military_green_F",0,0,0],
    ["Land_Cargo10_military_green_F",0,0,0],
    ["Land_Ind_TankSmall2",0,0,0],
    ["Land_Cargo20_sand_F",0,0,0],
    ["Land_Cargo20_grey_F",0,0,0],
    ["Land_obstacle_run_duck",0,0,0],
    ["Land_HBarrier_5_F",0,0,0],
    ["Misc_cargo_cont_small",0,0,0],
    ["Land_Cargo10_sand_F",0,0,0],
    ["Land_Cargo10_grey_F",0,0,0],
    ["Land_obstacle_get_over",0,0,0],
    ["Land_HBarrier_3_F",0,0,0],
    ["Land_Pipes_large_F",0,0,0],
    ["Land_Pipes_small_F",0,0,0],
    ["Land_Ind_TankSmall",0,0,0],
    ["Misc_cargo_cont_net3",0,0,0],
    ["Land_Barracks_med",0,0,0],
    ["Land_Airstrip_LightSingle_F",0,0,0],
    ["Land_HelipadAirstrip_F",0,0,0]
];


KPLIB_b_vehSupport = [
    [KPLIB_b_arsenal,100,200,0],
    [(KPLIB_b_mobileRespawn select 0),50,0,0],
    [(KPLIB_b_mobileRespawn select 1),0,50,0],
	[(KPLIB_b_mobileRespawn select 2),0,0,50],
    [KPLIB_b_fobBox,300,500,0],
    [KPLIB_b_fobTruck,300,500,75],
    [KPLIB_b_smallStorage,0,0,0],
    [KPLIB_b_largeStorage,0,0,0],
    [KPLIB_b_logiStation,50,0,0],
    [KPLIB_b_airControl,200,0,0],
    [KPLIB_b_slotHeli,50,0,0],
    [KPLIB_b_slotPlane,75,0,0],
    ["ACE_medicalSupplyCrate_advanced",50,0,0],
    ["ACE_Box_82mm_Mo_HE",50,40,0],
    ["ACE_Box_82mm_Mo_Smoke",50,10,0],
    ["ACE_Box_82mm_Mo_Illum",50,10,0],
    ["ACE_Wheel",10,0,0],
    ["ACE_Track",10,0,0],
    ["USAF_missileCart_W_AGM114",50,150,0],                             // Missile Cart (AGM-114)
    ["USAF_missileCart_AGMMix",50,150,0],                               // Missile Cart (AGM-65 Mix)
    ["USAF_missileCart_AGM1",50,150,0],                                 // Missile Cart (AGM-65D)
    ["USAF_missileCart_AGM2",50,150,0],                                 // Missile Cart (AGM-65E)
    ["USAF_missileCart_AGM3",50,150,0],                                 // Missile Cart (AGM-65K)
    ["USAF_missileCart_AA1",50,150,0],                                  // Missile Cart (AIM-9M/AIM-120)
    ["USAF_missileCart_AA2",50,150,0],                                  // Missile Cart (AIM-9X/AIM-120)
    ["USAF_missileCart_GBU12_green",50,150,0],                          // Missile Cart (GBU12 Green)
    ["USAF_missileCart_GBU12_maritime",50,150,0],                       // Missile Cart (GBU12 Maritime)
    ["USAF_missileCart_GBU12",50,150,0],                                // Missile Cart (GBU12)
    ["USAF_missileCart_Gbu31",50,150,0],                                // Missile Cart (GBU31)
    ["USAF_missileCart_GBU39",50,150,0],                                // Missile Cart (GBU39)
    ["CFP_B_USMC_Towing_Tractor_DES_01",50,0,0],                               // Towing Tractor
    ["B_APC_Tracked_01_CRV_F",50,0,50],                             // CRV-6e Bobcat
    ["CFP_B_USARMY_2003_MTVR_Repair_DES_01",50,0,0],                                   // HEMTT Repair
    ["CFP_B_USARMY_2003_MTVR_Refuel_DES_01",50,0,0],                                    // HEMTT Fuel
    ["CFP_B_USARMY_2003_MTVR_Ammo_DES_01",50,0,0],                                   // HEMTT Ammo
    ["USAF_SlingLoad_Ammo",50,0,0],                   // M977A4 Repair
    ["USAF_SlingLoad_Fuel",50,0,0],                         // M978A4 Fuel
    ["USAF_SlingLoad_Repair",50,0,0],                   // M977A4 Ammo
    ["B_Slingload_01_Repair_F",50,0,0],                                // Huron Repair
    ["B_Slingload_01_Fuel_F",50,0,0],                                 // Huron Fuel
    ["B_Slingload_01_Ammo_F",50,0,0],                                  // Huron Ammo
    ["CAC_AA_Launchers_Ammo",0,0,0],
    ["CAC_AA_Launchers",0,0,0],
    ["CAC_AA_Jav_Launchers",0,0,0],
    ["CAC_AA_Fim_Launchers",0,0,0],
    ["CAC_Drones",0,0,0]
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
KPLIB_b_squadLight = [
    "CFP_B_USARMY_2003_Squad_Leader_DES_01",
    "CFP_B_USARMY_2003_Team_Leader_DES_01",
    "CFP_B_USARMY_2003_Grenadier_DES_01",
    "CFP_B_USARMY_2003_Automatic_Rifleman_DES_01",
    "CFP_B_USARMY_2003_Rifleman_AT_DES_01",
    "CFP_B_USARMY_2003_Team_Leader_DES_01",
    "CFP_B_USARMY_2003_Grenadier_DES_01",
    "CFP_B_USARMY_2003_Automatic_Rifleman_DES_01",
    "CFP_B_USARMY_2003_Asst_Auto_Rifleman_DES_01",
    "CFP_B_USARMY_2003_Medic_DES_01"
];

// Heavy infantry squad.
KPLIB_b_squadInf = [
    "CFP_B_USARMY_2003_Team_Leader_DES_01",
    "CFP_B_USARMY_2003_Automatic_Rifleman_DES_01",
    "CFP_B_USARMY_2003_Grenadier_DES_01",
    "CFP_B_USARMY_2003_Machinegunner_DES_01",
    "CFP_B_USARMY_2003_AA_Specialist_DES_01",
    "CFP_B_USARMY_2003_Medic_DES_01",
    "CFP_B_USARMY_2003_AT_Specialist_DES_01",
    "CFP_B_USARMY_2003_Marksman_DES_01",
    "CFP_B_USARMY_2003_Asst_AT_Specialist_DES_01",
    "CFP_B_USARMY_2003_Squad_Leader_DES_01"
];

// AT specialists squad.
KPLIB_b_squadAT = [
    "CFP_B_USARMY_2003_Squad_Leader_DES_01",
    "CFP_B_USARMY_2003_AT_Specialist_Javelin_DES_01",
    "CFP_B_USARMY_2003_Asst_AT_Specialist_Javelin_DES_01",
    "CFP_B_USARMY_2003_Asst_AT_Specialist_Javelin_DES_01",
    "CFP_B_USARMY_2003_Asst_AT_Specialist_DES_01",
    "CFP_B_USARMY_2003_Asst_AT_Specialist_Javelin_DES_01",
    "CFP_B_USARMY_2003_AT_Specialist_DES_01",
    "CFP_B_USARMY_2003_Medic_DES_01",
    "CFP_B_USARMY_2003_AT_Specialist_Javelin_DES_01"
];

// AA specialists squad.
KPLIB_b_squadAA = [
    "CFP_B_USARMY_2003_Squad_Leader_DES_01",
    "CFP_B_USARMY_2003_Medic_DES_01",
    "CFP_B_USARMY_2003_AA_Specialist_DES_01",
    "CFP_B_USARMY_2003_Grenadier_DES_01",
    "CFP_B_USARMY_2003_AA_Specialist_DES_01",
    "CFP_B_USARMY_2003_Sapper_DES_01",
    "CFP_B_USARMY_2003_AA_Specialist_DES_01",
    "CFP_B_USARMY_2003_Sapper_DES_01"
];

// Force recon squad.
KPLIB_b_squadRecon = [
    "CFP_B_USARMY_2003_SF_Team_Leader_DES_01",
    "CFP_B_USARMY_2003_SF_Explosives_Specialist_DES_01",
    "CFP_B_USARMY_2003_SF_Grenadier_DES_01",
    "CFP_B_USARMY_2003_SF_Medic_DES_01",
    "CFP_B_USARMY_2003_SF_Auto_Rifleman_DES_01",
    "CFP_B_USARMY_2003_SF_Marksman_DES_01",
    "CFP_B_USARMY_2003_SF_Rifleman_DES_01",
    "CFP_B_USARMY_2003_SF_Rifleman_DES_01",
    "CFP_B_USARMY_2003_SF_Grenadier_DES_01",
    "CFP_B_USARMY_2003_SF_Medic_DES_01"
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
KPLIB_b_squadPara = [
    "CFP_B_USARMY_2003_SF_Team_Leader_DES_01",
    "CFP_B_USARMY_2003_SF_Explosives_Specialist_DES_01",
    "CFP_B_USARMY_2003_SF_Grenadier_DES_01",
    "CFP_B_USARMY_2003_SF_Medic_DES_01",
    "CFP_B_USARMY_2003_SF_Auto_Rifleman_DES_01",
    "CFP_B_USARMY_2003_SF_Marksman_DES_01",
    "CFP_B_USARMY_2003_SF_Rifleman_DES_01",
    "CFP_B_USARMY_2003_SF_Rifleman_DES_01",
    "CFP_B_USARMY_2003_SF_Grenadier_DES_01",
    "CFP_B_USARMY_2003_SF_Medic_DES_01"
];

/*
    --- Vehicles to unlock ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
KPLIB_b_vehToUnlock = [
    "CFP_B_USARMY_2003_M1A2_Abrams_TUSK_DES_01",
    "CFP_B_USARMY_2003_M2A3_ERA_Bradley_IFV_DES_01",
    "CFP_B_USARMY_2003_M1167_TOW_DES_01",
    "CFP_B_USARMY_2003_A10A_Thunderbolt_II_DES_01",
    "USAF_C130J",
    "USAF_MQ9",
    "B_Plane_Fighter_01_F"
];