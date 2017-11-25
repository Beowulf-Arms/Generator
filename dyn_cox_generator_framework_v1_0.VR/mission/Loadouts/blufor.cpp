/*
////BL_TEMP_West v1.0////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////

BSO Loadout Template - Standard Western Force

This template allows for quick creation of loadouts for your mission.
Combined with the ORBAT template, you can quickly put together a standard platoon with weapon teams.

Use "find and replace" on each of the  BL variables to replace that item in the loadouts.
Constructive use of "find and replace" will allow you to add several uniforms to arrays and other wizardry.

You are still able to quickly make changes, alterations and new classes to your faction.

///////////////////////////////////////////////////////////////////////////////////////////////////////////////



 arifle_TRG21_F								- Standard Rifle for most loadouts
 acc_pointer_IR 							- Rail equipment. Usually IR Laser or torch
 optic_Hamr 								- Standard Optic
 30Rnd_556x45_Stanag 						- Standard Rifle magazine
 30Rnd_556x45_Stanag_Tracer_Red				- Standard Rifle Tracer magazine

 hgun_P07_F									- Standard Sidearm
 16Rnd_9x21_Mag								- Standard Sidearm Magazine 
 
 LMG_Zafir_F								- Automatic Rifle
 150Rnd_762x54_Box							- Automatic Rifle Magazine

 arifle_TRG21_GL_F							- Standard Rifle with Underbarrel Grenade Launcher
 1Rnd_HE_Grenade_shell						- UGL HE grenade
 1Rnd_Smoke_Grenade_shell					- UGL Smoke Greande. First Colour
 1Rnd_SmokeRed_Grenade_shell				- UGL Smoke Grenade. Second Colour
 1Rnd_SmokeGreen_Grenade_shell				- UGL Smoke Grenade. Third Colour
 UGL_FlareRed_F								- UGL Flare Grenade. First Colour
 UGL_FlareGreen_F							- UGL Flare Grenade. Second Colour

 srifle_EBR_F								- Marksman Rifle
 20Rnd_762x51_Mag							- Marksman Rifle magazine
 ACE_20Rnd_762x51_Mag_Tracer				- Marksman Rifle Tracer magazine
 optic_SOS									- Marksman Rifle Optic
 bipod_01_F_blk								- Marksman Rifle Bipod
 
 MMG_02_sand_F								- Machinegun
 130Rnd_338_Mag								- Machinegun Magazine
 
 tf47_at4_heat								- Light AntiTank Launcher
 tf47_m3maaws								- Medium AntiTank Launcher
 tf47_optic_m3maaws							- MAT Optic
 tf47_m3maaws_HEAT							- MAT ammo - AT
 tf47_m3maaws_HE							- MAT ammo - HE
 launch_B_Titan_short_F						- Heavy AntiTank Launcher
 Titan_AT									- HAT ammo
 launch_B_Titan_F							- Surface-to-Air Missile Launcher
 Titan_AA									- SAM ammo

 SMG_02_F									- Crew/Pilot Weapon
 30Rnd_9x21_Mag_SMG_02						- Crew/Pilot Magazine
 
 HandGrenade								- Handgrenade Fragmentation.
 SmokeShell									- Handgrenade Smoke. Standard Smoke
 SmokeShellRed								- Handgrenade Smoke. First Colour
 SmokeShellGreen							- Handgrenade Smoke. Second Colour
 SmokeShellBlue								- Handgrenade Smoke. Third Colour
 SmokeShellPurple							- Handgrenade Smoke. Forth Colour
 
 
 
 U_B_CTRG_1									- Uniform
 V_PlateCarrierL_CTRG						- Vest
 H_HelmetSpecB								- Headgear
 
 U_B_HeliPilotCoveralls						- Pilot Uniform 
 V_TacVest_blk								- Pilot Vest/Gear
 H_PilotHelmetHeli_B						- Pilot Headgear
 
 U_B_CTRG_2									- Vehicle Crew Uniform
 V_TacVest_blk								- Vehicle Crew Vest/Gear
 H_HelmetCrew_B								- Vehicle Crew Headgear 
 
 ACE_Flashlight_XL50						- Handheld Map Torch
 NVGoggles									- Night Vision Goggles
 Binocular									- Binoculars
 ATMine_Range_Mag							- AntiTank Mine
 
 ACRE_PRC343								- Personal Radio
 ACRE_PRC148								- Long Range Radio
 ACRE_PRC117F								- Backpack Radio
 
 B_AssaultPack_rgr							- Backpack Small
 B_Kitbag_rgr								- Backpack Standard
 B_Carryall_oli								- Backpack AT
 B_Carryall_oli								- Backpack Large
 B_Carryall_oli								- Backpack Radio
 
 
*/
class blufor //Name of your faction referenced in the init call
 {
		name = "Beowulf Loadout Faction"; //Human name of your faction
		class Rifleman // Class Names
		{
			name = "Rifleman";
			primaryWeapon = "arifle_TRG21_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_AssaultPack_rgr";
			backpackMagazines[] = {
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
				};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {
				
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine"
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			insignia = "";
		};		
		class SquadLeader {
			name = "Squad Leader";
			primaryWeapon = "arifle_TRG21_GL_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "hgun_P07_F";
			handgunItems[] = {};
			magazines[] = {
				"16Rnd_9x21_Mag",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_Smoke_Grenade_shell",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs","ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_MapTools",
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343",
				"ACRE_PRC148"
			};	
			assignedItems[] = {
				"ItemGPS",
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_AssaultPack_rgr";
			backpackMagazines[] = {
				"16Rnd_9x21_Mag",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"UGL_FlareRed_F",
				"UGL_FlareRed_F",
				"1Rnd_SmokeRed_Grenade_shell",
				"1Rnd_SmokeRed_Grenade_shell",
				"1Rnd_SmokeRed_Grenade_shell",	
				"1Rnd_Smoke_Grenade_shell",	
				"1Rnd_Smoke_Grenade_shell",	
				"1Rnd_Smoke_Grenade_shell",		
				"1Rnd_Smoke_Grenade_shell",		
				"1Rnd_Smoke_Grenade_shell",	
				"SmokeShell",
				"SmokeShellBlue",
				"SmokeShellGreen",
				"SmokeShellGreen",
				"SmokeShellPurple",
				"16Rnd_9x21_Mag"
				};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {
				
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_epinephrine",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",			
				"ACE_epinephrine"	
				
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			binoculars = "Binocular";
			insignia = "";
		};
		class TeamLeader
		{
			name = "TeamLeader";
			primaryWeapon = "arifle_TRG21_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "hgun_P07_F";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"16Rnd_9x21_Mag",
				"16Rnd_9x21_Mag",
				"16Rnd_9x21_Mag",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_MapTools",				
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343",
				"ACRE_PRC148"
			};	
			assignedItems[] = {
				"ItemGPS",
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_AssaultPack_rgr";
			backpackMagazines[] = {
				"HandGrenade",
				"HandGrenade",
				"SmokeShell",
				"SmokeShell",
				"SmokeShellGreen",
				"SmokeShellGreen",
				"SmokeShellPurple",
				"SmokeShellBlue",
				"150Rnd_762x54_Box",				
				};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {
				
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_epinephrine",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",			
				"ACE_epinephrine"		
				
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			binoculars = "Binocular";
			insignia = "";
		};
		class Autorifleman {
			name = "Autorifleman";
			primaryWeapon = "LMG_Zafir_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"150Rnd_762x54_Box",
				"150Rnd_762x54_Box",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell",
				"150Rnd_762x54_Box"	
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_Kitbag_rgr";
			backpackMagazines[] = {
				"150Rnd_762x54_Box",
				"150Rnd_762x54_Box",
				"150Rnd_762x54_Box",
				"150Rnd_762x54_Box"	
				};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_SpareBarrel"
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			insignia = "";
		};			
		class AutoAsst
		{
			name = "AR Asst.";
			primaryWeapon = "arifle_TRG21_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_Kitbag_rgr";
			backpackMagazines[] = {
				"150Rnd_762x54_Box",
				"150Rnd_762x54_Box",
				"150Rnd_762x54_Box",
				"150Rnd_762x54_Box"
				};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_SpareBarrel"
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			insignia = "";
			binoculars = "Binocular";
		};				
	
		class RiflemanLAT
		{
			name = "Rifleman (LAT)";
			primaryWeapon = "arifle_TRG21_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_AssaultPack_rgr";
			backpackMagazines[] = {
				"150Rnd_762x54_Box",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"			
				};
			launcher = "tf47_at4_heat";
			launcherItems[] = {};
			backpackItems[] = {
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine"
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			insignia = "";
		};		

		class Grenadier
		{
			name = "Grenadier";
			primaryWeapon = "arifle_TRG21_GL_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs","ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_AssaultPack_rgr";
			backpackMagazines[] = {
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"UGL_FlareRed_F",
				"UGL_FlareRed_F",
				"1Rnd_SmokeRed_Grenade_shell",
				"1Rnd_SmokeRed_Grenade_shell",
				"1Rnd_SmokeRed_Grenade_shell",	
				"1Rnd_Smoke_Grenade_shell",	
				"1Rnd_Smoke_Grenade_shell",	
				"1Rnd_Smoke_Grenade_shell",		
				"1Rnd_Smoke_Grenade_shell",		
				"1Rnd_Smoke_Grenade_shell",						
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
				};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine"
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			insignia = "";
		};		
		class TeamLeaderMG
		{
			name = "TeamLeader - MG";
			primaryWeapon = "arifle_TRG21_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "hgun_P07_F";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"16Rnd_9x21_Mag",
				"16Rnd_9x21_Mag",
				"16Rnd_9x21_Mag",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_MapTools",				
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343",
				"ACRE_PRC148"
			};	
			assignedItems[] = {
				"ItemGPS",
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_Kitbag_rgr";
			backpackMagazines[] = {
				"SmokeShell",
				"SmokeShell",
				"SmokeShellGreen",
				"SmokeShellGreen",
				"SmokeShellPurple",
				"SmokeShellBlue",
				"130Rnd_338_Mag",	
				"130Rnd_338_Mag"				
				};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {
				
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_epinephrine",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",			
				"ACE_epinephrine"		
				
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			binoculars = "Binocular";
			insignia = "";
		};

		class Machinegunner
		{
			name = "Machinegunner";
			primaryWeapon = "MMG_02_sand_F";
			primaryWeaponItems[] = {"acc_pointer_IR"};
			handgun = "hgun_P07_F";
			handgunItems[] = {};
			magazines[] = {
				"130Rnd_338_Mag",
				"130Rnd_338_Mag",
				"16Rnd_9x21_Mag",
				"16Rnd_9x21_Mag",
				"16Rnd_9x21_Mag",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs","ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_Kitbag_rgr";
			backpackMagazines[] = {
				"130Rnd_338_Mag",
				"130Rnd_338_Mag",
				"130Rnd_338_Mag"
				};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_SpareBarrel"
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			insignia = "";
		};		
		
		class MachinegunAsst
		{
			name = "MG Asst.";
			primaryWeapon = "arifle_TRG21_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs","ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_Kitbag_rgr";
			backpackMagazines[] = {
				"130Rnd_338_Mag",
				"130Rnd_338_Mag",
				"130Rnd_338_Mag"
				};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_SpareBarrel"
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			insignia = "";
			binoculars = "Binocular";
		};		
		class TeamLeaderMAT
		{
			name = "TeamLeader - MAT";
			primaryWeapon = "arifle_TRG21_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "hgun_P07_F";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"16Rnd_9x21_Mag",
				"16Rnd_9x21_Mag",
				"16Rnd_9x21_Mag",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_MapTools",				
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343",
				"ACRE_PRC148"
			};	
			assignedItems[] = {
				"ItemGPS",
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_Carryall_oli";
			backpackMagazines[] = {
				"SmokeShell",
				"SmokeShell",
				"SmokeShellGreen",
				"SmokeShellGreen",
				"SmokeShellPurple",
				"SmokeShellBlue",
				"tf47_m3maaws_HEAT",	
				"tf47_m3maaws_HE"				
				};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {
				
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_epinephrine",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",			
				"ACE_epinephrine"		
				
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			binoculars = "Binocular";
			insignia = "";
		};

		class MediumAT
		{
			name = "MAT Gunner";
			primaryWeapon = "arifle_TRG21_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_Carryall_oli";
			backpackMagazines[] = {
				"tf47_m3maaws_HEAT",
				"tf47_m3maaws_HE",
				"tf47_m3maaws_HEAT"
				};
			launcher = "tf47_m3maaws";
			launcherItems[] = {"tf47_optic_m3maaws"};
			backpackItems[] = {};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			insignia = "";
		};		
		class MediumATAsst
		{
			name = "MAT Asst.";
			primaryWeapon = "arifle_TRG21_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs","ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_Carryall_oli";
			backpackMagazines[] = {
				"tf47_m3maaws_HEAT",
				"tf47_m3maaws_HE",
				"tf47_m3maaws_HEAT"
				};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			insignia = "";
			binoculars = "Binocular";
		};			
		
		class HeavyAT
		{
			name = "HAT Gunner";
			primaryWeapon = "arifle_TRG21_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_Carryall_oli";
			backpackMagazines[] = {
				"Titan_AT",
				"Titan_AT",
				"Titan_AT"
				};
			launcher = "launch_B_Titan_short_F";
			launcherItems[] = {};
			backpackItems[] = {};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			insignia = "";
		};		
		class HeavyATAsst
		{
			name = "HAT Asst.";
			primaryWeapon = "arifle_TRG21_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_Carryall_oli";
			backpackMagazines[] = {
				"Titan_AT",
				"Titan_AT",
				"Titan_AT"
				};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			insignia = "";
			binoculars = "Binocular";
		};		
		class AntiAir
		{
			name = "AA Gunner";
			primaryWeapon = "arifle_TRG21_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_Carryall_oli";
			backpackMagazines[] = {
				"Titan_AA",
				"Titan_AA"
				};
			launcher = "launch_B_Titan_F";
			launcherItems[] = {};
			backpackItems[] = {
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine"
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			insignia = "";
		};		
		class AntiAirAsst
		{
			name = "AA Asst.";
			primaryWeapon = "arifle_TRG21_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_Carryall_oli";
			backpackMagazines[] = {
				"Titan_AA",
				"Titan_AA"
				};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine"
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			insignia = "";
			binoculars = "Binocular";
		};		
		class ExpExpert
		{
			name = "Exp. Expert";
			primaryWeapon = "arifle_TRG21_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_Kitbag_rgr";
			backpackMagazines[] = {
				"DemoCharge_Remote_Mag",
				"DemoCharge_Remote_Mag",
				"SatchelCharge_Remote_Mag",
				"ATMine_Range_Mag",			
				"HandGrenade",
				"HandGrenade",
				"SmokeShell",	
				"SmokeShell"
				};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {	
				"ACE_Clacker",
				"ACE_DefusalKit",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot"
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			insignia = "";
		};
		class Engineer
		{
			name = "Combat Engineer";
			primaryWeapon = "arifle_TRG21_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_Kitbag_rgr";
			backpackMagazines[] = {
				"DemoCharge_Remote_Mag",
				"DemoCharge_Remote_Mag",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell",
				"SmokeShell"
				};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {
				"ACE_Clacker",
				"ACE_DefusalKit",
				"ToolKit",
				"ACE_wirecutter",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot"
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			insignia = "";
		};		
		class Medic
		{
			name = "Combat Medic";
			primaryWeapon = "arifle_TRG21_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",			
				"30Rnd_556x45_Stanag",					
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343",
				"ACRE_PRC148"
			};	
			assignedItems[] = {
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_Kitbag_rgr";
			backpackMagazines[] = {
				"SmokeShell",
				"SmokeShell",
				"SmokeShell",
				"SmokeShell",
				"SmokeShellGreen",
				"SmokeShellGreen",
				"SmokeShellGreen",
				"SmokeShellGreen",
				"SmokeShellGreen"
			};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				"ACE_elasticBandage",
				
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				"ACE_packingBandage",
				
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				"ACE_quikclot",
				
				"ACE_atropine",
				"ACE_atropine",
				"ACE_atropine",
				"ACE_atropine",
				"ACE_atropine",
				"ACE_atropine",
				"ACE_atropine",
				"ACE_atropine",
				"ACE_atropine",
				"ACE_atropine",
				
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				
				"ACE_epinephrine",
				"ACE_epinephrine",
				"ACE_epinephrine",
				"ACE_epinephrine",
				"ACE_epinephrine",
				"ACE_epinephrine",
				"ACE_epinephrine",
				"ACE_epinephrine",
				"ACE_epinephrine",
				"ACE_epinephrine",
				
				"ACE_salineIV_250",
				"ACE_salineIV_250",
				"ACE_salineIV_250",
				"ACE_salineIV_250",
				"ACE_salineIV_250",
				"ACE_salineIV_250",
				"ACE_salineIV_250",
				"ACE_salineIV_250",
				"ACE_salineIV_250",
				"ACE_salineIV_250",
				
				"ACE_tourniquet",
				"ACE_tourniquet",
				"ACE_tourniquet",
				"ACE_tourniquet",
				"ACE_tourniquet"
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			insignia = "";
		};		
		class PlatoonLeader 
		{
			name = "Platoon Leader";
			primaryWeapon = "arifle_TRG21_GL_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "hgun_P07_F";
			handgunItems[] = {};
			magazines[] = {
				"1Rnd_HE_Grenade_shell",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"16Rnd_9x21_Mag",
				"16Rnd_9x21_Mag",
				"16Rnd_9x21_Mag",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs","ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_MapTools",
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343","ACRE_PRC148"
			};	
			assignedItems[] = {
				"ItemGPS",
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_Carryall_oli";
			backpackMagazines[] = {
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_Smoke_Grenade_shell",	
				"1Rnd_Smoke_Grenade_shell",	
				"1Rnd_Smoke_Grenade_shell",		
				"1Rnd_SmokeRed_Grenade_shell",
				"1Rnd_SmokeRed_Grenade_shell",
				"1Rnd_SmokeRed_Grenade_shell",
				"UGL_FlareRed_F",
				"UGL_FlareGreen_F",
				"UGL_FlareGreen_F",
				"1Rnd_SmokeGreen_Grenade_shell",
				"1Rnd_SmokeGreen_Grenade_shell",		
				"1Rnd_SmokeGreen_Grenade_shell",		
				"SmokeShellGreen",	
				"SmokeShellGreen",
				"SmokeShellBlue",
				"SmokeShellBlue",
				"SmokeShellPurple",
				"SmokeShellPurple"
				};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {
				"ACRE_PRC117F",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine"
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			binoculars = "Binocular";
			insignia = "";
		};

		class JTAC
		{
			name = "JTAC";
			primaryWeapon = "arifle_TRG21_GL_F";
			primaryWeaponItems[] = {"acc_pointer_IR","optic_Hamr"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",				
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"30Rnd_556x45_Stanag_Tracer_Red",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell",
				"Laserbatteries"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_MapTools",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343",
				"ACRE_PRC148"
			};	
			assignedItems[] = {
				"ItemGPS",
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_Carryall_oli";
			backpackMagazines[] = {
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_HE_Grenade_shell",
				"1Rnd_Smoke_Grenade_shell",	
				"1Rnd_Smoke_Grenade_shell",	
				"1Rnd_Smoke_Grenade_shell",		
				"1Rnd_SmokeRed_Grenade_shell",
				"1Rnd_SmokeRed_Grenade_shell",
				"1Rnd_SmokeRed_Grenade_shell",
				"UGL_FlareRed_F",
				"UGL_FlareGreen_F",
				"UGL_FlareGreen_F",
				"1Rnd_SmokeGreen_Grenade_shell",
				"1Rnd_SmokeGreen_Grenade_shell",		
				"1Rnd_SmokeGreen_Grenade_shell",		
				"SmokeShellGreen",	
				"SmokeShellGreen",
				"SmokeShellBlue",
				"SmokeShellBlue",
				"SmokeShellPurple",
				"SmokeShellPurple",
				"Laserbatteries"
				};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {
				"ACRE_PRC117F",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine"
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			binoculars = "Laserdesignator";
			insignia = "";
		};
		
		class Marksman
		{
			name = "Marksman";
			primaryWeapon = "srifle_EBR_F";
			primaryWeaponItems[] = {"optic_SOS","bipod_01_F_blk","acc_pointer_IR"};
			handgun = "hgun_P07_F";
			handgunItems[] = {};
			magazines[] = {
				"20Rnd_762x51_Mag",
				"20Rnd_762x51_Mag",
				"20Rnd_762x51_Mag",				
				"20Rnd_762x51_Mag",
				"20Rnd_762x51_Mag",
				"ACE_20Rnd_762x51_Mag_Tracer",
				"ACE_20Rnd_762x51_Mag_Tracer",
				"16Rnd_9x21_Mag",
				"16Rnd_9x21_Mag",
				"16Rnd_9x21_Mag",				
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_RangeCard",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemGPS",
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_AssaultPack_rgr";
			backpackMagazines[] = {
				"16Rnd_9x21_Mag",
				"16Rnd_9x21_Mag",
				"16Rnd_9x21_Mag",
				"HandGrenade",
				"HandGrenade",
				"SmokeShell"
				};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine"
				};
			uniform[] = {"U_B_CTRG_1"};
			vest[] = {"V_PlateCarrierL_CTRG"};
			headgear[] = {"H_HelmetSpecB"};
			nvg = "NVGoggles";
			binoculars = "Rangefinder";
			insignia = "";
		};		

		class Pilot
		{
			name = "Pilot";
			primaryWeapon = "SMG_02_F";
			primaryWeaponItems[] = {"acc_pointer_IR"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_9x21_Mag_SMG_02",
				"30Rnd_9x21_Mag_SMG_02",
				"30Rnd_9x21_Mag_SMG_02",				
				"30Rnd_9x21_Mag_SMG_02",
				"30Rnd_9x21_Mag_SMG_02",
				"SmokeShellBlue",
				"SmokeShellBlue",
				"SmokeShellPurple"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemGPS",
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_AssaultPack_rgr";
			backpackMagazines[] = {};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {"ACRE_PRC117F"};
			uniform[] = {"U_B_HeliPilotCoveralls"};
			vest[] = {"V_TacVest_blk"};
			headgear[] = {"H_PilotHelmetHeli_B"};
			nvg = "NVGoggles";
			insignia = "";
		};
		
		class AirCrew
		{
			name = "Air Crew";
			primaryWeapon = "SMG_02_F";
			primaryWeaponItems[] = {"acc_pointer_IR"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_9x21_Mag_SMG_02",
				"30Rnd_9x21_Mag_SMG_02",
				"30Rnd_9x21_Mag_SMG_02",				
				"30Rnd_9x21_Mag_SMG_02",
				"30Rnd_9x21_Mag_SMG_02",
				"SmokeShellBlue",
				"SmokeShellBlue",
				"SmokeShellPurple"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemGPS",
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "";
			backpackMagazines[] = {};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {};
			uniform[] = {"U_B_HeliPilotCoveralls"};
			vest[] = {"V_TacVest_blk"};
			headgear[] = {"H_PilotHelmetHeli_B"};
			nvg = "NVGoggles";
			insignia = "";
		};		
		
		class CrewC
		{
			name = "Crew Commander";
			primaryWeapon = "SMG_02_F";
			primaryWeaponItems[] = {"acc_pointer_IR"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_9x21_Mag_SMG_02",
				"30Rnd_9x21_Mag_SMG_02",
				"30Rnd_9x21_Mag_SMG_02",				
				"30Rnd_9x21_Mag_SMG_02",
				"30Rnd_9x21_Mag_SMG_02",
				"SmokeShellBlue",
				"SmokeShell",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemGPS",
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "B_AssaultPack_rgr";
			backpackMagazines[] = {};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {"ACRE_PRC117F"};
			uniform[] = {"U_B_CTRG_2"};
			vest[] = {"V_TacVest_blk"};
			headgear[] = {"H_HelmetCrew_B"};
			nvg = "NVGoggles";
			binoculars = "Binocular";
			insignia = "";
		};		
		
		class Crew
		{
			name = "Crewman";
			primaryWeapon = "SMG_02_F";
			primaryWeaponItems[] = {"acc_pointer_IR"};
			handgun = "";
			handgunItems[] = {};
			magazines[] = {
				"30Rnd_9x21_Mag_SMG_02",
				"30Rnd_9x21_Mag_SMG_02",
				"30Rnd_9x21_Mag_SMG_02",				
				"30Rnd_9x21_Mag_SMG_02",
				"30Rnd_9x21_Mag_SMG_02",
				"SmokeShellBlue",
				"SmokeShell",
				"SmokeShell"
			};
			items[] = {
				"ACE_EarPlugs",
				"ACE_Flashlight_XL50",
				"ACE_fieldDressing",
				"ACE_fieldDressing",
				"ACE_morphine",				
				"ACE_tourniquet",
				"ACE_quikclot",	
				"ACE_fieldDressing",
				"ACE_fieldDressing"
			};
			personalRadios[] = {
				"ACRE_PRC343"
			};
			assignedItems[] = {
				"ItemGPS",
				"ItemMap",
				"ItemCompass",
				"ItemWatch"
			};
			backpack = "";
			backpackMagazines[] = {};
			launcher = "";
			launcherItems[] = {};
			backpackItems[] = {};
			uniform[] = {"U_B_CTRG_2"};
			vest[] = {"V_TacVest_blk"};
			headgear[] = {"H_HelmetCrew_B"};
			nvg = "NVGoggles";
			insignia = "";
		};			
	};