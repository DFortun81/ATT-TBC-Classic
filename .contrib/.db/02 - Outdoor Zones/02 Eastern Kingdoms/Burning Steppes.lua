---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(BURNING_STEPPES, {
		["lore"] = "The Burning Steppes hold the only accessible land passage from the Kingdom of Stormwind to Khaz Modan and Lordaeron. The highway is thus well traveled, but still very dangerous. Now virtually abandoned by the Kingdom of Stormwind, the Burning Steppes is controlled by minions of the black dragonflight and agents of the firelord Ragnaros.\n\nThis rugged region is full of craggy foothills, scattered boulders and warring factions. Rivers of lava dot the landscape, as well as charred earth and burning ruins. The sky is a red hue here, due to sporadic eruptions from Blackrock Mountain. Blackrock Spire, an orc stronghold in the Second War, stands proud and defiant among the mountains. Dark Iron dwarves control the fortress’s deeps, though rumor has it that Ragnaros the Fire Lord still broods in the shadows. Black dragons under Nefarion hold the spire’s upper levels, and the two groups battle constantly for supremacy. The surrounding countryside is home to Blackrock orcs and Fire-Gut ogres, all brutal castoffs from the Second War. The Molten Span, a massive stone edifice in the north, bridges a river of fire and leads to Khaz Modan.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(775, {	-- Explore Burning Steppes
					-- #if BEFORE WRATH
					["description"] = "Explore Burning Steppes, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, {
				exploration(255, "225:220:36:109"),		-- Altar of Storms
				exploration(254, "256:280:173:101"),	-- Blackrock Mountain
				exploration(2417, "270:310:589:279"),	-- Blackrock Pass
				exploration(252, "245:265:334:114"),	-- Blackrock Stronghold
				exploration(2421, "415:315:56:258"),	-- Draco'dar
				exploration(249, "220:225:707:168"),	-- Dreadmaul Rock
				exploration(2418, "294:270:708:311"),	-- Morgan's Vigil
				exploration(250, "270:285:513:99"),		-- Ruins of Thaurissan
				exploration(2420, "280:355:722:46"),	-- Terror Wing Path
				exploration(253, "320:270:377:285"),	-- The Pillar of Ash
				--[[
				exploration(251, ""),	-- Flame Crest
				exploration(2419, ""),	-- Slither Rock
				]]--
			}),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(70, {	-- Flame Crest, Burning Steppes
					["cr"] = 13177,	-- Vahgruk <Wind Rider Master>
					["coord"] = { 65.6, 24.2, BURNING_STEPPES },
					["races"] = HORDE_ONLY,
				}),
				fp(71, {	-- Morgan's Vigil, Burning Steppes
					["cr"] = 2299,	-- Borgus Stoutarm <Gryphon Master>
					["coord"] = { 84.4, 68.2, BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(7630, {	-- Arcanite
					["qg"] = 14437,	-- Gorzeeki Wildeyes
					["sourceQuests"] = {
						7626,	-- Bell of Dethmoora
						7627,	-- Wheel of the Black March
						7628,	-- Doomsday Candle
					},
					["coord"] = { 12.4, 31.6, BURNING_STEPPES },
					["classes"] = { WARLOCK },
					["cost"] = {
						-- #if AFTER TBC
						{ "i", 12360, 1 },	-- Arcanite Bar
						-- #else
						{ "i", 12360, 3 },	-- Arcanite Bar
						-- #endif
					},
					["lvl"] = 60,
				}),
				q(7626, {	-- Bell of Dethmoora
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["sourceQuest"] = 7564,	-- Wildeyes
					["coord"] = { 12.6, 31.6, BURNING_STEPPES },
					["classes"] = { WARLOCK },
					["cost"] = {
						-- #if AFTER TBC
						{ "i", 9264, 2 },	-- Elixir of Shadow Power
						-- #else
						{ "i", 9264, 10 },	-- Elixir of Shadow Power
						-- #endif
					},
					["lvl"] = 60,
				}),
				q(4726, {	-- Broodling Essence
					["qg"] = 10267,	-- Tinkee Steamboil
					["coord"] = { 65.2, 23.8, BURNING_STEPPES },
					["cost"] = {
						{ "i", 12284, 1 },	-- Draco-Incarcinatrix 900
						{ "i", 12283, 8 },	-- Broodling Essence
					},
					["crs"] = {
						7047, 	-- Black Broodling
					},
					["lvl"] = 50,
				}),
				q(7628, {	-- Doomsday Candle
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["sourceQuest"] = 7564,	-- Wildeyes
					["coord"] = { 12.6, 31.6, BURNING_STEPPES },
					["classes"] = { WARLOCK },
					["cost"] = {
						-- #if AFTER TBC
						{ "i", 15416, 3 },	-- Black Dragonscale
						-- #else
						{ "i", 15416, 35 },	-- Black Dragonscale
						-- #endif
					},
					["lvl"] = 60,
				}),
				q(3823, {	-- Extinguish the Firegut
					["qg"] = 9177,	-- Oralius
					["coord"] = { 84.6, 68.8, BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
				}),
				q(4808, {	-- Felnok Steelspring
					["qg"] = 10267,	-- Tinkee Steamboil
					["sourceQuest"] = 4726,	-- Broodling Essence
					["coord"] = { 65.2, 23.8, BURNING_STEPPES },
					["cost"] = {
						{ "i", 12438, 1 },	-- Tinkee's Letter
					},
					["lvl"] = 50,
				}),
				q(4283, {	-- FIFTY! YEP!
					["qg"] = 9177,	-- Oralius
					["coord"] = { 84.6, 68.8, BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11467, 50 },	-- Blackrock Medallion
					},
					["lvl"] = 50,
				}),
				q(3824, {	-- Gor'tesh the Brute Lord
					["qg"] = 9177,	-- Oralius
					["cost"] = { 84.6, 68.6, BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11080, 1 },	-- Gor'tesh's Lopped Off Head
					},
					["lvl"] = 48,
					["groups"] = {
						{
							["itemID"] = 11080,	-- Gor'tesh's Lopped Off Head
							["questID"] = 3824,	-- Gor'tesh the Brute Lord
							["cr"] = 9176,	-- Gor'tesh
							["coord"] = { 39.6, 55.6, BURNING_STEPPES },
						},
					},
				}),
				q(7629, {	-- Imp Delivery
					["qg"] = 14437,	-- Gorzeeki Wildeyes
					["sourceQuests"] = {
						7625,	-- Xorothian Stardust
						7630,	-- Arcanite
					},
					["coord"] = { 12.4, 31.6, BURNING_STEPPES },
					["maps"] = { SCHOLOMANCE },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18688, 1 },	-- Imp in a Jar
					},
					["lvl"] = 60,
				}),
				q(3822, {	-- Krom'Grul
					["qg"] = 9136,	-- Sha'ni Proudtusk
					["coord"] = { 79.8, 45.4, BURNING_STEPPES },
					["cr"] = 3822,	-- Krom'Grul
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11058, 1 },	-- Sha'ni's Nose-Ring
					},
					["lvl"] = 48,
					["groups"] = {
						i(11869),	-- Sha'ni's Ring
					},
				}),
				q(4481, {	-- Libram of Constitution
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65, 23.6, BURNING_STEPPES },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 8411, 1 },  -- Lung Juice Cocktail
						{ "i", 11733, 1 },	-- Libram of Constitution
						{ "i", 11952, 4 },	-- Night Dragon's Breath
						{ "g", 300000 },   -- 30g
					},
					["lvl"] = 50,
					["groups"] = {
						i(11642),	-- Lesser Arcanum of Constitution
					},
				}),
				q(4483, {	-- Libram of Resilience
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65, 23.6, BURNING_STEPPES },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 11567, 4 },	-- Crystal Spire
						{ "i", 11751, 1 },  -- Bruning Essence
						{ "i", 11736, 1 },	-- Libram of Resilience
						{ "g", 300000 },   -- 30g
					},
					["lvl"] = 50,
					["groups"] = {
						i(11644),	-- Lesser Arcanum of Resilience
					},
				}),
				q(4463, {	-- Libram of Rumination
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65, 23.6, BURNING_STEPPES },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 11752, 1 },	-- Black Blood of the Tormented
						{ "i", 8424, 1 },  -- Gizzard Gum
						{ "i", 11732, 1 },	-- Libram of Rumination
						{ "g", 300000 },   -- 30g
					},
					["lvl"] = 50,
					["groups"] = {
						i(11622),	-- Lesser Arcanum of Rumination
					},
				}),
				q(4482, {	-- Libram of Tenacity
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65, 23.6, BURNING_STEPPES },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 11734, 1 },	-- Libram of Tenacity
						{ "i", 11564, 4 },	-- Crystal Ward
						{ "i", 11753, 1 },	-- Eye of Kajal
						{ "g", 300000 },   -- 30g
					},
					["lvl"] = 50,
					["groups"] = {
						i(11643),	-- Lesser Arcanum of Tenacity
					},
				}),
				q(4484, {	-- Libram of Voracity
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65, 23.6, BURNING_STEPPES },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 11737, 1 },	-- Libram of Voracity
						{ "i", 11951, 4 },	-- Whipper Root Tuber
						{ "i", 11563, 4 },	-- Crystal Force
						{ "g", 300000 },   -- 30g
					},
					["lvl"] = 50,
					["groups"] = {
						i(11647),	-- Lesser Arcanum of Voracity
						i(11648),	-- Lesser Arcanum of Voracity
						i(11649),	-- Lesser Arcanum of Voracity
						i(11645),	-- Lesser Arcanum of Voracity
						i(11646),	-- Lesser Arcanum of Voracity
					},
				}),
				q(7623, {	-- Lord Banehollow
					["qg"] = 14437,	-- Gorzeeki Wildeyes
					-- #if BEFORE TBC
					["sourceQuest"] = 7564,	-- Wildeyes
					-- #endif
					["description"] = "Do not leave the Blasted Lands without purchasing a Shadowy Potion or two.",
					["coord"] = { 12.4, 31.6, BURNING_STEPPES },
					["maps"] = { FELWOOD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18802, 1 },	-- Shadowy Potion
					},
					["lvl"] = 60,
				}),
				q(7562, {	-- Mor'zul Bloodbringer
					["qgs"] = {
						6382,	-- Jubahl Corpseseeker <Demon Trainer>
						5815,	-- Kurgul <Demon Trainer>
						5520,	-- Spackle Thornberry <Demon Trainer>
						5753,	-- Martha Strain <Demon Trainer>
					},
					["coords"] = {
						{ 52.8, 6.0, IRONFORGE },
						{ 47.6, 46.8, ORGRIMMAR },
						{ 25.8, 77.6, STORMWIND_CITY },
						{ 85.8, 15.8, UNDERCITY },
					},
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 60,
				}),
				q(3825, {	-- Ogre Head On A Stick = Party
					["qg"] = 9177,	-- Oralius
					["sourceQuest"] = 3824,	-- Gor'tesh the Brute Lord
					["coord"] = { 84.6, 68.8, BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11079, 1 },	-- Gor'tesh's Lopped Off Head
					},
					["lvl"] = 48,
					["groups"] = {
						i(11867),	-- Maddening Gauntlets
						i(11868),	-- Choking Band
					},
				}),
				q(7563, {	-- Rage of Blood
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["sourceQuest"] = 7562,	-- Mor'zul Bloodbringer
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18590, 30 },	-- Raging Beast's Blood
					},
					["lvl"] = 60,
				}),
				q(4296, {	-- Tablet of the Seven
					["qg"] = 9536,	-- Maxwort Uberglint
					["coord"] = { 65.2, 23.8, BURNING_STEPPES },
					["cost"] = {
						{ "i", 11470, 1 },	-- Tablet Transcript
					},
					["lvl"] = 50,
				}),
				q(7627, {	-- Wheel of the Black March
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["sourceQuest"] = 7564,	-- Wildeyes
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 14344, 6 },	-- Large Brilliant Shard
						{ "i", 11370, 25 },	-- Dark Iron Ore
					},
					["lvl"] = 60,
				}),
				q(7564, {	-- Wildeyes
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["sourceQuest"] = 7563,	-- Rage of Blood
					["coord"] = { 12.6, 31.6, BURNING_STEPPES },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18591, 1 },	-- Case of Blood
					},
					["lvl"] = 60,
				}),
			}),
			n(RARES, {
				n(10077, {	-- Deathmaw
					["coords"] = {
						{ 75.2, 33.2, BURNING_STEPPES },
						{ 82.6, 31.0, BURNING_STEPPES },
						{ 87.6, 50.6, BURNING_STEPPES },
						{ 81.2, 59.2, BURNING_STEPPES },
					},
				}),
				n(9604, {	-- Gorgon'och
					["coords"] = {
						{ 77.2, 43.0, BURNING_STEPPES },
						{ 80.8, 44.8, BURNING_STEPPES },
					},
				}),
				n(8979, {	-- Gruklash
					["coords"] = {
						{ 16.0, 30.2, BURNING_STEPPES },
						{ 40.6, 35.8, BURNING_STEPPES },
						{ 42.6, 51.4, BURNING_STEPPES },
						{ 48.0, 62.2, BURNING_STEPPES },
					},
				}),
				n(9602, {	-- Hahk'Zor
					["coords"] = {
						{ 79.2, 42.2, BURNING_STEPPES },
						{ 78.6, 44.6, BURNING_STEPPES },
						{ 80.8, 48.6, BURNING_STEPPES },
						{ 82.8, 42.8, BURNING_STEPPES },
					},
				}),
				n(8976, {	-- Hematos
					["coords"] = {
						{ 18.2, 46.8, BURNING_STEPPES },
						{ 16.6, 56.2, BURNING_STEPPES },
						{ 24.8, 58.6, BURNING_STEPPES },
						{ 34.2, 53.4, BURNING_STEPPES },
					},
				}),
				n(8981, {	-- Malfunctioning Reaver
					["coords"] = {
						{ 76.6, 30.6, BURNING_STEPPES },
						{ 87.4, 31.0, BURNING_STEPPES },
						{ 90.6, 46.8, BURNING_STEPPES },
						{ 86.2, 57.4, BURNING_STEPPES },
					},
				}),
				n(10078, {	-- Terrorspark
					["coords"] = {
						{ 16.4, 24.2, BURNING_STEPPES },
						{ 42.0, 46.2, BURNING_STEPPES },
						{ 47.6, 43.2, BURNING_STEPPES },
						{ 51.8, 43.6, BURNING_STEPPES },
						{ 63.6, 37.6, BURNING_STEPPES },
						{ 69.4, 32.6, BURNING_STEPPES },
					},
				}),
				n(8978, {	-- Thauris Balgarr
					["coords"] = {
						{ 53.2, 40.6, BURNING_STEPPES },
						{ 56.2, 35.2, BURNING_STEPPES },
						{ 55.2, 43.2, BURNING_STEPPES },
						{ 61.8, 37.6, BURNING_STEPPES },
						{ 66.6, 44.8, BURNING_STEPPES },
						{ 71.8, 36.4, BURNING_STEPPES },
					},
				}),
				n(10119, {	-- Volchan
					["coords"] = {
						{ 77.0, 31.2, BURNING_STEPPES },
						{ 91.2, 33.4, BURNING_STEPPES },
						{ 90.2, 45.6, BURNING_STEPPES },
						{ 87.8, 59.0, BURNING_STEPPES },
						{ 81.8, 61.0, BURNING_STEPPES },
						{ 72.0, 55.6, BURNING_STEPPES },
						{ 72.0, 43.6, BURNING_STEPPES },
						{ 73.8, 35.6, BURNING_STEPPES },
					},
					["groups"] = {
						i(12828),	-- Plans: Volcanic Hammer
					},
				}),
			}),
			n(VENDORS, {
				n(9544, {	-- Yuka Screwspigot
					["coord"] = { 66.0, 22.0, BURNING_STEPPES },
					["groups"] = {
						i(10602, {	-- Schematic: Deadly Scope
							["isLimited"] = true,
						}),
					},
				}),
				n(14437, {	-- Gorzeeki Wildeyes
					["coord"] = { 12.6, 31.6, BURNING_STEPPES },
					["classes"] = { WARLOCK },
					["groups"] = {
						i(18629, {	-- Black Lodestone
							["cost"] = {
								{ "g", 500000 },
							},
						}),
						i(18663, {	-- J'eevee's Jar
							["cost"] = {
								{ "g", 1500000 },
							},
						}),
						i(18802, {	-- Shadowy Potion
							["cost"] = {
								{ "g", 60000 },
							},
						}),
						i(18670, {	-- Xorothian Glyphs
							["cost"] = {
								{ "g", 500000 },
							},
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(11467, {	-- Blackrock Medallion
					["questID"] = 4283,	-- FIFTY! YEP!
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						7029,	-- Blackrock Battlemaster
						7027,	-- Blackrock Slayer
						7025,	-- Blackrock Soldier
						7026,	-- Blackrock Sorcerer
						7028,	-- Blackrock Warlock
						7055,	-- Blackrock Worg
						10077,	-- Deathmaw
						9690,	-- Ember Worg
						9697,	-- Giant Ember Worg
						9694,	-- Slavering Ember Worg
					},
				}),
				i(11266, {	-- Fractured Elemental Shard
					["questID"] = 4061,	-- The Rise of the Machines
					["races"] = HORDE_ONLY,
					["crs"] = {
						7032,	-- Greater Obsidian Elemental
						8981,	-- Malfunctioning Reaver
						7039,	-- War Reaver
					},
				}),
				i(14482, {	-- Pattern: Cindercloth Cloak
					["cr"] = 7037,	-- Thaurissan Firewalker
				}),
				i(14490, {	-- Pattern: Cindercloth Pants
					["cr"] = 7037,	-- Thaurissan Firewalker
				}),
				i(15738, {	-- Pattern: Heavy Scorpid Gauntlets
					["cr"] = 7025,	-- Blackrock Soldier
				}),
				i(15748, {	-- Pattern: Heavy Scorpid Leggings
					["cr"] = 7027,	-- Blackrock Slayer
				}),
				-- #if BEFORE 5.0.4
				i(15774, {	-- Pattern: Heavy Scorpid Shoulders
					["timeline"] = { "removed 4.0.3", "added 5.0.4", "removed 6.0.2" },
					-- #if BEFORE 4.0.3
					["coord"] = { 41.8, 37.0, BURNING_STEPPES },
					["cr"] = 7029,	-- Blackrock Battlemaster
					-- #endif
				}),
				-- #endif
				i(15732, {	-- Pattern: Volcanic Leggings
					["cr"] = 7035,	-- Firegut Brute
				}),
				i(13476, {	-- Recipe: Mighty Rage Potion
					["cr"] = 7027,	-- Blackrock Slayer
				}),
				applyclassicphase(PHASE_FIVE, i(22338, {	-- Volcanic Ash
					["cr"] = 10078,	-- Terrorspark
				})),
			}),
		},
	}),
}));