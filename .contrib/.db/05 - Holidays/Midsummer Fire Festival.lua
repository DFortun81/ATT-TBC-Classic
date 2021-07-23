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
	}),
}))};