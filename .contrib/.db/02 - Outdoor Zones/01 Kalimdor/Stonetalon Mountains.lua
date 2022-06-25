---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(KALIMDOR, {
	m(STONETALON_MOUNTAINS, {
		["lore"] = "The Stonetalon Mountains are craggy and forbidding. The air is usually hot, though violent rainstorms and severe winds cool the slopes and endanger travelers. The mountains are home to many fi erce creatures, including hippogryphs, harpies, drakes, wyverns and kobolds. This region is inhospitable and extreme.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(847, {	-- Explore Stonetalon Mountains
					-- #if BEFORE WRATH
					["description"] = "Explore Stonetalon Mountains, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["125:125:475:433"] = 2541,	-- Sishir Canyon
				["125:86:663:582"] = 2539,	-- Malaka'jin
				["145:107:572:561"] = 2540,	-- Boulderslide Ravine
				["150:150:389:320"] = 460,	-- Sun Rock Retreat
				["190:97:718:571"] = 2538,	-- Camp Aparaje
				["200:215:390:145"] = 464,	-- Mirkfallon Lake
				["225:120:668:515"] = 2537,	-- Grimtotem Post
				["230:355:210:234"] = 465,	-- The Charred Vale
				["270:205:247:0"] = 467,	-- Stonetalon Peak
				["288:355:457:282"] = 1076,	-- Webwinder Path
				["320:275:553:197"] = 461,	-- Windshear Crag
				--[[
				[463] = 3,                               -- Cragpool Lake
				[466] = 6,                               -- Valley of the Bloodfuries
				[468] = 8,                               -- The Talon Den
				[469] = 9,                               -- Greatwood Vale
				[636] = 10,                              -- Blackwolf River
				[1277] = 12,                             -- The Talondeep Path
				[2160] = 13,                             -- Windshear Mine
				[3157] = 19,                             -- Boulderslide Cavern
				]]--
			})),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(33, {	-- Stonetalon Peak, Stonetalon Mountains
					["cr"] = 4407,	-- Teloren <Hippogryph Master>
					["coord"] = { 36.4, 7.2, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(29, {	-- Sun Rock Retreat, Stonetalon Mountains
					["cr"] = 4312,	-- Tharm <Wind Rider Master>
					["coord"] = { 45.2, 59.8, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(1071, {	-- A Gnome's Respite
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["sourceQuest"] = 1085,	-- On Guard in Stonetalon
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1075, {	-- A Scroll from Mauren
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["sourceQuest"] = 1071,	-- A Gnome's Respite
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1072, {	-- An Old Colleague
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["sourceQuest"] = 1071,	-- A Gnome's Respite
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(6284, {	-- Arachnophobia
					["provider"] = { "o", 177904 },	-- Wanted Poster: Besseleth
					["coord"] = { 59.09, 75.76, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16192, 1 },	-- Besseleth's Fang
					},
					["lvl"] = 15,
					["groups"] = {
						{
							["itemID"] = 16192,	-- Besseleth's Fang
							["questID"] = 6284,	-- Arachnophobia
							["cr"] = 11921,	-- Besseleth
							["coord"] = { 52.8, 72.6, STONETALON_MOUNTAINS },
						},
						i(16891),	-- Claystone Shortsword
						i(16894),	-- Clear Crystal Rod
					},
				}),
				q(6548, {	-- Avenge My Village
					["qg"] = 11857,	-- Makaba Flathoof
					["coord"] = { 35.23, 27.79, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(6461, {	-- Blood Feeders
					["qg"] = 12816,	-- Xen'Zilla
					["coord"] = { 71.25, 95.00, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
				}),
				q(6283, {	-- Bloodfury Bloodline
					["qg"] = 11860,	-- Maggran Earthbinder
					["sourceQuest"] = 6282,	-- Harpies Threaten
					["coord"] = { 47.17, 61.08, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16190, 1 },	-- Bloodfury Ripper's Remains
					},
					["lvl"] = 18,
					["groups"] = {
						{
							["itemID"] = 16190,	-- Bloodfury Ripper's Remains
							["questID"] = 6283,	-- Bloodfury Bloodline
							["cr"] = 12579,	-- Bloodfury Ripper
							["coord"] = { 31.8, 62.6, STONETALON_MOUNTAINS },
						},
						i(16990),	-- Spritekin Cloak
						i(16987),	-- Screecher Belt
					},
				}),
				q(6421, {	-- Boulderslide Ravine
					["qg"] = 11861,	-- Mor'rogal
					["coord"] = { 47.17, 64.10, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16581, 10 },	-- Resonite Crystal
					},
					["lvl"] = 14,
				}),
				q(5881, {	-- Calling in the Reserves
					["qg"] = 11860,	-- Maggran Earthbinder
					["coord"] = { 47.17, 61.08, STONETALON_MOUNTAINS },
					["maps"] = { THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
				}),
				q(1087, {	-- Cenarius' Legacy
					["qg"] = 4198,	-- Braelyn Firehand
					["coord"] = { 45.91, 60.35, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(1079, {	-- Covert Ops - Alpha
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["sourceQuests"] = {
						1074,	-- Ineptitude + Chemicals = Fun (2/2)
						1077,	-- Special Delivery for Gaxim
					},
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5718, 1 },	-- Venture Co. Engineering Plans
					},
					["lvl"] = 17,
					["groups"] = {
						{
							["itemID"] = 5718,	-- Venture Co. Engineering Plans
							["questID"] = 1079,	-- Covert Ops - Alpha
							["coord"] = { 66.1, 51.3, STONETALON_MOUNTAINS },
						},
						i(5738),	-- Covert Ops Pack
					},
				}),
				q(1080, {	-- Covert Ops - Beta
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["sourceQuests"] = {
						1074,	-- Ineptitude + Chemicals = Fun (2/2)
						1077,	-- Special Delivery for Gaxim
					},
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5717, 1 },	-- Venture Co. Letters
					},
					["lvl"] = 17,
					["groups"] = {
						{
							["itemID"] = 5717,	-- Venture Co. Letters
							["questID"] = 1080,	-- Covert Ops - Beta
							["coord"] = { 74.4, 59.2, STONETALON_MOUNTAINS },
						},
						i(5738),	-- Covert Ops Pack
					},
				}),
				q(6301, {	-- Cycle of Rebirth
					["qg"] = 11864,	-- Tammra Windfield
					["coord"] = { 47.44, 58.47, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16205, 10 },	-- Gaea Seed
					},
					["lvl"] = 17,
				}),
				q(6481, {	-- Earthen Arise
					["qg"] = 11861,	-- Mor'rogal
					["sourceQuest"] = 6421,	-- Boulderslide Ravine
					["coord"] = { 47.17, 64.10, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						i(16981),	-- Owlbeard Bracers
						i(1306),	-- Wolfmane Wristguards
					},
				}),
				q(6393, {	-- Elemental War
					["qg"] = 11862,	-- Tsunaman
					["coord"] = { 47.28, 64.31, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16312, 10 },	-- Incendrites
					},
					["lvl"] = 19,
				}),
				q(1083, {	-- Enraged Spirits
					["qg"] = 4080,	-- Kaela Shadowspear
					["sourceQuest"] = 1091,	-- Kaela's Update
					["coord"] = { 59.9, 66.8, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5659, 8 },	-- Smoldering Embers
					},
					["lvl"] = 20,
				}),
				q(1094, {	-- Further Instructions (1/2)
					["qg"] = 4201,	-- Ziz Fizziks
					["sourceQuest"] = 1093,	-- Super Reaper 6000
					["coord"] = { 59.00, 62.53, STONETALON_MOUNTAINS },
					["cost"] = {
						{ "i", 5735, 1 },	-- Sealed Envelope
					},
					["lvl"] = 16,
				}),
				q(1095, {	-- Further Instructions (2/2)
					["qg"] = 3442,	-- Sputtervalve
					["sourceQuest"] = 1094,	-- Further Instructions (1/2)
					["coord"] = { 62.97, 37.19, THE_BARRENS },
					["lvl"] = 16,
				}),
				q(1096, {	-- Gerenzo Wrenchwhistle
					["qg"] = 4201,	-- Ziz Fizziks
					["sourceQuest"] = 1095,	-- Further Instructions (2/2)
					["coord"] = { 59.00, 62.53, STONETALON_MOUNTAINS },
					["cost"] = {
						{ "i", 5736, 1 },	-- Gerenzo's Mechanical Arm
					},
					["lvl"] = 16,
					["groups"] = {
						{
							["itemID"] = 5736,	-- Gerenzo's Mechanical Arm
							["questID"] = 1096,	-- Gerenzo Wrenchwhistle
							["cr"] = 4202,	-- Gerenzo Wrenchwhistle
							["coord"] = { 63.6, 39.6, STONETALON_MOUNTAINS },
						},
						i(6667),	-- Engineer's Cloak
						i(6668),	-- Draftsman Boots
					},
				}),
				q(1090, {	-- Gerenzo's Orders (1/2)
					["qg"] = 4276,	-- Piznik
					["coord"] = { 71.80, 60.05, STONETALON_MOUNTAINS },
					["lvl"] = 17,
				}),
				q(1092, {	-- Gerenzo's Orders (2/2)
					["qg"] = 4276,	-- Piznik
					["sourceQuest"] = 1090,	-- Gerenzo's Orders (1/2)
					["coord"] = { 71.80, 60.05, STONETALON_MOUNTAINS },
					["cost"] = {
						{ "i", 5733, 1 },	-- Unidentified Ore
					},
					["lvl"] = 17,
					["groups"] = {
						i(6666),	-- Dredge Boots
					},
				}),
				q(1062, {	-- Goblin Invaders
					["qg"] = 4049,	-- Seereth Stonebreak
					["sourceQuest"] = 1061,	-- The Spirits of Stonetalon
					["coord"] = { 35.28, 27.84, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
				}),
				q(6282, {	-- Harpies Threaten
					["qg"] = 11860,	-- Maggran Earthbinder
					["coord"] = { 47.17, 61.08, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 18,
				}),
				q(1058, {	-- Jin'Zil's Forest Magic
					["qg"] = 3995,	-- Witch Doctor Jin'Zil
					["coord"] = { 74.54, 97.84, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5585, 30 },	-- Courser Eye
						{ "i", 5583, 1 },	-- Fey Dragon Scale
						{ "i", 5582, 5 },	-- Stonetalon Sap
						{ "i", 5584, 5 },	-- Twilight Whisker
					},
					["lvl"] = 20,
					["groups"] = {
						i(6664),	-- Voodoo Mantle
						i(6665),	-- Hexed Bracers
					},
				}),
				q(1091, {	-- Kaela's Update
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["sourceQuests"] = {
						1079,	-- Covert Ops - Alpha
						1080,	-- Covert Ops - Beta
					},
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5717, 1 },	-- Venture Co. Letters
					},
					["lvl"] = 17,
				}),
				q(6401, {	-- Kaya's Alive
					["qg"] = 11857,	-- Makaba Flathoof
					["sourceQuest"] = 6523,	-- Protect Kaya
					["coord"] = { 35.23, 27.79, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(1511, {	-- Ken'zigla's Draught
					["qg"] = 4197,	-- Ken'zigla
					["sourceQuest"] = 1510,	-- News of Dogran (2/2)
					["coord"] = { 73.2, 95, STONETALON_MOUNTAINS },
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["cost"] = {
						{ "i", 6624, 1 },	-- Ken'zigla's Draught
					},
					["lvl"] = 20,
				}),
				q(6629, {	-- Kill Grundig Darkcloud
					["qg"] = 11857,	-- Makaba Flathoof
					["sourceQuest"] = 6548,	-- Avenge My Village
					["coord"] = { 35.23, 27.79, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(6381, {	-- New Life
					["qg"] = 11864,	-- Tammra Windfield
					["sourceQuest"] = 6301,	-- Cycle of Rebirth
					["coord"] = { 47.44, 58.47, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						i(16985),	-- Windseeker Boots
						i(16986),	-- Sandspire Gloves
					},
				}),
				q(1085, {	-- On Guard in Stonetalon
					["qg"] = 4080,	-- Kaela Shadowspear
					["sourceQuest"] = 1070,	-- On Guard in Stonetalon (Ashenvale)
					["coord"] = { 59.9, 66.8, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1088, {	-- Ordanus
					["qg"] = 4198,	-- Braelyn Firehand
					["sourceQuest"] = 1087,	-- Cenarius' Legacy
					["coord"] = { 45.91, 60.35, STONETALON_MOUNTAINS },
					["maps"] = { ASHENVALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5686, 1 },	-- Ordanus' Head
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 5686,	-- Ordanus' Head
							["questID"] = 1088,	-- Ordanus
							["cr"] = 4273,	-- Keeper Ordanus
							["coord"] = { 62.0, 51.2, ASHENVALE },
						},
					},
				}),
				q(6523, {	-- Protect Kaya
					["qg"] = 11856,	-- Kaya Flathoof
					["coord"] = { 73.51, 85.68, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(1057, {	-- Reclaiming the Charred Vale
					["qg"] = 3994,	-- Keeper Albagorm
					["coord"] = { 37.1, 8.1, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(1059, {	-- Reclaiming the Charred Vale
					["qg"] = 3994,	-- Keeper Albagorm
					["sourceQuest"] = 1057,	-- Reclaiming the Charred Vale
					["coord"] = { 37.1, 8.1, STONETALON_MOUNTAINS },
					["maps"] = { FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(6675),	-- Tempered Bracers
						i(6676),	-- Constable Buckler
					},
				}),
				q(6542, {	-- Report to Kadrak
					["qg"] = 11821,	-- Darn Talongrip
					["coord"] = { 73.23, 94.91, STONETALON_MOUNTAINS },
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				}),
				q(1078, {	-- Retrieval for Mauren
					["qg"] = 4078,	-- Collin Mauren
					["coord"] = { 43.1, 80.3, STORMWIND_CITY },
					["maps"] = { THOUSAND_NEEDLES },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5675, 8 },	-- Crystalized Scales
					},
					["lvl"] = 17,
					["groups"] = {
						i(6677),	-- Spellcrafter Wand
					},
				}),
				q(1068, {	-- Shredding Machines
					["qg"] = 4049,	-- Seereth Stonebreak
					["sourceQuest"] = 1062,	-- Goblin Invaders
					["coord"] = { 35.28, 27.84, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
				}),
				q(1077, {	-- Special Delivery for Gaxim
					["qg"] = 4078,	-- Collin Mauren
					["sourceQuest"] = 1076,	-- Devils in Westfall
					["coord"] = { 43.1, 80.3, STORMWIND_CITY },
					["cost"] = { { "i", 5731, 1 } },	-- Scroll of Messaging
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1093, {	-- Super Reaper 6000
					["qg"] = 4201,	-- Ziz Fizziks
					["sourceQuest"] = 1483,	-- Ziz Fizziks
					["coord"] = { 59.00, 62.53, STONETALON_MOUNTAINS },
					["cost"] = {
						{ "i", 5734, 1 },	-- Super Reaper 6000 Blueprints
					},
					["lvl"] = 16,
				}),
				q(1089, {	-- The Den
					["qg"] = 4198,	-- Braelyn Firehand
					["sourceQuest"] = 1088,	-- Ordanus
					["coord"] = { 45.91, 60.35, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5687, 1 },	-- Gatekeeper's Key
						{ "i", 5691, 1 },	-- Barrow Key
						{ "i", 5690, 1 },	-- Claw Key
						{ "i", 5689, 1 },	-- Sleepers' Key
					},
					["lvl"] = 20,
					["groups"] = {
						i(6671),	-- Juggernaut Leggings
						i(6670),	-- Panther Armor
						i(6669),	-- Sacred Band
					},
				}),
				q(1063, {	-- The Elder Crone
					["qg"] = 4049,	-- Seereth Stonebreak
					["sourceQuest"] = 1062,	-- Goblin Invaders
					["coord"] = { 35.28, 27.84, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
				}),
				q(1061, {	-- The Spirits of Stonetalon
					["qg"] = 4047,	-- Zor Lonetree
					["coord"] = { 39.03, 38.04, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["isBreadcrumb"] = true,
				}),
				q(1082, {	-- Update for Sentinel Thenysil
					["qg"] = 4080,	-- Kaela Shadowspear
					["sourceQuests"] = {
						1083,	-- Enraged Spirits
						1084,	-- Wounded Ancients
					},
					["coord"] = { 59.9, 66.8, STONETALON_MOUNTAINS },
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1084, {	-- Wounded Ancients
					["qg"] = 4080,	-- Kaela Shadowspear
					["sourceQuest"] = 1091,	-- Kaela's Update
					["coord"] = { 59.9, 66.8, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5664, 1 },	-- Corroded Shrapnel
					},
					["lvl"] = 22,
				}),
				q(1483, {	-- Ziz Fizziks
					["qg"] = 3442,	-- Sputtervalve
					["coord"] = { 62.98, 37.21, THE_BARRENS },
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
			}),
			n(RARES, {
				n(5915, {	-- Brother Ravenoak
					["coord"] = { 28.2, 12.8, STONETALON_MOUNTAINS },
				}),
				n(5931, {	-- Foreman Rigger
					["coords"] = {
						{ 67.6, 45.4, STONETALON_MOUNTAINS },
						{ 68.0, 54.0, STONETALON_MOUNTAINS },
						{ 63.8, 51.8, STONETALON_MOUNTAINS },
					},
				}),
				n(4066, {	-- Nal'taszar
					["coords"] = {
						{ 25.6, 11.6, STONETALON_MOUNTAINS },
						{ 26.2, 13.6, STONETALON_MOUNTAINS },
						{ 29.0, 15.2, STONETALON_MOUNTAINS },
					},
				}),
				n(4015, {	-- Pridewing Patriarch
					["coords"] = {
						{ 45.2, 39.2, STONETALON_MOUNTAINS },
						{ 44.8, 45.6, STONETALON_MOUNTAINS },
						{ 48.8, 48.0, STONETALON_MOUNTAINS },
						{ 54.8, 38.0, STONETALON_MOUNTAINS },
					},
					["groups"] = {
						i(5751),	-- Webwing Cloak
						i(5752),	-- Wyvern Tailspike
					},
				}),
				n(5916, {	-- Sentinel Amarassan
					["coords"] = {
						{ 30.2, 14.8, STONETALON_MOUNTAINS },
						{ 33.2, 17.6, STONETALON_MOUNTAINS },
						{ 36.2, 18.8, STONETALON_MOUNTAINS },
						{ 36.6, 14.6, STONETALON_MOUNTAINS },
					},
				}),
				n(5930, {	-- Sister Riven
					["coords"] = {
						{ 36.8, 68.8, STONETALON_MOUNTAINS },
						{ 29.2, 67.0, STONETALON_MOUNTAINS },
						{ 29.0, 73.6, STONETALON_MOUNTAINS },
					},
				}),
				n(5928, {	-- Sorrow Wing
					["coords"] = {
						{ 46.8, 30.4, STONETALON_MOUNTAINS },
						{ 45.8, 38.8, STONETALON_MOUNTAINS },
						{ 49.6, 35.6, STONETALON_MOUNTAINS },
						{ 51.6, 36.8, STONETALON_MOUNTAINS },
						{ 51.4, 40.6, STONETALON_MOUNTAINS },
					},
				}),
				n(5932, {	-- Taskmaster Whipfang
					["coords"] = {
						{ 64.8, 49.2, STONETALON_MOUNTAINS },
						{ 60.4, 51.4, STONETALON_MOUNTAINS },
						{ 63.0, 54.4, STONETALON_MOUNTAINS },
						{ 64.2, 57.0, STONETALON_MOUNTAINS },
					},
				}),
				n(4030, {	-- Vengeful Ancient
					["coords"] = {
						{ 33.4, 63.0, STONETALON_MOUNTAINS },
						{ 30.2, 68.6, STONETALON_MOUNTAINS },
						{ 29.4, 72.6, STONETALON_MOUNTAINS },
						{ 33.0, 73.6, STONETALON_MOUNTAINS },
						{ 37.4, 72.4, STONETALON_MOUNTAINS },
					},
				}),
			}),
			n(REWARDS, {
				["description"] = "These are rewarded from multiple quests in the zone. Refer to the individual item tooltips for more information.",
				["groups"] = {
					i(5738, {	-- Covert Ops Pack
						i(5737),	-- Covert Ops Plans: Alpha & Beta
						i(5694),	-- NG-5 Explosives (Red)
						i(5695),	-- NG-5 Explosives (Blue)
						i(5692),	-- Remote Detonator (Red)
						i(5693),	-- Remote Detonator (Blue)
					}),
				},
			}),
			n(VENDORS, {
				n(9549, {	-- Borand <Bowyer>
					["coord"] = { 45.2, 59.2, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11304, {	-- Fine Longbow
							["isLimited"] = true,
						}),
					},
				}),
				n(4083, {	-- Jeeda <Apprentice Witch Doctor>
					["coord"] = { 47.6, 61.6, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6055),	-- Recipe: Fire Protection Potion
					},
				}),
				n(12043, {	-- Kulwia <Trade Supplies>
					["coord"] = { 45.4, 59.4, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11039),	-- Formula: Enchant Cloak - Minor Agility
						i(11101),	-- Formula: Enchant Bracer - Lesser Strength
					},
				}),
				n(4085, {	-- Nizzik <Venture Armor Salesman>
					["coord"] = { 62.6, 40.2, STONETALON_MOUNTAINS },
					["groups"] = {
						i(4827),	-- Wizard's Belt
						i(4828),	-- Nightwind Belt
						i(4829),	-- Dreamer's Belt
						i(4830),	-- Saber Leggings
						i(4831),	-- Stalking Pants
						i(4832),	-- Mystic Sarong
						i(4833),	-- Glorious Shoulders
						i(4835),	-- Elite Shoulders
					},
				}),
				n(4086, {	-- Veenix <Venture Co. Merchant>
					["coord"] = { 58.2, 51.6, STONETALON_MOUNTAINS },
					["groups"] = {
						i(4817),	-- Orb of Power
						i(4818, {	-- Executioner's Sword
							["isLimited"] = true,
						}),
						i(4836),	-- Fireproof Orb
						i(4837),	-- Strength of Will
						i(4838),	-- Orb of Power
						i(7561),	-- Schematic: Goblin Jumper Cables
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(5664, {	-- Corroded Shrapnel
					["questID"] = 1084,	-- Wounded Ancients
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4029,	-- Blackened Ancient
						4028,	-- Charred Ancient
						4030,	-- Vengeful Ancient
					},
				}),
				i(5585, {	-- Courser Eye
					["questID"] = 1058,	-- Jin'Zil's Forest Magic
					["races"] = HORDE_ONLY,
					["crs"] = {
						4018,	-- Antlered Courser
						4019,	-- Great Courser
					},
				}),
				i(5675, {	-- Crystalized Scales
					["questID"] = 1078,	-- Retrieval for Mauren
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4044,	-- Blackened Basilisk
						4147,	-- Saltstone Basilisk
						4041,	-- Scorched Basilisk
						4042,	-- Singed Basilisk
					},
				}),
				i(5583, {	-- Fey Dragon Scale
					["questID"] = 1058,	-- Jin'Zil's Forest Magic
					["races"] = HORDE_ONLY,
					["crs"] = {
						4016,	-- Fey Dragon
						4066,	-- Nal'taszar
						4017,	-- Wily Fey Dragon
					},
				}),
				i(11151, {	-- Formula: Enchant Gloves - Herbalism
					["crs"] = {
						4029,	-- Blackened Ancient
						4028,	-- Charred Ancient
						4030,	-- Vengeful Ancient
					},
				}),
				i(6840, {	-- Galvanized Horn
					["cr"] = 6167,	-- Chimaera Matriarch
				}),
				i(16312, {	-- Incendrites
					["questID"] = 6393,	-- Elemental War
					["races"] = HORDE_ONLY,
					["crs"] = {
						4038,	-- Burning Destroyer
						4037,	-- Burning Ravager
						4036,	-- Rogue Flame Spirit
					},
				}),
				i(5808, {	-- Pridewing Venom Sac
					["questID"] = 1134,	-- Pridewings of Stonetalon
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4014,	-- Pridewing Consort
						4015,	-- Pridewing Patriarch
						4013,	-- Pridewing Skyhunter
						4012,	-- Pridewing Wyvern
						5928,	-- Sorrow Wing
						4011,	-- Young Pridewing
					},
				}),
				i(16581, {	-- Resonite Crystal
					["questID"] = 6421,	-- Boulderslide Ravine
					["races"] = HORDE_ONLY,
					["cr"] = 11920,	-- Goggeroc
				}),
				i(5659, {	-- Smoldering Embers
					["questID"] = 1083,	-- Enraged Spirits
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4038,	-- Burning Destroyer
						4037,	-- Burning Ravager
						4036,	-- Rogue Flame Spirit
					},
				}),
				i(5582, {	-- Stonetalon Sap
					["questID"] = 1058,	-- Jin'Zil's Forest Magic
					["races"] = HORDE_ONLY,
					["cr"] = 4020,	-- Sap Beast
				}),
				i(5734, {	-- Super Reaper 6000 Blueprints
					["questID"] = 1093,	-- Super Reaper 6000
					["cr"] = 3988,	-- Venture Co. Operator
				}),
				i(5584, {	-- Twilight Whisker
					["questID"] = 1058,	-- Jin'Zil's Forest Magic
					["races"] = HORDE_ONLY,
					["cr"] = 4067,	-- Twilight Runner
				}),
			}),
		},
	}),
}));