AllTheThings = {};
_ = AllTheThings;

-- Static values for minReputation/maxReputation properties.
-- The values are based on a "distance from zero" to match what Blizzard tracks internally as "totalEarned" rep
HATED, HOSTILE, UNFRIENDLY, NEUTRAL, FRIENDLY, HONORED, REVERED, EXALTED = -42000, -6000, -3000, 0, 3000, 9000, 21000, 42000

-- Root constants
-- Usage: ROOTS.[Constant]
ROOTS = {
	["ExpansionFeatures"] = "ExpansionFeatures",
	["Instances"] = "Instances",
	["Zones"] = "Zones",
	["WorldDrops"] = "WorldDrops",
	["GroupFinder"] = "GroupFinder",
	["Achievements"] = "Achievements",
	["WorldEvents"] = "WorldEvents",
	["PVP"] = "PVP",
	["Craftables"] = "Craftables",
	["Professions"] = "Professions",
	["Secrets"] = "Secrets",
	["GearSets"] = "GearSets",
	["Promotions"] = "Promotions",
	["BlackMarket"] = "BlackMarket",
	["InGameShop"] = "InGameShop",
	["PetBattles"] = "PetBattles",
	["HiddenQuestTriggers"] = "HiddenQuestTriggers",
	["HiddenAchievementTriggers"] = "HiddenAchievementTriggers",
	["NeverImplemented"] = "NeverImplemented",
	["Factions"] = "Factions",
	["Holidays"] = "Holidays",
};

-- Map Constants for quick and easy replacement when we can get mapIDs on live!
-- Raids (Classic)
BLACKWING_LAIR = 287;
MOLTEN_CORE = 232;
NAXXRAMAS = 162;
ONYXIAS_LAIR = 248;
RUINS_OF_AHNQIRAJ = 247;
TEMPLE_OF_AHNQIRAJ = 320;
ZULGURUB = 337;

-- Dungeons (Classic)
BLACKFATHOM_DEEPS = 221;
BLACKFATHOM_DEEPS_LEVEL2 = 222;
BLACKFATHOM_DEEPS_LEVEL3 = 223;
BLACKROCK_DEPTHS = 242;
BLACKROCK_SPIRE = 250;
DEADMINES = 291;
DIRE_MAUL = 234;
GNOMEREGAN = 226;
LBRS_TAZZALOR = 250;
LBRS_SKITTERWEB_TUNNELS = 251;
LBRS_HORDEMAR_CITY = 252;
LBRS_HALL_OF_BLACKHAND = 253;
LBRS_HALYCONS_LAIR = 254;
LBRS_CHAMBER_OF_BATTLE = 255;
MARAUDON = 280;
MARAUDON_LEVEL2 = 281;
RAGEFIRE_CHASM = 213;
RAZORFEN_DOWNS = 300;
RAZORFEN_KRAUL = 301;
SCARLET_MONASTERY = 435;
SCARLET_MONASTERY_ENTRANCE = 19;
SCHOLOMANCE = 476;
SHADOWFANG_KEEP = 310;
SHADOWFANG_KEEP_LEVEL2 = 311;
SHADOWFANG_KEEP_LEVEL3 = 312;
SHADOWFANG_KEEP_LEVEL4 = 313;
SHADOWFANG_KEEP_LEVEL5 = 314;
SHADOWFANG_KEEP_LEVEL6 = 315;
SHADOWFANG_KEEP_LEVEL7 = 316;
STRATHOLME = 317;
SUNKEN_TEMPLE = 220;
TEMPLE_OF_ATALHAKKAR = 220;
THE_STOCKADE = 225;
ULDAMAN = 230;
WAILING_CAVERNS = 279;
ZULFARRAK = 219;

-- Raids (TBC)
KARAZHAN = 350;
GRUULS_LAIR = 330;
MAGTHERIDONS_LAIR = 331;
SERPENTSHRINE_CAVERN = 332; -- 1554 also
TEMPEST_KEEP_THE_EYE = 334;
THE_BATTLE_FOR_MOUNT_HYJAL = 329;
THE_BLACK_TEMPLE = 340;
SUNWELL_PLATEAU = 335;
ZULAMAN = 333;

-- Dungeons (TBC)
AUCHINDOUN_AUCHENAI_CRYPTS = 256; -- 257 also
AUCHINDOUN_MANA_TOMBS = 272;
AUCHINDOUN_SETHEKK_HALLS = 258; -- 259 also
AUCHINDOUN_SHADOW_LABYRINTH = 260;
CAVERNS_OF_TIME_BLACK_MORASS = 273;
CAVERNS_OF_TIME_OLD_HILLSBRAD_FOOTHILLS = 274;
COILFANG_RESERVOIR_SLAVE_PENS = 265;
COILFANG_RESERVOIR_STEAMVAULT = 263;
COILFANG_RESERVOIR_UNDERBOG = 262;
HELLFIRE_CITADEL_BLOOD_FURNACE = 261;
HELLFIRE_CITADEL_RAMPARTS = 347;
HELLFIRE_CITADEL_SHATTERED_HALLS = 246;
MAGISTERS_TERRACE = 348;
TEMPEST_KEEP_ARCATRAZ = 269; -- 270, 271 also
TEMPEST_KEEP_BOTANICA = 266;
TEMPEST_KEEP_MECHANAR = 267; -- 268

-- Raids (Wrath)
VAULT_OF_ARCHAVON = 156;
THE_OBSIDIAN_SANCTUM = 155;
THE_EYE_OF_ETERNITY = 141;
ULDUAR = 147;
TRIAL_OF_THE_CRUSADER = 172;
ICECROWN_CITADEL = 186;
THE_RUBY_SANCTUM = 200;

-- Dungeons (Wrath)
AHNKAHET_THE_OLD_KINGDOM = 132;
AZJOL_NERUB = 157;
DRAKTHARON_KEEP = 160;
GUNDRAK = 153;
HALLS_OF_LIGHTNING = 138;
HALLS_OF_REFLECTION = 185;
HALLS_OF_STONE = 140;
PIT_OF_SARON = 184;
THE_CULLING_OF_STRATHOLME = 130;
THE_FORGE_OF_SOULS = 183;
THE_NEXUS = 129;
THE_OCULUS = 142;
THE_VIOLET_HOLD_WRATH = 168;
TRIAL_OF_THE_CHAMPION = 171;
UTGARDE_KEEP = 133;
UTGARDE_PINNACLE = 136;

-- Dungeons (WOD)
UPPER_BLACKROCK_SPIRE_WOD = 616;

-- Dungeons (SL)
TAZAVESH_THE_VEILED_MARKET = 1989;
TAZAVESH_THE_MENAGERIE = 1990;
TAZAVESH_THE_POST = 1991;
TAZAVESH_MYZAS_OASIS = 1992;
TAZAVESH_THE_OPULENT_NEXUS = 1993;
TAZAVESH_STORMHEIM = 1995;
TAZAVESH_BORALUS_HARBOR = 1996;
TAZAVESH_AGGRAMARS_VAULT = 1997;

-- World Map
COSMIC = 947;

-- Kalimdor
KALIMDOR = 1414;
AHNQIRAJ_THE_FALLEN_KINGDOM = 327;
ASHENVALE = 1440;
AZSHARA = 1447;
CAVERNS_OF_TIME = 75;
DARKSHORE = 1439;
DARNASSUS = 1457;
DESOLACE = 1443;
DUROTAR = 1411;
DUSTWALLOW_MARSH = 1445;
FELWOOD = 1448;
FERALAS = 1444;
MOONGLADE = 1450;
MULGORE = 1412;
NORTHERN_BARRENS = 1413;
ORGRIMMAR = 1454;
SILITHUS = 1451;
SOUTHERN_BARRENS = 199;
STONETALON_MOUNTAINS = 1442;
TANARIS = 1446;
TELDRASSIL = 1438;
TELDRASSIL_BANETHIL_BARROW_DEN = 1438;
THE_BARRENS = 1413;
THOUSAND_NEEDLES = 1441;
THUNDER_BLUFF = 1456;
ULDUM = 249;
UNGORO_CRATER = 1449;
WINTERSPRING = 1452;

-- Eastern Kingdoms
EASTERN_KINGDOMS = 1415;
ALTERAC_MOUNTAINS = 1416;
ARATHI_HIGHLANDS = 1417;
BADLANDS = 1418;
BLACKROCK_MOUNTAIN = 33;
BLACKROCK_MOUNTAIN_LEVEL2 = 34;
BLACKROCK_MOUNTAIN_LEVEL3 = 35;
BLASTED_LANDS = 1419;
BURNING_STEPPES = 1428;
COLDRIDGE_VALLEY = 427;
DEADWIND_PASS = 1430;
DEATHKNELL = 465;
DEEPRUN_TRAM = 499;
DUN_MOROGH = 1426;
DUSKWOOD = 1431;
EASTERN_PLAGUELANDS = 1423;
ELWYNN_FOREST = 1429;
HILLSBRAD_FOOTHILLS = 1424;
IRONFORGE = 1455;
LIGHTS_HOPE_CHAPEL = 24;
LOCH_MODAN = 1432;
NEW_TINKERTOWN = 469;
NEW_TINKERTOWN_LOWER = 30;
NORTHERN_STRANGLETHORN = 1434;
NORTHSHIRE_VALLEY = 425;
REDRIDGE_MOUNTAINS = 1433;
RUINS_OF_GILNEAS = 217;
SEARING_GORGE = 1427;
SILVERPINE_FOREST = 1421;
STORMWIND_CITY = 1453;
STRANGLETHORN_VALE = 1434;
SWAMP_OF_SORROWS = 1435;
SUNSTRIDER_ISLE = 467;
THE_CAPE_OF_STRANGLETHORN = 210;
THE_HINTERLANDS = 1425;
TIRISFAL_GLADES = 1420;
TWILIGHT_HIGHLANDS = 241;
UNDERCITY = 1458;
WESTERN_PLAGUELANDS = 1422;
WESTFALL = 1436;
WETLANDS = 1437;

-- Outland & TBC Additions
OUTLAND = 1945;
EVERSONG_WOODS = 1941;
GHOSTLANDS = 1942;
ISLE_OF_QUELDANAS = 1957;
SILVERMOON_CITY = 1954;
AZUREMYST_ISLE = 1943;
BLOODMYST_ISLE = 1950;
AMMEN_VALE = 468;
THE_EXODAR = 1947;
HELLFIRE_PENINSULA = 1944;
ZANGARMARSH = 1946;
NAGRAND = 1951;
NETHERSTORM = 1953;
TEROKKAR_FOREST = 1952;
SHATTRATH_CITY = 1955;
BLADES_EDGE_MOUNTAINS = 1949;
SHADOWMOON_VALLEY = 1948;

-- Cataclysm
MOUNT_HYJAL = 198;
DEEPHOLM = 207;

-- Wrath of the Lich King
NORTHREND = 113;
BOREAN_TUNDRA = 114;
DRAGONBLIGHT = 115;
GRIZZLY_HILLS = 116;
HOWLING_FJORD = 117;
ICECROWN = 118;
SHOLAZAR_BASIN = 119;
THE_STORM_PEAKS = 120;
ZULDRAK = 121;
WINTERGRASP = 123;
THE_SCARLET_ENCLAVE = 124;
NORTHREND_DALARAN = 125;
NORTHREND_THE_UNDERBELLY = 126;
CRYSTALSONG_FOREST = 127;

-- Mists of Pandaria
THE_JADE_FOREST = 371;
VALLEY_OF_THE_FOUR_WINDS = 376;
KUN_LAI_SUMMIT = 379;
TOWNLONG_STEPPES = 388;
VALE_OF_ETERNAL_BLOSSOMS = 390;
KRASARANG_WILDS = 418;
DREAD_WASTES = 422;
PANDARIA = 424;
THE_VEILED_STAIR = 433;
ECHO_ISLES = 463;
VALLEY_OF_TRIALS = 461;
ISLE_OF_THUNDER = 504;
ISLE_OF_GIANTS = 507;
TIMELESS_ISLE = 554;

-- Warlords of Draenor
FROSTFIRE_RIDGE = 525;
TANAAN_JUNGLE = 534;
TALADOR = 535;
DRAENOR_SHADOWMOON_VALLEY = 539;
SPIRES_OF_ARAK = 542;
GORGROND = 543;
DRAENOR_NAGRAND = 550;
DRAENOR = 572;
LUNARFALL = 582;
FROSTWALL = 590;
STORMSHIELD = 622;
WARSPEAR = 624;

-- Legion
BROKEN_ISLES = 619;
LEGION_DALARAN = 627;
LEGION_THE_UNDERBELLY = 628;
AZSUNA = 630;
STORMHEIM = 634;
VALSHARAH = 641;
BROKEN_SHORE = 646;
HELHEIM = 649;
HIGHMOUNTAIN = 650;
SURAMAR = 680;
EYE_OF_AZSHARA = 790;
-- Class Halls
ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS = 647;
ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND = 648;
DREADSCAR_RIFT = 717;
HALL_OF_THE_GUARDIAN = 734;
HALL_OF_THE_GUARDIAN_2ND_FLOOR = 735;
MARDUM_THE_SHATTERED_ABYSS_UPPER_COMMAND_CENTER = 720;
MARDUM_THE_SHATTERED_ABYSS_LOWER_COMMAND_CENTER = 721;
NETHERLIGHT_TEMPLE = 702;
SANCTUM_OF_LIGHT = LIGHTS_HOPE_CHAPEL; -- = 24
SKYHOLD = 695;
THE_DREAMGROVE = 747;
THE_HALL_OF_SHADOWS = 626;
THE_HEART_Of_AZEROTH = 726;
THE_WANDERING_ISLE = 709;
TRUESHOT_LODGE = 739;
CLASS_HALL_MAPS = {
	ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS,
	ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND,
	DREADSCAR_RIFT,
	HALL_OF_THE_GUARDIAN,
	HALL_OF_THE_GUARDIAN_2ND_FLOOR,
	MARDUM_THE_SHATTERED_ABYSS_UPPER_COMMAND_CENTER,
	MARDUM_THE_SHATTERED_ABYSS_LOWER_COMMAND_CENTER,
	NETHERLIGHT_TEMPLE,
	SANCTUM_OF_LIGHT,
	SKYHOLD,
	THE_DREAMGROVE,
	THE_HALL_OF_SHADOWS,
	THE_HEART_Of_AZEROTH,
	THE_WANDERING_ISLE,
	TRUESHOT_LODGE,
};

-- Battle for Azeroth
ZULDAZAR = 862;
NAZMIR = 863;
VOLDUN = 864;
ZANDALAR = 875;
KULTIRAS = 876;
TIRAGARDE_SOUND = 895;
DRUSTVAR = 896;
STORMSONG_VALLEY = 942;
CHAMBER_OF_HEART = 1021;
BORALUS = 1161;
THE_GREAT_SEAL = 1163;
HALL_OF_CHRONICLERS = 1164;
DAZARALOR = 1165;
ZANCHUL_COUNCIL_CHAMBERS = 1166;
ZANCHUL_HALL_OF_THE_HIGH_PRIESTS = 1167;
REPAIRED_CHAMBER_OF_HEART = 1473;
MECHAGON = 1462;

-- Shadowlands
REVENDRETH = 1525;
BASTION = 1533;
MALDRAXXUS = 1536;
THE_MAW = 1543;
SHADOWLANDS = 1550;
ARDENWEALD = 1565;
ORIBOS = 1670;
SEAT_OF_THE_PRIMUS = 1698;
SINFALL_REACHES = 1699;
SINFALL_DEPTHS = 1700;
THE_TRUNK = 1701;
THE_ROOTS = 1702;
THE_CANOPY = 1703;
ARCHONS_RISE = 1707;
SANCTUM_OF_BINDING = 1708;
KORTHIA = 1961;
TAZAVESH_THE_VEILED_MARKET_WORLD = 2016;
TORGHAST = 1627;
ZERETH_MORTIS = 1970;

-- RACES
HUMAN = 1;
DWARF = 3;
NIGHTELF = 4;
GNOME = 7;
DRAENEI = 11;
WORGEN = 22;
VOIDELF = 29;
LIGHTFORGED = 30;
KULTIRAN = 32;
DARKIRON = 34;
MECHAGNOME = 37;

PANDAREN_NEUTRAL = 24;
PANDAREN_ALLIANCE = 25;
PANDAREN_HORDE = 26;

ORC = 2;
UNDEAD = 5;
TAUREN = 6;
TROLL = 8;
GOBLIN = 9;
BLOODELF = 10;
NIGHTBORNE = 27;
HIGHMOUNTAIN_TAUREN = 28;
ZANDALARI = 31;
VULPERA = 35;
MAGHAR = 36;

ALLIANCE_ONLY = {
	HUMAN,
	DWARF,
	NIGHTELF,
	GNOME,
	DRAENEI,
	WORGEN,
	PANDAREN_ALLIANCE,
	VOIDELF,
	LIGHTFORGED,
	KULTIRAN,
	DARKIRON,
	MECHAGNOME,
};
HORDE_ONLY = {
	ORC,
	UNDEAD,
	TAUREN,
	TROLL,
	GOBLIN,
	BLOODELF,
	PANDAREN_HORDE,
	NIGHTBORNE,
	HIGHMOUNTAIN_TAUREN,
	ZANDALARI,
	MAGHAR,
	VULPERA,
};
ALL_RACES = { PANDAREN_NEUTRAL }
for _,v in pairs(ALLIANCE_ONLY) do table.insert(ALL_RACES,v) end
for _,v in pairs(HORDE_ONLY) do table.insert(ALL_RACES,v) end

-- CLASSES
WARRIOR = 1;
PALADIN = 2;
HUNTER = 3;
ROGUE = 4;
PRIEST = 5;
DEATHKNIGHT = 6;
SHAMAN = 7;
MAGE = 8;
WARLOCK = 9;
MONK = 10;
DRUID = 11;
DEMONHUNTER = 12;

ALL_CLASSES = {
	WARRIOR,
	PALADIN,
	HUNTER,
	ROGUE,
	PRIEST,
	DEATHKNIGHT,
	SHAMAN,
	MAGE,
	WARLOCK,
	MONK,
	DRUID,
	DEMONHUNTER,
};
TANKS = {
	DEATHKNIGHT,
	DEMONHUNTER,
	DRUID,
	MONK,
	PALADIN,
	WARRIOR
};
HEALERS = {
	DRUID,
	MONK,
	PALADIN,
	PRIEST,
	SHAMAN
};

-- Specializations
-- CRIEVE NOTE: Do not use the simple versions, they will be deprecated and replaced with fully formed class/spec constants.

-- Death Knight
BLOOD = 250;
FROST = 251;
UNHOLY = 252;
DEATHKNIGHT_BLOOD = 250;
DEATHKNIGHT_FROST = 251;
DEATHKNIGHT_UNHOLY = 252;

-- Demon Hunter
HAVOC = 577;
VENGEANCE = 581;
DEMON_HUNTER_HAVOC = 577;
DEMON_HUNTER_VENGEANCE = 581;

-- Druid
BALANCE = 102;
FERAL = 103;
GUARDIAN = 104;
RESTORATION = 105;
DRUID_BALANCE = 102;
DRUID_FERAL = 103;
DRUID_GUARDIAN = 104;
DRUID_RESTORATION = 105;

-- Hunter
BEAST_MASTERY = 253;
MARKSMANSHIP = 254;
SURVIVAL = 255;
HUNTER_BEAST_MASTERY = 253;
HUNTER_MARKSMANSHIP = 254;
HUNTER_SURVIVAL = 255;

-- Mage
ARCANE = 62;
FIRE = 63;
MAGE_ARCANE = 62;
MAGE_FIRE = 63;
MAGE_FROST = 64;

-- Monk
BREWMASTER = 268;
WINDWALKER = 269;
MISTWEAVER = 270;
MONK_BREWMASTER = 268;
MONK_WINDWALKER = 269;
MONK_MISTWEAVER = 270;

-- Paladin
HOLY = 65;
PROTECTION = 66;
RETRIBUTION = 70;
PALADIN_HOLY = 65;
PALADIN_PROTECTION = 66;
PALADIN_RETRIBUTION = 70;

-- Priest
DISCIPLINE = 256;
SHADOW = 258;
PRIEST_DISCIPLINE = 256;
PRIEST_HOLY = 257;
PRIEST_SHADOW = 258;

-- Rogue
ASSASSINATION = 259;
OUTLAW = 260;
SUBTLETY = 261;
ROGUE_ASSASSINATION = 259;
ROGUE_OUTLAW = 260;
ROGUE_COMBAT = 260;
ROGUE_SUBTLETY = 261;

-- Shaman
ELEMENTAL = 262;
ENHANCEMENT = 263;
SHAMAN_ELEMENTAL = 262;
SHAMAN_ENHANCEMENT = 263;
SHAMAN_RESTORATION = 264;

-- Warlock
AFFLICTION = 265;
DEMONOLOGY = 266;
DESTRUCTION = 267;
WARLOCK_AFFLICTION = 265;
WARLOCK_DEMONOLOGY = 266;
WARLOCK_DESTRUCTION = 267;

-- Warrior
ARMS = 71;
FURY = 72;
WARRIOR_ARMS = 71;
WARRIOR_FURY = 72;
WARRIOR_PROTECTION = 73;

-- Achievement Categories
ACHIEVEMENT_CATEGORY_CHARACTER = 92;
ACHIEVEMENT_CATEGORY_GENERAL = 15088;
ACHIEVEMENT_CATEGORY_PVP = 95;
	ACHIEVEMENT_CATEGORY_HONOR = 15266;
	ACHIEVEMENT_CATEGORY_WARSONG_GULCH = 14804;
	ACHIEVEMENT_CATEGORY_ARATHI_BASIN = 14802;
	ACHIEVEMENT_CATEGORY_EYE_OF_THE_STORM = 14803;
	ACHIEVEMENT_CATEGORY_ALTERAC_VALLEY = 14801;
	ACHIEVEMENT_CATEGORY_ASHRAN = 15414;
	ACHIEVEMENT_CATEGORY_ISLE_OF_CONQUEST = 15003;
	ACHIEVEMENT_CATEGORY_WINTERGRASP = 14901;
	ACHIEVEMENT_CATEGORY_BATTLE_FOR_GILNEAS = 15073;
	ACHIEVEMENT_CATEGORY_TWIN_PEAKS = 15074;
	ACHIEVEMENT_CATEGORY_SILVERSHARD_MINES = 15162;
	ACHIEVEMENT_CATEGORY_TEMPLE_OF_KOTMOGU = 15163;
	ACHIEVEMENT_CATEGORY_SEETHING_SHORE = 15292;
	ACHIEVEMENT_CATEGORY_DEEPWIND_GORGE = 15218;
	ACHIEVEMENT_CATEGORY_RATED_BATTLEGOUND = 15092;
	ACHIEVEMENT_CATEGORY_AREANA = 165;
	ACHIEVEMENT_CATEGORY_WORLD = 15283;
ACHIEVEMENT_CATEGORY_QUESTS = 96;
	ACHIEVEMENT_CATEGORY_EASTERN_KINGDOMS_QUESTS = 14861;
	ACHIEVEMENT_CATEGORY_KALIMDOR_QUESTS = 15081;
	ACHIEVEMENT_CATEGORY_OUTLAND_QUESTS = 14862;
	ACHIEVEMENT_CATEGORY_NORTHREND_QUESTS = 14863;
	ACHIEVEMENT_CATEGORY_CATACLYSM_QUESTS = 15070;
	ACHIEVEMENT_CATEGORY_PANDARIA_QUESTS = 15110;
	ACHIEVEMENT_CATEGORY_DRAENOR_QUESTS = 15220;
	ACHIEVEMENT_CATEGORY_LEGION_QUESTS = 15252;
	ACHIEVEMENT_CATEGORY_BATTLE_FOR_AZEROTH_QUESTS = 15284;
	ACHIEVEMENT_CATEGORY_SHADOWLANDS_QUESTS = 15422;
ACHIEVEMENT_CATEGORY_EXPLORATION = 97;
	ACHIEVEMENT_CATEGORY_EASTERN_KINGDOMS_EXP = 14777;
	ACHIEVEMENT_CATEGORY_KALIMDOR_EXP = 14778;
	ACHIEVEMENT_CATEGORY_OUTLAND_EXP = 14779;
	ACHIEVEMENT_CATEGORY_NORTHREND_EXP = 14780;
	ACHIEVEMENT_CATEGORY_CATACLYSM_EXP = 15069;
	ACHIEVEMENT_CATEGORY_PANDARIA_EXP = 15113;
	ACHIEVEMENT_CATEGORY_DRAENOR_EXP = 15235;
	ACHIEVEMENT_CATEGORY_LEGION_EXP = 15257;
	ACHIEVEMENT_CATEGORY_BATTLE_FOR_AZEROTH_EXP = 15298;
	ACHIEVEMENT_CATEGORY_SHADOWLANDS_EXP = 15436;
ACHIEVEMENT_CATEGORY_WORLD_EVENTS = 155;
ACHIEVEMENT_CATEGORY_DUNGEONS_AND_RAIDS = 168;
	ACHIEVEMENT_CATEGORY_CLASSIC_DR = 14808;
	ACHIEVEMENT_CATEGORY_THE_BURNING_CRUSADE_DR = 14805;
	ACHIEVEMENT_CATEGORY_LICH_KING_DUNGEON = 14806;
	ACHIEVEMENT_CATEGORY_LICH_KING_RAID = 14922;
	ACHIEVEMENT_CATEGORY_CATACLYSM_DUNGEON = 15067;
	ACHIEVEMENT_CATEGORY_CATACLYSM_RAID = 15068;
	ACHIEVEMENT_CATEGORY_PANDARIA_DUNGEON = 15106;
	ACHIEVEMENT_CATEGORY_PANDARIA_RAID = 15107;
	ACHIEVEMENT_CATEGORY_DRAENOR_DUNGEON = 15228;
	ACHIEVEMENT_CATEGORY_DRAENOR_RAID = 15231;
	ACHIEVEMENT_CATEGORY_LEGION_DUNGEON = 15254;
	ACHIEVEMENT_CATEGORY_LEGION_RAID = 15255;
	ACHIEVEMENT_CATEGORY_BATTLE_DUNGEON = 15285;
	ACHIEVEMENT_CATEGORY_BATTLE_RAID = 15286;
	ACHIEVEMENT_CATEGORY_SHADOWLANDS_DUNGEON = 15428;
	ACHIEVEMENT_CATEGORY_SHADOWLANDS_RAID = 15438;
ACHIEVEMENT_CATEGORY_PROFESSIONS = 169;
	ACHIEVEMENT_CATEGORY_COOKING = 170;
	ACHIEVEMENT_CATEGORY_FISHING = 171;
	ACHIEVEMENT_CATEGORY_ARCHAEOLOGY = 15071;
ACHIEVEMENT_CATEGORY_REPUTATION = 201;
	ACHIEVEMENT_CATEGORY_CLASSIC_REP = 14864;
	ACHIEVEMENT_CATEGORY_THE_BURNING_CRUSADE_REP = 14865;
	ACHIEVEMENT_CATEGORY_WRATH_OF_THE_LICH_KING_REP = 14866;
	ACHIEVEMENT_CATEGORY_CATACLYSM_REP = 15072;
	ACHIEVEMENT_CATEGORY_PANDARIA_REP = 15114;
	ACHIEVEMENT_CATEGORY_DRAENOR_REP = 15232;
	ACHIEVEMENT_CATEGORY_LEGION_REP = 15258;
	ACHIEVEMENT_CATEGORY_BATTLE_FOR_AZEROTH_REP = 15305;
	ACHIEVEMENT_CATEGORY_SHADOWLANDS_REP = 	15439;
ACHIEVEMENT_CATEGORY_WORLD_EVENTS = 155;
	ACHIEVEMENT_CATEGORY_LUNAR_FESTIVAL = 160;
	ACHIEVEMENT_CATEGORY_LOVE_IS_IN_THE_AIR = 187;
	ACHIEVEMENT_CATEGORY_NOBLEGARDEN = 159;
	ACHIEVEMENT_CATEGORY_CHILDRENS_WEEK = 163;
	ACHIEVEMENT_CATEGORY_MIDSUMMER = 161;
	ACHIEVEMENT_CATEGORY_BREWFEST = 162;
	ACHIEVEMENT_CATEGORY_HALLOWS_END = 158;
	ACHIEVEMENT_CATEGORY_PILGRIMS_BOUNTY = 14981;
	ACHIEVEMENT_CATEGORY_WINTER_VEIL = 156;
	ACHIEVEMENT_CATEGORY_DARKMOON_FAIRE = 15101;
	ACHIEVEMENT_CATEGORY_TIMEWALKING = 15454;
ACHIEVEMENT_CATEGORY_PET_BATTLES = 15117;
	ACHIEVEMENT_CATEGORY_COLLECT = 15118;
	ACHIEVEMENT_CATEGORY_BATTLE = 15119;
	ACHIEVEMENT_CATEGORY_LEVEL = 15120;
ACHIEVEMENT_CATEGORY_COLLECTIONS = 15246;
	ACHIEVEMENT_CATEGORY_TOY_BOX = 15247;
	ACHIEVEMENT_CATEGORY_MOUNTS = 15248;
	ACHIEVEMENT_CATEGORY_APPEARANCES = 15259;
ACHIEVEMENT_CATEGORY_EXPANSION_FEATURES = 15301;
	ACHIEVEMENT_CATEGORY_ARGENT_TOURNAMENT = 14941;
	ACHIEVEMENT_CATEGORY_TOL_BARAD = 15075;
	ACHIEVEMENT_CATEGORY_PANDARIA_SCENARIOS = 15302;
	ACHIEVEMENT_CATEGORY_PROVING_GROUNDS = 15222;
	ACHIEVEMENT_CATEGORY_DRAENOR_GARRISON = 15303;
	ACHIEVEMENT_CATEGORY_LEGION_CLASS_HALL = 15304;
	ACHIEVEMENT_CATEGORY_ISLAND_EXPEDITIONS = 15307;
	ACHIEVEMENT_CATEGORY_WAR_EFFORT = 15308;
	ACHIEVEMENT_CATEGORY_HEART_OF_AZEROTH = 15417;
	ACHIEVEMENT_CATEGORY_VISIONS_OF_NZOTH = 15426;
	ACHIEVEMENT_CATEGORY_TORGHAST = 15440;
	ACHIEVEMENT_CATEGORY_COVENANT_SANCTUMS = 15441;
ACHIEVEMENT_CATEGORY_FEATS_OF_STRENGTH = 81;
	ACHIEVEMENT_CATEGORY_MOUNTS_FOS = 15269;
	ACHIEVEMENT_CATEGORY_DUNGEONS_FOS = 15272;
	ACHIEVEMENT_CATEGORY_RAIDS_FOS = 15271;
	ACHIEVEMENT_CATEGORY_PVP_FOS = 15270;
	ACHIEVEMENT_CATEGORY_REPUTATION_FOS = 15273;
	ACHIEVEMENT_CATEGORY_EVENTS_FOS = 15274;
	ACHIEVEMENT_CATEGORY_PROMOTIONS_FOS = 15268;
ACHIEVEMENT_CATEGORY_LEGACY = 15234;
	ACHIEVEMENT_CATEGORY_CHARACTER_LEGACY = 15446;
	ACHIEVEMENT_CATEGORY_QUESTS_LEGACY = 15447;
	ACHIEVEMENT_CATEGORY_PVP_LEGACY = 15279;
	ACHIEVEMENT_CATEGORY_DUNGEONS_LEGACY = 15277;
	ACHIEVEMENT_CATEGORY_RAIDS_LEGACY = 15278;
	ACHIEVEMENT_CATEGORY_PROFESSIONS_LEGACY = 172;
	ACHIEVEMENT_CATEGORY_CURRENCIES_LEGACY = 15280;
	ACHIEVEMENT_CATEGORY_WORLD_EVENTS_LEGACY = 15416;
	ACHIEVEMENT_CATEGORY_EXPANSION_FEATURES_LEGACY = 15411;

-------------------------------------------
--     C U S T O M   H E A D E R S       --
-------------------------------------------
-- Zone Headers --
ACHIEVEMENTS = -4;
--BONUS_OBJECTIVES = -221;
COMMON_VENDOR_ITEMS = -3;
--DROPS = -26;
--EMISSARY_QUESTS = -169;
EXPLORATION = -15;
FLIGHT_PATHS = -6;
QUESTS = -17;
RARES = -16;
REWARDS = -18;
SPECIAL = -77;
TREASURES = -212;
VENDORS = -2;
WORLD_QUESTS = -34;
ZONE_DROPS = 0;
--ZONE_REWARDS = -903;

-- Factions
FACTIONS = -8;
FACTION_HEADER_NEUTRAL = -29;
FACTION_HEADER_ALLIANCE = -30;
FACTION_HEADER_HORDE = -31;

-- Slot Categories
HEAD = -320;
SHOULDER = -321;
BACK = -322;
CHEST = -323;
WRIST = -326;
HANDS = -327;
WAIST = -328;
LEGS = -329;
FEET = -330;
NECK = -384;
FINGER = -385;
-- Meta Slot
ARMOR = -318;
WEAPONS = -319;

-- D&R
COMMON_BOSS_DROPS = -1;
WORLD_BOSSES = -7;
BOSSES = -10;

-- Pet
--PET_BATTLE = -796;
--PET_JOURNAL = -797;

-- Battlegrounds
ALTERAC_VALLEY = 1459;
ARATHI_BASIN = 1461;
EYE_OF_THE_STORM = 1956;
WARSONG_GULCH = 1460;
WINTERGRASP = 1334;

-- PvP Headers
PVP = -9;
PVP_HONOR = -9983;
PVP_ASPIRANT = -659;
PVP_COMBATANT = -660;
PVP_GLADIATOR = -661;
PVP_ELITE = -662;
BATTLEGROUNDS = -304;
RATED_BATTLEGROUNDS = -650;

-- PvP Seasons
SEASON_GLADIATOR = -664;
SEASON_MERCILESS = -665;
SEASON_VENGEFUL = -666;
SEASON_BRUTAL = -667;
--PRE_SEASON_HATEFUL = -657;
--SEASON_DEADLY = -668;
--SEASON_FURIOUS = -669;
--SEASON_RELENTLESS = -670;
--SEASON_WRATHFUL = -671;
--SEASON_VICIOUS = -672;
--	HONOR_RUTHLESS = -656;
--SEASON_RUTHLESS = -673;
--	HONOR_CATACLYSMIC = -654;
--SEASON_CATACLYSMIC = -674;
--SEASON_MALEVOLENT = -675;
--	HONOR_TYRANNICAL = -653;
--SEASON_TYRANNICAL = -676;
--	HONOR_GRIEVOUS = -652;
--SEASON_GRIEVOUS = -677;
--	HONOR_PRIDEFUL = -651;
--SEASON_PRIDEFUL = -678;
--SEASON_PRIMAL = -679;
--SEASON_WILD = -680;
--SEASON_WARMONGERING = -681;
--SEASON_VINDICTIVE = -682;
--SEASON_FEARLESS = -683;
--SEASON_CRUEL = -684;
--SEASON_FEROCIOUS = -685;
--SEASON_FIERCE = -686;
--SEASON_DOMINANT = -687;
--SEASON_DEMONIC = -688;
--SEASON_DREAD = -689;
--SEASON_SINISTER = -690;
--SEASON_NOTORIOUS = -691;
--SEASON_CORRUPTED = -692;
--SEASON_SINFUL = -693;
--SEASON_UNCHAINED = -694;
--SEASON_COSMIC = -695;
--SEASON_ETERNAL = -696;

-- Expansion Features
--LEGENDARIES = -364;
LEGENDARY_QUESTLINE = -10066;
	-- WoD
	--GARRISONS = -9966;
	--BUILDINGS = -99;
	-- Legion
	--ARTIFACTS = -10067;
	--CLASS_HALL = -9965;
	-- BFA
	--ISLAND_EXPEDITIONS = -3338;
	--AZERITE_ESSENCES = -852;
	-- SL
	--KYRIAN = -939;
	--NECROLORD = -920;
	--NIGHT_FAE = -929;
	--VENTHYR = -949;
	--CONDUITS = -981;

-- Class Trials
--CLASS_TRIAL = -5350;
--LEVEL_NINETY = -137;
--LEVEL_HUNDRED = -138;
--LEVEL_HUNDRED_TEN = -149;
--LEVEL_HUNDRED_TWENTY = -150;
--LEVEL_FOURTY_EIGHT = -154;
--LEVEL_FIFTY_BOOST = -155;
--LEVEL_FIFTY_TRIAL = -148;
--LEVEL_SIXTY = -156;

-- Special
MAILBOX = -297;
--PROMOTIONS = -31;
TCG_HEADER = -535;
--IN_GAME_SHOP = -36;
--HOLIDAYS = -3;
--WORLD_EVENTS = -519;

-- Anniversary
--FOURTH_ANNIVERSARY = -5353;
--FIFTH_ANNIVERSARY = -5354;
--SIXTH_ANNIVERSARY = -5355;
--SEVENTH_ANNIVERSARY = -5356;
--EIGTHT_ANNIVERSARY = -5357;
--NINTH_ANNIVERSARY = -5358;
--TENTH_ANNIVERSARY = -5359;
--ELEVENTH_ANNIVERSARY = -5360;
--TWELFTH_ANNIVERSARY = -5361;
--THIRTEENTH_ANNIVERSARY = -5362;
--FOURTEENTH_ANNIVERSARY = -5363;
--FIFTEENTH_ANNIVERSARY = -5364;
--SIXTEENTH_ANNIVERSARY = -5365;
--SEVENTEENTH_ANNIVERSARY = -5366;
--------------------------
--     T H E  E N D     --
--------------------------

-- Filters
HELD_IN_OFF_HAND = 1;
COSMETIC = 2;
CLOAKS = 3; -- BACK is used by multiple symlinks asking for headerID.
CLOTH = 4;
LEATHER = 5;
MAIL = 6;
PLATE = 7;
SHIELDS = 8;
TABARDS = 9;
SHIRTS = 10;
DAGGERS = 20;
ONE_HANDED_AXES = 21;
TWO_HANDED_AXES = 22;
ONE_HANDED_MACES = 23;
TWO_HANDED_MACES = 24;
ONE_HANDED_SWORDS = 25;
TWO_HANDED_SWORDS = 26;
WANDS = 27;
STAVES = 28;
POLEARMS = 29;
GUNS = 31;
BOWS = 32;
CROSSBOWS = 33;
FIST_WEAPONS = 34;
WARGLAIVES = 35;
THROWN = 36;
MISC = 50;
NECK_F = 51;
FINGER_F = 52;
TRINKET_F = 53;
CONSUMABLES = 55;
MOUNTS = 100;
BATTLE_PETS = 101;
TOYS = 102;
QUEST_ITEMS = 104;
TITLES = 110;
BAGS = 113;
RECIPES = 200;

-- Professions
PROFESSIONS = -38;
DISCOVERY = -37;
ALCHEMY = 171;
ARCHAEOLOGY = 794;
BLACKSMITHING = 164;
COOKING = 185;
ENCHANTING = 333;
ENGINEERING = 202;
GOBLIN_ENGINEERING = 20222;
GNOMISH_ENGINEERING = 20219;
FIRST_AID = 129;
FISHING = 356;
HERBALISM = 182;
INSCRIPTION = 773;
JEWELCRAFTING = 755;
JUNKYARD_TINKERING = 2720;
LEATHERWORKING = 165;
LOCKPICKING = 633;
MINING = 186;
POISONS = 40;
PROTOFORM_SYNTHESIS = 2819;
SKINNING = 393;
TAILORING = 197;

-- D&R Tiers
CLASSIC_TIER = 1;
TBC_TIER = 2;
WOTLK_TIER = 3;
CATA_TIER = 4;
MOP_TIER = 5;
WOD_TIER = 6;
LEGION_TIER = 7;
BFA_TIER = 8;
SL_TIER = 9;

-- #if AFTER CATA
CURRENT_TIER = CATA_TIER;
-- #elseif AFTER WRATH
CURRENT_TIER = WRATH_TIER;
-- #elseif AFTER TBC
CURRENT_TIER = TBC_TIER;
-- #else
CURRENT_TIER = CLASSIC_TIER;
-- #endif

-- Unobtainable Filters
NEVER_IMPLEMENTED = 1;
REMOVED_FROM_GAME = 2;
BLACK_MARKET = 3;
BLIZZARD_BALANCE = 3;
TCG = 3;
ELITE_PVP_REQUIREMENT = 4;

-- #if ANYCLASSIC
-- Classic Phases
PHASE_ONE = 11;
PHASE_ONE_DIREMAUL = 1101;
PHASE_TWO = 12;
PHASE_THREE = 13;
PHASE_FOUR = 14;
PHASE_FIVE = 15;
PHASE_FIVE_WAR_EFFORT = 1501;
PHASE_FIVE_GONG = 1502;
PHASE_FIVE_WAR = 1503;
PHASE_FIVE_CATCH_UP = 1504;
PHASE_SIX = 16;
PHASE_SIX_SCOURGE_INVASION = 1601;
PHASE_SIX_SILITHYST = 1602;
PHASE_SIX_CLASSICERA = 1603;

-- TBC Classic Phases
TBC_PHASE_ONE = 17;
TBC_PHASE_ONE_DARKPORTAL = 1701;
TBC_PHASE_TWO = 18;
TBC_PHASE_TWO_OGRILA = 1801;
TBC_PHASE_TWO_SKYGUARD = 1802;
TBC_PHASE_TWO_SWIFTFLIGHTFORM = 18;	-- Subcategory not necessary.
TBC_PHASE_THREE = 19;
TBC_PHASE_THREE_NETHERWING = 1901;
TBC_PHASE_THREE_GLAIVEPRIO = 1902;
TBC_PHASE_FOUR = 20;
TBC_PHASE_FIVE = 21;
TBC_PHASE_FIVE_OFFENSIVE_PHASE_ONE = 21;	-- Note: Same as above, distinction isn't necessary, but it helps keep timeline data streamlined.
TBC_PHASE_FIVE_OFFENSIVE_PHASE_TWO = 2101;
TBC_PHASE_FIVE_OFFENSIVE_PHASE_TWO_B = 2102;
TBC_PHASE_FIVE_OFFENSIVE_PHASE_THREE = 2103;
TBC_PHASE_FIVE_OFFENSIVE_PHASE_THREE_B = 2104;
TBC_PHASE_FIVE_OFFENSIVE_PHASE_FOUR = 2105;
TBC_PHASE_FIVE_OFFENSIVE_PHASE_FOUR_B = 2106;
TBC_PHASE_FIVE_OFFENSIVE_PHASE_FOUR_C = 2107;

-- Wrath Classic Phases
WRATH_PHASE_ONE = 30;
WRATH_PHASE_ONE_REALM_FIRST = 3001;
WRATH_PHASE_TWO = 31;
WRATH_PHASE_THREE = 32;
WRATH_PHASE_FOUR = 33;
WRATH_PHASE_FIVE = 34;
WRATH_PHASE_SIX = 35;

-- NOTE: Reason for this is to show when stuff is going away eventually.
-- Cataclysm Classic Phases
CATA_PHASE_ONE = 40;

-- Mists of Pandaria Classic Phases
MOP_PHASE_ONE = 50;

-- Warlords of Draenor Classic Phases
WOD_PHASE_ONE = 60;

-- Legion Classic Phases
LEGION_PHASE_ONE = 70;

-- Battle for Azeroth Phases
BFA_PHASE_ONE = 80;

-- Shadowlands Phases
SHADOWLANDS_PHASE_ONE = 90;

-- Done defining Phases for Classic
-- #endif

-- Holiday Filters
BREWFEST = 1000;
CHILDRENS_WEEK = 1001;
DARKMOON_FAIRE = 1012;
DAY_OF_THE_DEAD = 1002;
FEAST_OF_WINTER_VEIL = 1003;
FIREWORKS_CELEBRATION = 1009;
HALLOWS_END = 1004;
HARVEST_FESTIVAL = 1005;
LOVE_IS_IN_THE_AIR = 1006;
LUNAR_FESTIVAL = 1007;
MICRO_HOLIDAY = 1014;
MIDSUMMER_FIRE_FESTIVAL = 1008;
NOBLEGARDEN = 1010;
PILGRIMS_BOUNTY = 1013;
PIRATES_DAY = 1011;
STRANGLETHORN_FISHING_EXTRAVAGANZA = 1015;
TIMEWALKING = 1016;
WOW_ANNIVERSARY = 1017;

-- Helper Tables
local DifficultyDB = {
	[1] = { icon = "Interface/Worldmap/Skull_64Green", modID = 1 },
	[2] = { icon = "Interface/Worldmap/Skull_64Blue", modID = 2 },
	[3] = { icon = "Interface/Worldmap/Skull_64Green", modID = 1 },
	[4] = { icon = "Interface/Worldmap/Skull_64Green", modID = 1 },
	[5] = { icon = "Interface/Worldmap/Skull_64Blue", modID = 1 },
	[6] = { icon = "Interface/Worldmap/Skull_64Blue", modID = 1 },
	[7] = { icon = "Interface/Worldmap/Skull_64Grey", modID = 1 },
	[14] = { icon = "Interface/Worldmap/Skull_64Green", modID = 3 },
	[15] = { icon = "Interface/Worldmap/Skull_64Blue", modID = 5 },
	[16] = { icon = "Interface/Worldmap/Skull_64Purple", modID = 6 },
	[17] = { icon = "Interface/Worldmap/Skull_64Grey", modID = 4 },
	[18] = { icon = "Interface/Worldmap/Skull_64Green", modID = 1 },	-- Event
	[23] = { icon = "Interface/Worldmap/Skull_64Purple", modID = 23 },
	[24] = { icon = "Interface/Worldmap/Skull_64Red", modID = 22, u = TIMEWALKING },
	[33] = { icon = "Interface/Worldmap/Skull_64Red", modID = 22, u = TIMEWALKING },
};

ItemClassInfo = {
	{
		"Soul Bag", -- [1]
		"Herb Bag", -- [2]
		"Enchanting Bag", -- [3]
		"Engineering Bag", -- [4]
		"Gem Bag", -- [5]
		"Mining Bag", -- [6]
		"Leatherworking Bag", -- [7]
		"Inscription Bag", -- [8]
		"Tackle Box", -- [9]
		"Cooking Bag", -- [10]
		[0] = "Bag",
		["class"] = "Container",
	}, -- [1]
	{
		"Two-Handed Axes", -- [1]
		"Bows", -- [2]
		"Guns", -- [3]
		"One-Handed Maces", -- [4]
		"Two-Handed Maces", -- [5]
		"Polearms", -- [6]
		"One-Handed Swords", -- [7]
		"Two-Handed Swords", -- [8]
		"Warglaives", -- [9]
		"Staves", -- [10]
		"Bear Claws", -- [11]
		"CatClaws", -- [12]
		"Fist Weapons", -- [13]
		"Miscellaneous", -- [14]
		"Daggers", -- [15]
		"Thrown", -- [16]
		"Spears", -- [17]
		"Crossbows", -- [18]
		"Wands", -- [19]
		"Fishing Poles", -- [20]
		[0] = "One-Handed Axes",
		["class"] = "Weapon",
	}, -- [2]
	{
		"Agility", -- [1]
		"Strength", -- [2]
		"Stamina", -- [3]
		"Spirit", -- [4]
		"Critical Strike", -- [5]
		"Mastery", -- [6]
		"Haste", -- [7]
		"Versatility", -- [8]
		"Other", -- [9]
		"Multiple Stats", -- [10]
		"Artifact Relic", -- [11]
		[0] = "Intellect",
		["class"] = "Gem",
	}, -- [3]
	{
		"Cloth", -- [1]
		"Leather", -- [2]
		"Mail", -- [3]
		"Plate", -- [4]
		"Cosmetic", -- [5]
		"Shields", -- [6]
		"Librams", -- [7]
		"Idols", -- [8]
		"Totems", -- [9]
		"Sigils", -- [10]
		"Relic", -- [11]
		[0] = "Miscellaneous",
		["class"] = "Armor",
	}, -- [4]
	{
		"Keystone", -- [1]
		[0] = "Reagent",
		["class"] = "Reagent",
	}, -- [5]
	{
		"Bolt(OBSOLETE)", -- [1]
		"Arrow", -- [2]
		"Bullet", -- [3]
		"Thrown(OBSOLETE)", -- [4]
		[0] = "Wand(OBSOLETE)",
		["class"] = "Projectile",
	}, -- [6]
	{
		"Parts", -- [1]
		"Explosives (OBSOLETE)", -- [2]
		"Devices (OBSOLETE)", -- [3]
		"Jewelcrafting", -- [4]
		"Cloth", -- [5]
		"Leather", -- [6]
		"Metal & Stone", -- [7]
		"Cooking", -- [8]
		"Herb", -- [9]
		"Elemental", -- [10]
		"Other", -- [11]
		"Enchanting", -- [12]
		"Materials (OBSOLETE)", -- [13]
		"Item Enchantment (OBSOLETE)", -- [14]
		"Weapon Enchantment - Obsolete", -- [15]
		"Inscription", -- [16]
		"Explosives and Devices (OBSOLETE)", -- [17]
		[0] = "Trade Goods (OBSOLETE)",
		["class"] = "Tradeskill",
	}, -- [7]
	{
		"Neck", -- [1]
		"Shoulder", -- [2]
		"Cloak", -- [3]
		"Chest", -- [4]
		"Wrist", -- [5]
		"Hands", -- [6]
		"Waist", -- [7]
		"Legs", -- [8]
		"Feet", -- [9]
		"Finger", -- [10]
		"Weapon", -- [11]
		"Two-Handed Weapon", -- [12]
		"Shield/Off-hand", -- [13]
		"Misc", -- [14]
		[0] = "Head",
		["class"] = "Item Enhancement",
	}, -- [8]
	{
		"Leatherworking", -- [1]
		"Tailoring", -- [2]
		"Engineering", -- [3]
		"Blacksmithing", -- [4]
		"Cooking", -- [5]
		"Alchemy", -- [6]
		"First Aid", -- [7]
		"Enchanting", -- [8]
		"Fishing", -- [9]
		"Jewelcrafting", -- [10]
		"Inscription", -- [11]
		"Poisons",	-- [12]
		[0] = "Book",
		["class"] = "Recipe",
	}, -- [9]
	{
		[0] = "Money(OBSOLETE)",
		["class"] = "Money(OBSOLETE)",
	}, -- [10]
	{
		"Bolt(OBSOLETE)", -- [1]
		"Quiver", -- [2]
		"Ammo Pouch", -- [3]
		[0] = "Quiver(OBSOLETE)",
		["class"] = "Quiver",
	}, -- [11]
	{
		[0] = "Quest",
		["class"] = "Quest",
	}, -- [12]
	{
		"Lockpick", -- [1]
		[0] = "Key",
		["class"] = "Key",
	}, -- [13]
	{
		[0] = "Permanent",
		["class"] = "Permanent(OBSOLETE)",
	}, -- [14]
	{
		"Reagent", -- [1]
		"Companion Pets", -- [2]
		"Holiday", -- [3]
		"Other", -- [4]
		"Mount", -- [5]
		[0] = "Junk",
		["class"] = "Miscellaneous",
	}, -- [15]
	{
		"Warrior", -- [1]
		"Paladin", -- [2]
		"Hunter", -- [3]
		"Rogue", -- [4]
		"Priest", -- [5]
		"Death Knight", -- [6]
		"Shaman", -- [7]
		"Mage", -- [8]
		"Warlock", -- [9]
		"Monk", -- [10]
		"Druid", -- [11]
		"Demon Hunter", -- [12]
		["class"] = "Glyph",
	}, -- [16]
	{
		"Dragonkin", -- [1]
		"Flying", -- [2]
		"Undead", -- [3]
		"Critter", -- [4]
		"Magic", -- [5]
		"Elemental", -- [6]
		"Beast", -- [7]
		"Aquatic", -- [8]
		"Mechanical", -- [9]
		[0] = "Humanoid",
		["class"] = "Battle Pets",
	}, -- [17]
	{
		[0] = "WoW Token",
		["class"] = "WoW Token",
	}, -- [18]
	[0] = {
		"Potion", -- [1]
		"Elixir", -- [2]
		"Flask", -- [3]
		"Scroll (OBSOLETE)", -- [4]
		"Food & Drink", -- [5]
		"Item Enhancement (OBSOLETE)", -- [6]
		"Bandage", -- [7]
		"Other", -- [8]
		"Vantus Runes", -- [9]
		[0] = "Explosives and Devices",
		["class"] = "Consumable",
	},
};
TIMEWALKING_DUNGEON_CREATURE_IDS = {};
POST_PROCESSING_FUNCTIONS = {};

-- Construct a commonly formatted object.
struct = function(field, id, t)
	if not t then t = {};
	elseif not t.groups and t[1] then
		t = { ["groups"] = bubbleUp(t) };
	elseif t.groups then
		t.groups = bubbleUp(t.groups);
	end
	t[field] = id;
	return t;
end

-- Helper Functions
isarray = function(t)
	return t and type(t) == 'table' and (#t > 0 or next(t) == nil);
end
-- Ensures that 't' has a 'groups' field containing the array data of the table
togroups = function(t)
	if isarray(t) then
		local groups = {};
		for _,group in ipairs(t) do
			table.insert(groups, group);
		end
		t = { ["groups"] = groups };
	end
	return t;
end
addObject = function(o, t)
	table.insert(t, o);
	return t;
end
appendGroups = function(common, groups)
	if not groups then groups = {}; end
	if common then
		for i,o in ipairs(common) do
			table.insert(groups, o);
		end
	end
	return groups;
end
-- Simply applies keys from 'data' into 't' where each key does not already exist
applyData = function(data, t)
	if data and t then
		for key, value in pairs(data) do
			if t[key] == nil then	-- dont' replace existing data
				t[key] = value;
			end
		end
	end
end
-- Applies a copy of the provided data into the tables of the provided array
sharedData = function(data, t)
	if t then
		for _,group in ipairs(t) do
			applyData(data, group);
		end
	end
	return t;
end
-- Performs sharedData logic but also applies the data to the top-level table
sharedDataSelf = function(data, t)
	-- if this is an array, convert to .g container first to prevent merge confusion
	t = togroups(t);
	-- then apply the data to itself
	applyData(data, t);
	-- then apply regular sharedData on the group
	return sharedData(data, t);
end
-- Applies a copy of the provided data into all sub-groups of the provided table/array
bubbleDown = function(data, t)
	if t then
		if t.g or t.groups then
			applyData(data, t);
			bubbleDown(data, t.groups);
			bubbleDown(data, t.g);
		elseif isarray(t) then
			for _,group in ipairs(t) do
				bubbleDown(data, group);
			end
		else
			applyData(data, t);
		end
		return t;
	end
end
-- Applies a copy of the provided data into all sub-groups of the provided table/array assuming that table matches the requirements of the filter.
bubbleDownFiltered = function(data, filter, t)
	if t then
		if t.g or t.groups then
			if filter(t) then applyData(data, t); end
			bubbleDownFiltered(data, filter, t.groups);
			bubbleDownFiltered(data, filter, t.g);
		elseif isarray(t) then
			for _,group in ipairs(t) do
				bubbleDownFiltered(data, filter, group);
			end
		else
			if filter(t) then applyData(data, t); end
		end
		return t;
	end
end
bubbleDownAndReplace = function(data, t)
	if t then
		if t.g or t.groups then
			for key, value in pairs(data) do
				t[key] = value;
			end
			bubbleDown(data, t.groups);
			bubbleDown(data, t.g);
		elseif isarray(t) then
			for i,group in ipairs(t) do
				bubbleDown(data, group);
			end
		else
			for key, value in pairs(data) do
				t[key] = value;
			end
		end
		return t;
	end
end
-- Performs bubbleDown logic but also applies the data to the top-level table
bubbleDownSelf = function(data, t)
	-- if this is an array, convert to .g container first to prevent merge confusion
	t = togroups(t);
	-- then apply regular bubbleDown on the group
	return bubbleDown(data, t);
end
bubbleUp = function(t)
	if t then
		local t2 = {};
		for i, group in pairs(t) do
			table.insert(t2, group);
		end
		for i=#t,1,-1 do
			table.remove(t, i);
		end
		for i, group in pairs(t2) do
			if type(i) ~= "number" then
				print("You're trying to use '" .. i .. "' in a 'groups' field. (can't do that!)");
			elseif type(group) ~= "table" then
				print("You're trying to use '" .. group .. "' in a 'groups' field. (can't do that!)");
			else
				if group.bubble then
					-- this isn't just a normal group object, merge up the contents.
					if group.groups or group.g then
						for j,subgroup in pairs(group.groups or group.g) do
							if type(j) ~= "number" then
								print("You're trying to use '" .. j .. "' in a 'groups' field. (can't do that!)");
							elseif type(subgroup) ~= "table" then
								print("You're trying to use '" .. subgroup .. "' in a 'groups' field. (can't do that!)");
							else
								table.insert(t, subgroup);
							end
						end
					end
				else
					table.insert(t, group);
				end
			end
		end
		return t;
	end
end
contains = function(arr, value)
	for i,value2 in ipairs(arr) do
		if value2 == value then return true; end
	end
end
containsAny = function(arr, otherArr)
	for i, v in ipairs(arr) do
		for j, w in ipairs(otherArr) do
			if v == w then return true; end
		end
	end
end
containsValue = function(dict, value)
	for key,value2 in pairs(dict) do
		if value2 == value then return true; end
	end
end
exclude = function(data, t)
	local t2 = {};
	if type(data) == "table" then
		-- Group of Values (You shouldn't be excluding a complex object if that's what you're trying to do)
		if #data > 0 then
			for i,o in ipairs(t) do
				if not contains(data, o) then
					table.insert(t2, o);
				end
			end
		else
			-- Just create a clone
			for i,o in ipairs(t) do
				table.insert(t2, o);
			end
		end
	else
		-- Single Value
		for i,o in ipairs(t) do
			if o ~= data then
				table.insert(t2, o);
			end
		end
	end
	return t2;
end
excludeMany = function(t, ...)
	return exclude({...}, t);
end
merge = function(...)
	local t = {};
	for i,groups in ipairs({...}) do
		for j,o in ipairs(groups) do
			table.insert(t, o);
		end
	end
	return t;
end
run = function(method, t)
	if t then
		if t.g or t.groups then
			method(t);
			run(method, t.groups);
			run(method, t.g);
		elseif isarray(t) then
			for _,group in ipairs(t) do
				run(method, group);
			end
		else
			method(t);
		end
		return t;
	end
end
unpack = function(t, i)
  i = i or 1
  if t[i] ~= nil then
	return t[i], unpack(t, i + 1)
  end
end

-- Asset Path Helper Functions
asset = function(path)
	return "Interface\\Addons\\ATT-Classic\\assets\\" .. path;
end
icon = function(path)
	return "Interface\\Icons\\" .. path;
end

-- Classic / Retail Helper Functions
applyclassicphase = function(phase, data)
	-- #if ANYCLASSIC
	return bubbleDown({ ["u"] = phase }, data);
	-- #else
	return data;
	-- #endif
end
applyholiday = function(holiday, data)
	return bubbleDown({ ["u"] = holiday }, data);
end
lvlsquish = function(originalLvl, shadowlandsLvl, retailLvl)
	-- #if ANYCLASSIC
	return originalLvl;
	-- #elseif AFTER SHADOWLANDS
	return shadowlandsLvl;
	-- #else
	return retailLvl or originalLvl;
	-- #endif
end
removeclassicphase = function(t)
	-- #if ANYCLASSIC
	if t then
		if t.g or t.groups then
			t.u = nil;
			removeclassicphase(t.groups);
			removeclassicphase(t.g);
		elseif isarray(t) then
			for i,group in ipairs(t) do
				removeclassicphase(group);
			end
		else
			t.u = nil;
		end
		return t;
	end
	-- #else
	return t;
	-- #endif
end

-- SHORTCUTS for Object Class Types
ach = function(id, altID, t)							-- Create an ACHIEVEMENT Object
	if t or type(altID) == "number" then
		t = struct("allianceAchievementID", id, t or {});
		t["hordeAchievementID"] = altID;
		return applyclassicphase(WRATH_PHASE_ONE, t);
	else
		return applyclassicphase(WRATH_PHASE_ONE, struct("achievementID", id, altID));
	end
end
achcat = function(id, t)								-- Create an ACHIEVEMENT CATEGORY Object
	return struct("achievementCategoryID", id, t);
end
achievementCategory = achcat;
battlepet = function(id, t)								-- Create a BATTLE PET Object (Battle Pet == Species == Pet)
	t = struct("speciesID", id, t);
	if not t.itemID then t.u = WRATH_PHASE_ONE; end
	return t;
end
pet = battlepet;										-- Create a BATTLE PET Object (alternative shortcut)
p = battlepet;											-- Create a BATTLE PET Object (alternative shortcut)
battlepettype = function(id, t)							-- Create a BATTLE PET TYPE Object
	return struct("petTypeID", id, t);
end
bpt = battlepettype;									-- Create a BATTLE PET TYPE Object (alternative shortcut)
cat = function(id, t)									-- Create a CATEGORY Object.
	return struct("categoryID", id, t);
end
category = function(id, t)								-- Create a CATEGORY Object.
	return struct("categoryID", id, t);
end
cl = function(id, specc, t)									-- Create a CHARACTER CLASS Object
	-- specc is optional
	if not t then
		t = specc;
	else
		if specc == FROST or specc == RESTORATION or specc == HOLY or specc == PROTECTION then
			if id == MAGE then
				specc = 64;
			elseif id == SHAMAN then
				specc = 264;
			elseif id == PRIEST then
				specc = 257
			elseif id == WARRIOR then
				specc = 73;
			end
		end
		id = id + (specc / 1000 )
		t = togroups(t)
	end;
	return struct("classID", id, t);
end
creature = function(id, t)								-- Create a CREATURE Object
	return struct("creatureID", id, t);
end
cr = creature;											-- Create a CREATURE Object (alternative shortcut)
currency = function(id, t)								-- Create a CURRENCY Object
	return struct("currencyID", id, t);
end
d = function(id, t)										-- Create a DIFFICULTY Object
	t = struct("difficultyID", id, t);
	-- #if AFTER MOP
	local db = DifficultyDB[id];
	if db then t.modID = db.modID; end
	-- #endif
	return t;
end
faction = function(id, t)								-- Create a FACTION Object
	return struct("factionID", id, t);
end
e = function(id, t)										-- Create an ENCOUNTER Object
	-- #if BEFORE CATA
	-- Not yet supported in classic.
	if t then
		if t.groups or t.g then
			-- Convert to a Header or NPC ID.
			if t.npcID then
				return t;
			elseif t.creatureID then
				t.npcID = t.creatureID;
				t.creatureID = nil;
				return t;
			elseif t.cr then
				t.npcID = t.cr;
				t.cr = nil;
				return t;
			elseif t.crs then
				t.npcID = t.crs[1];
				table.remove(t.crs, 1);
				if #t.crs < 1 then
					t.crs = nil;
				end
				return t;
			else
				t.npcID = -1;
				return t;
			end
		else
			return { ["npcID"] = -1, ["groups"] = t };
		end
	end
	-- #else
	return struct("encounterID", id, t);
	-- #endif
end
exploration = function(id, t)							-- Create an EXPLORATION Object
	if type(t) == "string" then t = { ["maphash"] = t }; end
	return struct("explorationID", id, t);
end
explorationBatch = function(data)
	local groups = {};
	for maphash,explorationID in pairs(data) do
		table.insert(groups, exploration(explorationID, maphash));
	end
	return groups;
end
flightpath = function(id, t)							-- Create a FLIGHT PATH Object
	return struct("flightPathID", id, t);
end
fp = flightpath;										-- Create a FLIGHT PATH Object (Alternative)
filter = function(id, t)								-- Create a FILTER Object
	return struct("f", id, t);
end
f = filter;												-- Create a FILTER Object (Alternative)
follower = function(id, t)								-- Create a FOLLOWER Object
	return struct("followerID", id, t);
end
garrisonBuilding = function(id, t)						-- Create a GARRISON BUILDING Object
	return struct("buildingID", id, t);
end
gb = garrisonBuilding;									-- Create a GARRISON BUILDING Object (Alternative)
garrisonTalent = function(id, t)						-- Create a GARRISON TALENT Object
	return struct("talentID", id, t);
end
gt = function(id, t)									-- Create an GARRISON TALENT Object (Alternative)
	return struct("talentID", id, t);
end
gs = function(id, t)									-- Create a GEAR SET Object (IE: "Vestments of Prophecy")
	return struct("setID", id, t);
end
gsh = function(id, t)									-- Create a GEAR SET HEADER Object (IE: "Season 1")
	return struct("setHeaderID", id, t);
end
gssh = function(id, t)									-- Create a GEAR SET SUB HEADER Object (IE: "Gladiator")
	return struct("setSubHeaderID", id, t);
end
heir = function(id, t)									-- Create an HEIRLOOM Object(NOTE: You should only use this if not an appearance)
	return struct("itemID", id, t);
end
holiday = function(id, t)								-- Create an HOLIDAY Object
	return struct("holidayID", id, t);
end
ho = holiday;											-- Create an HOLIDAY Object (alternative shortcut)
illusion = function(id, t)								-- Create an ILLUSION Object (only necessary for illusions without itemIDs)
	return struct("illusionID", id, t);
end
ill = illusion;											-- Create an ILLUSION Object
item = function(id, t)									-- Create an ITEM Object
	return struct("itemID", id, t);
end
i = item;												-- Create an ITEM Object (alternative shortcut)
ig = function(id, t)									-- Create an ITEM Object that ignores bonus IDs.
	t = struct("itemID", id, t);
	-- #if NOT ANYCLASSIC
	t.ignoreBonus = true;
	-- #endif
	return t;
end
inst = function(id, t)									-- Create an INSTANCE Object
	if t then
		t.instanceID = id;
		-- #if BEFORE WRATH
		-- Not yet supported in classic.
		if t.groups or t.g then
			-- Convert to a MAP ID.
			if t.mapID then
				return t;
			else
				if t.maps then
					t.mapID = t.maps[1];
					table.remove(t.maps, 1);
					if #t.maps < 1 then
						t.maps = nil;
					end
				else
					error("Instance Missing a MapID.");
				end
				return t;
			end
		else
			return { ["npcID"] = -1, ["groups"] = t };
		end
		-- #endif
		return t;
	else
		return struct("instanceID", id, t);
	end
end
inst_tw = function(id ,t)								-- Create a TIMEWALKING INSTANCE Object
	t = inst(id, t);
	t.u = TIMEWALKING;
	-- Look for the CreatureID's
	local groups = t.groups or t.g;
	if groups then
		for _,data in ipairs(groups) do
			if data.encounterID then
				if data.creatureID and data.creatureID > 0 then
					table.insert(TIMEWALKING_DUNGEON_CREATURE_IDS, data.creatureID);
				end
				if data.crs then
					for _,creatureID in ipairs(data.crs) do
						table.insert(TIMEWALKING_DUNGEON_CREATURE_IDS, creatureID);
					end
				end
			end
		end
	end
	return t;
end
map = function(id, t)									-- Create a MAP Object
	return struct("mapID", id, t);
end
m = map;												-- Create a MAP Object (alternative shortcut)
mark = function(cost, item)								-- Assign a Mark of Honor cost to an item with proper timeline requirements.
	-- #if AFTER 7.0.3.22248
	item["cost"] = { { "i", 137642, cost } };	-- Mark of Honor
	-- #endif
	return item;
end
mission = function(id, t)								-- Create an MISSION Object
	return struct("missionID", id, t);
end
mi = function(id, t)									-- Create a MISSION Object (Alternative)
	return struct("missionID", id, t);
end
mount = function(id, t)									-- Create a MOUNT Object, which is just a spellID with a filter.
	return struct("mountID", id, t);
end
npc = function(id, t)									-- Create an NPC Object (negative indicates that it is custom)
	if not id then
		--error("NPC ID Missing!");
		if t then
			return unpack(t);
		else
			return nil;
		end
	end
	return struct("npcID", id, t);
end
n = npc;												-- Create an NPC Object (alternative shortcut)
obj = function(id, t)									-- Create a WORLD OBJECT Object (an interactable, non-NPC object out in the world - like a chest)
	return struct("objectID", id, t);
end
o = obj;												-- Create a WORLD OBJECT Object (alternative shortcut)
petbattle = function(t)									-- Flag all nested content as requiring Pet Battle gameplay
	-- #if ANYCLASSIC
	return t;
	-- #else
	return bubbleDown({ ["pb"] = true }, t);
	-- #endif
end
prof = function(skillID, t)								-- Create a PROFESSION Object
	return struct("professionID", skillID, t);
end
profession = function(skillID, t)						-- Create a PROFESSION Container. (NOTE: Only use in the Profession Folder.)
	local p = prof(skillID, t);
	root("Professions", p);
	return p;
end
pvp = function(t)										-- Flag all nested content as requiring PvP gameplay
	-- #if ANYCLASSIC
	return t;
	-- #else
	return bubbleDown({ ["pvp"] = true }, t);
	-- #endif
end
pvprank = function(id, t)								-- Create a PVP Rank Object.
	return struct("pvpRankID", id, t);
end
quest = function(id, t)									-- Create a QUEST Object
	return struct("questID", id, t);
end
q = quest;												-- Create a QUEST Object (alternative shortcut)
questobjective = function(id, t)						-- Create a QUEST OBJECTIVE Object
	return struct("objectiveID", id, t);
end
objective = questobjective;								-- Create a QUEST OBJECTIVE Object (alternative shortcut)
qo = questobjective;									-- Create a QUEST OBJECTIVE Object (alternative shortcut)
race = function(id, t)									-- Create a RACE Object
	return struct("raceID", id, t);
end
recipe = function(id, t)								-- Create a RECIPE Object
	return struct("recipeID", id, t);
end
r = recipe;												-- Create a RECIPE Object (alternative shortcut)
root = function(category, g)							-- Create a ROOT CATEGORY Object
	if not g then g = g or {}; end
	local o = _[category];
	if not o then
		if isarray(g) then
			o = g;
		else
			local isRef = true;
			for key,value in pairs(g) do
				if type(key) ~= "number" then
					isRef = false;
					break;
				end
			end
			if isRef then
				o = g;
			else
				o = { g };
			end
		end
		_[category] = o;
	else
		if isarray(g) then
			for i,t in ipairs(g) do
				table.insert(o, t);
			end
		else
			local isRef = true;
			for key,value in pairs(g) do
				if type(key) ~= "number" then
					isRef = false;
					break;
				end
			end
			if isRef then
				for key,value in pairs(g) do
					o[key] = value;
				end
			else
				table.insert(o, g);
			end
		end
	end
	return o;
end
spell = function(id, t)									-- Create a SPELL Object
	return struct("spellID", id, t);
end
sp = spell;												-- Create a SPELL Object (alternative shortcut)
tier = function(id, patch, t)							-- Create a TIER Object
	-- patch is optional
	if not t then
		t = patch;
	else
		id = id + (patch / 100);
		t = togroups(t);
	end
	t = struct("tierID", id, t);
	if not t.timeline then
		t.timeline = { "added " .. math.floor(id) .. ".0.1" };
	end
	return t;
end
title = function(id, t)									-- Create a TITLE Object
	return struct("titleID", id, t);
end
title_gendered = function(id_m, id_f, t)				-- Create a TITLE Object which is 'the same' but changes the wording based on gender
	if t then
		t.titleIDs = { id_m, id_f };
	else
		t = { ["titleIDs"]={ id_m, id_f }};
	end
	return struct("titleID", id_m * id_f * 100, t);		-- Arbitrary titleID from the combination of both titleID's
end
v = function(id, t)										-- Create a VIGNETTE Object
	return struct("vignetteID", id, t);
end

-- SHORTCUTS for Field Modifiers (not objects, you can apply these anywhere)
a = function(t)	-- Flag as Alliance Only
	if t.races then
		for key,value in pairs(t) do
			if key == "g" then
				-- Do nothing.
			elseif type(value) == "table" then
				-- Show the table.
				local statement = "";
				local count = 0;
				for j,value2 in ipairs(value) do
					if count > 0 then statement = statement .. ", "; end
					statement = statement .. tostring(value2);
					count = count + 1;
				end
				print("\t" .. tostring(key) .. ": { " .. statement .. " }");
			else
				print("\t" .. tostring(key) .. ": " .. tostring(value));
			end
		end
		error("Attempted to assign RACES as ALLIANCE_ONLY on a thing already marked with races.");
	else
		t.races = ALLIANCE_ONLY;
	end
	return t;
end
crit = function(criteriaID, t)           -- Create an Achievement Criteria Object (localized automatically)
	if not t then t = {};
	elseif not t.groups then
		if not isarray(t) then
			-- DO NOT do that lol
		else
			t = { ["groups"] = t };
		end
	end
	t.criteriaID = criteriaID;
	return un(WRATH_PHASE_ONE, t);
end
model = function(displayID, t)
	t.displayID = displayID;
	return t;
end
crs = function(id, t)											-- Add a Creature List to an object.
	if type(id) == "number" then
		t.cr = id;
	else
		t.crs = id;
	end
	return t;
end
h = function(t) -- Flag as Horde Only
	if t.races then
		for key,value in pairs(t) do
			if key == "g" then
				-- Do nothing.
			elseif type(value) == "table" then
				-- Show the table.
				local statement = "";
				local count = 0;
				for j,value2 in ipairs(value) do
					if count > 0 then statement = statement .. ", "; end
					statement = statement .. tostring(value2);
					count = count + 1;
				end
				print("\t" .. tostring(key) .. ": { " .. statement .. " }");
			else
				print("\t" .. tostring(key) .. ": " .. tostring(value));
			end
		end
		error("Attempted to assign RACES as HORDE_ONLY on a thing already marked with races.");
	else
		t.races = HORDE_ONLY;
	end
	return t;
end
un = function(u, t) t.u = u; return t; end						-- Mark an object unobtainable where u is the type.

-- Used by the Harvester (Parser)
function Harvest(things)
	local itemDB = root("ItemDB", {});
	local thing;
	for i,j in pairs(things) do
		thing = itemDB[i];
		if not thing then
			thing = {};
			itemDB[i] = thing;
		end
		if j.mods then
			if not thing.mods then thing.mods = {} end
			for modID,sourceID in pairs(j.mods) do
				thing.mods[modID] = sourceID;
			end
		end
		if j.bonuses then
			if not thing.bonuses then thing.bonuses = {} end
			for l,bonusID in pairs(j.bonuses) do
				thing.bonuses[l] = bonusID;
			end
		end
	end
end