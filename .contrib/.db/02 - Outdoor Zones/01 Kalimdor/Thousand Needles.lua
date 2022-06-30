---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(KALIMDOR, {
	m(THOUSAND_NEEDLES, {
		["lore"] = "This canyon desert gets its name from the innumerable sandstone spires that thrust up from the salt fl ats. Engineers have constructed bridges across the peaks of these towers, allowing travelers to cross the region without having to set foot on the ground below. The Thousand Needles is a dry and hot desert of salt. At its center is a stagnant lake ten times saltier than the ocean.\n\nResourceful goblins have discovered oil in the Scorched Basin, but they, a few scorpions, and the occasional centaur warband are the only signs of life in this parched land.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(846, {	-- Explore Thousand Needles
					-- #if BEFORE WRATH
					["description"] = "Explore Thousand Needles, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["190:190:31:155"] = 482,	-- Highperch
				["205:195:259:131"] = 2097,	-- Darkcloud Pinnacle
				["210:180:205:70"] = 485,	-- The Great Lift
				["210:190:357:264"] = 484,	-- Freewind Post
				["210:195:391:192"] = 481,	-- Splithoof Crag
				["240:220:492:250"] = 2303,	-- Windbreak Canyon
				["250:240:179:200"] = 483,	-- The Screeching Canyon
				["305:310:0:0"] = 480,		-- Camp E'thok
				["320:365:610:300"] = 439,	-- The Shimmering Flats
				--[[
				[479] = 2,                               -- The Rustmaul Dig Site
				[486] = 9,                               -- Galak Hold
				[487] = 10,                              -- Roguefeather Den/
				[488] = 11,                              -- The Weathered Nook
				[1557] = 12,                             -- Splithoof Hold
				[2237] = 14,                             -- Whitereach Post
				[2238] = 15,                             -- Gornia
				[2239] = 16,                             -- Zane's Eye Crater
				[2240] = 17,                             -- Mirage Raceway
				[3037] = 19,                             -- Ironstone Camp
				[3038] = 20,                             -- Weazel's Crater
				[3039] = 21,                             -- Tahonda Ruins
				]]
			})),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(30, {	-- Freewind Post, Thousand Needles
					["cr"] = 4317,	-- Nyse <Wind Rider Master>
					["coord"] = { 45.0, 49.2, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(1175, {	-- A Bump in the Road
					["qg"] = 4629,	-- Trackmaster Zherin
					["coord"] = { 81.6, 77.9, THOUSAND_NEEDLES },
					["lvl"] = 28,
				}),
				q(3842, {	-- A Short Incubation
					["qg"] = 9238,	-- Quentin
					["sourceQuest"] = 3841,	-- An Orphan Looking For a Home
					["coord"] = { 78.4, 74.7, THOUSAND_NEEDLES },
					["timeline"] = { "removed 4.0.3" },
					["cost"] = { { "i", 3825, 2 } },	-- Elixir of Fortitude
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(4821, {	-- Alien Egg
					["qg"] = 10539,	-- Hagar Lightninghoof
					["coord"] = { 44.64, 50.29, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
				}),
				q(5088, {	-- Arikara
					["qg"] = 4046,	-- Magatha Grimtotem
					["sourceQuest"] = 5062,	-- Sacred Fire
					["coord"] = { 69.85, 30.90, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						i(15464),	-- Brute Hammer
						i(15465),	-- Stingshot Wand
						i(15466),	-- Clink Shield
					},
				}),
				q(4881, {	-- Assassination Plot
					["provider"] = { "o", 12564 },	-- Assassination Note
					["cr"] = 10617,	-- Galak Messenger
					["description"] = "The item that starts this quest is dropped by Galak Messengers.",
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
				}),
				q(1118, {	-- Back to Booty Bay
					["qg"] = 4452,	-- Kravel Koalbeard
					["sourceQuest"] = 1117,	-- Rumors for Kravel
					["coord"] = { 78.8, 77.3, THOUSAND_NEEDLES },
					["lvl"] = 35,
				}),
				q(1114, {	-- Delivery to the Gnomes
					["qg"] = 4452,	-- Kravel Koalbeard
					["coord"] = { 78.8, 77.3, THOUSAND_NEEDLES },
					["lvl"] = 30,
					["sourceQuest"] = 1112,	-- Parts for Kravel
				}),
				q(1107, {	-- Encrusted Tail Fins
					["qg"] = 4453,	-- Wizzle Brassbolts
					["sourceQuest"] = 1105,	-- Hardened Shells
					["coord"] = { 78.1, 77.1, THOUSAND_NEEDLES },
					["maps"] = { STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 5796, 10 },	-- Encrusted Tail Fin
					},
					["lvl"] = 28,
				}),
				q(5361, {	-- Family Tree
					["qg"] = 10537,	-- Cliffwatcher Longhorn
					["coord"] = { 45.65, 50.80, THOUSAND_NEEDLES },
					["maps"] = { DESOLACE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13507, 1 },	-- Cliffwatcher Longhorn Report
					},
					["lvl"] = 32,
				}),
				q(1394, {	-- Final Passage
					["qg"] = 4488, 	-- Parqual Fintallas
					["sourceQuest"] = 6628,	-- Test of Lore
					["coord"] = { 57.75, 65.39, UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						i(6804),	-- Windstorm Hammer
						i(6806),	-- Dancing Flame
					},
				}),
				q(4904, {	-- Free at Last
					["qg"] = 10646,	-- Lakota Windsong
					["coord"] = { 37.99, 26.52, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						i(15469),	-- Windsong Cinch
						i(15468),	-- Windsong Drape
					},
				}),
				q(1120, {	-- Get the Gnomes Drunk
					["qg"] = 4452,	-- Kravel Koalbeard
					["sourceQuest"] = 1119,	-- Zanzil's Mixture and a Fool's Stout
					["coord"] = { 78.8, 77.3, THOUSAND_NEEDLES },
					["lvl"] = 35,
					["altQuests"] = {
						1121,	-- Get the Goblins Drunk
					},
				}),
				q(1121, {	-- Get the Goblins Drunk
					["qg"] = 4452,	-- Kravel Koalbeard
					["sourceQuest"] = 1119,	-- Zanzil's Mixture and a Fool's Stout
					["coord"] = { 78.8, 77.3, THOUSAND_NEEDLES },
					["lvl"] = 35,
					["altQuests"] = {
						1120,	-- Get the Goblins Drunk
					},
				}),
				q(1950, {	-- Get the Scoop
					["qg"] = 6548,	-- Magus Tirth
					["sourceQuest"] = 1949,	-- Hidden Secrets
					["coord"] = { 478.2, 75.8, THOUSAND_NEEDLES },
					["maps"] = { DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["lvl"] = 30,
				}),
				un(NEVER_IMPLEMENTED, q(1174, {	-- Gnomes Win!
					un(NEVER_IMPLEMENTED, i(5857)),	-- Gnome Prize Box
				})),
				q(1178, {	-- Goblin Sponsorship
					["qg"] = 4630,	-- Pozzik
					["sourceQuest"] = 1176,	-- Load Lightening
					["coord"] = { 80.2, 75.9, THOUSAND_NEEDLES },
					["lvl"] = 29,
				}),
				q(1180, {	-- Goblin Sponsorship
					["qg"] = 3391,	-- Gazlowe
					["sourceQuest"] = 1178,	-- Goblin Sponsorship
					["coord"] = { 62.68, 36.24, THE_BARRENS },
					["lvl"] = 29,
				}),
				q(1181, {	-- Goblin Sponsorship
					["qg"] = 4631,	-- Wharfmaster Lozgil
					["sourceQuest"] = 1180,	-- Goblin Sponsorship
					["coord"] = { 26.3, 73.6, STRANGLETHORN_VALE },
					["lvl"] = 29,
				}),
				q(1182, {	-- Goblin Sponsorship
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 1181,	-- Goblin Sponsorship
					["coord"] = { 27.2, 76.9, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 5852, 1 },	-- Fuel Regulator Blueprints
					},
					["lvl"] = 29,
					["groups"] = {
						{
							["itemID"] = 5851,	-- Cozzle's Key
							["cr"] = 4723,	-- Foreman Cozzle
							["coord"] = { 42.6, 18.6, STRANGLETHORN_VALE },
							["groups"] = {
								{
									["itemID"] = 5852,	-- Fuel Regulator Blueprints
									["questID"] = 1182,	-- Goblin Sponsorship
									["coord"] = { 43.33, 20.33, STRANGLETHORN_VALE },
								},
							},
						},
					},
				}),
				q(1183, {	-- Goblin Sponsorship
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 1182,	-- Goblin Sponsorship
					["coord"] = { 27.2, 76.9, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 5852, 1 },	-- Fuel Regulator Blueprints
					},
					["lvl"] = 29,
				}),
				un(NEVER_IMPLEMENTED, q(1099, {	-- Goblins Win!
					un(NEVER_IMPLEMENTED, i(5858)),	-- Goblin Prize Box
				})),
				q(5064, {	-- Grimtotem Spying
					["qg"] = 10537,	-- Cliffwatcher Longhorn
					["sourceQuest"] = 4841,	-- Pacify the Centaur
					["coord"] = { 45.65, 50.80, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						i(15457),	-- Desert Shoulders
						i(15458),	-- Tundra Boots
						i(15459),	-- Grimtoll Wristguards
					},
				}),
				q(1105, {	-- Hardened Shells
					["qg"] = 4453,	-- Wizzle Brassbolts
					["coord"] = { 78.1, 77.1, THOUSAND_NEEDLES },
					["lvl"] = 28,
				}),
				q(5762, {	-- Hemet Nesingwary
					["qg"] = 4452,	-- Kravel Koalbeard
					["coord"] = { 78.8, 77.3, THOUSAND_NEEDLES },
					["lvl"] = 28,
				}),
				q(4770, {	-- Homeward Bound
					["qg"] = 10427,	-- Pao'ka Swiftmountain
					--["coord"] = { },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(5151, {	-- Hypercapacitor Gizmo
					["qg"] = 10941,	-- Wizlo Bearingshiner
					["coord"] = { 21.44, 32.55, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						i(15467),	-- Inventor's League Ring
					},
				}),
				q(1192, {	-- Indurium Ore
					["sourceQuest"] = 1194,	-- Rizzle's Schematics
					["qg"] = 4630,	-- Pozzik
					["repeatable"] = true,
					["coord"] = { 80, 75.8, THOUSAND_NEEDLES },
					["cost"] = {
						{ "i", 5833, 4 },	-- Indurium Ore
					},
					["lvl"] = 29,
				}),
				q(1190, {	-- Keeping Pace
					["qg"] = 4630,	-- Pozzik
					["sourceQuest"] = 1137,	-- News for Frizzle
					["coord"] = { 80.2, 75.9, THOUSAND_NEEDLES },
					["lvl"] = 29,
				}),
				q(1176, {	-- Load Lightening
					["qg"] = 4630,	-- Pozzik
					["coord"] = { 80.2, 75.9, THOUSAND_NEEDLES },
					["lvl"] = 29,
				}),
				q(1100, {	-- Lonebrow's Journal
					["provider"] = { "i", 5790 },	-- Lonebrow's Journal
					["coord"] = { 30, 24, THOUSAND_NEEDLES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 29,
				}),
				q(1106, {	-- Martek the Exiled
					["qg"] = 4454,	-- Fizzle Brassbolts
					["sourceQuests"] = {
						1105,	-- Hardened Shells
						1104,	-- Salt Flat Venom
					},
					["coord"] = { 78.1, 77.1, THOUSAND_NEEDLES },
					["maps"] = { BADLANDS },
					["cost"] = {
						{ "i", 5827, 1 },	-- Fizzle Brassbolts' Letter
					},
					["lvl"] = 26,
				}),
				q(4542, {	-- Message to Freewind Post
					["qg"] = 10079,	-- Brave Moonhorn
					["coord"] = { 32.23, 22.17, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
					["isBreadcrumb"] = true,
				}),
				q(4841, {	-- Pacify the Centaur
					["qg"] = 10537,	-- Cliffwatcher Longhorn
					["sourceQuest"] = 4542,	-- Message to Freewind Post
					["coord"] = { 45.65, 50.80, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
				}),
				q(1112, {	-- Parts for Kravel
					["qg"] = 3453,	-- Wharfmaster Dizzywig
					["sourceQuest"] = 1111,	-- Wharfmaster Dizzywig
					["coord"] = { 63.35, 38.45, THE_BARRENS },
					["lvl"] = 30,
				}),
				q(1148, {	-- Parts of the Swarm
					["provider"] = { "i", 5877 },	-- Cracked Silithid Carapace
					["crs"] = {
						4133,	-- Silithid Hive Drone
						4130,	-- Silithid Searcher
						4131,	-- Silithid Invader
						4132,	-- Silithid Ravager
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 28,
				}),
				q(1184, {	-- Parts of the Swarm
					["qg"] = 3428,	-- Korran
					["sourceQuest"] = 1148,	-- Parts of the Swarm
					--["coord"] = { },
					["races"] = HORDE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						i(6737),	-- Dryleaf Pants
						i(6738),	-- Bleeding Crescent
					},
				}),
				q(4966, {	-- Protect Kanati Greycloud
					["qg"] = 10638,	-- Kanati Greycloud
					["sourceQuest"] = 4881,	-- Assassination Plot
					["coord"] = { 21.27, 32.03, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						i(15461),	-- Lightheel Boots
						i(15462),	-- Loamflake Bracers
						i(15463),	-- Palestrider Gloves
					},
				}),
				q(1187, {	-- Razzeric's Tweaking
					["qg"] = 4706,	-- Razzeric
					["sourceQuest"] = 1186,	-- The Eighteenth Pilot
					["coord"] = { 80.3, 76.1, THOUSAND_NEEDLES },
					["lvl"] = 29,
				}),
				q(1122, {	-- Report Back to Fizzlebub
					["qg"] = 4452,	-- Kravel Koalbeard
					["sourceQuests"] = {
						1120,	-- Get the Gnomes Drunk
						1121,	-- Get the Goblins Drunk
					},
					["coord"] = { 78.8, 77.3, THOUSAND_NEEDLES },
					["maps"] = { STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 5807, 1 },	-- Fool's Stout Report
					},
					["lvl"] = 35,
				}),
				q(1194, {	-- Rizzle's Schematics
					["provider"] = { "o", 20805 }, 	-- Rizzle's Unguarded Plans
					["sourceQuest"] = 1190,	-- Keeping Pace
					["coord"] = { 77.22, 77.39, THOUSAND_NEEDLES },
					["cost"] = {
						{ "i", 5866, 1 },	-- Sample of Indurium Ore
					},
					["lvl"] = 29,
				}),
				q(1110, {	-- Rocket Car Parts
					["qg"] = 4452,	-- Kravel Koalbeard
					["coord"] = { 78.8, 77.3, THOUSAND_NEEDLES },
					["lvl"] = 28,
				}),
				q(1117, {	-- Rumors for Kravel
					["qg"] = 773,	-- Krazek
					["sourceQuest"] = 1116,	-- Dream Dust in the Swamp
					--["coord"] = { },
					["lvl"] = 30,
				}),
				q(5062, {	-- Sacred Fire
					["qg"] = 10428,	-- Motega Firemane
					["sourceQuest"] = 4865,	-- Serpent Wild
					["coord"] = { 21.55, 32.34, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
				}),
				q(1188, {	-- Safety First
					["qg"] = 4706,	-- Razzeric
					["sourceQuest"] = 1187,	-- Razzeric's Tweaking
					["coord"] = { 80.3, 76.1, THOUSAND_NEEDLES },
					["lvl"] = 29,
				}),
				q(1189, {	-- Safety First
					["qg"] = 4708,	-- Shreev
					["sourceQuest"] = 1188,	-- Safety First
					["lvl"] = 29,
					["groups"] = {
						i(6726),	-- Razzeric's Customized Seatbelt
						i(6727),	-- Razzeric's Racing Grips
					},
					["coord"] = { 50.9, 27.0, TANARIS },
				}),
				q(1104, {	-- Salt Flat Venom
					["qg"] = 4454,	-- Fizzle Brassbolts
					["coord"] = { 78.1, 77.1, THOUSAND_NEEDLES },
					["lvl"] = 28,
				}),
				q(4865, {	-- Serpent Wild
					["qg"] = 10539,	-- Hagar Lightninghoof
					["sourceQuest"] = 4821,	-- Alien Egg
					["coord"] = { 44.64, 50.29, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
				}),
				q(1150, {	-- Test of Endurance
					["qg"] = 2986,	-- Dorn Plainstalker
					["sourceQuest"] = 1149,	-- Test of Faith
					["coord"] = { 53.94, 41.49, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						i(5845),	-- Flank of Meat
					},
				}),
				q(1149, {	-- Test of Faith
					["qg"] = 2986,	-- Dorn Plainstalker
					["coord"] = { 53.94, 41.49, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(1152, {	-- Test of Lore
					["qg"] = 2986,	-- Dorn Plainstalker
					["sourceQuest"] = 1151,	-- Test of Strength
					["coord"] = { 53.94, 41.49, THOUSAND_NEEDLES },
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
				}),
				q(1154, {	-- Test of Lore
					["qg"] = 4489,	-- Braug Dimspirit
					["sourceQuest"] = 1152,	-- Test of Lore
					["coord"] = { 78.80, 45.68, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(6627, {	-- Test of Lore
					["qg"] = 4489,	-- Braug Dimspirit
					["sourceQuest"] = 1154,	-- Test of Lore
					["coord"] = { 78.80, 45.68, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(1159, {	-- Test of Lore
					["qg"] = 4489,	-- Braug Dimspirit
					["sourceQuest"] = 6627,	-- Test of Lore
					["coord"] = { 78.80, 45.68, STONETALON_MOUNTAINS },
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
				}),
				q(6628, {	-- Test of Lore
					["qg"] = 4488,	-- Parqual Fintallas
					["sourceQuest"] = 1160,	-- Test of Lore
					["coord"] = { 57.75, 65.39, UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(1151, {	-- Test of Strength
					["qg"] = 2986,	-- Dorn Plainstalker
					["sourceQuest"] = 1150,	-- Test of Endurance
					["coord"] = { 53.94, 41.49, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(1179, {	-- The Brassbolts Brothers
					["qg"] = 2092,	-- Pilot Longbeard
					["coord"] = { 72.4, 93.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5849, 1 },	-- Crate of Crash Helmets
					},
					["lvl"] = 28,
				}),
				q(2769, {	-- The Brassbolts Brothers
					["qg"] = 6169,	-- Klockmort Spannerspan
					["coord"] = { 68.2, 46.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(1186, {	-- The Eighteenth Pilot
					["qg"] = 4630,	-- Pozzik
					["sourceQuest"] = 1183,	-- Goblin Sponsorship
					["coord"] = { 80.2, 75.9, THOUSAND_NEEDLES },
					["lvl"] = 29,
				}),
				q(3843, {	-- The Newest Member of the Family
					["providers"] = {
						{ "n", 9238 },	-- Quentin
						{ "i", 11471 },	-- Fragile Sprite Darter Egg
					},
					["sourceQuest"] = 3842,	-- A Short Incubation
					["coord"] = { 78.4, 74.7, THOUSAND_NEEDLES },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(1115, {	-- The Rumormonger
					["qg"] = 4452,	-- Kravel Koalbeard
					["coord"] = { 78.8, 77.3, THOUSAND_NEEDLES },
					["lvl"] = 30,
				}),
				q(1147, {	-- The Swarm Grows
					["qg"] = 4483,	-- Moktar Krin
					["sourceQuest"] = 1146,	-- The Swarm Grows
					["coord"] = { 67.60, 63.93, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(5147, {	-- Wanted - Arnak Grimtotem
					["provider"] = { "o", 176115 },	-- Assassination Note
					["coord"] = { 46.01, 50.86, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						i(15471),	-- Brawnhide Armor
						i(15470),	-- Plainsguard Leggings
					},
				}),
				q(1111, {	-- Wharfmaster Dizzywig
					["qg"] = 4452,	-- Kravel Koalbeard
					["coord"] = { 78.8, 77.3, THOUSAND_NEEDLES },
					["lvl"] = 30,
				}),
				q(4767, {	-- Wind Rider
					["qg"] = 10377,	-- Elu
					["coord"] = { 44.84, 48.97, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						i(4265),	-- Heavy Armor Kit
					},
				}),
				q(1191, {	-- Zamek's Distraction
					["qg"] = 4709,	-- Zamek
					["altQuests"] = {
						1190,	-- Keeping Pace
					},
					["repeatable"] = true,
					["coord"] = { 79.8, 77.0, THOUSAND_NEEDLES },
					["lvl"] = 29,
					["description"] = "This quest is repeatable, but can only be completed while you have the quest \"Keeping Pace\" in your quest log.",

				}),
				q(1119, {	-- Zanzil's Mixture and a Fool's Stout
					["qg"] = 2498,	-- Crank Fizzlebub
					["sourceQuest"] = 1118,	-- Back to Booty Bay
					["coord"] = { 27.1, 77.2, STRANGLETHORN_VALE },
					["lvl"] = 35,
				}),
			}),
			n(RARES, {
				n(5933, {	-- Achellios the Banished
					["coords"] = {
						{ 21.6, 33.4, THOUSAND_NEEDLES },
						{ 21.4, 37.2, THOUSAND_NEEDLES },
						{ 20.0, 39.4, THOUSAND_NEEDLES },
						{ 17.8, 36.8, THOUSAND_NEEDLES },
						{ 21.2, 41.6, THOUSAND_NEEDLES },
						{ 24.0, 43.6, THOUSAND_NEEDLES },
						{ 25.6, 41.4, THOUSAND_NEEDLES },
						{ 26.0, 39.6, THOUSAND_NEEDLES },
						{ 25.2, 36.8, THOUSAND_NEEDLES },
					},
				}),
				n(14427, {	-- Gibblesnik
					["coords"] = {
						{ 51.8, 43.6, THOUSAND_NEEDLES },
						{ 55.6, 49.6, THOUSAND_NEEDLES },
						{ 59.6, 47.6, THOUSAND_NEEDLES },
						{ 60.6, 58.6, THOUSAND_NEEDLES },
					},
				}),
				n(14426, {	-- Harb Foulmountain
					["coords"] = {
						{ 33.0, 27.6, THOUSAND_NEEDLES },
						{ 34.8, 31.6, THOUSAND_NEEDLES },
						{ 36.6, 31.6, THOUSAND_NEEDLES },
					},
				}),
				n(5934, {	-- Heartrazor
					["coords"] = {
						{ 17.8, 40.6, THOUSAND_NEEDLES },
						{ 18.0, 42.6, THOUSAND_NEEDLES },
						{ 15.8, 41.2, THOUSAND_NEEDLES },
					},
				}),
				n(5935, {	-- Ironeye the Invincible
					["coords"] = {
						{ 76.4, 60.2, THOUSAND_NEEDLES },
						{ 82.0, 58.0, THOUSAND_NEEDLES },
						{ 86.6, 70.2, THOUSAND_NEEDLES },
						{ 88.6, 73.4, THOUSAND_NEEDLES },
						{ 88.6, 78.8, THOUSAND_NEEDLES },
						{ 86.0, 80.6, THOUSAND_NEEDLES },
						{ 86.6, 76.8, THOUSAND_NEEDLES },
						{ 84.2, 72.8, THOUSAND_NEEDLES },
					},
					["groups"] = {
						i(8223),	-- Blade of the Basilisk
					},
				}),
				n(4132, {	-- Silithid Ravager
					["coords"] = {
						{ 68.8, 83.0, THOUSAND_NEEDLES },
						{ 72.6, 84.6, THOUSAND_NEEDLES },
						{ 69.4, 88.6, THOUSAND_NEEDLES },
						{ 65.6, 85.6, THOUSAND_NEEDLES },
					},
					["groups"] = {
						i(8224),	-- Silithid Ripper
					},
				}),
				n(5937, {	-- Vile Sting
					["coords"] = {
						{ 69.8, 64.6, THOUSAND_NEEDLES },
						{ 71.6, 64.4, THOUSAND_NEEDLES },
						{ 73.0, 67.8, THOUSAND_NEEDLES },
						{ 72.8, 72.0, THOUSAND_NEEDLES },
						{ 71.8, 72.4, THOUSAND_NEEDLES },
						{ 74.2, 76.8, THOUSAND_NEEDLES },
					},
				}),
			}),
			n(VENDORS, {
				n(4877, {	-- Jandia <Trade Supplies>
					["coord"] = { 46.0, 51.6, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(20970, {	-- Design: Pendant of the Agate Shield
							["isLimited"] = true,
						}),
						i(5973),	-- Pattern: Barbaric Leggings
					},
				}),
				n(4878, {   -- Montarr <Lorekeeper>
					["coord"] = { 45.2, 50.6, THOUSAND_NEEDLES },
					["groups"] = {
						i(6068),  -- Recipe: Shadow Oil
					},
				}),
				n(6730, {	-- Jinky Twizzlefixxit <Engineering Supplies>
					["coord"] = { 77.7, 77.8, THOUSAND_NEEDLES },
					["groups"] = {
						i(7560),	-- Schematic: Gnomish Universal Remote
						i(13309),	-- Schematic: Lovingly Crafted Boomstick
					},
				}),
				n(6548, {	-- Magus Tirth
					["coord"] = { 78.30, 75.70, THOUSAND_NEEDLES },
					["groups"] = {
						i(11023),	-- Ancona Chicken
					},
				}),
				n(9551, {	-- Starn <Gunsmith & Bowyer>
					["coord"] = { 45.0, 50.6, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11304, {	-- Fine Longbow
							["isLimited"] = true,
						}),
						i(11305),	-- Dense Shortbow
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(1493, {	-- Heavy Marauder Scimitar
					["cr"] = 4099,	-- Galak Marauder
				}),
				i(5809, {	-- Highperch Venom Sac
					["crs"] = {
						5934,	-- Heartrazor
						4109,	-- Highperch Consort
						4110,	-- Highperch Patriarch
						4107,	-- Highperch Wyvern
					},
				}),
				-- #if AFTER TBC
				i(5773, {	-- Pattern: Robes of Arcana
					["timeline"] = { "removed 4.0.3" },
					["cr"] = 10760,	-- Grimtotem Geomancer
				}),
				-- #endif
			}),
		},
	}),
}));