// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "CUP_NVG_PVS14" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS_CDF	"ItemMap","ItemCompass","ItemWatch","ItemRadio"
#define ASSIGNED_ITEMS_B	"ItemMap","ItemCompass","ItemWatch","ItemRadio"
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM
#define ASSIGNED_ITEMS	    "ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_CDF_L "ItemMap","ItemCompass","ItemWatch","ItemRadio", BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************


//CDF

#define cdf_w_r ["CUP_arifle_AKS74_Early","CUP_arifle_AK74_Early"]
#define cdf_a_r ["CUP_30Rnd_545x39_AK_M","CUP_30Rnd_545x39_AK_M"]

#define cdf_v_r ["rhs_6b3_AK","rhs_6b3","rhs_6b3_AK_2","rhs_6b3_AK_3"]
#define cdf_u ["CUP_U_B_CDF_FST_1","CUP_U_B_CDF_FST_2"]

kit_cdf_sl = [
	["<EQUIPEMENT >>  ",cdf_u,"rhs_6b3_off","tf_rt1523g_green","CUP_H_RUS_SSH68_olive",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKS74","CUP_30Rnd_545x39_AK_M",["","","CUP_optic_PechenegScope_pip",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Makarov","CUP_8Rnd_9x18_Makarov_M",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_CDF_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["PRIMARY MAG",8],["HANDGUN MAG",1]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_nspn_green",2],["rhs_mag_nspn_red",2],["rhs_mag_rdg2_white",2]]]
];

kit_cdf_ar = [
	["<EQUIPEMENT >>  ",cdf_u,"rhs_6b3_RPK","","CUP_H_RUS_SSH68_olive",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_RPK74_45","CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_CDF_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["PRIMARY MAG",8],["rhs_mag_nspn_green",1],["rhs_mag_rdg2_white",2],["rhs_mag_nspn_red",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_cdf_mg = [
	["<EQUIPEMENT >>  ",cdf_u,"rhs_6b3_holster","rhs_sidor","CUP_H_RUS_SSH68_olive",""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_PKM","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Makarov","CUP_8Rnd_9x18_Makarov_M",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_CDF],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["HANDGUN MAG",2],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_cdf_rpg18 = [
	["<EQUIPEMENT >>  ",cdf_u,cdf_v_r,"","CUP_H_RUS_SSH68_olive",""],
	["<PRIMARY WEAPON >>  ",cdf_w_r,cdf_a_r,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG18_Loaded","CUP_RPG18_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_CDF],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["CUP_HandGrenade_RGD5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_cdf_gr = [
	["<EQUIPEMENT >>  ",cdf_u,"rhs_6b3_VOG_2","","CUP_H_RUS_SSH68_olive",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKS74_GL_Early","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_CDF],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["CUP_1Rnd_HE_GP25_M",10],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_cdf_at = [
	["<EQUIPEMENT >>  ",cdf_u,cdf_v_r,"rhs_rpg_2","CUP_H_RUS_SSH68_olive",""],
	["<PRIMARY WEAPON >>  ",cdf_w_r,cdf_a_r,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG7V","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_CDF],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["CUP_HandGrenade_RGD5",2]]],
	["<BACKPACK ITEMS >> ",[["CUP_OG7_M",2],["CUP_PG7V_M",1]]]
];

kit_cdf_aat = [
	["<EQUIPEMENT >>  ",cdf_u,cdf_v_r,"rhs_rpg_2","CUP_H_RUS_SSH68_olive",""],
	["<PRIMARY WEAPON >>  ",cdf_w_r,cdf_a_r,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_CDF],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["CUP_HandGrenade_RGD5",2]]],
	["<BACKPACK ITEMS >> ",[["CUP_OG7_M",2],["CUP_PG7V_M",1]]]
];

kit_cdf_mm = [
	["<EQUIPEMENT >>  ",cdf_u,"rhs_6b3_holster","","CUP_H_RUS_SSH68_olive",""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_SVD","CUP_10Rnd_762x54_SVD_M",["","","CUP_optic_PSO_1_1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Makarov","CUP_8Rnd_9x18_Makarov_M",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_CDF],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["PRIMARY MAG",8],["HANDGUN MAG",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_cdf_crew = [
	["<EQUIPEMENT >>  ","CUP_U_B_CDF_FST_1","CUP_V_CDF_OfficerBelt","","CUP_H_SLA_TankerHelmet",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Makarov","CUP_8Rnd_9x18_Makarov_M",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_CDF],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",3],["rhs_mag_rdg2_white",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

cargo_kit_cdf_cargo = [
	[["CUP_launch_RPG18_Loaded",2]],
	[["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",10],["CUP_HandGrenade_RGD5",10],["CUP_8Rnd_9x18_Makarov_M",10],["CUP_30Rnd_545x39_AK_M",20],["CUP_10Rnd_762x54_SVD_M",10],["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",20],["CUP_PG7V_M",4],["CUP_OG7_M",4]],
	[],
	[]
];

//USMC

#define usmc_u ["CUP_U_B_USMC_MCCUU_roll_pads_gloves","CUP_U_B_USMC_MCCUU_roll_gloves","CUP_U_B_USMC_MCCUU_pads_gloves","CUP_U_B_USMC_MCCUU_gloves"]
#define usmc_h ["CUP_H_LWHv2_MARPAT_comms","CUP_H_LWHv2_MARPAT_NVG_gog_cov2","CUP_H_LWHv2_MARPAT_comms_cov_fr"]

#define usmc_w_r ["CUP_arifle_M4A3_black","CUP_arifle_M4A1_black","CUP_arifle_M16A4_Base","CUP_arifle_M16A4_Grip"]
#define usmc_a_r ["CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag","CUP_30Rnd_556x45_Stanag"]


kit_usmc_sl = [
	["<EQUIPEMENT >>  ",usmc_u,"rhsusf_spc_squadleader","tf_rt1523g_sage",usmc_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M4A3_black","CUP_30Rnd_556x45_Stanag",["","CUP_acc_ANPEQ_2_Flashlight_Black_L","CUP_optic_ACOG2_PIP",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_M9A1","CUP_15Rnd_9x19_M9",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["CUP_HandGrenade_M67",2],["PRIMARY MAG",8],["SmokeShellGreen",2],["SmokeShellRed",2],["SmokeShell",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_usmc_ftl = [
	["<EQUIPEMENT >>  ",usmc_u,"rhsusf_spc_squadleader","",usmc_h,""],
	["<PRIMARY WEAPON >>  ",usmc_w_r,usmc_a_r,["","CUP_acc_ANPEQ_2_Flashlight_Black_L","CUP_optic_ACOG2_PIP",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_M9A1","CUP_15Rnd_9x19_M9",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["CUP_HandGrenade_M67",2],["PRIMARY MAG",8],["SmokeShellGreen",2],["SmokeShellRed",2],["SmokeShell",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_usmc_ar = [
	["<EQUIPEMENT >>  ",usmc_u,"rhsusf_spc_mg","rhsusf_assault_eagleaiii_coy",usmc_h,""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_m249_pip1","CUP_200Rnd_TE4_Green_Tracer_556x45_M249",["","","CUP_optic_ElcanM145_PIP",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_M9A1","CUP_15Rnd_9x19_M9",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["CUP_HandGrenade_M67",2],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_usmc_gr = [
	["<EQUIPEMENT >>  ",usmc_u,"rhsusf_spc_teamleader","",usmc_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M16A4_GL","CUP_30Rnd_556x45_Stanag",["","CUP_acc_ANPEQ_2_Flashlight_Black_L","CUP_optic_CompM2_low",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_M9A1","CUP_15Rnd_9x19_M9",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["CUP_HandGrenade_M67",2],["PRIMARY MAG",8],["CUP_1Rnd_HE_M203",10]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_usmc_r = [
	["<EQUIPEMENT >>  ",usmc_u,"rhsusf_spc_rifleman","rhsusf_assault_eagleaiii_coy",usmc_h,""],
	["<PRIMARY WEAPON >>  ",usmc_w_r,usmc_a_r,["","CUP_acc_ANPEQ_2_Flashlight_Black_L","CUP_optic_CompM2_low",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_M136_Loaded","CUP_M136_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_M9A1","CUP_15Rnd_9x19_M9",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",2],["CUP_HandGrenade_M67",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["CUP_200Rnd_TE4_Green_Tracer_556x45_M249",2]]]
];

cargo_kit_usmc_cargo = [
	[["CUP_launch_M136_Loaded",2]],
	[["CUP_30Rnd_556x45_Stanag",20],["CUP_HandGrenade_M67",10],["CUP_200Rnd_TE4_Green_Tracer_556x45_M249",10],["CUP_1Rnd_HE_M203",20],["CUP_15Rnd_9x19_M9",10]],
	[],
	[["rhsusf_assault_eagleaiii_coy",1]]
];

cargo_kit_usmc_jav = [
	[["CUP_launch_M136_Loaded",2],["CUP_launch_Javelin",1]],
	[["CUP_30Rnd_556x45_Stanag",20],["CUP_HandGrenade_M67",10],["CUP_200Rnd_TE4_Green_Tracer_556x45_M249",10],["CUP_1Rnd_HE_M203",20],["CUP_15Rnd_9x19_M9",10],["CUP_Javelin_M",2]],
	[],
	[["rhsusf_assault_eagleaiii_coy",1]]
];


//CDKZ


#define cdkz_u ["CUP_U_O_CHDKZ_Kam_02","CUP_U_O_CHDKZ_Kam_01","CUP_U_O_CHDKZ_Kam_03","CUP_U_O_CHDKZ_Kam_04","CUP_U_O_CHDKZ_Kam_08","CUP_U_O_CHDKZ_Kam_07"]
#define cdkz_h ["H_Bandanna_khk","CUP_H_C_Beanie_02","CUP_H_SLA_BeanieGreen","CUP_H_SLA_Helmet_OD_worn","CUP_H_TK_Helmet","CUP_H_FR_BandanaGreen","H_Cap_oli","H_Booniehat_khk","CUP_H_C_Ushanka_02"]
#define cdkz_v

#define cdkz_w_r ["CUP_arifle_AKM_Early","CUP_arifle_AK74_Early","CUP_arifle_AKS74_Early","CUP_arifle_AKS74U","CUP_arifle_AK47","CUP_SKS","CUP_arifle_AKMS_Early"]
#define cdkz_a_r ["CUP_30Rnd_762x39_AK47_bakelite_M","CUP_30Rnd_545x39_AK_M","CUP_30Rnd_545x39_AK_M","CUP_30Rnd_545x39_AK_M","CUP_30Rnd_762x39_AK47_M","CUP_10Rnd_762x39_SKS_M","rhs_30Rnd_762x39mm"]



kit_cdkz_r = [
	["<EQUIPEMENT >>  ",cdkz_u,"CUP_V_O_SLA_Carrier_Belt02","",cdkz_h,""],
	["<PRIMARY WEAPON >>  ",cdkz_w_r,cdkz_a_r,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_B],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["CUP_HandGrenade_RGD5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_cdkz_gr = [
	["<EQUIPEMENT >>  ",cdkz_u,"CUP_V_O_SLA_Carrier_Belt03","",cdkz_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKM_GL_Early","CUP_30Rnd_762x39_AK47_bakelite_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_B],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["CUP_1Rnd_HE_GP25_M",5],["PRIMARY MAG",6]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_cdkz_at = [
	["<EQUIPEMENT >>  ",cdkz_u,"CUP_V_O_SLA_Carrier_Belt02","rhs_rpg_2",cdkz_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKM_Early","CUP_30Rnd_762x39_AK47_bakelite_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG7V","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_B],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["CUP_HandGrenade_RGD5",2]]],
	["<BACKPACK ITEMS >> ",[["CUP_PG7V_M",2]]]
];

kit_cdkz_rpg18 = [
	["<EQUIPEMENT >>  ",cdkz_u,"CUP_V_O_SLA_Carrier_Belt02","",cdkz_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKM_Early","CUP_30Rnd_762x39_AK47_bakelite_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG18_Loaded","CUP_RPG18_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_B],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["CUP_HandGrenade_RGD5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_cdkz_mg = [
	["<EQUIPEMENT >>  ",cdkz_u,"cwr3_o_vest_chicom_beltkit_mg","",cdkz_h,""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_PKM","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_B],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_cdkz_mm = [
	["<EQUIPEMENT >>  ",cdkz_u,"cwr3_i_vest_chicom","",cdkz_h,""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_SVD","CUP_10Rnd_762x54_SVD_M",["","","CUP_optic_PSO_1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_B],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
];