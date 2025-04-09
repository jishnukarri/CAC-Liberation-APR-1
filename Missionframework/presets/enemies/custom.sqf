/*
    File: saddamarmy.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2024-12-04
    Last Update: 2024-12-04
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        saddamarmy enemy preset.

    Needed Mods:
        - CPP
		- CAC Factions
        - CUP


    Optional Mods:
        - None
*/

// Enemy infantry classes
KPLIB_o_officer = "CFP_O_IQARMY_Officer_01";                                        // Officer
KPLIB_o_squadLeader = "CFP_O_IQARMY_Squad_Leader_01";                                 // Squad Leader
KPLIB_o_teamLeader = "CFP_O_IQARMY_Squad_Leader_01";                                  // Team Leader
KPLIB_o_sentry = "CFP_O_IQARMY_Explosive_Specialist_01";                                    // Rifleman (Lite)
KPLIB_o_rifleman = "CFP_O_IQARMY_RG_Rifleman_01";                                       // Rifleman
KPLIB_o_riflemanLAT = "CFP_O_IQARMY_RG_Rifleman_AT_01";                                // Rifleman (LAT)
KPLIB_o_grenadier = "CFP_O_IQARMY_RG_Grenadier_01";                                   // Grenadier
KPLIB_o_machinegunner = "CFP_O_IQARMY_RG_Machine_Gunner_01";                               // Autorifleman
KPLIB_o_heavyGunner = "CFP_O_IQARMY_RG_Auto_Rifleman_01";                                // Heavy Gunner
KPLIB_o_marksman = "CFP_O_IQARMY_RG_Sniper_01";                                     // Marksman
KPLIB_o_sharpshooter = "CFP_O_IQARMY_RG_Sniper_01";                              // Sharpshooter
KPLIB_o_sniper = "CFP_O_IQARMY_RG_Sniper_01";                                          // Sniper
KPLIB_o_atSpecialist = "CFP_O_IQARMY_RG_Rifleman_AT_01";                                // AT Specialist
KPLIB_o_aaSpecialist = "CFP_O_IQARMY_RG_AA_Specialist_01";                                // AA Specialist
KPLIB_o_medic = "CFP_O_IQARMY_Medic_01";                                            // Combat Life Saver
KPLIB_o_engineer = "CFP_O_IQARMY_RG_Explosive_Specialist_01";                                      // Engineer
KPLIB_o_paratrooper = "CFP_O_IQARMY_RG_Rifleman_01";                                 // Paratrooper

// Enemy vehicles used by secondary objectives.
KPLIB_o_mrap = "CFP_O_IQARMY_UAZ_01";                                           // Ifrit
KPLIB_o_mrapArmed = "CFP_O_IQARMY_UAZ_DShKM_01";                                  // Ifrit (HMG)
KPLIB_o_transportHeli = "CFP_O_IQARMY_Mi_8MT_01";                  // Mi-290 Taru (Bench)
KPLIB_o_transportTruck = "CFP_O_IQARMY_Ural_01";                        // Tempest Transport (Covered)
KPLIB_o_transportTruckAmmo = "CFP_O_IQARMY_Ural_Open_01";                  // Tempest Transport (Open) -> Has to be able to transport resource crates!
KPLIB_o_fuelTruck = "CFP_O_IQARMY_Ural_Refuel_01";                                // Tempest Fuel
KPLIB_o_ammoTruck = "CFP_O_IQARMY_Ural_Ammo_01";                                // Tempest Ammo
KPLIB_o_fuelContainer = "Land_fuel_tank_small";            // Taru Fuel Pod
KPLIB_o_ammoContainer = "VirtualReammoBox_small_F";            // Taru Ammo Pod
KPLIB_o_flag = "Iraq_Flag";                                           // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
KPLIB_o_militiaInfantry = [
    "CFP_O_IQARMY_Squad_Leader_01", 
    "CFP_O_IQARMY_Grenadier_01", 
    "CFP_O_IQARMY_Machine_Gunner_01", 
    "CFP_O_IQARMY_Asst_Machine_Gunner_01", 
    "CFP_O_IQARMY_Auto_Rifleman_01", 
    "CFP_O_IQARMY_Rifleman_AT_01", 
    "CFP_O_IQARMY_RG_Team_Leader_01", 
    "CFP_O_IQARMY_RG_Grenadier_01", 
    "CFP_O_IQARMY_RG_Machine_Gunner_01", 
    "CFP_O_IQARMY_RG_Asst_Machine_Gunner_01", 
    "CFP_O_IQARMY_RG_Auto_Rifleman_01"
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
KPLIB_o_militiaVehicles = [
    "CFP_O_IQARMY_UAZ_DShKM_01",                                                  // Qilin (armed)
	"CFP_O_IQARMY_BTR_60PB_01",
	"CFP_O_IQARMY_UAZ_AGS_30_01"
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
KPLIB_o_armyVehicles = [
    "CFP_O_IQARMY_Ural_ZU_23_01", 
    "CFP_O_IQARMY_BMP_2_01", 
    "CFP_O_IQARMY_UAZ_SPG_01", 
    "CFP_O_IQARMY_T55_01", 
    "CFP_O_IQARMY_UAZ_AGS_30_01"	
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
KPLIB_o_armyVehiclesLight = [
    "CFP_O_IQARMY_BMP_2_01", 
    "CFP_O_IQARMY_UAZ_SPG_01", 
    "CFP_O_IQARMY_UAZ_AGS_30_01", 
    "CFP_O_IQARMY_BTR_60PB_01",                                       // ZSU-39 Tigris
    "CFP_O_IQARMY_Podnos_2B14_01"];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehicles = [
    "CFP_O_IQARMY_UAZ_DShKM_01", 
    "CFP_O_IQARMY_UAZ_01", 
    "CFP_O_IQARMY_UAZ_Open_01", 
    "CFP_O_IQARMY_UAZ_Metis_01",
    "CFP_O_IQARMY_UAZ_SPG_01",
    "CFP_O_IQARMY_MT_LB_01",
    "CFP_O_IQARMY_T72_01", 
    "CFP_O_IQARMY_BTR_60PB_01",                                       // ZSU-39 Tigris
    "CFP_O_IQARMY_Podnos_2B14_01",
    "CFP_O_IQARMY_BM_21_01"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
KPLIB_o_battleGrpVehiclesLight = [
    "CFP_O_IQARMY_UAZ_DShKM_01", 
    "CFP_O_IQARMY_UAZ_01", 
    "CFP_O_IQARMY_UAZ_Open_01", 
    "CFP_O_IQARMY_UAZ_Metis_01",
    "CFP_O_IQARMY_UAZ_SPG_01",
    "CFP_O_IQARMY_MT_LB_01",
    "CFP_O_IQARMY_Podnos_2B14_01"

];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur. */
KPLIB_o_troopTransports = [
    "CFP_O_IQARMY_Ural_01"                             // Po-30 Orca (Armed)
];

// Enemy rotary-wings that will need to spawn in flight.
KPLIB_o_helicopters = [
    "CFP_O_IQARMY_Mi_24D_01", 
    "CFP_O_IQARMY_Mi_8MT_01"                                // Mi-48 Kajman
];

// Enemy fixed-wings that will need to spawn in the air.
KPLIB_o_planes = [
    "CFP_O_IQARMY_Su_25_Frogfoot_01"                                          // To-201 Shikra
];

// Enemy defence turrets that will be spawned in sectors. only choose raised
KPLIB_o_turrets_HMG = [
    "CFP_O_IQARMY_DShKM_01", 
    "CFP_O_IQARMY_Rifleman_01", 
    "CFP_O_IQARMY_DShKM_Minitripod_01"
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_GMG = [
    "CFP_O_IQARMY_AGS_30_01"
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_AT = [
    "CFP_O_IQARMY_SPG_9_01"
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_AA = [
    "CFP_O_IQARMY_Igla_AA_Pod_01"
];

// Enemy defence turrets that will be spawned in sectors.
KPLIB_o_turrets_MORTAR = [
];

// Enemy SAM turrets that will be spawned in the back country
KPLIB_o_turrets_SAM = [
    ["CFP_O_IQARMY_ZSU_23_4_01"], 
    ["CFP_O_IQARMY_Ural_ZU_23_01"]
];