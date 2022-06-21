---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(KALIMDOR, {
	m(MULGORE, {
		["lore"] = "A land of windswept mesas and grassy plains, Mulgore is the tauren's ancestral homeland. Centaur often send raiding parties into Mulgore, and the tauren, now with the help of their Horde allies, beat them back. Tauren are naturally a nomadic people, and their tent cities are scattered across the landscape and change with the seasons and the weather.\n\nNow that they are members of the Horde, the tauren have constructed several permanent settlements, including fortified Dalsh-Beran and their capital of Thunder Bluff.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(736, {	-- Explore Mulgore
					-- #if BEFORE WRATH
					["description"] = "Explore Mulgore, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["128:120:473:260"] = 224,	-- Ravaged Caravan
				["128:155:379:242"] = 397,	-- Thunderhorn Water Well
				["128:205:303:307"] = 818,	-- Palemane Rock
				["170:128:458:369"] = 396,	-- Winterhoof Water Well
				["185:128:291:0"] = 398,	-- Wildmane Water Well
				["205:128:395:0"] = 819,	-- Windfury Ridge
				["205:230:502:16"] = 225,	-- Red Rocks
				["210:180:255:214"] = 404,	-- Bael'dun Digsite
				["215:240:428:80"] = 820,	-- The Golden Plains
				["225:235:532:238"] = 360,	-- The Venture Co. Mine
				["256:190:523:356"] = 821,	-- The Rolling Plains
				["256:200:367:303"] = 222,	-- Bloodhoof Village
				["280:240:249:59"] = 1638,	-- Thunder Bluff
				["470:243:270:425"] = 220,	-- Red Cloud Mesa
				--[[
				[221] = 2,                               -- Camp Narache
				[223] = 4,                               -- Stonebull Lake
				[358] = 7,                               -- Brambleblade Ravine
				[399] = 12,                              -- Skyline Ridge
				[471] = 15,                              -- Brave Wind Mesa
				[472] = 16,                              -- Fire Stone Mesa
				[473] = 17,                              -- Mantle Rock
				[637] = 21,                              -- Kodo Rock
				]]--
			})),
			-- #endif
			n(QUESTS, {
				q(752, {	-- A Humble Task (1/2)
					["qg"] = 2981,	-- Chief Hawkwind
					["coord"] = { 44.2, 76, MULGORE },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(753, {	-- A Humble Task (2/2)
					["qg"] = 2991,	-- Greatmother Hawkwind
					["coord"] = { 50.0, 81.0, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4755, 1 },	-- Water Pitcher
					},
					["groups"] = {
						{
							["itemID"] = 4755,	-- Water Pitcher
							["questID"] = 753,	-- A Humble Task (2/2)
							["coord"] = { 50.2, 81.3, MULGORE },
						},
					},
				}),
				q(833, {	-- A Sacred Burial
					["qg"] = 3233,	-- Lorekeeper Raintotem
					["coord"] = { 59.8, 25.6, MULGORE },
					["races"] = HORDE_ONLY,
					["lvl"] = 7,
				}),
				q(1656, {	-- A Task Unfinished
					["qg"] = 6775,	-- Antur Fallow
					["coord"] = { 38.6, 81.6, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 7626, 1 },	-- Bundle of Furs
					},
				}),
				q(781, {	-- Attack on Camp Narache
					["provider"] = { "i", 4851 },	-- Dirt-stained Map
					["coord"] = { 63.3, 82.6, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4850, 1 },	-- Bristleback Attack Plans
					},
					["groups"] = {
						i(4911),	-- Thick Bark Buckler
					},
				}),
				q(3376, {	-- Break Sharptusk!
					["qg"] = 3209,	-- Brave Windfeather
					["coord"] = { 44.8, 76.6, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10459, 1 },	-- Chief Sharptusk Thornmantle's Head
					},
					["lvl"] = 3,
					["groups"] = {
						{
							["itemID"] = 10459,	-- Chief Sharptusk Thornmantle's Head
							["questID"] = 3376,	-- Break Sharptusk!
							["cr"] = 8554,	-- Chief Sharptusk Thornmantle
							["coord"] = { 64.6, 77.8, MULGORE },
						},
						i(10635),	-- Painted Chain Leggings
						i(10636),	-- Nomadic Gloves
					},
				}),
				q(1519, {	-- Call of Earth (1/3)
					["qg"] = 5888,	-- Seer Ravenfeather
					["coord"] = { 44.8, 76.2, MULGORE },
					["timeline"] = { "removed 4.0.3.10000" },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["altQuests"] = {
						1516, -- Call of Earth (1/3 Durotar)
					},
					["cost"] = {
						{ "i", 6634, 2 },	-- Ritual Salve
					},
					["lvl"] = 4,
				}),
				q(1520, {	-- Call of Earth (2/3)
					["qg"] = 5888,	-- Seer Ravenfeather
					["sourceQuest"] = 1519,	-- Call of Earth (1/3)
					["coord"] = { 44.8, 76.2, MULGORE },
					["timeline"] = { "removed 4.0.3.10000" },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["altQuests"] = {
						1517, -- Call of Earth (2/3 Durotar)
					},
					["cost"] = {
						{ "i", 6635, 1 },	-- Earth Sapta
					},
					["lvl"] = 4,
				}),
				q(1521, {	-- Call of Earth (3/3)
					["qg"] = 5891,	-- Minor Manifestation of Earth
					["sourceQuest"] = 1520,	-- Call of Earth (2/3)
					["coord"] = { 53.8, 80.4, MULGORE },
					["timeline"] = { "removed 4.0.3.10000" },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["altQuests"] = {
						1518, -- Call of Earth (3/3 Durotar)
					},
					["cost"] = {
						{ "i", 6656, 1 },	-- Rough Quartz
					},
					["lvl"] = 4,
					["groups"] = {
						recipe(8071),	-- Stoneskin Totem
						i(5175, {	-- Earth Totem
							["description"] = "You must keep this in your bags forever.",
						}),
					},
				}),
				q(743, {	-- Dangers of the Windfury
					["qg"] = 2985,	-- Ruul Eagletalon
					["coord"] = { 47.4, 62.0, MULGORE },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- 0/8 Windfury Talon
							["provider"] = { "i", 4751 },	-- Windfury Talon
							["crs"] = {
								2962,	-- Windfury Harpy
								2963,	-- Windfury Wind Witch
							},
						}),
					},
				}),
				q(746, {	-- Dwarven Digging
					["qg"] = 2993,	-- Baine Bloodhoof
					["coord"] = { 47.5, 60.2, MULGORE },
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
					["groups"] = {
						objective(1, {	-- 0/6 Broken Tools
							["provider"] = { "i", 4703 },	-- Broken Tools
							["cost"] = {
								{ "i", 4702, 1 },	-- Prospector's Pick
							},
							["coord"] = { 34, 46, MULGORE },
							["crs"] = {
								2990,	-- Bael'dun Appraiser
								2989,	-- Bael'dun Digger
							},
						}),
						i(4969),	-- Fortified Bindings
						i(4970),	-- Rough-hewn Kodo Leggings
						i(4702),	-- Prospector's Pick
					},
				}),
				q(1462, {	-- Earth Sapta
					["qg"] = 5888,	-- Seer Ravenfeather
					["sourceQuest"] = 1519,	-- Call of Earth (1/3)
					["coord"] = { 44.8, 76.2, MULGORE },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["altQuests"] = {
						1463, -- Earth Sapta (Durotar)
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 6635, 1 },	-- Earth Sapta
					},
					["lvl"] = 4,
				}),
				q(3092, {	-- Etched Note
					["qg"] = 2980,	-- Grull Hawkwind
					["sourceQuest"] = 747,	-- The Hunt Begins
					["coord"] = { 44.9, 77.1, MULGORE },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 9565, 1 },	-- Etched Note
					},
				}),
				q(775, {	-- Journey into Thunder Bluff
					["qg"] = 2994,	-- Ancestral Spirit
					["sourceQuest"] = 773,	-- Rite of Wisdom
					["coord"] = { 61.4, 21, MULGORE },
					["races"] = HORDE_ONLY,
					["lvl"] = 3,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11129, {	-- Kyle's Gone Missing!
					["qg"] = 23618,	-- Ahab Wheathoof <The Old Rancher>
					["coord"] = { 48.2, 53.4, MULGORE },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(5, 1, 5),
					["groups"] = {
						objective(1, {	-- 0/1 Kyle Fed
							["providers"] = {
								{ "i", 33009 },	-- Tender Strider Meat
								{ "n", 23616 },	-- Kyle the Frenzied
							},
							["coord"] = { 48.6, 62.2, MULGORE },
							["crs"] = {
								2956,	-- Adult Plainstrider
								2957,	-- Elder Plainstrider
								3068,	-- Mazzranache
							},
						}),
					},
				})),
				q(766, {	-- Mazzranache
					["qg"] = 3055,	-- Maur Raincaller
					["coord"] = { 47, 57, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4805, 1 },	-- Flatland Cougar Femur
						{ "i", 4806, 1 },	-- Plainstrider Scale
						{ "i", 4804, 1 },	-- Prairie Wolf Heart
						{ "i", 4807, 1 },	-- Swoop Gizzard
					},
					["lvl"] = 5,
					["groups"] = {
						i(4972),	-- Cliff Runner Boots
						i(4973),	-- Plains Hunter Wristguards
					},
				}),
				q(7663, {	-- New Kodo - Green
					["qg"] = 3685,	-- Harb Clawhoof
					-- #if AFTER CATA
					["coord"] = { 47.6, 58.0, MULGORE },
					-- #else
					["coord"] = { 47.6, 58.4, MULGORE },
					-- #endif
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["timeline"] = { "removed 1.4.0" },
					["cost"] = { { "i", 15292, 1 } },	-- Green Kodo (MOUNT!)
					["sym"] = { { "select", "itemID", 18794, 18795, 18793 } },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
				}),
				q(7662, {	-- New Kodo - Teal
					["qg"] = 3685,	-- Harb Clawhoof
					-- #if AFTER CATA
					["coord"] = { 47.6, 58.0, MULGORE },
					-- #else
					["coord"] = { 47.6, 58.4, MULGORE },
					-- #endif
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["timeline"] = { "removed 1.4.0" },
					["cost"] = { { "i", 15293, 1 } },	-- Teal Kodo (MOUNT!)
					["sym"] = { { "select", "itemID", 18794, 18795, 18793 } },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
				}),
				q(748, {	-- Poison Water
					["qg"] = 2948,	-- Mull Thunderhorn
					["coord"] = { 48.5, 60.4, MULGORE },
					["races"] = { TAUREN },
					["cost"] = {
						{ "i", 4759, 4 },	-- Plainstrider Talon
						{ "i", 4758, 6 },	-- Prairie Wolf Paw
					},
					["lvl"] = 4,
				}),
				q(757, {	-- Rite of Strength
					["qg"] = 2982,	-- Seer Graytongue
					["sourceQuest"] = 755,	-- Rites of the Earthmother (1/3)
					["coord"] = { 42.6, 92, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4770, 12 },	-- Bristleback Belt
					},
					["groups"] = {
						i(1382),	-- Rock Mace
						i(1383),	-- Stone Tomahawk
						i(2137),	-- Whittling Knife
						i(5776),	-- Elder's Cane
						i(5777),	-- Brave's Axe
					},
				}),
				q(767, {	-- Rite of Vision (1/3)
					["qg"] = 2993,	-- Baine Bloodhoof
					["sourceQuest"] = 763,	-- Rites of the Earthmother (2/3)
					["coord"] = { 47.5, 60.2, MULGORE },
					["races"] = HORDE_ONLY,
					["lvl"] = 3,
				}),
				q(771, {	-- Rite of Vision (2/3)
					["qg"] = 3054,	-- Zarlman Two-Moons
					["sourceQuest"] = 767,	-- Rite of Vision (1/3)
					["coord"] = { 47.8, 57.5, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4809, 2 },	-- Ambercorn
						{ "i", 4808, 2 },	-- Well Stone
					},
					["lvl"] = 3,
				}),
				q(772, {	-- Rite of Vision (3/3)
					["qg"] = 3054,	-- Zarlman Two-Moons
					["sourceQuest"] = 771,	-- Rite of Vision (2/3)
					["coord"] = { 47.8, 57.5, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4823, 1 },	-- Water of the Seers
					},
					["lvl"] = 3,
					["groups"] = {
						i(4906),	-- Rainwalker Boots
						i(4958),	-- Sun-beaten Cloak
					},
				}),
				q(773, {	-- Rite of Wisdom
					["qg"] = 2984,	-- Seer Wiserunner
					["sourceQuest"] = 772,	-- Rite of Vision (3/3)
					["coord"] = { 32.8, 36.0, MULGORE },
					["races"] = HORDE_ONLY,
					["lvl"] = 3,
				}),
				q(755, {	-- Rites of the Earthmother (1/3)
					["qg"] = 2981,	-- Chief Hawkwind
					["sourceQuest"] = 753,	-- A Humble Task (2/2)
					["coord"] = { 44.2, 76.1, MULGORE },
					["races"] = HORDE_ONLY,
				}),
				q(763, {	-- Rites of the Earthmother (2/3)
					["qg"] = 2981,	-- Chief Hawkwind
					["sourceQuest"] = 757,	-- Rite of Strength
					["coord"] = { 44.2, 76.1, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4783, 1 },	-- Totem of Hawkwind
					},
				}),
				q(776, {	-- Rites of the Earthmother (3/3)
					["qg"] = 3057,	-- Cairne Bloodhoof <High Chieftain>
					["sourceQuest"] = 775,	-- Journey into Thunder Bluff
					["coord"] = { 59.8, 51.6, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4841, 1 },	-- Horn of Arra'chea
					},
					["lvl"] = 3,
					["groups"] = {
						{
							["itemID"] = 4841,	-- Horn of Arra'chea
							["questID"] = 776,	-- Rites of the Earthmother (3/3)
							["coords"] = {
								{ 48.4, 15.6, MULGORE },
								{ 53.0, 13.2, MULGORE },
								{ 55.0, 22.0, MULGORE },
								{ 56.4, 29.0, MULGORE },
								{ 52.2, 31.2, MULGORE },
								{ 51.0, 25.8, MULGORE },
								{ 49.6, 20.8, MULGORE },
							},
							["cr"] = 3058,	-- Arra'chea
						},
						i(4909),	-- Kodo Hunter's Leggings
					},
				}),
				q(3093, {	-- Rune-Inscribed Note
					["qg"] = 2980,	-- Grull Hawkwind
					["sourceQuest"] = 747,	-- The Hunt Begins
					["coord"] = { 44.9, 77.1, MULGORE },
					["races"] = { TAUREN },
					["classes"] = { SHAMAN },
					["cost"] = {
						{ "i", 9552, 1 },	-- Rune-Inscribed Note
					},
				}),
				q(745, {	-- Sharing the Land
					["qg"] = 2993,	-- Baine Bloodhoof
					["coord"] = { 47.5, 60.2, MULGORE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4960),	-- Flash Pellet
					},
				}),
				q(3091, {	-- Simple Note
					["qg"] = 2980,	-- Grull Hawkwind
					["sourceQuest"] = 747,	-- The Hunt Begins
					["coord"] = { 44.9, 77.1, MULGORE },
					["races"] = { TAUREN },
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 9547, 1 },	-- Simple Note
					},
				}),
				q(765, {	-- Supervisor Fizsprocket
					["qg"] = 2988,	-- Morin Cloudstalker
					["sourceQuest"] = 751,	-- The Ravaged Caravan (2/2)
					["coord"] = { 54.4, 60.4, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4819, 1 },	-- Fizsprocket's Clipboard
					},
					["lvl"] = 5,
					["groups"] = {
						{
							["itemID"] = 4819,	-- Fizsprocket's Clipboard
							["questID"] = 765,	-- Supervisor Fizsprocket
							["coord"] = { 64.8, 43.4, MULGORE },
							["cr"] = 3051,	-- Supervisor Fizsprocket
						},
						i(4974),	-- Compact Fighting Knife
						i(4964),	-- Goblin Smasher
					},
				}),
				q(761, {	-- Swoop Hunting
					["qg"] = 2947,	-- Harken Windtotem
					["coord"] = { 48.7, 59.3, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4769, 8 },	-- Trophy Swoop Quill
					},
					["lvl"] = 4,
				}),
				q(6061, {	-- Taming the Beast (1/3)
					["qg"] = 3065,	-- Yaw Sharpmane <Hunter Trainer>
					["sourceQuests"] = {
						6065,	-- The Hunter's Path
						6066,	-- The Hunter's Path
						6067,	-- The Hunter's Path
					},
					["coord"] = { 47.8, 55.6, MULGORE },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 15914, 1 },	-- Taming Rod
					},
					["lvl"] = 10,
				}),
				q(6087, {	-- Taming the Beast (2/3)
					["qg"] = 3065,	-- Yaw Sharpmane <Hunter Trainer>
					["sourceQuest"] = 6061,	-- Taming the Beast (1/3)
					["coord"] = { 47.8, 55.6, MULGORE },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 15915, 1 },	-- Taming Rod
					},
					["lvl"] = 10,
				}),
				q(6088, {	-- Taming the Beast (3/3)
					["qg"] = 3065,	-- Yaw Sharpmane <Hunter Trainer>
					["sourceQuest"] = 6087,	-- Taming the Beast (2/3)
					["coord"] = { 47.8, 55.6, MULGORE },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 15916, 1 },	-- Taming Rod
					},
					["lvl"] = 10,
					["groups"] = {
						recipe(883),	-- Call Pet
						recipe(2641),	-- Dismiss Pet
						recipe(1515),	-- Tame Beast
					},
				}),
				q(780, {	-- The Battleboars
					["qg"] = 2980,	-- Grull Hawkwind
					["sourceQuest"] = 750,	-- The Hunt Continues
					["coord"] = { 44.9, 77.1, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4849, 8 },	-- Battleboar Flank
						{ "i", 4848, 8 },	-- Battleboar Snout
					},
					["groups"] = {
						i(6059),	-- Nomadic Vest
					},
				}),
				q(770, {	-- The Demon Scarred Cloak
					["provider"] = { "i", 4854 },	-- Demon Scarred Cloak
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
					["groups"] = {
						i(4971),	-- Skorn's Hammer
						i(3079),	-- Skorn's Rifle
					},
				}),
				q(747, {	-- The Hunt Begins
					["qg"] = 2980,	-- Grull Hawkwind
					["coord"] = { 44.9, 77.1, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4740, 7 },	-- Plainstrider Feather
						{ "i", 4739, 7 },	-- Plainstrider Meat
					},
					["groups"] = {
						i(4954),	-- Nomadic Belt
						i(4910),	-- Painted Chain Gloves
					},
				}),
				q(750, {	-- The Hunt Continues
					["qg"] = 2980,	-- Grull Hawkwind
					["sourceQuest"] = 747,	-- The Hunt Begins
					["coord"] = { 44.9, 77.1, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4742, 10 },	-- Mountain Cougar Pelt
					},
					["groups"] = {
						i(4908),	-- Nomadic Bracers
						i(4913),	-- Painted Chain Belt
					},
				}),
				q(6065, {	-- The Hunter's Path
					["qg"] = 3038,	-- Kary Thunderhorn <Hunter Trainer>
					["coord"] = { 58.4, 88.0, THUNDER_BLUFF },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6066, {	-- The Hunter's Path
					["qg"] = 3061,	-- Lanka Farshot <Hunter Trainer>
					["coord"] = { 44.3, 75.7, MULGORE },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6067, {	-- The Hunter's Path
					["qg"] = 3171,	-- Thotar <Hunter Trainer>
					["coord"] = { 51.9, 43.5, DUROTAR },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(861, {	-- The Hunter's Way
					["qg"] = 3052,	-- Skorn Whitecloud
					["coord"] = { 46.76, 60.22, MULGORE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5203, 4 },	-- Flatland Prowler Claw
					},
					["altQuests"] = {
						860,	-- Sergra Darkthorn
						844,	-- Plainstrider Menace
					},
					["lvl"] = 10,
				}),
				q(749, {	-- The Ravaged Caravan (1/2)
					["qg"] = 2988,	-- Morin Cloudstalker
					["coord"] = { 54.4, 60.4, MULGORE },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
				}),
				q(751, {	-- The Ravaged Caravan (2/2)
					["provider"] = { "o", 2908 },	-- Sealed Supply Crate
					["sourceQuest"] = 749,	-- The Ravaged Caravan (1/2)
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4834, 1 },	-- Venture Co. Documents
					},
					["lvl"] = 5,
				}),
				q(764, {	-- The Venture Co.
					["qg"] = 2988,	-- Morin Cloudstalker
					["sourceQuest"] = 751,	-- The Ravaged Caravan (2/2)
					["coord"] = { 54.4, 60.4, MULGORE },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
				}),
				q(758, {	-- Thunderhorn Cleansing
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 5415,	-- Thunderhorn Totem
					["coord"] = { 48.5, 60.4, MULGORE },
					["races"] = { TAUREN },
					["cost"] = {
						{ "i", 5415, 1 },	-- Thunderhorn Cleansing Totem
					},
					["lvl"] = 4,
					["groups"] = {
						{
							["itemID"] = 5415,	-- Thunderhorn Cleansing Totem
							["questID"] = 758,	-- Thunderhorn Cleansing
							["coord"] = { 44, 45, MULGORE },
						},
						i(4963),	-- Thunderhorn Cloak
					},
				}),
				q(756, {	-- Thunderhorn Totem
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 754,	-- Winterhoof Cleansing
					["coord"] = { 48.5, 60.4, MULGORE },
					["races"] = { TAUREN },
					["cost"] = {
						{ "i", 4802, 6 },	-- Cougar Claws
						{ "i", 4801, 6 },	-- Stalker Claws
					},
					["lvl"] = 4,
				}),
				q(6089, {	-- Training the Beast
					["qg"] = 3065,	-- Yaw Sharpmane <Hunter Trainer>
					["sourceQuest"] = 6088,	-- Taming the Beast (3/3)
					["coord"] = { 47.8, 55.6, MULGORE },
					["races"] = { TAUREN },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						recipe(6991),		-- Feed Pet
						recipe(982),		-- Revive Pet
					},
				}),
				q(3094, {	-- Verdant Note
					["qg"] = 2980,	-- Grull Hawkwind
					["sourceQuest"] = 747,	-- The Hunt Begins
					["coord"] = { 44.9, 77.1, MULGORE },
					["races"] = { TAUREN },
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 9581, 1 },	-- Verdant Note
					},
				}),
				q(760, {	-- Wildmane Cleansing
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 759,	-- Wildmane Totem
					["coord"] = { 48.5, 60.4, MULGORE },
					["races"] = { TAUREN },
					["cost"] = {
						{ "i", 5416, 1 },	-- Wildmane Cleansing Totem
					},
					["lvl"] = 4,
					["groups"] = {
						{
							["itemID"] = 5416,	-- Wildmane Cleansing Totem
							["questID"] = 760,	-- Wildmane Cleansing
							["coord"] = { 43, 14, MULGORE },
						},
						i(3443),	-- Ceremonial Tomahawk
						i(4961),	-- Dreamwatcher Staff
					},
				}),
				q(759, {	-- Wildmane Totem
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 758,	-- Thunderhorn Cleansing
					["coord"] = { 48.5, 60.4, MULGORE },
					["races"] = { TAUREN },
					["cost"] = {
						{ "i", 4803, 8 },	-- Prairie Alpha Tooth
					},
					["lvl"] = 4,
				}),
				q(754, {	-- Winterhoof Cleansing
					["qg"] = 2948,	-- Mull Thunderhorn
					["sourceQuest"] = 748,	-- Poison Water
					["coord"] = { 48.5, 60.4, MULGORE },
					["races"] = { TAUREN },
					["cost"] = {
						{ "i", 5411, 1 },	-- Winterhoof Cleansing Totem
					},
					["lvl"] = 4,
					["groups"] = {
						{
							["itemID"] = 5411,	-- Winterhoof Cleansing Totem
							["questID"] = 754,	-- Winterhoof Cleansing
							["coord"] = { 53, 66, MULGORE },
						},
					},
				}),
			}),
			n(RARES, {
				n(5787, {	-- Enforcer Emilgund
					["coord"] = { 40.6, 15.8, MULGORE },
				}),
				n(3056, {	-- Ghost Howl
					["coords"] = {
						{ 50.6, 15.0, MULGORE },
						{ 39.6, 13.8, MULGORE },
						{ 37.4, 17.8, MULGORE },
						{ 32.8, 19.2, MULGORE },
						{ 32.0, 26.0, MULGORE },
						{ 34.0, 29.2, MULGORE },
						{ 37.0, 42.6, MULGORE },
						{ 44.2, 41.2, MULGORE },
					},
					["groups"] = {
						{
							["itemID"] = 4854,	-- Demon Scarred Cloak
							["races"] = HORDE_ONLY,
						},
					},
				}),
				n(3068, {	-- Mazzranache
					["coords"] = {
						{ 34.8, 42.2, MULGORE },
						{ 39.4, 44.2, MULGORE },
						{ 44.4, 42.9, MULGORE },
						{ 51.2, 43.6, MULGORE },
						{ 56.6, 44.0, MULGORE },
					},
					["groups"] = {
						i(4861),	-- Sleek Feathered Tunic
					},
				}),
				n(5785, {	-- Sister Hatelash
					["coords"] = {
						{ 30.6, 21.6, MULGORE },
						{ 36.6, 11.6, MULGORE },
						{ 55.6, 12.0, MULGORE },
					},
					["groups"] = {
						i(4772),	-- Warm Cloak
					},
				}),
				n(5786, {	-- Snagglespear
					["coords"] = {
						{ 48.2, 68.0, MULGORE },
						{ 50.6, 71.4, MULGORE },
						{ 55.2, 72.2, MULGORE },
					},
				}),
				n(5807, {	-- The Rake
					["coord"] = { 52.0, 18.6, MULGORE },
					["groups"] = {
						i(17922),	-- Lionfur Armor
					},
				}),
			}),
			n(VENDORS, {
				n(5940, {	-- Harn Longcast <Fishing Supplies>
					["coord"] = { 47.6, 55.0, MULGORE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6328),	-- Recipe: Longjaw Mud Snapper
					},
				}),
				n(3081, {	-- Wunna Darkmane <Trade Goods>
					["coord"] = { 46.2, 58.2, MULGORE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5484),	-- Recipe: Roasted Kodo Mea
					},
				}),
				n(3685, {	-- Harb Clawhoof <Kodo Mounts>
					-- #if AFTER CATA
					["coord"] = { 47.6, 58.0, MULGORE },
					-- #else
					["coord"] = { 47.6, 58.4, MULGORE },
					-- #endif
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(15277),	-- Gray Kodo (MOUNT!)
						i(15290),	-- Brown Kodo (MOUNT!)
						i(18793),	-- Great White Kodo (MOUNT!)
						i(18794),	-- Great Brown Kodo (MOUNT!)
						i(18795),	-- Great Gray Kodo (MOUNT!)
						i(46100, {	-- White Kodo (MOUNT!)
							["timeline"] = { "added 3.1.0.9684" },
						}),
						i(15292, {	-- Green Kodo (MOUNT!)
							["timeline"] = { "removed 1.4.0" },
						}),
						i(15293, {	-- Teal Kodo (MOUNT!)
							["timeline"] = { "removed 1.4.0" },
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(4752, {	-- Azure Feather
					["questID"] = 744,	-- Preparation for Ceremony
					["races"] = HORDE_ONLY,
					["cr"] = 2964,	-- Windfury Sorceress
				}),
				i(4849, {	-- Battleboar Flank
					["questID"] = 780,	-- The Battleboars
					["races"] = HORDE_ONLY,
					["crs"] = {
						2966,	-- Battleboar
						2954,	-- Bristleback Battleboar
					},
				}),
				i(4848, {	-- Battleboar Snout
					["questID"] = 780,	-- The Battleboars
					["races"] = HORDE_ONLY,
					["crs"] = {
						2966,	-- Battleboar
						2954,	-- Bristleback Battleboar
					},
				}),
				i(4770, {	-- Bristleback Belt
					["questID"] = 757,	-- Rite of Strength
					["races"] = HORDE_ONLY,
					["crs"] = {
						2952,	-- Bristleback Quilboar
						2953,	-- Bristleback Shaman
					},
				}),
				i(4753, {	-- Bronze Feather
					["questID"] = 744,	-- Preparation for Ceremony
					["races"] = HORDE_ONLY,
					["cr"] = 2965,	-- Windfury Matriarch
				}),
				i(4802, {	-- Cougar Claws
					["questID"] = 756,	-- Thunderhorn Totem
					["races"] = { TAUREN },
					["cr"] = 3035,	-- Flatland Cougar
				}),
				i(1388, {	-- Crooked Staff
					["cr"] = 2953,	-- Bristleback Shaman
				}),
				i(1384, {	-- Dull Blade
					["cr"] = 2952,	-- Bristleback Quilboar
				}),
				i(4805, {	-- Flatland Cougar Femur
					["questID"] = 766,	-- Mazzranache
					["races"] = HORDE_ONLY,
					["cr"] = 3035,	-- Flatland Cougar
				}),
				i(5203, {	-- Flatland Prowler Claw
					["questID"] = 861,	-- The Hunter's Way
					["races"] = HORDE_ONLY,
					["cr"] = 3566,	-- Flatland Prowler
					["altQuests"] = {
						860,	-- Sergra Darkthorn
						844,	-- Plainstrider Menace
					},
				}),
				i(4742, {	-- Mountain Cougar Pelt
					["questID"] = 750,	-- The Hunt Continues
					["races"] = HORDE_ONLY,
					["cr"] = 2961,	-- Mountain Cougar
				}),
				i(4740, {	-- Plainstrider Feather
					["questID"] = 747,	-- The Hunt Begins
					["races"] = HORDE_ONLY,
					["cr"] = 2955,	-- Plainstrider
				}),
				i(4739, {	-- Plainstrider Meat
					["questID"] = 747,	-- The Hunt Begins
					["races"] = HORDE_ONLY,
					["cr"] = 2955,	-- Plainstrider
				}),
				i(4806, {	-- Plainstrider Scale
					["questID"] = 766,	-- Mazzranache
					["races"] = HORDE_ONLY,
					["crs"] = {
						2956,	-- Adult Plainstrider
						2957,	-- Elder Plainstrider
						3068,	-- Mazzranache
					},
				}),
				i(4759, {	-- Plainstrider Talon
					["questID"] = 748,	-- Poison Water
					["races"] = { TAUREN },
					["crs"] = {
						2956,	-- Adult Plainstrider
						2957,	-- Elder Plainstrider
						3068,	-- Mazzranache
					},
				}),
				i(4803, {	-- Prairie Alpha Tooth
					["questID"] = 759,	-- Wildmane Totem
					["races"] = { TAUREN },
					["cr"] = 2960,	-- Prairie Wolf Alpha
				}),
				i(4804, {	-- Prairie Wolf Heart
					["questID"] = 766,	-- Mazzranache
					["races"] = HORDE_ONLY,
					["crs"] = {
						2959,	-- Prairie Stalker
						2958,	-- Prairie Wolf
						2960,	-- Prairie Wolf Alpha
					},
				}),
				i(4758, {	-- Prairie Wolf Paw
					["questID"] = 748,	-- Poison Water
					["races"] = { TAUREN },
					["crs"] = {
						2959,	-- Prairie Stalker
						2958,	-- Prairie Wolf
						2960,	-- Prairie Wolf Alpha
					},
				}),
				i(6634, {	-- Ritual Salve
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["cr"] = 2953,	-- Bristleback Shaman
				}),
				i(4951, {	-- Squealer's Belt
					["cr"] = 3229,	-- "Squealer" Thornmantle
				}),
				i(4801, {	-- Stalker Claws
					["questID"] = 756,	-- Thunderhorn Totem
					["races"] = { TAUREN },
					["cr"] = 2959,	-- Prairie Stalker
				}),
				i(4807, {	-- Swoop Gizzard
					["questID"] = 766,	-- Mazzranache
					["races"] = HORDE_ONLY,
					["crs"] = {
						2970,	-- Swoop
						2971,	-- Taloned Swoop
						2969,	-- Wiry Swoop
					},
				}),
				i(4769, {	-- Trophy Swoop Quill
					["questID"] = 761,	-- Swoop Hunting
					["races"] = HORDE_ONLY,
					["crs"] = {
						2970,	-- Swoop
						2969,	-- Wiry Swoop
					},
				}),
			}),
		},
	}),
}));