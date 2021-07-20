--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
local FESTIVAL_FLAMEKEEPER_ID = 16788;	-- Festival Flamekeeper
local FESTIVAL_FLAMEKEEPER_COORDS = {
	{ 38.5, 61.1, STORMWIND_CITY },
	{ 63.6, 24.7, IRONFORGE },
	{ 56.5, 92.0, TELDRASSIL },
	{ 21.6, 26.2, THUNDER_BLUFF },
	{ 62.1, 66.8, TIRISFAL_GLADES },
	{ 46.2, 37.7, ORGRIMMAR },
};
local FESTIVAL_FLAMEKEEPER_MAPS = {
	STORMWIND_CITY,
	IRONFORGE,
	DARNASSUS,
	TELDRASSIL,
	THUNDER_BLUFF,
	ORGRIMMAR,
	UNDERCITY,
	TIRISFAL_GLADES,
};

local FESTIVAL_LOREMASTER_ID = 16817;	-- Festival Loremaster
local FESTIVAL_LOREMASTER_COORDS = {
	{ 38.5, 61.1, STORMWIND_CITY },
	{ 63.6, 24.7, IRONFORGE },
	{ 56.6, 92.3, TELDRASSIL },
};
local FESTIVAL_LOREMASTER_MAPS = {
	STORMWIND_CITY,
	IRONFORGE,
	TELDRASSIL,
	DARNASSUS,
};

local FESTIVAL_TALESPINNER_ID = 16818;	-- Festival Talespinner
local FESTIVAL_TALESPINNER_COORDS = {
	{ 21.3, 26.4, THUNDER_BLUFF },
	{ 67.6,  8.3, UNDERCITY },
	{ 46.8, 38.0, ORGRIMMAR },
};
local FESTIVAL_TALESPINNER_MAPS = {
	THUNDER_BLUFF,
	ORGRIMMAR,
	UNDERCITY,
};

-- #if AFTER WRATH
local FLAME_STEAL_LEVEL_REQUIREMENT = 1;	-- Level requirement reduced to 1 after Wrath. (haha have fun with that!)
-- #else
local FLAME_STEAL_LEVEL_REQUIREMENT = 50;
-- #endif
local FLAME_STEAL_REWARDS = {
	i(23247),	-- Burning Blossom x25
	i(23211),	-- Toasted Smorc
	i(23326),	-- Midsummer Sausage
	i(23327),	-- Fire-toasted Bun
	i(23435),	-- Elderberry Pie
	-- #if AFTER WRATH
	i(23246),	-- Fiery Festival Brew
	i(34684),	-- Handful of Summer Petals
	-- #endif
};

_.Holidays = bubbleDown({ ["u"] = MIDSUMMER_FIRE_FESTIVAL },
{
	n(-53, {	-- Midsummer Fire Festival
		n(QUESTS, {
			q(9319, {	-- A Light in Dark Places
				["qg"] = FESTIVAL_FLAMEKEEPER_ID,
				["coords"] = FESTIVAL_FLAMEKEEPER_COORDS,
				["maps"] = appendGroups(FESTIVAL_FLAMEKEEPER_MAPS, {
					DIRE_MAUL,
					BLACKROCK_SPIRE,
					STRATHOLME,
					SCHOLOMANCE,
				}),
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["timeline"] = { "removed 2.4.0" },
				["isYearly"] = true,	-- NOTE: Crieve tested the flags for this quest with the ATT guild, it was not reset. (meaning it's a yearly repeatable)
				["lvl"] = 50,
				["groups"] = {
					objective(1, {	-- Flame of Dire Maul
						["maps"] = { DIRE_MAUL },
					}),
					objective(2, {	-- Flame of Blackrock Spire
						["maps"] = { BLACKROCK_SPIRE },
					}),
					objective(3, {	-- Flame of Stratholme
						["maps"] = { STRATHOLME },
					}),
					objective(4, {	-- Flame of the Scholomance
						["maps"] = { SCHOLOMANCE },
					}),
					i(23083),	-- Captured Flame
					i(23247),	-- Burning Blossom
				},
			}),
			q(9386, {	-- A Light in Dark Places
				["qg"] = FESTIVAL_FLAMEKEEPER_ID,
				["coords"] = FESTIVAL_FLAMEKEEPER_COORDS,
				["maps"] = appendGroups(FESTIVAL_FLAMEKEEPER_MAPS, {
					DIRE_MAUL,
					BLACKROCK_SPIRE,
					STRATHOLME,
					SCHOLOMANCE,
				}),
				["sourceQuest"] = 9319,	-- A Light in Dark Places
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["timeline"] = { "removed 2.4.0" },
				["isYearly"] = true,
				["lvl"] = 50,
				["groups"] = {
					objective(1, {	-- Flame of Dire Maul
						["maps"] = { DIRE_MAUL },
					}),
					objective(2, {	-- Flame of Blackrock Spire
						["maps"] = { BLACKROCK_SPIRE },
					}),
					objective(3, {	-- Flame of Stratholme
						["maps"] = { STRATHOLME },
					}),
					objective(4, {	-- Flame of the Scholomance
						["maps"] = { SCHOLOMANCE },
					}),
					i(23247),	-- Burning Blossom
				},
			}),
			q(9365, {	-- A Thief's Reward (A)
				["qg"] = FESTIVAL_LOREMASTER_ID,
				["coords"] = FESTIVAL_LOREMASTER_COORDS,
				["maps"] = FESTIVAL_LOREMASTER_MAPS,
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["sourceQuests"] = {
					9324,	-- Stealing Orgrimmar's Flame
					9325,	-- Stealing Thunder Bluff's Flame
					-- #if AFTER TBC
					11933,	-- Stealing the Exodar's Flame
					-- #endif
					9326,	-- Stealing the Undercity's Flame
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 50,
				["groups"] = {
					i(23323),	-- Crown of the Fire Festival
				},
			}),
			q(9339, {	-- A Thief's Reward (H)
				["qg"] = FESTIVAL_TALESPINNER_ID,
				["coords"] = FESTIVAL_TALESPINNER_COORDS,
				["maps"] = FESTIVAL_TALESPINNER_MAPS,
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["sourceQuests"] = {
					9332,	-- Stealing Darnassus's Flame
					9331,	-- Stealing Ironforge's Flame
					-- #if AFTER TBC
					11935,	-- Stealing Silvermoon's Flame
					-- #endif
					9330,	-- Stealing Stormwind's Flame
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 50,
				["groups"] = {
					i(23323),	-- Crown of the Fire Festival
				},
			}),
			q(9389, {	-- Flickering Flames in Eastern Kingdoms
				["qgs"] = {
					FESTIVAL_LOREMASTER_ID,
					FESTIVAL_TALESPINNER_ID,
				},
				["coords"] = appendGroups(FESTIVAL_TALESPINNER_COORDS, appendGroups(FESTIVAL_LOREMASTER_COORDS, {})),
				["maps"] = appendGroups(FESTIVAL_TALESPINNER_MAPS, appendGroups(FESTIVAL_LOREMASTER_MAPS, {
					HILLSBRAD_FOOTHILLS,
					SILVERPINE_FOREST,
					WESTFALL,
					WETLANDS
				})),
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["timeline"] = { "removed 2.4.0" },
				["isYearly"] = true,
				["lvl"] = 1,
				["groups"] = {
					objective(1, {	-- Flame of Hillsbrad
						["coord"] = { 54.2, 34.9, HILLSBRAD_FOOTHILLS },
					}),
					objective(2, {	-- Flame of Silverpine
						["coord"] = { 54.3, 69.6, SILVERPINE_FOREST },
					}),
					objective(3, {	-- Flame of Westfall
						["coord"] = { 33.2, 80.4, WESTFALL },
					}),
					objective(4, {	-- Flame of the Wetlands
						["coord"] = { 51.1, 17.2, WETLANDS },
					}),
					i(23211),	-- Toasted Smorc
					i(23326),	-- Midsummer Sausage
					i(23327),	-- Fire-toasted Bun
					i(23435),	-- Elderberry Pie
				},
			}),
			q(9388, {	-- Flickering Flames in Kalimdor
				["qgs"] = {
					FESTIVAL_LOREMASTER_ID,
					FESTIVAL_TALESPINNER_ID,
				},
				["coords"] = appendGroups(FESTIVAL_TALESPINNER_COORDS, appendGroups(FESTIVAL_LOREMASTER_COORDS, {})),
				["maps"] = appendGroups(FESTIVAL_TALESPINNER_MAPS, appendGroups(FESTIVAL_LOREMASTER_MAPS, {
					ASHENVALE,
					THE_BARRENS,
					DARKSHORE,
					STONETALON_MOUNTAINS,
				})),
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["timeline"] = { "removed 2.4.0" },
				["isYearly"] = true,
				["lvl"] = 1,
				["groups"] = {
					objective(1, {	-- Flame of Ashenvale
						["coord"] = { 64.7, 71.7, ASHENVALE },
					}),
					objective(2, {	-- Flame of the Barrens
						["coord"] = { 58.9, 37.4, THE_BARRENS },
					}),
					objective(3, {	-- Flame of Darkshore
						["coord"] = { 41.4, 90.9, DARKSHORE },
					}),
					objective(4, {	-- Flame of Stonetalon
						["coord"] = { 59.6, 70.0, STONETALON_MOUNTAINS },
					}),
					i(23211),	-- Toasted Smorc
					i(23326),	-- Midsummer Sausage
					i(23327),	-- Fire-toasted Bun
					i(23435),	-- Elderberry Pie
				},
			}),
			q(9332, {	-- Stealing Darnassus's Flame
				["provider"] = { "i", 23184 },	-- Flame of Darnassus (Provided)
				["coord"] = { 56.6, 92.3, TELDRASSIL },
				["maps"] = { DARNASSUS, TELDRASSIL },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
				["groups"] = FLAME_STEAL_REWARDS,
			}),
			q(9331, {	-- Stealing Ironforge's Flame
				["provider"] = { "i", 23183 },	-- Flame of Ironforge (Provided)
				["coord"] = { 64.6, 24.8, IRONFORGE },
				["maps"] = { IRONFORGE },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
				["groups"] = FLAME_STEAL_REWARDS,
			}),
			q(9324, {	-- Stealing Orgrimmar's Flame
				["provider"] = { "i", 23179 },	-- Flame of Orgrimmar (Provided)
				["coord"] = { 46.9, 38.7, ORGRIMMAR },
				["maps"] = { ORGRIMMAR },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
				["groups"] = FLAME_STEAL_REWARDS,
			}),
			q(9330, {	-- Stealing Stormwind's Flame
				["provider"] = { "i", 23182 },	-- Flame of Stormwind (Provided)
				["coord"] = { 38.9, 62.3, STORMWIND_CITY },
				["maps"] = { STORMWIND_CITY },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
				["groups"] = FLAME_STEAL_REWARDS,
			}),
			q(9325, {	-- Stealing Thunder Bluff's Flame
				["provider"] = { "i", 23180 },	-- Flame of Thunder Bluff (Provided)
				["coord"] = { 21.1, 25.6, THUNDER_BLUFF },
				["maps"] = { THUNDER_BLUFF },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
				["groups"] = FLAME_STEAL_REWARDS,
			}),
			q(9326, {	-- Stealing the Undercity's Flame
				["provider"] = { "i", 23181 },	-- Flame of the Undercity (Provided)
				["coord"] = { 62.6, 66.9, UNDERCITY },
				["maps"] = { UNDERCITY },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
				["groups"] = FLAME_STEAL_REWARDS,
			}),
			q(9367, {	-- The Festival of Fire (A)
				["qg"] = FESTIVAL_LOREMASTER_ID,
				["coords"] = FESTIVAL_LOREMASTER_COORDS,
				["maps"] = FESTIVAL_LOREMASTER_MAPS,
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["timeline"] = { "removed 2.4.0" },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 1,
				["groups"] = {
					objective(1, {	-- Flame of Stormwind
						["coord"] = { 38.9, 62.3, STORMWIND_CITY },
					}),
					objective(2, {	-- Flame of Ironforge
						["coord"] = { 64.6, 24.8, IRONFORGE },
					}),
					objective(3, {	-- Flame of Darnassus
						["coord"] = { 56.6, 92.3, TELDRASSIL },
					}),
					i(23246),	-- Fiery Festival Brew
					i(23247),	-- Burning Blossom
				},
			}),
			q(9368, {	-- The Festival of Fire (H)
				["qg"] = FESTIVAL_TALESPINNER_ID,
				["coords"] = FESTIVAL_TALESPINNER_COORDS,
				["maps"] = FESTIVAL_TALESPINNER_MAPS,
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["timeline"] = { "removed 2.4.0" },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 1,
				["groups"] = {
					objective(1, {	-- Flame of Orgrimmar
						["coord"] = { 46.9, 38.7, ORGRIMMAR },
					}),
					objective(2, {	-- Flame of Thunder Bluff
						["coord"] = { 21.1, 25.6, THUNDER_BLUFF },
					}),
					objective(3, {	-- Flame of the Undercity
						["coord"] = { 62.6, 66.9, UNDERCITY },
					}),
					i(23246),	-- Fiery Festival Brew
					i(23247),	-- Burning Blossom
				},
			}),
			q(9322, {	-- Wild Fires in Kalimdor
				["qg"] = FESTIVAL_FLAMEKEEPER_ID,
				["coords"] = FESTIVAL_FLAMEKEEPER_COORDS,
				["maps"] = appendGroups(FESTIVAL_FLAMEKEEPER_MAPS, {
					AZSHARA,
					SILITHUS,
					UNGORO_CRATER,
					WINTERSPRING,
				}),
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["timeline"] = { "removed 2.4.0" },
				["isYearly"] = true,
				["lvl"] = 1,
				["groups"] = {
					objective(1, {	-- Flame of Azshara
						["coord"] = { 41.5, 43.3, AZSHARA },
					}),
					objective(2, {	-- Flame of Silithus
						["coord"] = { 81.2, 18.4, SILITHUS },
					}),
					objective(3, {	-- Flame of Un'Goro
						["coord"] = { 70.1, 76.2, UNGORO_CRATER },
					}),
					objective(4, {	-- Flame of Winterspring
						["coord"] = { 30.6, 43.2, WINTERSPRING },
					}),
					i(23379),	-- Cinder Bracers
					i(23247),	-- Burning Blossom
				},
			}),
			q(9323, {	-- Wild Fires in the Eastern Kingdoms
				["qg"] = FESTIVAL_FLAMEKEEPER_ID,
				["coords"] = FESTIVAL_FLAMEKEEPER_COORDS,
				["maps"] = appendGroups(FESTIVAL_FLAMEKEEPER_MAPS, {
					BLASTED_LANDS,
					EASTERN_PLAGUELANDS,
					THE_HINTERLANDS,
					SEARING_GORGE,
				}),
				["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
				["timeline"] = { "removed 2.4.0" },
				["isYearly"] = true,
				["lvl"] = 1,
				["groups"] = {
					objective(1, {	-- Flame of the Blasted Lands
						["coord"] = { 54.4, 31.8, BLASTED_LANDS },
					}),
					objective(2, {	-- Flame of the Plaguelands
						["coord"] = { 57.6, 73.2, EASTERN_PLAGUELANDS },
					}),
					objective(3, {	-- Flame of the Hinterlands
						["coord"] = { 62.2, 53.5, THE_HINTERLANDS },
					}),
					objective(4, {	-- Flame of Searing Gorge
						["coord"] = { 33.0, 73.5, SEARING_GORGE },
					}),
					i(23324),	-- Mantle of the Fire Festival
					i(23247),	-- Burning Blossom
				},
			}),
		}),
	}),
});