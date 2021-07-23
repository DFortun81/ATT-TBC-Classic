--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
local EARTHEN_RING_ELDER_ID = 26221;	-- Earthen Ring Elder
local EARTHEN_RING_ELDER_COORDS = {
	{ 49.4, 72.0, STORMWIND_CITY },
	{ 47.2, 37.6, ORGRIMMAR },
	{ 64.8, 27.4, IRONFORGE },
	{ 21.4, 24.4, THUNDER_BLUFF },
	{ 62.2, 49.2, DARNASSUS },
	{ 67.0, 13.0, UNDERCITY },
	{ 43.2, 25.8, THE_EXODAR },
	{ 68.8, 42.6, SILVERMOON_CITY },
	{ 60.4, 30.8, SHATTRATH_CITY },
};
local EARTHEN_RING_ELDER_MAPS = {
	STORMWIND_CITY,
	ORGRIMMAR,
	IRONFORGE,
	THUNDER_BLUFF,
	DARNASSUS,
	UNDERCITY,
	THE_EXODAR,
	SILVERMOON_CITY,
	SHATTRATH_CITY,
};

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
	-- #if AFTER CATA
	{ 49.6, 72.0, STORMWIND_CITY },
	{ 64.0, 25.8, IRONFORGE },
	{ 62.2, 48.6, DARNASSUS },
	-- #else
	{ 38.5, 61.1, STORMWIND_CITY },
	{ 63.6, 24.7, IRONFORGE },
	{ 56.6, 92.3, TELDRASSIL },
	-- #endif
	-- #if AFTER TBC
	{ 61.4, 31.9, SHATTRATH_CITY },
	{ 41.6, 25.3, THE_EXODAR },
	-- #endif
};
local FESTIVAL_LOREMASTER_MAPS = {
	STORMWIND_CITY,
	IRONFORGE,
	TELDRASSIL,
	DARNASSUS,
	-- #if AFTER TBC
	SHATTRATH_CITY,
	THE_EXODAR,
	-- #endif
};

local FESTIVAL_TALESPINNER_ID = 16818;	-- Festival Talespinner
local FESTIVAL_TALESPINNER_COORDS = {
	-- #if AFTER CATA
	{ 47.8, 38.4, ORGRIMMAR },
	{ 21.4, 27.8, THUNDER_BLUFF },
	-- #else
	{ 46.8, 38.0, ORGRIMMAR },
	{ 21.3, 26.4, THUNDER_BLUFF },
	-- #endif
	{ 67.6,  8.3, UNDERCITY },
	-- #if AFTER TBC
	{ 62.2, 32.0, SHATTRATH_CITY },
	{ 69.8, 43.0, SILVERMOON_CITY },
	-- #endif
};
local FESTIVAL_TALESPINNER_MAPS = {
	THUNDER_BLUFF,
	ORGRIMMAR,
	UNDERCITY,
	-- #if AFTER TBC
	SHATTRATH_CITY,
	SILVERMOON_CITY,
	-- #endif
};

local FIRE_EATER_ALLIANCE_ID = 25962;	-- Fire Eater (A)
local FIRE_EATER_ALLIANCE_MAPS = {
	
};

local FIRE_EATER_HORDE_ID = 25994;	-- Fire Eater (H)
local FIRE_EATER_HORDE_MAPS = {
	
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

_.Holidays = { applyholiday(MIDSUMMER_FIRE_FESTIVAL, n(-53, {	-- Midsummer Fire Festival
	n(25740, {	-- Ahune
		-- #if AFTER WRATH
		["description"] = "You can loot one satchel per character per day by queueing for 'The Frost Lord Ahune' via the Dungeon Finder.",
		-- #else
		["description"] = "Ahune is a frost elemental in Neptulon's service. The Twilight's Hammer planned to have him battle Ragnaros to start an elemental war on Azeroth.",
		-- #endif
		["maps"] = { COILFANG_RESERVOIR_SLAVE_PENS },
		["timeline"] = { "added 2.4.0.7994" },
		["groups"] = {
			ach(263),	-- Ice the Frost Lord
			i(149753, {	-- Knapsack of Chilled Goods [Uncommon Quality]
				["timeline"] = { "added 7.2.5.23910" },
				["groups"] = {
					i(117373, {	-- Frostscythe of Lord Ahune
						["timeline"] = { "added 6.0.1.18594" },
					}),
				},
			}),
			i(117394, {	-- Satchel of Chilled Goods [Epic Quality]
				["timeline"] = { "added 6.0.1.18594" },
				["groups"] = {
					i(138838, {	-- Illusion: Deathfrost
						["timeline"] = { "added 7.0.3.22248" },
					}),
					i(117373, {	-- Frostscythe of Lord Ahune
						["timeline"] = { "added 6.0.1.18594" },
					}),
					i(53641, {	-- Ice Chip (Pet)
						["timeline"] = { "added 3.3.3.11723" },
					}),
				},
			}),
			i(54536, {	-- Satchel of Chilled Goods
				["timeline"] = { "added 3.3.3.11723", "removed 6.0.1.18594" },
				["groups"] = {
					i(95426, {	-- Frostscythe of Lord Ahune [Level 90]
						["timeline"] = { "added 5.0.1", "removed 6.0.1" },
					}),
					i(69771, {	-- Frostscythe of Lord Ahune [Level 85]
						["timeline"] = { "added 4.0.1", "removed 5.0.1" },
					}),
					i(54806, {	-- Frostscythe of Lord Ahune [Level 80]
						["timeline"] = { "added 3.3.3.11723", "removed 4.0.1" },
					}),
					i(53641, {	-- Ice Chip (Pet)
						["timeline"] = { "added 3.3.3.11723" },
					}),
					-- #if BEFORE CATA
					i(49426),	-- Emblem of Frost
					-- #endif
				},
			}),
			i(35723, {	-- Shards of Ahune
				["description"] = "This item can be looted and completed once per character.",
				["timeline"] = { "added 2.4.0.7994" },
			}),
			i(138838, {	-- Illusion: Deathfrost
				["timeline"] = { "added 7.0.3.22248" },
			}),
			i(35498),	-- Formula: Enchant Weapon - Deathfrost
			
			-- #if BEFORE 4.2.0
			-- This item was apparently a drop from Ahune originally, but was removed and added to the Molten Front with 4.2.0.
			-- Between Patch 3.3.3 and 4.2.0 it had no available source.
			i(34955, {	-- Scorched Stone
				["timeline"] = { "removed 3.3.3", "added 4.2.0" },
			}),
			-- #endif
			
			-- WoD+ Rewards (Scalable)
			i(117372, {	-- Cloak of the Frigid Winds
				["timeline"] = { "added 6.0.1.18594" },
			}),
			i(117374, {	-- Icebound Cloak
				["timeline"] = { "added 6.0.1.18594" },
			}),
			i(117375, {	-- Shroud of Winter's Chill
				["timeline"] = { "added 6.0.1.18594" },
			}),
			i(117376, {	-- The Frost Lord's Battle Shroud
				["timeline"] = { "added 6.0.1.18594" },
			}),
			i(117377, {	-- The Frost Lord's War Cloak
				["timeline"] = { "added 6.0.1.18594" },
			}),
			
			-- Pandaria Rewards
			i(95425, {	-- Cloak of the Frigid Winds [Level 90]
				["timeline"] = { "added 5.0.1", "removed 6.0.1" },
			}),
			i(95427, {	-- Icebound Cloak [Level 90]
				["timeline"] = { "added 5.0.1", "removed 6.0.1" },
			}),
			i(95428, {	-- Shroud of Winter's Chill [Level 90]
				["timeline"] = { "added 5.0.1", "removed 6.0.1" },
			}),
			i(95429, {	-- The Frost Lord's Battle Shroud [Level 90]
				["timeline"] = { "added 5.0.1", "removed 6.0.1" },
			}),
			i(95430, {	-- The Frost Lord's War Cloak [Level 90]
				["timeline"] = { "added 5.0.1", "removed 6.0.1" },
			}),
			
			-- Cataclysm Rewards
			i(69769, {	-- Cloak of the Frigid Winds [Level 85]
				["timeline"] = { "added 4.0.1", "removed 5.0.1" },
			}),
			i(69770, {	-- Icebound Cloak [Level 85]
				["timeline"] = { "added 4.0.1", "removed 5.0.1" },
			}),
			i(69768, {	-- Shroud of Winter's Chill [Level 85]
				["timeline"] = { "added 4.0.1", "removed 5.0.1" },
			}),
			i(69767, {	-- The Frost Lord's Battle Shroud [Level 85]
				["timeline"] = { "added 4.0.1", "removed 5.0.1" },
			}),
			i(69766, {	-- The Frost Lord's War Cloak [Level 85]
				["timeline"] = { "added 4.0.1", "removed 5.0.1" },
			}),
			
			i(54805, {	-- Cloak of the Frigid Winds [Level 80]
				["timeline"] = { "added 3.3.3.11723", "removed 4.0.1" },
			}),
			i(54801, {	-- Icebound Cloak [Level 80]
				["timeline"] = { "added 3.3.3.11723", "removed 4.0.1" },
			}),
			i(54804, {	-- Shroud of Winter's Chill [Level 80]
				["timeline"] = { "added 3.3.3.11723", "removed 4.0.1" },
			}),
			i(54803, {	-- The Frost Lord's Battle Shroud [Level 80]
				["timeline"] = { "added 3.3.3.11723", "removed 4.0.1" },
			}),
			i(54802, {	-- The Frost Lord's War Cloak [Level 80]
				["timeline"] = { "added 3.3.3.11723", "removed 4.0.1" },
			}),
			
			-- Original Rewards
			i(35514, {	-- Frostscythe of Lord Ahune [Level 70]
				["timeline"] = { "removed 3.3.3.11723" },
			}),
			i(35507, {	-- Amulet of Bitter Hatred [Level 70]
				["timeline"] = { "removed 3.3.3.11723" },
			}),
			i(35509, {	-- Amulet of Glacial Tranquility [Level 70]
				["timeline"] = { "removed 3.3.3.11723" },
			}),
			i(35508, {	-- Choker of the Arctic Flow [Level 70]
				["timeline"] = { "removed 3.3.3.11723" },
			}),
			i(35511, {	-- Hailstone Pendant [Level 70]
				["timeline"] = { "removed 3.3.3.11723" },
			}),
			i(35497, {	-- Cloak of the Frigid Winds [Level 70]
				["timeline"] = { "removed 3.3.3.11723" },
			}),
			i(35496, {	-- Icebound Cloak [Level 70]
				["timeline"] = { "removed 3.3.3.11723" },
			}),
			i(35494, {	-- Shroud of Winter's Chill [Level 70]
				["timeline"] = { "removed 3.3.3.11723" },
			}),
			i(35495, {	-- The Frost Lord's War Cloak [Level 70]
				["timeline"] = { "removed 3.3.3.11723" },
			}),
		},
	}),
	n(QUESTS, {
		q(9319, {	-- A Light in Dark Places
			["qg"] = FESTIVAL_FLAMEKEEPER_ID,
			-- #if BEFORE TBC
			["coords"] = FESTIVAL_FLAMEKEEPER_COORDS,
			["maps"] = appendGroups(FESTIVAL_FLAMEKEEPER_MAPS, {
				DIRE_MAUL,
				BLACKROCK_SPIRE,
				STRATHOLME,
				SCHOLOMANCE,
			}),
			-- #endif
			["timeline"] = { "removed 2.4.0" },
			["isYearly"] = true,	-- NOTE: Crieve tested the flags for this quest with the ATT guild, it was not reset. (meaning it's a yearly repeatable)
			["lvl"] = lvlsquish(50, 1, 1),
			["groups"] = {
				-- #if BEFORE TBC
				objective(1),	-- Flame of Dire Maul
				objective(2),	-- Flame of Blackrock Spire
				objective(3),	-- Flame of Stratholme
				objective(4),	-- Flame of the Scholomance
				-- #endif
				i(23083),	-- Captured Flame
				i(23247),	-- Burning Blossom
			},
		}),
		q(9386, {	-- A Light in Dark Places
			["qg"] = FESTIVAL_FLAMEKEEPER_ID,
			-- #if BEFORE TBC
			["coords"] = FESTIVAL_FLAMEKEEPER_COORDS,
			["maps"] = appendGroups(FESTIVAL_FLAMEKEEPER_MAPS, {
				DIRE_MAUL,
				BLACKROCK_SPIRE,
				STRATHOLME,
				SCHOLOMANCE,
			}),
			-- #endif
			["sourceQuest"] = 9319,	-- A Light in Dark Places
			["timeline"] = { "removed 2.4.0" },
			["isYearly"] = true,
			["lvl"] = lvlsquish(50, 1, 1),
			["groups"] = {
				-- #if BEFORE TBC
				objective(1),	-- Flame of Dire Maul
				objective(2),	-- Flame of Blackrock Spire
				objective(3),	-- Flame of Stratholme
				objective(4),	-- Flame of the Scholomance
				-- #endif
				i(23247),	-- Burning Blossom
			},
		}),
		q(9365, {	-- A Thief's Reward (A)
			["qg"] = FESTIVAL_LOREMASTER_ID,
			["coords"] = FESTIVAL_LOREMASTER_COORDS,
			["maps"] = FESTIVAL_LOREMASTER_MAPS,
			["sourceQuests"] = {
				9324,	-- Stealing Orgrimmar's Flame
				9325,	-- Stealing Thunder Bluff's Flame
				-- #if AFTER TBC
				11935,	-- Stealing Silvermoon's Flame
				-- #endif
				9326,	-- Stealing the Undercity's Flame
			},
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(50, 1, 1),
			["groups"] = {
				i(23323),	-- Crown of the Fire Festival
			},
		}),
		q(9339, {	-- A Thief's Reward (H)
			["qg"] = FESTIVAL_TALESPINNER_ID,
			["coords"] = FESTIVAL_TALESPINNER_COORDS,
			["maps"] = FESTIVAL_TALESPINNER_MAPS,
			["sourceQuests"] = {
				9332,	-- Stealing Darnassus's Flame
				9331,	-- Stealing Ironforge's Flame
				9330,	-- Stealing Stormwind's Flame
				-- #if AFTER TBC
				11933,	-- Stealing the Exodar's Flame
				-- #endif
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(50, 1, 1),
			["groups"] = {
				i(23323),	-- Crown of the Fire Festival
			},
		}),
		-- q(11696),	-- Ahune is Here!
		-- q(11955),	-- Ahune, the Frost Lord
		q(11891, {	-- An Innocent Disguise
			["qg"] = 25324,		 -- Earthen Ring Guide
			["sourceQuest"] = 11886,	-- Unusual Activity
			["description"] = "Use your Totemic Beacon to summon the quest giver.",
			["coord"] = { 10.2, 15.3, ASHENVALE },
			["maps"] = { ASHENVALE },
			["cost"] = {
				{ "i", 35828, 1 },	-- Totemic Beacon
			},
			["lvl"] = lvlsquish(16, 1, 1),
			["groups"] = {
				objective(1, {	-- Listen to the plan of the Twilight Cultists
					["provider"] = { "i", 35237 },	-- Orb of the Crawler
					["coord"] = { 9.1, 12.5, ASHENVALE },
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(9389, {	-- Flickering Flames in Eastern Kingdoms
			["qgs"] = {
				FESTIVAL_LOREMASTER_ID,
				FESTIVAL_TALESPINNER_ID,
			},
			-- #if BEFORE TBC
			["coords"] = appendGroups(FESTIVAL_TALESPINNER_COORDS, appendGroups(FESTIVAL_LOREMASTER_COORDS, {})),
			["maps"] = appendGroups(FESTIVAL_TALESPINNER_MAPS, appendGroups(FESTIVAL_LOREMASTER_MAPS, {
				HILLSBRAD_FOOTHILLS,
				SILVERPINE_FOREST,
				WESTFALL,
				WETLANDS
			})),
			["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
			-- #endif
			["timeline"] = { "removed 2.4.0" },
			["isYearly"] = true,
			["lvl"] = 1,
			-- #if BEFORE TBC
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
			-- #endif
		}),
		q(9388, {	-- Flickering Flames in Kalimdor
			["qgs"] = {
				FESTIVAL_LOREMASTER_ID,
				FESTIVAL_TALESPINNER_ID,
			},
			-- #if BEFORE TBC
			["coords"] = appendGroups(FESTIVAL_TALESPINNER_COORDS, appendGroups(FESTIVAL_LOREMASTER_COORDS, {})),
			["maps"] = appendGroups(FESTIVAL_TALESPINNER_MAPS, appendGroups(FESTIVAL_LOREMASTER_MAPS, {
				ASHENVALE,
				THE_BARRENS,
				DARKSHORE,
				STONETALON_MOUNTAINS,
			})),
			["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
			-- #endif
			["timeline"] = { "removed 2.4.0" },
			["isYearly"] = true,
			["lvl"] = 1,
			-- #if BEFORE TBC
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
			-- #endif
		}),
		q(44574, {	-- Honor the Flame — Azsuna
			["qg"] = 114492,	-- Azsuna Flame Guardian
			["coord"] = { 48.2, 29.6, 630 },
			["timeline"] = { "added 7.0.1" },
			["maps"] = { 630 },	-- Azsuna
			["isYearly"] = true,
		}),
		q(32497, {	-- Honor the Flame — Dread Wastes
			["qg"] = 69522,	-- Dread Wastes Flame Guardian
			["coord"] = { 56.1, 69.5, 422 },
			["timeline"] = { "added 5.0.1" },
			["maps"] = { 422 },	-- Dread Wastes
			["isYearly"] = true,
		}),
		q(44573, {	-- Honor the Flame — Gorgrond
			["qg"] = 114491,	-- Gorgrond Flame Guardian
			["coord"] = { 43.8, 93.8, GORGROND },
			["timeline"] = { "added 6.0.1" },
			["maps"] = { GORGROND },
			["isYearly"] = true,
		}),
		q(44576, {	-- Honor the Flame — Highmountain
			["qg"] = 114494,	-- Highmountain Flame Guardian
			["coord"] = { 55.4, 84.4, 650 },
			["timeline"] = { "added 7.0.1" },
			["maps"] = { 650 },	-- Highmountain
			["isYearly"] = true,
		}),
		q(32498, {	-- Honor the Flame — Jade Forest
			["qg"] = 69529,	-- Jade Forest Flame Guardian
			["coord"] = { 47.2, 47.2, 371 },
			["timeline"] = { "added 5.0.1" },
			["maps"] = { 371 },	-- Jade Forest
			["isYearly"] = true,
		}),
		q(32499, {	-- Honor the Flame — Krasarang Wilds
			["qg"] = 69533,	-- Krasarang Wilds Flame Guardian
			["coord"] = { 77.8, 3.60, 418 },
			["timeline"] = { "added 5.0.1" },
			["maps"] = { 418 },	-- Krasarang Wilds
			["isYearly"] = true,
		}),
		q(32500, {	-- Honor the Flame — Kun-Lai Summit
			["qg"] = 69535,	-- Kun-Lai Summit Flame Guardian
			["coord"] = { 71.1, 90.9, 379 },
			["timeline"] = { "added 5.0.1" },
			["maps"] = { 379 },	-- Kun-Lai Summit
			["isYearly"] = true,
		}),
		q(44572, {	-- Honor the Flame — Nagrand (WoD)
			["qg"] = 114490,	-- Nagrand Flame Guardian
			["coord"] = { 80.4, 47.6, 550 },
			["timeline"] = { "added 6.0.1" },
			["maps"] = { 550 },	-- Nagrand
			["isYearly"] = true,
		}),
		q(44570, {	-- Honor the Flame — Spires of Arak
			["qg"] = 114488,	-- Spires of Arak Flame Guardian
			["coord"] = { 48.0, 44.6, 542 },
			["maps"] = { 542 },	-- Spires of Arak
			["isYearly"] = true,
		}),
		q(44577, {	-- Honor the Flame — Stormheim
			["qg"] = 114496,	-- Stormheim Flame Guardian
			["coord"] = { 32.4, 42.2, 634 },
			["timeline"] = { "added 7.0.1" },
			["maps"] = { 634 },	-- Stormheim
			["isYearly"] = true,
		}),
		q(44571, {	-- Honor the Flame — Talador
			["qg"] = 114489,	-- Talador Flame Guardian
			["coord"] = { 43.4, 71.8, 535 },
			["timeline"] = { "added 6.0.1" },
			["maps"] = { 535 },	-- Talador
			["isYearly"] = true,
		}),
		q(32501, {	-- Honor the Flame — Townlong Steppes
			["qg"] = 69536,	-- Townlong Steppes Flame Guardian
			["coord"] = { 71.5, 56.3, 388 },
			["timeline"] = { "added 5.0.1" },
			["maps"] = { 388 },	-- Townlong Steppes
			["isYearly"] = true,
		}),
		q(32502, {	-- Honor the Flame — Valley of the Four Winds
			["qg"] = 69550,	-- Valley of the Four Winds Flame Guardian
			["coord"] = { 51.8, 51.4, 376 },
			["timeline"] = { "added 5.0.1" },
			["maps"] = { 376 },	-- Valley of the Four Winds
			["isYearly"] = true,
		}),
		q(44575, {	-- Honor the Flame — Val'sharah
			["qg"] = 114493,	-- Val'sharah Flame Guardian
			["coord"] = { 44.8, 58.0, 641 },
			["timeline"] = { "added 7.0.1" },
			["maps"] = { 641 },	-- Val'sharah
			["isYearly"] = true,
		}),
		q(11964, {	-- Incense for the Summer Scorchlings (A)
			["qg"] = FESTIVAL_LOREMASTER_ID,
			["coords"] = FESTIVAL_LOREMASTER_COORDS,
			["maps"] = FESTIVAL_LOREMASTER_MAPS,
			["timeline"] = { "added 2.4.0.7994" },
			["cost"] = {
				{ "i", 35725, 1 },	-- Summer Incense (Provided)
			},
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				i(23247),	-- Burning Blossom
			},
		}),
		q(11966, {	-- Incense for the Festival Scorchlings (H)
			["qg"] = FESTIVAL_TALESPINNER_ID,
			["coords"] = FESTIVAL_TALESPINNER_COORDS,
			["maps"] = FESTIVAL_TALESPINNER_MAPS,
			["timeline"] = { "added 2.4.0.7994" },
			["cost"] = {
				{ "i", 35725, 1 },	-- Summer Incense (Provided)
			},
			["races"] = HORDE_ONLY,
			["groups"] = {
				i(23247),	-- Burning Blossom
			},
		}),
		q(29092, {	-- Inform the Elder (A)
			["qg"] = 25324,	-- Earthen Ring Guide
			["sourceQuest"] = 11891,	-- An Innocent Disguise
			["description"] = "Use your Totemic Beacon to summon the quest giver.",
			["coord"] = { 16.0, 20.8, ASHENVALE },
			["timeline"] = { "added 4.0.1" },
			["maps"] = { ASHENVALE },
			["cost"] = {
				{ "i", 35828, 1 },	-- Totemic Beacon
			},
			["races"] = ALLIANCE_ONLY,
			["lvl"] = lvlsquish(16, 1, 1),
		}),
		q(12012, {	-- Inform the Elder (H)
			["qg"] = 25324,	-- Earthen Ring Guide
			["sourceQuest"] = 11891,	-- An Innocent Disguise
			["description"] = "Use your Totemic Beacon to summon the quest giver.",
			["coord"] = { 16.0, 20.8, ASHENVALE },
			["timeline"] = { "added 2.4.0.7994" },
			["maps"] = { ASHENVALE },
			["cost"] = {
				{ "i", 35828, 1 },	-- Totemic Beacon
			},
			-- #if AFTER CATA
			-- NOTE: This quest was originally served to both Horde and Alliance, but with Cataclysm, a new version specifically for the Alliance was added.
			["races"] = HORDE_ONLY,
			-- #endif
			["lvl"] = lvlsquish(16, 1, 1),
		}),
		q(11924, {	-- More Torch Catching (A)
			["qg"] = 25975,	-- Master Fire Eater
			["sourceQuest"] = 11657,	-- Torch Catching (A)
			["coords"] = {
				-- #if AFTER CATA
				{ 49.8, 72.0, STORMWIND_CITY },
				-- #elseif AFTER WRATH
				{ 50.1, 72.6, STORMWIND_CITY },
				-- #else
				{ 50.1, 72.6, STORMWIND_CITY },
				-- #endif
				{ 65.2, 25.4, IRONFORGE },
				{ 63.0, 47.6, DARNASSUS },
				{ 41.2, 24.4, THE_EXODAR },
			},
			["timeline"] = { "added 2.4.0.7994" },
			["maps"] = {
				STORMWIND_CITY,
				IRONFORGE,
				DARNASSUS,
				THE_EXODAR,
			},
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
		}),
		q(11925, {	-- More Torch Catching (H)
			["qg"] = 26113,	-- Master Flame Eater
			["sourceQuest"] = 11923,	-- Torch Catching (H)
			["coords"] = {
				{ 46.6, 37.2, ORGRIMMAR },
				{ 21.2, 26.2, THUNDER_BLUFF },
				{ 68.6, 8.00, UNDERCITY },
				{ 69.6, 42.4, SILVERMOON_CITY },
			},
			["timeline"] = { "added 2.4.0.7994" },
			["maps"] = {
				ORGRIMMAR,
				THUNDER_BLUFF,
				UNDERCITY,
				SILVERMOON_CITY,
			},
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
		}),
		q(11921, {	-- More Torch Tossing (A)
			["qg"] = 25975,	-- Master Fire Eater
			["sourceQuest"] = 11657,	-- Torch Catching (A)
			["coords"] = {
				{ 49.8, 72.0, STORMWIND_CITY },
				{ 65.2, 25.4, IRONFORGE },
				{ 63.0, 47.6, DARNASSUS },
				{ 41.2, 24.4, THE_EXODAR },
			},
			["timeline"] = { "added 2.4.0.7994" },
			["maps"] = {
				STORMWIND_CITY,
				IRONFORGE,
				DARNASSUS,
				THE_EXODAR,
			},
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
		}),
		q(11926, {	-- More Torch Tossing (H)
			["qg"] = 26113,	-- Master Flame Eater
			["sourceQuest"] = 11923,	-- Torch Catching (H)
			["coords"] = {
				{ 46.6, 37.2, ORGRIMMAR },
				{ 21.2, 26.2, THUNDER_BLUFF },
				{ 68.6, 8.00, UNDERCITY },
				{ 69.6, 42.4, SILVERMOON_CITY },
			},
			["timeline"] = { "added 2.4.0.7994" },
			["maps"] = {
				ORGRIMMAR,
				THUNDER_BLUFF,
				UNDERCITY,
				SILVERMOON_CITY,
			},
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
		}),
		q(11882, {	-- Playing with Fire (A)
			["qg"] = FIRE_EATER_ALLIANCE_ID,
			["maps"] = FIRE_EATER_HALLIANCE_MAPS,
			["timeline"] = { "added 2.4.0.7994" },
			["races"] = ALLIANCE_ONLY,
		}),
		q(11915, {	-- Playing with Fire (H)
			["qg"] = FIRE_EATER_HORDE_ID,
			["maps"] = FIRE_EATER_HORDE_MAPS,
			["timeline"] = { "added 2.4.0.7994" },
			["races"] = HORDE_ONLY,
		}),
		q(11972, {	-- Shards of Ahune
			["provider"] = { "i", 35723 },	-- Shards of Ahune
			["altQuests"] = { 11976 },	-- Ice Shards (Never Implemented?)
			["timeline"] = { "added 2.4.0.7994" },
			-- #if BEFORE WRATH
			["lvl"] = 65,
			-- #elseif BEFORE CATA
			["lvl"] = 75,
			-- #elseif BEFORE MOP
			["lvl"] = 75,
			-- #elseif BEFORE WOD
			["lvl"] = 75,
			-- #else
			["lvl"] = 1,	-- Documentation suggests the level requirement was removed with WOD.
			-- #endif
			["groups"] = {
				i(35279),	-- Tabard of Summer Skies
				i(35280),	-- Tabard of Summer Flames
			},
		}),
		q(9332, {	-- Stealing Darnassus's Flame
			["provider"] = { "i", 23184 },	-- Flame of Darnassus (Provided)
			-- #if AFTER CATA
			["coord"] = { 64.1, 46.7, DARNASSUS },
			["maps"] = { DARNASSUS },
			-- #else
			["coord"] = { 56.6, 92.3, TELDRASSIL },
			["maps"] = { DARNASSUS, TELDRASSIL },
			-- #endif
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
			["groups"] = FLAME_STEAL_REWARDS,
		}),
		q(9331, {	-- Stealing Ironforge's Flame
			["provider"] = { "i", 23183 },	-- Flame of Ironforge (Provided)
			-- #if AFTER CATA
			["coord"] = { 65.2, 24.7, IRONFORGE },
			-- #else
			["coord"] = { 64.6, 24.8, IRONFORGE },
			-- #endif
			["maps"] = { IRONFORGE },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
			["groups"] = FLAME_STEAL_REWARDS,
		}),
		q(9324, {	-- Stealing Orgrimmar's Flame
			["provider"] = { "i", 23179 },	-- Flame of Orgrimmar (Provided)
			-- #if AFTER CATA
			["coord"] = { 46.5, 37.6, ORGRIMMAR },
			-- #else
			["coord"] = { 46.9, 38.7, ORGRIMMAR },
			-- #endif
			["maps"] = { ORGRIMMAR },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
			["groups"] = FLAME_STEAL_REWARDS,
		}),
		q(11935, {	-- Stealing Silvermoon's Flame
			["provider"] = { "i", 35568 },	-- Flame of Silvermoon (Provided)
			["coord"] = { 69.7, 42.7, SILVERMOON_CITY },
			["timeline"] = { "added 2.0.1" },
			["maps"] = { SILVERMOON_CITY },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
			["groups"] = FLAME_STEAL_REWARDS,
		}),
		q(9330, {	-- Stealing Stormwind's Flame
			["provider"] = { "i", 23182 },	-- Flame of Stormwind (Provided)
			-- #if AFTER CATA
			["coord"] = { 49.8, 72.9, STORMWIND_CITY },
			-- #else
			["coord"] = { 38.9, 62.3, STORMWIND_CITY },
			-- #endif
			["maps"] = { STORMWIND_CITY },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
			["groups"] = FLAME_STEAL_REWARDS,
		}),
		q(11933, {	-- Stealing the Exodar's Flame
			["provider"] = { "i", 35569 },	-- Flame of the Exodar (Provided)
			["coord"] = { 40.8, 26.3, THE_EXODAR },
			["timeline"] = { "added 2.0.1" },
			["maps"] = { THE_EXODAR },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
			["groups"] = FLAME_STEAL_REWARDS,
		}),
		q(9326, {	-- Stealing the Undercity's Flame
			["provider"] = { "i", 23181 },	-- Flame of the Undercity (Provided)
			-- #if AFTER CATA
			["coord"] = { 68.7, 8.50, UNDERCITY },
			-- #else
			["coord"] = { 62.6, 66.9, UNDERCITY },
			-- #endif
			["maps"] = { UNDERCITY },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
			["groups"] = FLAME_STEAL_REWARDS,
		}),
		q(9325, {	-- Stealing Thunder Bluff's Flame
			["provider"] = { "i", 23180 },	-- Flame of Thunder Bluff (Provided)
			-- #if AFTER CATA
			["coord"] = { 21.9, 27.3, THUNDER_BLUFF },
			-- #else
			["coord"] = { 21.1, 25.6, THUNDER_BLUFF },
			-- #endif
			["maps"] = { THUNDER_BLUFF },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
			["groups"] = FLAME_STEAL_REWARDS,
		}),
		q(11917, {	-- Striking Back [Level 22]
			["qg"] = EARTHEN_RING_ELDER_ID,
			-- #if AFTER CATA
			["sourceQuests"] = { 29092, 12012 },	-- Inform the Elder (A, H)
			-- #else
			["sourceQuest"] = 12012,	-- Inform the Elder (Both)
			-- #endif
			["coords"] = EARTHEN_RING_ELDER_COORDS,
			["timeline"] = { "added 2.4.0.7994" },
			["maps"] = appendGroups(EARTHEN_RING_ELDER_MAPS, {
				ASHENVALE,
			}),
			["isDaily"] = true,
			["lvl"] = lvlsquish(16, 1, 16),
			["groups"] = {
				objective(1, {	-- Frostwave Lieutenant slain
					["provider"] = { "n", 26116 },	-- Frostwave Lieutenant
					["coord"] = { 9.6, 12.2, ASHENVALE },
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(11947, {	-- Striking Back [Level 32]
			["qg"] = EARTHEN_RING_ELDER_ID,
			-- #if AFTER CATA
			["sourceQuests"] = { 29092, 12012 },	-- Inform the Elder (A, H)
			-- #else
			["sourceQuest"] = 12012,	-- Inform the Elder (Both)
			-- #endif
			["coords"] = EARTHEN_RING_ELDER_COORDS,
			["timeline"] = { "added 2.4.0.7994" },
			["maps"] = appendGroups(EARTHEN_RING_ELDER_MAPS, {
				DESOLACE,
			}),
			["isDaily"] = true,
			["lvl"] = lvlsquish(26, 1, 26),
			["groups"] = {
				objective(1, {	-- Hailstone Lieutenant slain
					["provider"] = { "n", 26178 },	-- Hailstone Lieutenant
					["coord"] = { 39.2, 30.6, DESOLACE },
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(11948, {	-- Striking Back [Level 43]
			["qg"] = EARTHEN_RING_ELDER_ID,
			-- #if AFTER CATA
			["sourceQuests"] = { 29092, 12012 },	-- Inform the Elder (A, H)
			-- #else
			["sourceQuest"] = 12012,	-- Inform the Elder (Both)
			-- #endif
			["coords"] = EARTHEN_RING_ELDER_COORDS,
			["timeline"] = { "added 2.4.0.7994" },
			["maps"] = appendGroups(EARTHEN_RING_ELDER_MAPS, {
				-- #if BEFORE CATA
				STRANGLETHORN_VALE,
				-- #else
				NORTHERN_STRANGLETHORN,
				-- #endif
			}),
			["isDaily"] = true,
			["lvl"] = lvlsquish(39, 1, 39),
			["groups"] = {
				objective(1, {	-- Chillwind Lieutenant slain
					["provider"] = { "n", 26204 },	-- Chillwind Lieutenant
					-- #if BEFORE CATA
					["coord"] = { 21, 22, STRANGLETHORN_VALE },
					-- #else
					["coord"] = { 21.6, 41.4, NORTHERN_STRANGLETHORN },
					-- #endif
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(11952, {	-- Striking Back [Level 51]
			["qg"] = EARTHEN_RING_ELDER_ID,
			-- #if AFTER CATA
			["sourceQuests"] = { 29092, 12012 },	-- Inform the Elder (A, H)
			-- #else
			["sourceQuest"] = 12012,	-- Inform the Elder (Both)
			-- #endif
			["coords"] = EARTHEN_RING_ELDER_COORDS,
			["timeline"] = { "added 2.4.0.7994" },
			["maps"] = appendGroups(EARTHEN_RING_ELDER_MAPS, {
				BURNING_STEPPES,
			}),
			["isDaily"] = true,
			["lvl"] = lvlsquish(45, 1, 45),
			["groups"] = {
				objective(1, {	-- Frigid Lieutenant slain
					["provider"] = { "n", 26214 },	-- Frigid Lieutenant
					["coord"] = { 15.6, 33.2, BURNING_STEPPES },
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(11953, {	-- Striking Back [Level 60]
			["qg"] = EARTHEN_RING_ELDER_ID,
			-- #if AFTER CATA
			["sourceQuests"] = { 29092, 12012 },	-- Inform the Elder (A, H)
			-- #else
			["sourceQuest"] = 12012,	-- Inform the Elder (Both)
			-- #endif
			["coords"] = EARTHEN_RING_ELDER_COORDS,
			["timeline"] = { "added 2.4.0.7994" },
			["maps"] = appendGroups(EARTHEN_RING_ELDER_MAPS, {
				SILITHUS,
			}),
			["isDaily"] = true,
			["lvl"] = lvlsquish(54, 1, 54),
			["groups"] = {
				objective(1, {	-- Glacial Lieutenant slain
					["provider"] = { "n", 26215 },	-- Glacial Lieutenant
					["coord"] = { 69.0, 20.6, SILITHUS },
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(11954, {	-- Striking Back [Level 67]
			["qg"] = EARTHEN_RING_ELDER_ID,
			-- #if AFTER CATA
			["sourceQuests"] = { 29092, 12012 },	-- Inform the Elder (A, H)
			-- #else
			["sourceQuest"] = 12012,	-- Inform the Elder (Both)
			-- #endif
			["coords"] = EARTHEN_RING_ELDER_COORDS,
			["timeline"] = { "added 2.4.0.7994" },
			["maps"] = appendGroups(EARTHEN_RING_ELDER_MAPS, {
				HELLFIRE_PENINSULA,
			}),
			["isDaily"] = true,
			["lvl"] = lvlsquish(61, 1, 61),
			["groups"] = {
				objective(1, {	-- Glacial Templar slain
					["provider"] = { "n", 26216 },	-- Glacial Templar
					["coords"] = {
						{ 84.2, 47.0, HELLFIRE_PENINSULA },
						{ 84.2, 53.4, HELLFIRE_PENINSULA },
					},
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		-- q(11691),	-- Summon Ahune
		q(9367, {	-- The Festival of Fire (A)
			["qg"] = FESTIVAL_LOREMASTER_ID,
			-- #if BEFORE TBC
			["coords"] = FESTIVAL_LOREMASTER_COORDS,
			["maps"] = FESTIVAL_LOREMASTER_MAPS,
			-- #endif
			["timeline"] = { "removed 2.4.0" },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = 1,
			-- #if BEFORE TBC
			["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
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
			-- #endif
		}),
		q(9368, {	-- The Festival of Fire (H)
			["qg"] = FESTIVAL_TALESPINNER_ID,
			-- #if BEFORE TBC
			["coords"] = FESTIVAL_TALESPINNER_COORDS,
			["maps"] = FESTIVAL_TALESPINNER_MAPS,
			-- #endif
			["timeline"] = { "removed 2.4.0" },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = 1,
			-- #if BEFORE TBC
			["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
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
			-- #endif
		}),
		q(11970, {	-- The Master of Summer Lore (A)
			["qgs"] = {
				18927,	-- Human Commoner
				19148,	-- Dwarf Commoner
				19171,	-- Draenei Commoner
				19172,	-- Gnome Commoner
				19173,	-- Night Elf Commoner
				20102,	-- Goblin Commoner
			},
			["maps"] = {
				STORMWIND_CITY,
				IRONFORGE,
				DARNASSUS,
				THE_EXODAR,
				TANARIS,
				WINTERSPRING,
				NETHERSTORM,
				-- #if BEFORE CATA
				THE_BARRENS,
				STRANGLETHORN_VALE,
				-- #else
				NORTHERN_BARRENS,
				210,	-- The Cape of Stranglethorn
				-- #endif
				-- #if AFTER WRATH
				120,	-- The Storm Peaks
				125,	-- Dalaran (Northrend)
				-- #endif
				-- #if AFTER MOP
				504,	-- Isle of Thunder
				-- #endif
			},
			["timeline"] = { "added 2.4.0.7994" },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 1,
			["groups"] = {
				i(23247),	-- Burning Blossom
			},
		}),
		q(11971, {	-- The Spinner of Summer Tales (H)
			["qgs"] = {
				19169,	-- Blood Elf Commoner
				19175,	-- Orc Commoner
				19176,	-- Tauren Commoner
				19177,	-- Troll Commoner
				19178,	-- Forsaken Commoner
				20102,	-- Goblin Commoner
			},
			["maps"] = {
				ORGRIMMAR,
				THUNDER_BLUFF,
				UNDERCITY,
				EVERSONG_WOODS,
				SILVERMOON_CITY,
				SHATTRATH_CITY,
				TANARIS,
				WINTERSPRING,
				NETHERSTORM,
				-- #if BEFORE CATA
				THE_BARRENS,
				STRANGLETHORN_VALE,
				-- #else
				NORTHERN_BARRENS,
				210,	-- The Cape of Stranglethorn
				-- #endif
				-- #if AFTER WRATH
				120,	-- The Storm Peaks
				125,	-- Dalaran (Northrend)
				-- #endif
				-- #if AFTER MOP
				504,	-- Isle of Thunder
				-- #endif
			},
			["timeline"] = { "added 2.4.0.7994" },
			["races"] = HORDE_ONLY,
			["lvl"] = 1,
			["groups"] = {
				i(23247),	-- Burning Blossom
			},
		}),
		q(11657, {	-- Torch Catching (A)
			["qg"] = 25975,	-- Master Fire Eater
			["sourceQuest"] = 11731,	-- Torch Tossing (A)
			["coords"] = {
				{ 49.8, 72.0, STORMWIND_CITY },
				{ 65.2, 25.4, IRONFORGE },
				{ 63.0, 47.6, DARNASSUS },
				{ 41.2, 24.4, THE_EXODAR },
			},
			["timeline"] = { "added 2.4.0.7994" },
			["maps"] = {
				STORMWIND_CITY,
				IRONFORGE,
				DARNASSUS,
				THE_EXODAR,
			},
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				objective(1, {	-- 	Catch 4 torches in a row.
					["provider"] = { "i", 34599 },	-- Juggling Torch
					["cost"] = {
						{ "i", 34833, 1 },	-- Unlit Torches
					},
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(11923, {	-- Torch Catching (H)
			["qg"] = 26113,	-- Master Flame Eater
			["sourceQuest"] = 11922,	-- Torch Tossing (H)
			["coords"] = {
				{ 46.6, 37.2, ORGRIMMAR },
				{ 21.2, 26.2, THUNDER_BLUFF },
				{ 68.6, 8.00, UNDERCITY },
				{ 69.6, 42.4, SILVERMOON_CITY },
			},
			["timeline"] = { "added 2.4.0.7994" },
			["maps"] = {
				ORGRIMMAR,
				THUNDER_BLUFF,
				UNDERCITY,
				SILVERMOON_CITY,
			},
			["races"] = HORDE_ONLY,
			["groups"] = {
				objective(1, {	-- 	Catch 4 torches in a row.
					["provider"] = { "i", 34599 },	-- Juggling Torch
					["cost"] = {
						{ "i", 34833, 1 },	-- Unlit Torches
					},
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(11731, {	-- Torch Tossing (A)
			["qg"] = 25975,	-- Master Fire Eater
			["coords"] = {
				{ 49.8, 72.0, STORMWIND_CITY },
				{ 65.2, 25.4, IRONFORGE },
				{ 63.0, 47.6, DARNASSUS },
				{ 41.2, 24.4, THE_EXODAR },
			},
			["timeline"] = { "added 2.4.0.7994" },
			["maps"] = {
				STORMWIND_CITY,
				IRONFORGE,
				DARNASSUS,
				THE_EXODAR,
			},
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				objective(1, {	-- Hit 8 braziers.
					["provider"] = { "i", 34862 },	-- Practice Torches
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(11922, {	-- Torch Tossing (H)
			["qg"] = 26113,	-- Master Flame Eater
			["coords"] = {
				{ 46.6, 37.2, ORGRIMMAR },
				{ 21.2, 26.2, THUNDER_BLUFF },
				{ 68.6, 8.00, UNDERCITY },
				{ 69.6, 42.4, SILVERMOON_CITY },
			},
			["timeline"] = { "added 2.4.0.7994" },
			["maps"] = {
				ORGRIMMAR,
				THUNDER_BLUFF,
				UNDERCITY,
				SILVERMOON_CITY,
			},
			["races"] = HORDE_ONLY,
			["groups"] = {
				objective(1, {	-- Hit 8 braziers.
					["provider"] = { "i", 34862 },	-- Practice Torches
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(11886, {	-- Unusual Activity
			["qg"] = EARTHEN_RING_ELDER_ID,
			["coords"] = EARTHEN_RING_ELDER_COORDS,
			["timeline"] = { "added 2.4.0.7994" },
			["maps"] = appendGroups(EARTHEN_RING_ELDER_MAPS, {
				ASHENVALE,
			}),
			["cost"] = {
				{ "i", 35828, 1 },	-- Totemic Beacon
			},
			["lvl"] = lvlsquish(16, 1, 1),
			["groups"] = {
				objective(1, {	-- 0/1 Twilight Correspondence
					["provider"] = { "i", 35277 },	-- Twilight Correspondence
					["coord"] = { 16.0, 20.8, ASHENVALE },
					["crs"] = {
						25863,	-- Twilight Firesworn <Twilight's Hammer>
						25866,	-- Twilight Flameguard <Twilight's Hammer>
						25924,	-- Twilight Speaker Viktor <Twilight's Hammer>
					},
				}),
			},
		}),
		q(9322, {	-- Wild Fires in Kalimdor
			["qg"] = FESTIVAL_FLAMEKEEPER_ID,
			-- #if BEFORE TBC
			["coords"] = FESTIVAL_FLAMEKEEPER_COORDS,
			["maps"] = appendGroups(FESTIVAL_FLAMEKEEPER_MAPS, {
				AZSHARA,
				SILITHUS,
				UNGORO_CRATER,
				WINTERSPRING,
			}),
			-- #endif
			["timeline"] = { "removed 2.4.0" },
			["isYearly"] = true,
			["lvl"] = 1,
			-- #if BEFORE TBC
			["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
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
			-- #endif
		}),
		q(9323, {	-- Wild Fires in the Eastern Kingdoms
			["qg"] = FESTIVAL_FLAMEKEEPER_ID,
			-- #if BEFORE TBC
			["coords"] = FESTIVAL_FLAMEKEEPER_COORDS,
			["maps"] = appendGroups(FESTIVAL_FLAMEKEEPER_MAPS, {
				BLASTED_LANDS,
				EASTERN_PLAGUELANDS,
				THE_HINTERLANDS,
				SEARING_GORGE,
			}),
			-- #endif
			["timeline"] = { "removed 2.4.0" },
			["isYearly"] = true,
			["lvl"] = 1,
			-- #if BEFORE TBC
			["icon"] = "Interface/Icons/Inv_Misc_SummerFest_BrazierGreen",
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
			-- #endif
		}),
		
		-- Bonfire Quests
		n(-30, {	-- Alliance
			["timeline"] = { "added 2.4.0.7994" },
			["races"] = ALLIANCE_ONLY,
			["groups"] = bubbleDown({ ["isYearly"] = true, ["races"] = ALLIANCE_ONLY, }, {
				q(11764, {	-- Desecrate this Fire! — Arathi Highlands
					["provider"] = { "o", 187947 },	-- Horde Bonfire
					-- #if AFTER CATA
					["coord"] = { 69.0, 43.1, ARATHI_HIGHLANDS },
					-- #else
					["coord"] = { 74.0, 41.7, ARATHI_HIGHLANDS },
					-- #endif
					["maps"] = { ARATHI_HIGHLANDS },
				}),
				q(11765, {	-- Desecrate this Fire! — Ashenvale
					["provider"] = { "o", 187948 },	-- Horde Bonfire
					-- #if AFTER CATA
					["coord"] = { 51.6, 66.8, ASHENVALE },
					-- #else
					["coord"] = { 70.0, 69.2, ASHENVALE },
					-- #endif
					["maps"] = { ASHENVALE },
				}),
				q(28919, {	-- Desecrate this Fire! — Azshara
					["provider"] = { "o", 207991 },	-- Horde Bonfire
					["coord"] = { 60.4, 53.5, AZSHARA },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { AZSHARA },
				}),
				q(11766, {	-- Desecrate this Fire! — Badlands
					["provider"] = { "o", 187954 },	-- Horde Bonfire
					-- #if AFTER CATA
					["coord"] = { 24.1, 37.3, BADLANDS },
					-- #else
					["coord"] = { 4.9, 49.1, BADLANDS },
					-- #endif
					["maps"] = { BADLANDS },
				}),
				q(11767, {	-- Desecrate this Fire! — Blade's Edge Mountains
					["provider"] = { "o", 187955 },	-- Horde Bonfire
					["coord"] = { 49.9, 59.0, BLADES_EDGE_MOUNTAINS },
					["maps"] = { BLADES_EDGE_MOUNTAINS },
				}),
				q(28917, {	-- Desecrate this Fire! — Blasted Lands
					["provider"] = { "o", 207989 },	-- Horde Bonfire
					["coord"] = { 46.3, 14.4, BLASTED_LANDS },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { BLASTED_LANDS },
				}),
				q(13441, {	-- Desecrate this Fire! — Borean Tundra
					["provider"] = { "o", 194033 },	-- Horde Bonfire
					["coord"] = { 51.1, 11.9, 114 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 114 },	-- Borean Tundra
				}),
				q(11768, {	-- Desecrate this Fire! — Burning Steppes
					["provider"] = { "o", 187956 },	-- Horde Bonfire
					-- #if AFTER CATA
					["coord"] = { 51.5, 29.3, BURNING_STEPPES },
					-- #else
					["coord"] = { 62.1, 29.0, BURNING_STEPPES },
					-- #endif
					["maps"] = { BURNING_STEPPES },
				}),
				q(13457, {	-- Desecrate this Fire! — Crystalsong Forest
					["provider"] = { "o", 194046 },	-- Horde Bonfire
					["coord"] = { 80.5, 53.0, 127 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 127 },	-- Crystalsong Forest
				}),
				q(11769, {	-- Desecrate this Fire! — Desolace
					["provider"] = { "o", 187957 },	-- Horde Bonfire
					["coord"] = { 26.1, 77.4, DESOLACE },
					["maps"] = { DESOLACE },
				}),
				q(13451, {	-- Desecrate this Fire! — Dragonblight
					["provider"] = { "o", 194037 },	-- Horde Bonfire
					["coord"] = { 38.5, 48.4, 115 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 115 },	-- Dragonblight
				}),
				q(11770, {	-- Desecrate this Fire! — Durotar
					["provider"] = { "o", 187958 },	-- Horde Bonfire
					["coord"] = { 52.0, 47.0, DUROTAR },
					["maps"] = { DUROTAR },
				}),
				q(11771, {	-- Desecrate this Fire! — Dustwallow Marsh
					["provider"] = { "o", 187959 },	-- Horde Bonfire
					["coord"] = { 33.2, 30.8, DUSTWALLOW_MARSH },
					["maps"] = { DUSTWALLOW_MARSH },
				}),
				q(11772, {	-- Desecrate this Fire! — Eversong Woods
					["provider"] = { "o", 187960 },	-- Horde Bonfire
					["coord"] = { 46.3, 50.3, EVERSONG_WOODS },
					["maps"] = { EVERSONG_WOODS },
				}),
				q(11773, {	-- Desecrate this Fire! — Feralas
					["provider"] = { "o", 187961 },	-- Horde Bonfire
					["coord"] = { 72.5, 47.6, FERALAS },
					["maps"] = { FERALAS },
				}),
				q(44583, {	-- Desecrate this Fire! — Frostfire Ridge
					["provider"] = { "o", 259870 },	-- Horde Bonfire
					["coord"] = { 72.8, 65.2, 525 },
					["timeline"] = { "added 6.0.1" },
					["maps"] = { 525, },	-- Frostfire Ridge
				}),
				q(11774, {	-- Desecrate this Fire! — Ghostlands
					["provider"] = { "o", 187962 },	-- Horde Bonfire
					["coord"] = { 47.0, 25.9, GHOSTLANDS },
					["maps"] = { GHOSTLANDS },
				}),
				q(13454, {	-- Desecrate this Fire! — Grizzly Hills
					["provider"] = { "o", 194042 },	-- Horde Bonfire
					["coord"] = { 19.1, 61.3, 116 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 116 },	-- Grizzly Hills
				}),
				q(11775, {	-- Desecrate this Fire! — Hellfire Peninsula
					["provider"] = { "o", 187963 },	-- Horde Bonfire
					["coord"] = { 57.3, 41.8, HELLFIRE_PENINSULA },
					["maps"] = { HELLFIRE_PENINSULA },
				}),
				q(11776, {	-- Desecrate this Fire! — Hillsbrad Foothills
					["provider"] = { "o", 187964 },	-- Horde Bonfire
					-- #if AFTER CATA
					["coord"] = { 54.5, 50.1, HILLSBRAD_FOOTHILLS },
					-- #else
					["coord"] = { 58.4, 25.1, HILLSBRAD_FOOTHILLS },
					-- #endif
					["maps"] = { HILLSBRAD_FOOTHILLS },
				}),
				q(13453, {	-- Desecrate this Fire! — Howling Fjord
					["provider"] = { "o", 194039 },	-- Horde Bonfire
					["coord"] = { 48.4, 13.5, 117 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 117 },	-- Howling Fjord
				}),
				q(11777, {	-- Desecrate this Fire! — Mulgore
					["provider"] = { "o", 187965 },	-- Horde Bonfire
					["coord"] = { 52.0, 59.3, MULGORE },
					["maps"] = { MULGORE },
				}),
				q(11778, {	-- Desecrate this Fire! — Nagrand (Outland)
					["provider"] = { "o", 187966 },	-- Horde Bonfire
					["coord"] = { 51.1, 34.2, NAGRAND },
					["maps"] = { NAGRAND },
				}),
				q(54746, {	-- Desecrate this Fire! — Nazmir
					["provider"] = { "o", 316796 },	-- Horde Bonfire
					["coord"] = { 40.0, 74.0, 863 },
					["timeline"] = { "added 8.0.1" },
					["maps"] = { 863 },	-- Nazmir
				}),
				q(11799, {	-- Desecrate this Fire! — Netherstorm
					["provider"] = { "o", 187949 },	-- Horde Bonfire
					["coord"] = { 32.3, 68.4, NETHERSTORM },
					["maps"] = { NETHERSTORM },
				}),
				q(11783, {	-- Desecrate this Fire! — Northern Barrens / The Barrens
					["provider"] = { "o", 187971 },	-- Horde Bonfire
					-- #if AFTER CATA
					["coord"] = { 49.9, 54.2, NORTHERN_BARRENS },
					["maps"] = { NORTHERN_BARRENS },
					-- #else
					["coord"] = { 52.2, 27.9, THE_BARRENS },
					["maps"] = { THE_BARRENS },
					-- #endif
				}),
				q(28911, {	-- Desecrate this Fire! — Northern Stranglethorn
					["provider"] = { "o", 207983 },	-- Horde Bonfire
					["coord"] = { 40.7, 52.0, NORTHERN_STRANGLETHORN },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { NORTHERN_STRANGLETHORN },
				}),
				q(11779, {	-- Desecrate this Fire! — Shadowmoon Valley (Outland)
					["provider"] = { "o", 187967 },	-- Horde Bonfire
					["coord"] = { 33.6, 30.3, SHADOWMOON_VALLEY },
					["maps"] = { SHADOWMOON_VALLEY },
				}),
				q(13450, {	-- Desecrate this Fire! — Sholazar Basin
					["provider"] = { "o", 194034 },	-- Horde Bonfire
					["coord"] = { 47.3, 61.7, 119 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 119 },	-- Sholazar Basin
				}),
				q(11800, {	-- Desecrate this Fire! — Silithus
					["provider"] = { "o", 187950 },	-- Horde Bonfire
					-- #if AFTER CATA
					["coord"] = { 50.8, 41.8, SILITHUS },
					-- #else
					["coord"] = { 46.5, 44.9, SILITHUS },
					-- #endif
					["maps"] = { SILITHUS },
				}),
				q(11580, {	-- Desecrate this Fire! — Silverpine Forest
					["provider"] = { "o", 187559 },	-- Horde Bonfire
					["coord"] = { 49.6, 38.7, SILVERPINE_FOREST },
					["maps"] = { SILVERPINE_FOREST },
				}),
				q(28914, {	-- Desecrate this Fire! — Southern Barrens
					["provider"] = { "o", 207986 },	-- Horde Bonfire
					["coord"] = { 40.7, 67.2, SOUTHERN_BARRENS },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { SOUTHERN_BARRENS },
				}),
				q(11780, {	-- Desecrate this Fire! — Stonetalon Mountains
					["provider"] = { "o", 187968 },	-- Horde Bonfire
					-- #if AFTER CATA
					["coord"] = { 53.0, 62.4, STONETALON_MOUNTAINS },
					-- #else
					["coord"] = { 50.6, 60.3, STONETALON_MOUNTAINS },
					-- #endif
					["maps"] = { STONETALON_MOUNTAINS },
				}),
				q(13455, {	-- Desecrate this Fire! — Storm Peaks
					["provider"] = { "o", 194043 },	-- Horde Bonfire
					["coord"] = { 40.3, 85.6, 120 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 120 },	-- Storm Peaks
				}),
				q(44627, {	-- Desecrate this Fire! — Suramar
					["provider"] = { "o", 259926 },	-- Horde Bonfire
					["coord"] = { 30.3, 45.4, 680 },
					["timeline"] = { "added 7.0.1" },
					["maps"] = { 680 },	-- Suramar
				}),
				q(11781, {	-- Desecrate this Fire! — Swamp of Sorrows
					["provider"] = { "o", 187969 },	-- Horde Bonfire
					-- #if AFTER CATA
					["coord"] = { 76.7, 14.4, SWAMP_OF_SORROWS },
					-- #else
					["coord"] = { 46.9, 46.5, SWAMP_OF_SORROWS },
					-- #endif
					["maps"] = { SWAMP_OF_SORROWS },
				}),
				q(11802, {	-- Desecrate this Fire! — Tanaris
					["provider"] = { "o", 187952 },	-- Horde Bonfire
					-- #if AFTER CATA
					["coord"] = { 49.8, 28.2, TANARIS },
					-- #else
					["coord"] = { 49.8, 27.1, TANARIS },
					-- #endif
					["maps"] = { TANARIS },
				}),
				q(11782, {	-- Desecrate this Fire! — Terokkar Forest
					["provider"] = { "o", 187970 },	-- Horde Bonfire
					["coord"] = { 51.9, 43.3, TEROKKAR_FOREST },
					["maps"] = { TEROKKAR_FOREST },
				}),
				q(11801, {	-- Desecrate this Fire! — The Cape of Stranglethorn / Stranglethorn Vale
					["provider"] = { "o", 187951 },	-- Horde Bonfire
					-- #if AFTER CATA
					["coord"] = { 50.6, 70.8, 210 },
					["maps"] = { 210 },	-- The Cape of Stranglethorn
					-- #else
					["coord"] = { 33.0, 75.4, STRANGLETHORN_VALE },
					["maps"] = { STRANGLETHORN_VALE },
					-- #endif
				}),
				q(11784, {	-- Desecrate this Fire! — The Hinterlands
					["provider"] = { "o", 187972 },	-- Horde Bonfire
					["coord"] = { 76.4, 74.5, THE_HINTERLANDS },
					["maps"] = { THE_HINTERLANDS },
				}),
				q(11786, {	-- Desecrate this Fire! — Tirisfal Glades
					["provider"] = { "o", 187974 },	-- Horde Bonfire
					["coord"] = { 57.0, 51.9, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
				}),
				q(28944, {	-- Desecrate this Fire! — Twilight Highlands
					["provider"] = { "o", 208090 },	-- Horde Bonfire
					["coord"] = { 53.3, 46.5, TWILIGHT_HIGHLANDS },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { TWILIGHT_HIGHLANDS },
				}),
				q(28948, {	-- Desecrate this Fire! — Uldum
					["provider"] = { "o", 208094 },	-- Horde Bonfire
					["coord"] = { 53.0, 34.4, 249 },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { 249 },	-- Uldum
				}),
				q(28920, {	-- Desecrate this Fire! — Un'Goro Crater
					["provider"] = { "o", 207992 },	-- Horde Bonfire
					["coord"] = { 56.3, 65.8, UNGORO_CRATER },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { UNGORO_CRATER },
				}),
				q(32496, {	-- Desecrate this Fire! — Vale of Eternal Blossoms
					["provider"] = { "o", 217852 },	-- Horde Bonfire
					["coord"] = { 77.9, 33.9, 390 },
					["timeline"] = { "added 5.0.1" },
					["maps"] = { 390, },	-- Vale of Eternal Blossoms
				}),
				q(54749, {	-- Desecrate this Fire! — Vol'dun
					["provider"] = { "o", 316801 },	-- Horde Bonfire
					["coord"] = { 55.9, 47.4, 864 },
					["timeline"] = { "added 8.0.1" },
					["maps"] = { 864 },	-- Vol'dun
				}),
				q(28918, {	-- Desecrate this Fire! — Western Plaguelands
					["provider"] = { "o", 207990 },	-- Horde Bonfire
					["coord"] = { 28.9, 56.8, WESTERN_PLAGUELANDS },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { WESTERN_PLAGUELANDS },
				}),
				q(11803, {	-- Desecrate this Fire! — Winterspring
					["provider"] = { "o", 187953 },	-- Horde Bonfire
					-- #if AFTER CATA
					["coord"] = { 58.2, 47.3, WINTERSPRING },
					-- #else
					["coord"] = { 59.8, 35.4, WINTERSPRING },
					-- #endif
					["maps"] = { WINTERSPRING },
				}),
				q(11787, {	-- Desecrate this Fire! — Zangarmarsh
					["provider"] = { "o", 187975 },	-- Horde Bonfire
					["coord"] = { 35.6, 51.9, ZANGARMARSH },
					["maps"] = { ZANGARMARSH },
				}),
				q(54744, {	-- Desecrate this Fire! — Zuldazar
					["provider"] = { "o", 316795 },	-- Horde Bonfire
					["coord"] = { 53.3, 48.1, 862 },
					["timeline"] = { "added 8.0.1" },
					["maps"] = { 862 },	-- Zuldazar
				}),
				q(13458, {	-- Desecrate this Fire! — Zul'Drak
					["provider"] = { "o", 194048 },	-- Horde Bonfire
					["coord"] = { 43.2, 71.4, 121 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 121 },	-- Zul'Drak
				}),
				q(11804, {	-- Honor the Flame — Arathi Highlands
					["provider"] = { "n", 25887 },	-- Arathi Flame Warden
					-- #if AFTER CATA
					["coord"] = { 44.3, 45.8, ARATHI_HIGHLANDS },
					-- #else
					["coord"] = { 50.0, 44.8, ARATHI_HIGHLANDS },
					-- #endif
					["maps"] = { ARATHI_HIGHLANDS },
				}),
				q(11805, {	-- Honor the Flame — Ashenvale
					["provider"] = { "n", 25883 },	-- Ashenvale Flame Warden
					-- #if AFTER CATA
					["coord"] = { 87.0, 42.0, ASHENVALE },
					-- #else
					["coord"] = { 37.8, 54.7, ASHENVALE },
					-- #endif
					["maps"] = { ASHENVALE },
				}),
				q(11806, {	-- Honor the Flame — Azuremyst Isle
					["provider"] = { "n", 25888 },	-- Azuremyst Isle Flame Warden
					["coord"] = { 44.0, 53.0, AZUREMYST_ISLE },
					["maps"] = { AZUREMYST_ISLE },
				}),
				q(28925, {	-- Honor the Flame — Badlands
					["provider"] = { "n", 51585 },	-- Badlands Flame Warden
					["coord"] = { 18.9, 56.1, BADLANDS },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { BADLANDS },
				}),
				q(11807, {	-- Honor the Flame — Blade's Edge Mountains
					["provider"] = { "n", 25889 },	-- Blade's Edge Flame Warden
					["coord"] = { 42.0, 66.0, BLADES_EDGE_MOUNTAINS },
					["maps"] = { BLADES_EDGE_MOUNTAINS },
				}),
				q(11808, {	-- Honor the Flame — Blasted Lands
					["provider"] = { "n", 25890 },	-- Blasted Lands Flame Warden
					-- #if AFTER CATA
					["coord"] = { 55.5, 15.0, BLASTED_LANDS },
					-- #else
					["coord"] = { 59.3, 17.0, BLASTED_LANDS },
					-- #endif
					["maps"] = { BLASTED_LANDS },
				}),
				q(11809, {	-- Honor the Flame — Bloodmyst Isle
					["provider"] = { "n", 25891 },	-- Bloodmyst Isle Flame Warden
					-- #if AFTER CATA
					["coord"] = { 55.0, 69.0, BLOODMYST_ISLE },
					-- #else
					["coord"] = { 55.8, 67.9, BLOODMYST_ISLE },
					-- #endif
					["maps"] = { BLOODMYST_ISLE },
				}),
				q(13485, {	-- Honor the Flame — Borean Tundra
					["provider"] = { "n", 32801 },	-- Borean Tundra Flame Warden
					["coord"] = { 55.0, 20.0, 114 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 114 },	-- Borean Tundra
				}),
				q(11810, {	-- Honor the Flame — Burning Steppes
					["provider"] = { "n", 25892 },	-- Burning Steppes Flame Warden
					-- #if AFTER CATA
					["coord"] = { 68.2, 60.6, BURNING_STEPPES },
					-- #else
					["coord"] = { 80.3, 62.9, BURNING_STEPPES },
					-- #endif
					["maps"] = { BURNING_STEPPES },
				}),
				q(13491, {	-- Honor the Flame — Crystalsong Forest
					["provider"] = { "n", 32807 },	-- Crystalsong Forest Flame Warden
					["coord"] = { 78.0, 75.0, 127 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 127 },	-- Crystalsong Forest
				}),
				q(11811, {	-- Honor the Flame — Darkshore
					["provider"] = { "n", 25893 },	-- Darkshore Flame Warden
					-- #if AFTER CATA
					["coord"] = { 49.0, 23.0, DARKSHORE },
					-- #else
					["coord"] = { 37.0, 46.2, DARKSHORE },
					-- #endif
					["maps"] = { DARKSHORE },
				}),
				q(29036, {	-- Honor the Flame — Deepholm
					["provider"] = { "n", 51698 },	-- Deepholm Flame Guardian
					["coord"] = { 49.4, 51.4, 207 },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { 207 },	-- Deepholm
				}),
				q(11812, {	-- Honor the Flame — Desolace
					["provider"] = { "n", 25894 },	-- Desolace Flame Warden
					-- #if AFTER CATA
					["coord"] = { 65.0, 17.0, DESOLACE },
					-- #else
					["coord"] = { 66.1, 17.1, DESOLACE },
					-- #endif
					["maps"] = { DESOLACE },
				}),
				q(13487, {	-- Honor the Flame — Dragonblight
					["provider"] = { "n", 32803 },	-- Dragonblight Flame Warden
					["coord"] = { 75.0, 44.0, 115 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 115 },	-- Dragonblight
				}),
				q(54743, {	-- Honor the Flame — Drustvar
					["provider"] = { "n", 148934 },	-- Drustvar Flame Warden
					["coord"] = { 40.2, 47.7, 896 },
					["timeline"] = { "added 8.0.1" },
					["maps"] = { 896 },	-- Drustvar
				}),
				q(11813, {	-- Honor the Flame — Dun Morogh
					["provider"] = { "n", 25895 },	-- Dun Morogh Flame Warden
					-- #if AFTER CATA
					["coord"] = { 53.8, 45.2, DUN_MOROGH },
					-- #else
					["coord"] = { 46.7, 46.9, DUN_MOROGH },
					-- #endif
					["maps"] = { DUN_MOROGH },
				}),
				q(11814, {	-- Honor the Flame — Duskwood
					["qg"] = 25896,	-- Duskwood Flame Warden
					["coord"] = { 73.8, 54.7, DUSKWOOD },
					["maps"] = { DUSKWOOD },
				}),
				q(11815, {	-- Honor the Flame — Dustwallow Marsh
					["provider"] = { "n", 25897 },	-- Dustwallow Marsh Flame Warden
					-- #if AFTER CATA
					["coord"] = { 62.0, 40.0, DUSTWALLOW_MARSH },
					-- #else
					["coord"] = { 61.8, 40.5, DUSTWALLOW_MARSH },
					-- #endif
					["maps"] = { DUSTWALLOW_MARSH },
				}),
				q(11816, {	-- Honor the Flame — Elwynn Forest
					["qg"] = 25898,	-- Elwynn Forest Flame Warden
					["coord"] = { 43.5, 62.7, ELWYNN_FOREST },
					["maps"] = { ELWYNN_FOREST },
				}),
				q(11817, {	-- Honor the Flame — Feralas
					["provider"] = { "n", 25899 },	-- Feralas Flame Warden
					-- #if AFTER CATA
					["coord"] = { 47.0, 44.0, FERALAS },
					-- #else
					["coord"] = { 28.3, 43.9, FERALAS },
					-- #endif
					["maps"] = { FERALAS },
				}),
				q(13489, {	-- Honor the Flame — Grizzly Hills
					["provider"] = { "n", 32805 },	-- Grizzly Hills Flame Warden
					["coord"] = { 34.0, 61.0, 116 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 116 },	-- Grizzly Hills
				}),
				q(11818, {	-- Honor the Flame — Hellfire Peninsula
					["provider"] = { "n", 25900 },	-- Hellfire Peninsula Flame Warden
					["coord"] = { 62.0, 58.0, HELLFIRE_PENINSULA },
					["maps"] = { HELLFIRE_PENINSULA },
				}),
				q(11853, {	-- Honor the Flame — Hillsbrad Foothills
					["qg"] = 25901,	-- Hillsbrad Flame Warden
					["coord"] = { 50.4, 47.6, HILLSBRAD_FOOTHILLS },
					["timeline"] = { "removed 4.0.1" },	-- Southshore got destroyed with Cataclysm
					["maps"] = { HILLSBRAD_FOOTHILLS },
				}),
				q(13488, {	-- Honor the Flame — Howling Fjord
					["provider"] = { "n", 32804 },	-- Howling Fjord Flame Warden
					["coord"] = { 58.0, 16.0, 117 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 117 },	-- Howling Fjord
				}),
				q(29030, {	-- Honor the Flame — Hyjal
					["provider"] = { "n", 51682 },	-- Hyjal Flame Guardian
					["coord"] = { 62.8, 22.6, MOUNT_HYJAL },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { MOUNT_HYJAL },
				}),
				q(11820, {	-- Honor the Flame — Loch Modan
					["provider"] = { "n", 25902 },	-- Loch Modan Flame Warden
					-- #if AFTER CATA
					["coord"] = { 32.3, 41.0, LOCH_MODAN },
					-- #else
					["coord"] = { 32.6, 41.0, LOCH_MODAN },
					-- #endif
					["maps"] = { LOCH_MODAN },
				}),
				q(11821, {	-- Honor the Flame — Nagrand (Outland)
					["provider"] = { "n", 25903 },	-- Nagrand Flame Warden
					["coord"] = { 49.6, 69.5, NAGRAND },
					["maps"] = { NAGRAND },
				}),
				q(11830, {	-- Honor the Flame — Netherstorm
					["provider"] = { "n", 25913 },	-- Netherstorm Flame Warden
					["coord"] = { 31.0, 63.0, NETHERSTORM },
					["maps"] = { NETHERSTORM },
				}),
				q(28922, {	-- Honor the Flame — Northern Stranglethorn
					["provider"] = { "n", 51574 },	-- Northern Stranglethorn Flame Warden
					["coord"] = { 52.0, 63.6, NORTHERN_STRANGLETHORN },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { NORTHERN_STRANGLETHORN },
				}),
				q(11822, {	-- Honor the Flame — Redridge Mountains
					["qg"] = 25904,	-- Redridge Flame Warden
					-- #if AFTER CATA
					["coord"] = { 25.0, 53.5, REDRIDGE_MOUNTAINS },
					-- #else
					["coord"] = { 25.2, 59.0, REDRIDGE_MOUNTAINS },
					-- #endif
					["maps"] = { REDRIDGE_MOUNTAINS },
				}),
				q(11823, {	-- Honor the Flame — Shadowmoon Valley (Outland)
					["provider"] = { "n", 25905 },	-- Shadowmoon Valley Flame Warden
					["coord"] = { 40.0, 55.0, SHADOWMOON_VALLEY },
					["maps"] = { SHADOWMOON_VALLEY },
				}),
				q(44579, {	-- Honor the Flame — Shadowmoon Valley (WoD)
					["provider"] = { "n", 114500 },	-- Shadowmoon Valley Flame Warden
					["coord"] = { 42.6, 36.0, 539 },
					["timeline"] = { "added 6.0.1" },
					["maps"] = { 539 },	-- Shadowmoon Valley
				}),
				q(13486, {	-- Honor the Flame — Sholazar Basin
					["provider"] = { "n", 32802 },	-- Sholazar Basin Flame Warden
					["coord"] = { 47.0, 66.0, 119 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 119 },	-- Sholazar Basin
				}),
				q(11831, {	-- Honor the Flame — Silithus
					["provider"] = { "n", 25914 },	-- Silithus Flame Warden
					-- #if AFTER CATA
					["coord"] = { 60.0, 33.0, SILITHUS },
					-- #else
					["coord"] = { 57.5, 35.2, SILITHUS },
					-- #endif
					["maps"] = { SILITHUS },
				}),
				q(28926, {	-- Honor the Flame — Southern Barrens
					["provider"] = { "n", 51586 },	-- Southern Barrens Flame Warden
					["coord"] = { 48.0, 72.0, SOUTHERN_BARRENS },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { SOUTHERN_BARRENS },
				}),
				q(28928, {	-- Honor the Flame — Stonetalon Mountains
					["provider"] = { "n", 51588 },	-- Stonetalon Mountains Flame Warden
					["coord"] = { 49.0, 51.0, STONETALON_MOUNTAINS },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { STONETALON_MOUNTAINS },
				}),
				q(13490, {	-- Honor the Flame — Storm Peaks
					["provider"] = { "n", 32806 },	-- Storm Peaks Flame Warden
					["coord"] = { 42.0, 87.0, 120 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 120 },	-- Storm Peaks
				}),
				q(54741, {	-- Honor the Flame — Stormsong Valley
					["provider"] = { "n", 148932 },	-- Stormsong Valley Flame Warden
					["coord"] = { 35.8, 51.2, 942 },
					["timeline"] = { "added 8.0.1" },
					["maps"] = { 942 },	-- Stormsong Valley
				}),
				q(44613, {	-- Honor the Flame — Suramar
					["provider"] = { "n", 114519 },	-- Suramar Flame Warden
					["coord"] = { 23.0, 58.4, 680 },
					["timeline"] = { "added 7.0.1" },
					["maps"] = { 680 },	-- Suramar
				}),
				q(28929, {	-- Honor the Flame — Swamp of Sorrows
					["provider"] = { "n", 51602 },	-- Swamp of Sorrows Flame Warden
					["coord"] = { 70.1, 15.4, SWAMP_OF_SORROWS },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { SWAMP_OF_SORROWS },
				}),
				q(11833, {	-- Honor the Flame — Tanaris
					["provider"] = { "n", 25916 },	-- Tanaris Flame Warden
					-- #if AFTER CATA
					["coord"] = { 52.0, 29.0, TANARIS },
					-- #else
					["coord"] = { 52.8, 29.4, TANARIS },
					-- #endif
					["maps"] = { TANARIS },
				}),
				q(11824, {	-- Honor the Flame — Teldrassil
					["provider"] = { "n", 25906 },	-- The Teldrassil Flame Warden
					-- #if AFTER CATA
					["coord"] = { 54.8, 52.9, TELDRASSIL },
					-- #else
					["coord"] = { 55.1, 60.4, TELDRASSIL },
					-- #endif
					["maps"] = { TELDRASSIL },
				}),
				q(11825, {	-- Honor the Flame — Terokkar Forest
					["provider"] = { "n", 25907 },	-- Terokkar Forest Flame Warden
					-- #if AFTER CATA
					["coord"] = { 55.0, 55.0, TEROKKAR_FOREST },
					-- #else
					["coord"] = { 54.1, 55.5, TEROKKAR_FOREST },
					-- #endif
					["maps"] = { TEROKKAR_FOREST },
				}),
				q(11832, {	-- Honor the Flame — The Cape of Stranglethorn / Stranglethorn Vale
					-- #if AFTER CATA
					["provider"] = { "n", 25915 },	-- Cape of Stranglethorn Flame Warden
					["coord"] = { 51.9, 67.8, 210 },
					["maps"] = { 210 },	-- The Cape of Stranglethorn
					-- #else
					["qg"] = 25915,	-- Stranglethorn Vale Flame Warden
					["coord"] = { 33.9, 73.5, STRANGLETHORN_VALE },
					["maps"] = { STRANGLETHORN_VALE },
					-- #endif
				}),
				q(11826, {	-- Honor the Flame — The Hinterlands
					["provider"] = { "n", 25908 },	-- The Hinterlands Flame Warden
					["coord"] = { 14.4, 50.2, THE_HINTERLANDS },
					["maps"] = { THE_HINTERLANDS },
				}),
				q(54737, {	-- Honor the Flame — Tiragarde Sound
					["provider"] = { "n", 148917 },	-- Tiragarde Sound Flame Warden
					["coord"] = { 76.3, 49.9, 895 },
					["timeline"] = { "added 8.0.1" },
					["maps"] = { 895 },	-- Tiragarde Sound
				}),
				q(28945, {	-- Honor the Flame — Twilight Highlands
					["provider"] = { "n", 51650 },	-- Twilight Highlands Flame Warden
					["coord"] = { 47.0, 28.0, TWILIGHT_HIGHLANDS },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { TWILIGHT_HIGHLANDS },
				}),
				q(28950, {	-- Honor the Flame — Uldum
					["provider"] = { "n", 51653 },	-- Uldum Flame Warden
					["coord"] = { 53.0, 32.0, 249 },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { 249 },	-- Uldum
				}),
				q(28932, {	-- Honor the Flame — Un'goro Crater
					["provider"] = { "n", 51606 },	-- Un'Goro Crater Flame Warden
					["coord"] = { 60.0, 63.0, UNGORO_CRATER },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { UNGORO_CRATER },
				}),
				q(32510, {	-- Honor the Flame — Vale of Eternal Blossoms
					["provider"] = { "n", 69572 },	-- Vale of Eternal Blossoms Flame Warden
					["coord"] = { 79.6, 37.2, 390 },
					["timeline"] = { "added 5.0.1" },
					["maps"] = { 390 },	-- Vale of Eternal Blossoms
				}),
				q(29031, {	-- Honor the Flame — Vashj'ir
					["provider"] = { "n", 51697 },	-- Vashj'ir Flame Guardian
					["coord"] = { 49.4, 42.0, 205 },	-- Shimmering Expanse
					["timeline"] = { "added 4.0.1" },
					["maps"] = { 203, 205 },	-- Vashj'ir + Shimmering Expanse
				}),
				q(11827, {	-- Honor the Flame — Western Plaguelands
					["provider"] = { "n", 25909 },	-- Western Plaguelands Flame Warden
					["coord"] = { 43.5, 82.2, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
				}),
				q(11583, {	-- Honor the Flame — Westfall
					["qg"] = 25910,	-- Westfall Flame Warden
					-- #if AFTER CATA
					["coord"] = { 44.6, 62.1, WESTFALL },
					-- #else
					["coord"] = { 55.9, 53.5, WESTFALL },
					-- #endif
					["maps"] = { WESTFALL },
				}),
				q(11828, {	-- Honor the Flame — Wetlands
					["provider"] = { "n", 25911 },	-- Wetlands Flame Warden
					["coord"] = { 13.5, 47.1, WETLANDS },
					["maps"] = { WETLANDS },
				}),
				q(11834, {	-- Honor the Flame — Winterspring
					["provider"] = { "n", 25917 },	-- Winterspring Flame Warden
					-- #if AFTER CATA
					["coord"] = { 62.0, 35.0, WINTERSPRING },
					-- #else
					["coord"] = { 62.6, 35.4, WINTERSPRING },
					-- #endif
					["maps"] = { WINTERSPRING },
				}),
				q(11829, {	-- Honor the Flame — Zangarmarsh
					["provider"] = { "n", 25912 },	-- Zangarmarsh Flame Warden
					["coord"] = { 69.0, 52.0, ZANGARMARSH },
					["maps"] = { ZANGARMARSH },
				}),
				q(13492, {	-- Honor the Flame — Zul'Drak
					["provider"] = { "n", 32808 },	-- Zul'Drak Flame Warden
					["coord"] = { 41.0, 61.0, 121 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 121 },	-- Zul'Drak
				}),
			}),
		}),
		n(-31, {	-- Horde
			["timeline"] = { "added 2.4.0.7994" },
			["races"] = HORDE_ONLY,
			["groups"] = bubbleDown({ ["isYearly"] = true, ["races"] = HORDE_ONLY, }, {
				q(11732, {	-- Desecrate this Fire! — Arathi Highlands
					["provider"] = { "o", 187914 },	-- Alliance Bonfire
					-- #if AFTER CATA
					["coord"] = { 44.8, 46.1, ARATHI_HIGHLANDS },
					-- #else
					["coord"] = { 50.3, 44.9, ARATHI_HIGHLANDS },
					-- #endif
					["maps"] = { ARATHI_HIGHLANDS },
				}),
				q(11734, {	-- Desecrate this Fire! — Ashenvale
					["provider"] = { "o", 187916 },	-- Alliance Bonfire
					-- #if AFTER CATA
					["coord"] = { 86.7, 41.4, ASHENVALE },
					-- #else
					["coord"] = { 37.8, 55.0, ASHENVALE },
					-- #endif
					["maps"] = { ASHENVALE },
				}),
				q(11735, {	-- Desecrate this Fire! — Azuremyst Isle
					["provider"] = { "o", 187917 },	-- Alliance Bonfire
					["coord"] = { 44.7, 52.5, AZUREMYST_ISLE },
					["maps"] = { AZUREMYST_ISLE },
				}),
				q(28912, {	-- Desecrate this Fire! — Badlands
					["provider"] = { "o", 207984 },	-- Alliance Bonfire
					["coord"] = { 18.5, 56.1, BADLANDS },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { BADLANDS },
				}),
				q(11736, {	-- Desecrate this Fire! — Blade's Edge Mountains
					["provider"] = { "o", 187919 },	-- Alliance Bonfire
					["coord"] = { 41.8, 65.9, BLADES_EDGE_MOUNTAINS },
					["maps"] = { BLADES_EDGE_MOUNTAINS },
				}),
				q(11737, {	-- Desecrate this Fire! — Blasted Lands
					["provider"] = { "o", 187920 },	-- Alliance Bonfire
					-- #if AFTER CATA
					["coord"] = { 55.2, 15.3, BLASTED_LANDS },
					-- #else
					["coord"] = { 59.0, 17.2, BLASTED_LANDS },
					-- #endif
					["maps"] = { BLASTED_LANDS },
				}),
				q(11738, {	-- Desecrate this Fire! — Bloodmyst Isle
					["provider"] = { "o", 187921 },	-- Alliance Bonfire
					["coord"] = { 56.0, 68.5, BLOODMYST_ISLE },
					["maps"] = { BLOODMYST_ISLE },
				}),
				q(13440, {	-- Desecrate this Fire! — Borean Tundra
					["provider"] = { "o", 194032 },	-- Alliance Bonfire
					["coord"] = { 55.1, 20.2, 114 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 114 },	-- Borean Tundra
				}),
				q(11739, {	-- Desecrate this Fire! — Burning Steppes
					["provider"] = { "o", 187922 },	-- Alliance Bonfire
					-- #if AFTER CATA
					["coord"] = { 68.6, 59.9, BURNING_STEPPES },
					-- #else
					["coord"] = { 80.5, 62.4, BURNING_STEPPES },
					-- #endif
					["maps"] = { BURNING_STEPPES },
				}),
				q(13447, {	-- Desecrate this Fire! — Crystalsong Forest
					["provider"] = { "o", 194045 },	-- Alliance Bonfire
					["coord"] = { 77.7, 74.9, 127 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 127 },	-- Crystalsong Forest
				}),
				q(11740, {	-- Desecrate this Fire! — Darkshore
					["provider"] = { "o", 187923 },	-- Alliance Bonfire
					-- #if AFTER CATA
					["coord"] = { 49.0, 22.5, DARKSHORE },
					-- #else
					["coord"] = { 37.1, 45.9, DARKSHORE },
					-- #endif
					["maps"] = { DARKSHORE },
				}),
				q(11741, {	-- Desecrate this Fire! — Desolace
					["provider"] = { "o", 187924 },	-- Alliance Bonfire
					["coord"] = { 65.8, 17.0, DESOLACE },
					["maps"] = { DESOLACE },
				}),
				q(13443, {	-- Desecrate this Fire! — Dragonblight
					["provider"] = { "o", 194036 },	-- Alliance Bonfire
					["coord"] = { 75.1, 43.7, 115 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 115 },	-- Dragonblight
				}),
				q(54742, {	-- Desecrate this Fire! — Drustvar
					["provider"] = { "o", 316793 },	-- Alliance Bonfire
					["coord"] = { 40.2, 47.3, 896 },
					["timeline"] = { "added 8.0.1" },
					["maps"] = { 896 },	-- Drustvar
				}),
				q(11742, {	-- Desecrate this Fire! — Dun Morogh
					["provider"] = { "o", 187925 },	-- Alliance Bonfire
					-- #if AFTER CATA
					["coord"] = { 53.8, 44.7, DUN_MOROGH },
					-- #else
					["coord"] = { 46.6, 46.5, DUN_MOROGH },
					-- #endif
					["maps"] = { DUN_MOROGH },
				}),
				q(11743, {	-- Desecrate this Fire! — Duskwood
					["provider"] = { "o", 187926 },	-- Alliance Bonfire
					["coord"] = { 73.2, 54.9, DUSKWOOD },
					["maps"] = { DUSKWOOD },
				}),
				q(11744, {	-- Desecrate this Fire! — Dustwallow Marsh
					["provider"] = { "o", 187927 },	-- Alliance Bonfire
					["coord"] = { 62.1, 40.3, DUSTWALLOW_MARSH },
					["maps"] = { DUSTWALLOW_MARSH },
				}),
				q(11745, {	-- Desecrate this Fire! — Elwynn Forest
					["provider"] = { "o", 187928 },	-- Alliance Bonfire
					-- #if AFTER CATA
					["coord"] = { 43.2, 63.0, ELWYNN_FOREST },
					-- #else
					["coord"] = { 43.2, 62.8, ELWYNN_FOREST },
					-- #endif
					["maps"] = { ELWYNN_FOREST },
				}),
				q(11746, {	-- Desecrate this Fire! — Feralas
					["provider"] = { "o", 187929 },	-- Alliance Bonfire
					["coord"] = { 46.6, 43.8, FERALAS },
					["maps"] = { FERALAS },
				}),
				q(13445, {	-- Desecrate this Fire! — Grizzly Hills
					["provider"] = { "o", 194040 },	-- Alliance Bonfire
					["coord"] = { 34.1, 60.7, 116 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 116 },	-- Grizzly Hills
				}),
				q(11747, {	-- Desecrate this Fire! — Hellfire Peninsula
					["provider"] = { "o", 187930 },	-- Alliance Bonfire
					["coord"] = { 61.9, 58.5, HELLFIRE_PENINSULA },
					["maps"] = { HELLFIRE_PENINSULA },
				}),
				q(11748, {	-- Desecrate this Fire! — Hillsbrad Foothills
					["provider"] = { "o", 187931 },	-- Alliance Bonfire
					["coord"] = { 50.4, 47.1, HILLSBRAD_FOOTHILLS },
					["timeline"] = { "removed 4.0.1" },	-- Southshore got destroyed with Cataclysm
					["maps"] = { HILLSBRAD_FOOTHILLS },
				}),
				q(13444, {	-- Desecrate this Fire! — Howling Fjord
					["provider"] = { "o", 194038 },	-- Alliance Bonfire
					["coord"] = { 57.7, 15.7, 117 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 117 },	-- Howling Fjord
				}),
				q(11749, {	-- Desecrate this Fire! — Loch Modan
					["provider"] = { "o", 187932 },	-- Alliance Bonfire
					-- #if AFTER CATA
					["coord"] = { 32.3, 40.4, LOCH_MODAN },
					-- #else
					["coord"] = { 32.6, 40.5, LOCH_MODAN },
					-- #endif
					["maps"] = { LOCH_MODAN },
				}),
				q(11750, {	-- Desecrate this Fire! — Nagrand (Outland)
					["provider"] = { "o", 187933 },	-- Alliance Bonfire
					["coord"] = { 49.7, 69.6, NAGRAND },
					["maps"] = { NAGRAND },
				}),
				q(11759, {	-- Desecrate this Fire! — Netherstorm
					["provider"] = { "o", 187942 },	-- Alliance Bonfire
					["coord"] = { 31.1, 62.7, NETHERSTORM },
					["maps"] = { NETHERSTORM },
				}),
				q(28910, {	-- Desecrate this Fire! — Northern Stranglethorn
					["provider"] = { "o", 207982 },	-- Alliance Bonfire
					["coord"] = { 51.6, 63.3, NORTHERN_STRANGLETHORN },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { NORTHERN_STRANGLETHORN },
				}),
				q(11751, {	-- Desecrate this Fire! — Redridge Mountains
					["provider"] = { "o", 187934 },	-- Alliance Bonfire
					-- #if AFTER CATA
					["coord"] = { 24.4, 53.9, REDRIDGE_MOUNTAINS },
					-- #else
					["coord"] = { 24.9, 59.3, REDRIDGE_MOUNTAINS },
					-- #endif
					["maps"] = { REDRIDGE_MOUNTAINS },
				}),
				q(11752, {	-- Desecrate this Fire! — Shadowmoon Valley (Outland)
					["provider"] = { "o", 187935 },	-- Alliance Bonfire
					["coord"] = { 39.6, 54.3, SHADOWMOON_VALLEY },
					["maps"] = { SHADOWMOON_VALLEY },
				}),
				q(44582, {	-- Desecrate this Fire! — Shadowmoon Valley (WoD)
					["provider"] = { "o", 259871 },	-- Alliance Bonfire
					["coord"] = { 42.8, 35.9, 539 },
					["timeline"] = { "added 6.0.1" },
					["maps"] = { 539 },	-- Shadowmoon Valley
				}),
				q(13442, {	-- Desecrate this Fire! — Sholazar Basin
					["provider"] = { "o", 194035 },	-- Alliance Bonfire
					["coord"] = { 47.9, 66.0, 119 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 119 },	-- Sholazar Basin
				}),
				q(11760, {	-- Desecrate this Fire! — Silithus
					["provider"] = { "o", 187943 },	-- Alliance Bonfire
					-- #if AFTER CATA
					["coord"] = { 60.5, 33.4, SILITHUS },
					-- #else
					["coord"] = { 57.7, 34.9, SILITHUS },
					-- #endif
					["maps"] = { SILITHUS },
				}),
				q(28913, {	-- Desecrate this Fire! — Southern Barrens
					["provider"] = { "o", 207985 },	-- Alliance Bonfire
					["coord"] = { 48.2, 72.4, SOUTHERN_BARRENS },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { SOUTHERN_BARRENS },
				}),
				q(28915, {	-- Desecrate this Fire! — Stonetalon Mountains
					["provider"] = { "o", 207987 },	-- Alliance Bonfire
					["coord"] = { 49.6, 51.1, STONETALON_MOUNTAINS },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { STONETALON_MOUNTAINS },
				}),
				q(13446, {	-- Desecrate this Fire! — Storm Peaks
					["provider"] = { "o", 194044 },	-- Alliance Bonfire
					["coord"] = { 41.4, 87.0, 120 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 120 },	-- Storm Peaks
				}),
				q(54739, {	-- Desecrate this Fire! — Stormsong Valley
					["provider"] = { "o", 316791 },	-- Alliance Bonfire
					["coord"] = { 36.0, 51.5, 942 },
					["timeline"] = { "added 8.0.1" },
					["maps"] = { 942 },	-- Stormsong Valley
				}),
				q(11761, {	-- Desecrate this Fire! — Stranglethorn Vale
					["provider"] = { "o", 187944 },	-- Alliance Bonfire
					["coord"] = { 33.8, 73.3, STRANGLETHORN_VALE },
					["timeline"] = { "removed 4.0.1" },
					["maps"] = { STRANGLETHORN_VALE },
				}),
				q(44624, {	-- Desecrate this Fire! — Suramar
					["provider"] = { "o", 259927 },	-- Alliance Bonfire
					["coord"] = { 22.8, 58.2, 680 },
					["timeline"] = { "added 7.0.1" },
					["maps"] = { 680 },	-- Suramar
				}),
				q(28916, {	-- Desecrate this Fire! — Swamp of Sorrows
					["provider"] = { "o", 207988 },	-- Alliance Bonfire
					["coord"] = { 70.1, 14.8, SWAMP_OF_SORROWS },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { SWAMP_OF_SORROWS },
				}),
				q(11762, {	-- Desecrate this Fire! — Tanaris
					["provider"] = { "o", 187945 },	-- Alliance Bonfire
					["coord"] = { 52.7, 30.0, TANARIS },
					["maps"] = { TANARIS },
				}),
				q(11753, {	-- Desecrate this Fire! — Teldrassil
					["provider"] = { "o", 187936 },	-- Alliance Bonfire
					-- #if AFTER CATA
					["coord"] = { 54.7, 52.7, TELDRASSIL },
					-- #else
					["coord"] = { 54.9, 60.5, TELDRASSIL },
					-- #endif
					["maps"] = { TELDRASSIL },
				}),
				q(11754, {	-- Desecrate this Fire! — Terokkar Forest
					["provider"] = { "o", 187937 },	-- Alliance Bonfire
					["coord"] = { 54.2, 55.4, TEROKKAR_FOREST },
					["maps"] = { TEROKKAR_FOREST },
				}),
				q(11761, {	-- Desecrate this Fire! — The Cape of Stranglethorn / Stranglethorn Vale
					["provider"] = { "o", 187944 },	-- Alliance Bonfire
					-- #if AFTER CATA
					["coord"] = { 51.7, 67.3, 210 },
					["maps"] = { 210 },	-- The Cape of Stranglethorn
					-- #else
					["coord"] = { 33.8, 73.3, STRANGLETHORN_VALE },
					["maps"] = { STRANGLETHORN_VALE },
					-- #endif
				}),
				q(11755, {	-- Desecrate this Fire! — The Hinterlands
					["provider"] = { "o", 187938 },	-- Alliance Bonfire
					["coord"] = { 14.5, 50.0, THE_HINTERLANDS },
					["maps"] = { THE_HINTERLANDS },
				}),
				q(54736, {	-- Desecrate this Fire! — Tiragarde Sound
					["provider"] = { "o", 316788 },	-- Alliance Bonfire
					["coord"] = { 76.3, 49.7, 895 },
					["timeline"] = { "added 8.0.1" },
					["maps"] = { 895 },	-- Tiragarde Sound
				}),
				q(28943, {	-- Desecrate this Fire! — Twilight Highlands
					["provider"] = { "o", 208089 },	-- Alliance Bonfire
					["coord"] = { 47.0, 28.3, TWILIGHT_HIGHLANDS },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { TWILIGHT_HIGHLANDS },
				}),
				q(28947, {	-- Desecrate this Fire! — Uldum
					["provider"] = { "o", 208093 },	-- Alliance Bonfire
					["coord"] = { 53.4, 32.0, 249 },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { 249 },	-- Uldum
				}),
				q(28921, {	-- Desecrate this Fire! — Un'Goro Crater
					["provider"] = { "o", 207993 },	-- Alliance Bonfire
					["coord"] = { 60.0, 62.9, UNGORO_CRATER },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { UNGORO_CRATER },
				}),
				q(32503, {	-- Desecrate this Fire! — Vale of Eternal Blossoms
					["provider"] = { "o", 217851 },	-- Alliance Bonfire
					["coord"] = { 79.8, 37.0, 390 },
					["timeline"] = { "added 5.0.1" },
					["maps"] = { 390 },	-- Vale of Eternal Blossoms
				}),
				q(11756, {	-- Desecrate this Fire! — Western Plaguelands
					["provider"] = { "o", 187939 },	-- Alliance Bonfire
					["coord"] = { 43.6, 82.5, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
				}),
				q(11581, {	-- Desecrate this Fire! — Westfall
					["provider"] = { "o", 187564 },	-- Alliance Bonfire
					-- #if AFTER CATA
					["coord"] = { 45.2, 62.3, WESTFALL },
					-- #else
					["coord"] = { 56.1, 53.9, WESTFALL },
					-- #endif
					["maps"] = { WESTFALL },
				}),
				q(11757, {	-- Desecrate this Fire! — Wetlands
					["provider"] = { "o", 187940 },	-- Alliance Bonfire
					["coord"] = { 13.3, 47.3, WETLANDS },
					["maps"] = { WETLANDS },
				}),
				q(11763, {	-- Desecrate this Fire! — Winterspring
					["provider"] = { "o", 187946 },	-- Alliance Bonfire
					-- #if AFTER CATA
					["coord"] = { 61.3, 47.1, WINTERSPRING },
					-- #else
					["coord"] = { 62.7, 35.4, WINTERSPRING },
					-- #endif
					["maps"] = { WINTERSPRING },
				}),
				q(11758, {	-- Desecrate this Fire! — Zangarmarsh
					["provider"] = { "o", 187941 },	-- Alliance Bonfire
					["coord"] = { 68.6, 52.0, ZANGARMARSH },
					["maps"] = { ZANGARMARSH },
				}),
				q(13449, {	-- Desecrate this Fire! — Zul'Drak
					["provider"] = { "o", 194049 },	-- Alliance Bonfire
					["coord"] = { 40.4, 61.0, 121 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 121 },	-- Zul'Drak
				}),
				q(11840, {	-- Honor the Flame — Arathi Highlands
					["qg"] = 25923,	-- Arathi Flame Keeper
					-- #if AFTER CATA
					["coord"] = { 69.4, 42.6, ARATHI_HIGHLANDS },
					-- #else
					["coord"] = { 74.2, 41.5, ARATHI_HIGHLANDS },
					-- #endif
					["maps"] = { ARATHI_HIGHLANDS },
				}),
				q(11841, {	-- Honor the Flame — Ashenvale
					["qg"] = 25884,	-- Ashenvale Flame Keeper
					-- #if AFTER CATA
					["coord"] = { 51.4, 66.1, ASHENVALE },
					-- #else
					["coord"] = { 70.1, 69.3, ASHENVALE },
					-- #endif
					["maps"] = { ASHENVALE },
				}),
				q(28923, {	-- Honor the Flame — Azshara
					["provider"] = { "n", 51575 },	-- Azshara Flame Keeper
					["coord"] = { 60.8, 53.5, AZSHARA },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { AZSHARA },
				}),
				q(11842, {	-- Honor the Flame — Badlands
					["qg"] = 25925,	-- Badlands Flame Keeper
					-- #if AFTER CATA
					["coord"] = { 23.1, 37.4, BADLANDS },
					-- #else
					["coord"] = { 4.7, 48.6, BADLANDS },
					-- #endif
					["maps"] = { BADLANDS },
				}),
				q(11843, {	-- Honor the Flame — Blade's Edge Mountains
					["provider"] = { "n", 25926 },	-- Blade's Edge Flame Keeper
					["coord"] = { 50.0, 59.0, BLADES_EDGE_MOUNTAINS },
					["maps"] = { BLADES_EDGE_MOUNTAINS },
				}),
				q(28930, {	-- Honor the Flame — Blasted Lands
					["provider"] = { "n", 51603 },	-- Blasted Lands Flame Keeper
					["coord"] = { 46.2, 13.8, BLASTED_LANDS },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { BLASTED_LANDS },
				}),
				q(13493, {	-- Honor the Flame — Borean Tundra
					["provider"] = { "n", 32809 },	-- Borean Tundra Flame Keeper
					["coord"] = { 51.0, 12.0, 114 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 114 },	-- Borean Tundra
				}),
				q(11844, {	-- Honor the Flame — Burning Steppes
					["qg"] = 25927,	-- Burning Steppes Flame Keeper
					-- #if AFTER CATA
					["coord"] = { 51.1, 29.2, BURNING_STEPPES },
					-- #else
					["coord"] = { 61.8, 29.1, BURNING_STEPPES },
					-- #endif
					["maps"] = { BURNING_STEPPES },
				}),
				q(13499, {	-- Honor the Flame — Crystalsong Forest
					["provider"] = { "n", 32815 },	-- Crystalsong Forest Flame Keeper
					["coord"] = { 80.0, 53.0, 127 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 127 },	-- Crystalsong Forest
				}),
				q(29036, {	-- Honor the Flame — Deepholm
					["provider"] = { "n", 51698 },	-- Deepholm Flame Guardian
					["coord"] = { 49.4, 51.4, 207 },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { 207 },	-- Deepholm
				}),
				q(11845, {	-- Honor the Flame — Desolace
					["qg"] = 25928,	-- Desolace Flame Keeper
					["coord"] = { 26.1, 76.9, DESOLACE },
					["maps"] = { DESOLACE },
				}),
				q(13495, {	-- Honor the Flame — Dragonblight
					["provider"] = { "n", 32811 },	-- Dragonblight Flame Keeper
					["coord"] = { 39.0, 48.0, 115 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 115 },	-- Dragonblight
				}),
				q(11846, {	-- Honor the Flame — Durotar
					["qg"] = 25929,	-- Durotar Flame Keeper
					-- #if AFTER CATA
					["coord"] = { 52.2, 47.3, DUROTAR },
					-- #else
					["coord"] = { 52.0, 47.0, DUROTAR },
					-- #endif
					["maps"] = { DUROTAR },
				}),
				q(11847, {	-- Honor the Flame — Dustwallow Marsh
					["qg"] = 25930,	-- Dustwallow Marsh Flame Keeper
					-- #if AFTER CATA
					["coord"] = { 33.0, 30.0, DUSTWALLOW_MARSH },
					-- #else
					["coord"] = { 33.4, 30.9, DUSTWALLOW_MARSH },
					-- #endif
					["maps"] = { DUSTWALLOW_MARSH },
				}),
				q(11848, {	-- Honor the Flame — Eversong Woods
					["qg"] = 25931,	-- Eversong Woods Flame Keeper
					["coord"] = { 46.4, 50.6, EVERSONG_WOODS },
					["maps"] = { EVERSONG_WOODS },
				}),
				q(11849, {	-- Honor the Flame — Feralas
					["qg"] = 25932,	-- Feralas Flame Keeper
					["coord"] = { 72.4, 47.8, FERALAS },
					["maps"] = { FERALAS },
				}),
				q(44580, {	-- Honor the Flame — Frostfire Ridge
					["provider"] = { "n", 114499 },	-- Frostfire Ridge Flame Keeper
					["coord"] = { 72.6, 65.0, 525 },
					["timeline"] = { "added 6.0.1" },
					["maps"] = { 525 },	-- Frostfire Ridge
				}),
				q(11850, {	-- Honor the Flame — Ghostlands
					["qg"] = 25933,	-- Ghostlands Flame Keeper
					["coord"] = { 46.9, 26.3, GHOSTLANDS },
					["maps"] = { GHOSTLANDS },
				}),
				q(13497, {	-- Honor the Flame — Grizzly Hills
					["provider"] = { "n", 32813 },	-- Grizzly Hills Flame Keeper
					["coord"] = { 19.0, 61.0, 116 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 116 },	-- Grizzly Hills
				}),
				q(11851, {	-- Honor the Flame — Hellfire Peninsula
					["provider"] = { "n", 25934 },	-- Hellfire Peninsula Flame Keeper
					-- #if AFTER CATA
					["coord"] = { 55.0, 40.0, HELLFIRE_PENINSULA },
					-- #else
					["coord"] = { 57.1, 42.0, HELLFIRE_PENINSULA },
					-- #endif
					["maps"] = { HELLFIRE_PENINSULA },
				}),
				q(11853, {	-- Honor the Flame — Hillsbrad Foothills
					["qg"] = 25935,	-- Hillsbrad Flame Keeper
					-- #if AFTER CATA
					["coord"] = { 54.7, 50.1, HILLSBRAD_FOOTHILLS },
					-- #else
					["coord"] = { 58.6, 25.4, HILLSBRAD_FOOTHILLS },
					-- #endif
					["maps"] = { HILLSBRAD_FOOTHILLS },
				}),
				q(13496, {	-- Honor the Flame — Howling Fjord
					["provider"] = { "n", 32812 },	-- Howling Fjord Flame Keeper
					["coord"] = { 48.0, 13.0, 117 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 117 },	-- Howling Fjord
				}),
				q(29030, {	-- Honor the Flame — Hyjal
					["provider"] = { "n", 51682 },	-- Hyjal Flame Guardian
					["coord"] = { 62.8, 22.6, MOUNT_HYJAL },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { MOUNT_HYJAL },
				}),
				q(11852, {	-- Honor the Flame — Mulgore
					["qg"] = 25936,	-- Mulgore Flame Keeper
					["coord"] = { 51.8, 59.3, MULGORE },
					["maps"] = { MULGORE },
				}),
				q(11854, {	-- Honor the Flame — Nagrand (Outland)
					["qg"] = 25937,	-- Nagrand Flame Keeper
					["coord"] = { 51.0, 34.0, NAGRAND },
					["maps"] = { NAGRAND },
				}),
				q(54747, {	-- Honor the Flame — Nazmir
					["provider"] = { "n", 148950 },    -- Nazmir Flame Keeper
					["coord"] = { 40.0, 74.3, 863 },
					["timeline"] = { "added 8.0.1" },
					["maps"] = { 863 },	-- Nazmir
				}),
				q(11835, {	-- Honor the Flame — Netherstorm
					["provider"] = { "n", 25918 },	-- Netherstorm Flame Keeper
					["coord"] = { 32.0, 68.0, NETHERSTORM },
					["maps"] = { NETHERSTORM },
				}),
				q(11859, {	-- Honor the Flame — Northern Barrens / The Barrens
					-- #if AFTER CATA
					["qg"] = 25943,	-- The Northern Barrens Flame Keeper
					["coord"] = { 50.0, 55.0, NORTHERN_BARRENS },
					["maps"] = { NORTHERN_BARRENS },
					-- #else
					["qg"] = 25943,	-- The Barrens Flame Keeper
					["coord"] = { 52.2, 28.0, THE_BARRENS },
					["maps"] = { THE_BARRENS },
					-- #endif
				}),
				q(28924, {	-- Honor the Flame — Northern Stranglethorn
					["provider"] = { "n", 51582 },	-- Northern Stranglethorn Vale Flame Keeper
					["coord"] = { 40.6, 50.9, NORTHERN_STRANGLETHORN },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { NORTHERN_STRANGLETHORN },
				}),
				q(11855, {	-- Honor the Flame — Shadowmoon Valley (Outland)
					["provider"] = { "n", 25938 },	-- Shadowmoon Valley Flame Keeper
					["coord"] = { 33.4, 30.5, SHADOWMOON_VALLEY },
					["maps"] = { SHADOWMOON_VALLEY },
				}),
				q(13494, {	-- Honor the Flame — Sholazar Basin
					["provider"] = { "n", 32810 },	-- Sholazar Basin Flame Keeper
					["coord"] = { 47.0, 62.0, 119 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 119 },	-- Sholazar Basin
				}),
				q(11836, {	-- Honor the Flame — Silithus
					["provider"] = { "n", 25919 },	-- Silithus Flame Keeper
					-- #if AFTER CATA
					["coord"] = { 50.9, 41.3, SILITHUS },
					-- #else
					["coord"] = { 46.5, 44.4, SILITHUS },
					-- #endif
					["maps"] = { SILITHUS },
				}),
				q(11584, {	-- Honor the Flame — Silverpine Forest
					["provider"] = { "n", 25939 },	-- Silverpine Forest Flame Keeper
					["coord"] = { 49.6, 38.2, SILVERPINE_FOREST },
					["maps"] = { SILVERPINE_FOREST },	-- Silverpine Forest
				}),
				q(28927, {	-- Honor the Flame — Southern Barrens
					["provider"] = { "n", 51587 },	-- The Southern Barrens Flame Keeper
					["coord"] = { 41.0, 68.0, SOUTHERN_BARRENS },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { SOUTHERN_BARRENS },
				}),
				q(11856, {	-- Honor the Flame — Stonetalon Mountains
					["provider"] = { "n", 25940 },	-- Stonetalon Flame Keeper
					-- #if AFTER CATA
					["coord"] = { 52.9, 62.5, STONETALON_MOUNTAINS },
					-- #else
					["coord"] = { 50.5, 60.5, STONETALON_MOUNTAINS },
					-- #endif
					["maps"] = { STONETALON_MOUNTAINS },
				}),
				q(13498, {	-- Honor the Flame — Storm Peaks
					["provider"] = { "n", 32814 },	-- Storm Peaks Flame Keeper
					["coord"] = { 40.0, 86.0, 120 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 120 },	-- Storm Peaks
				}),
				q(44614, {	-- Honor the Flame — Suramar
					["provider"] = { "n", 114518 },	-- Suramar Flame Keeper
					["coord"] = { 30.4, 45.4, 680 },
					["timeline"] = { "added 7.0.1" },
					["maps"] = { 680 },	-- Suramar
				}),
				q(11857, {	-- Honor the Flame — Swamp of Sorrows
					["provider"] = { "n", 25941 },	-- Swamp of Sorrows Flame Keeper
					-- #if AFTER CATA
					["coord"] = { 76.3, 13.8, SWAMP_OF_SORROWS },
					-- #else
					["coord"] = { 46.7, 47.0, SWAMP_OF_SORROWS },
					-- #endif
					["maps"] = { SWAMP_OF_SORROWS },
				}),
				q(11838, {	-- Honor the Flame — Tanaris
					["qg"] = 25921,	-- Tanaris Flame Keeper
					-- #if AFTER CATA
					["coord"] = { 49.8, 27.9, TANARIS },
					-- #else
					["coord"] = { 49.8, 26.9, TANARIS },
					-- #endif
					["maps"] = { TANARIS },
				}),
				q(11858, {	-- Honor the Flame — Terokkar Forest
					["qg"] = 25942,	-- Terokkar Forest Flame Keeper
					["coord"] = { 52.0, 43.0, TEROKKAR_FOREST },
					["maps"] = { TEROKKAR_FOREST },
				}),
				q(11837, {	-- Honor the Flame — The Cape of Stranglethorn / Stranglethorn Vale
					-- #if AFTER CATA
					["qg"] = 25920,	-- Cape of Stranglethorn Flame Keeper
					["coord"] = { 50.4, 70.4, 210 },
					["maps"] = { 210 },	-- The Cape of Stranglethorn
					-- #else
					["qg"] = 25920,	-- Stranglethorn Vale Flame Keeper
					["coord"] = { 32.9, 75.2, STRANGLETHORN_VALE },
					["maps"] = { STRANGLETHORN_VALE },
					-- #endif
				}),
				q(11860, {	-- Honor the Flame — The Hinterlands
					["qg"] = 25944,	-- The Hinterlands Flame Keeper
					["coord"] = { 76.6, 75.0, THE_HINTERLANDS },
					["maps"] = { THE_HINTERLANDS },
				}),
				q(11862, {	-- Honor the Flame — Tirisfal Glades
					["qg"] = 25946,	-- Tirisfal Glades Flame Keeper
					["coord"] = { 57.2, 51.8, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
				}),
				q(28946, {	-- Honor the Flame — Twilight Highlands
					["provider"] = { "n", 51651 },	-- Twilight Highlands Flame Keeper
					["coord"] = { 53.1, 46.2, TWILIGHT_HIGHLANDS },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { TWILIGHT_HIGHLANDS },
				}),
				q(28949, {	-- Honor the Flame — Uldum
					["provider"] = { "n", 51652 },	-- Uldum Flame Keeper
					["coord"] = { 53.2, 34.5, 249 },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { 249 },	-- Uldum
				}),
				q(28933, {	-- Honor the Flame — Un'goro Crater
					["provider"] = { "n", 51607 },	-- Un'Goro Flame Keeper
					["coord"] = { 56.0, 66.0, UNGORO_CRATER },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { UNGORO_CRATER },
				}),
				q(32509, {	-- Honor the Flame — Vale of Eternal Blossoms
					["provider"] = { "n", 69551 },	-- Vale of Eternal Blossoms Flame Keeper
					["coord"] = { 77.8, 33.1, 390 },
					["timeline"] = { "added 5.0.1" },
					["maps"] = { 390 },	-- Vale of Eternal Blossoms
				}),
				q(29031, {	-- Honor the Flame — Vashj'ir
					["provider"] = { "n", 51697 },	-- Vashj'ir Flame Guardian
					["coord"] = { 49.4, 42.0, 205 },	-- Shimmering Expanse
					["timeline"] = { "added 4.0.1" },
					["maps"] = { 203, 205 },	-- Vashj'ir + Shimmering Expanse
				}),
				q(54750, {	-- Honor the Flame — Vol'dun
					["provider"] = { "n", 148986 },    -- Vol'dun Flame Keeper
					["coord"] = { 56.0, 47.8, 864 },
					["timeline"] = { "added 8.0.1" },
					["maps"] = { 864 },	-- Vol'dun
				}),
				q(28931, {	-- Honor the Flame — Western Plaguelands
					["provider"] = { "n", 51604 },	-- Western Plaguelands Flame Keeper
					["coord"] = { 29.2, 57.3, WESTERN_PLAGUELANDS },
					["timeline"] = { "added 4.0.1" },
					["maps"] = { WESTERN_PLAGUELANDS },
				}),
				q(11839, {	-- Honor the Flame — Winterspring
					["qg"] = 25922,	-- Winterspring Flame Keeper
					-- #if AFTER CATA
					["coord"] = { 58.1, 47.5, WINTERSPRING },
					-- #else
					["coord"] = { 59.9, 35.6, WINTERSPRING },
					-- #endif
					["maps"] = { WINTERSPRING },
				}),
				q(11863, {	-- Honor the Flame — Zangarmarsh
					["provider"] = { "n", 25947 },	-- Zangarmarsh Flame Keeper
					["coord"] = { 35.3, 51.6, ZANGARMARSH },
					["maps"] = { ZANGARMARSH },
				}),
				q(54745, {	-- Honor the Flame — Zuldazar
					["provider"] = { "n", 148944 },	-- Zuldazar Flame Keeper
					["coord"] = { 53.3, 48.1, 862 },
					["timeline"] = { "added 8.0.1" },
					["maps"] = { 862 },	-- Zuldazar
				}),
				q(13500, {	-- Honor the Flame — Zul'Drak
					["provider"] = { "n", 32816 },	-- Zul'Drak Flame Keeper
					["coord"] = { 43.0, 71.0, 121 },
					["timeline"] = { "added 3.0.1" },
					["maps"] = { 121 },	-- Zul'Drak
				}),
			}),
		}),
	}),
}))};