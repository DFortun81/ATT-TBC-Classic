---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(WESTERN_PLAGUELANDS, {
		["lore"] = "The Western Plaguelands are located in northern Lordaeron, wedged between Tirisfal Glades to the west, the Eastern Plaguelands to the east, and the Alterac Mountains to the south. It is filled with a smoky gray mist and the creatures here are blighted and sick, angrily attacking anyone who wanders too close with surprising ferocity. The land is also home to countless undead who infest the ruins of Andorhal, the four cauldron fields, and Sorrow Hill. The Scarlet Crusade has a significant holding in and around Hearthglen to the north, and the Alliance has settled in the small Chillwind Camp to the south.\n\nLike their eastern counterparts, the Western Plaguelands were once fertile and beautiful but are now gray, blighted and noxious. Undead wander the land and haunt the abandoned towns and farmsteads. The largest Scourge city here is Andorhal, beneath which is an underground complex housing the undead's School of Necromancy. The Scarlet Crusade strikes against the Scourge from Hearthglen. The only place of any sanity in the Western Plaguelands is Uther's Tomb, a consecrated monument to the fallen hero Uther Lightbringer.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(770, {	-- Explore Western Plaguelands
					-- #if BEFORE WRATH
					["description"] = "Explore Western Plaguelands, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["160:125:300:311"] = 199,	-- Felstone Field
				["160:200:566:198"] = 198,	-- The Weeping Cave
				["170:165:600:412"] = 2298,	-- Caer Darrow
				["170:190:451:323"] = 202,	-- The Writhing Haunt
				["180:205:520:250"] = 201,	-- Gahrron's Withering
				["205:340:590:86"] = 2620,	-- Thondroril River
				["220:150:381:265"] = 200,	-- Dalson's Tears
				["220:180:382:164"] = 192,	-- Northridge Lumber Camp
				["225:185:137:293"] = 813,	-- The Bulwark
				["285:230:260:355"] = 193,	-- Ruins of Andorhal
				["300:206:355:462"] = 197,	-- Sorrow Hill
				["340:288:307:16"] = 190,	-- Hearthglen
				["370:270:504:343"] = 2297,	-- Darrowmere Lake
				--[[
				[195] = 4,                               -- School of Necromancy
				[196] = 5,                               -- Uther's Tomb
				[203] = 12,                              -- Mardenholde Keep
				[3197] = 17,                             -- Chillwind Camp
				]]--
			})),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(66, {	-- Chillwind Camp, Western Plaguelands
					["cr"] = 12596,  -- Bibilfaz Featherwhistle <Gryphon Master>
					["coord"] = { 43.0, 85.0, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(5066, {	-- A Call to Arms: The Plaguelands! [Stormwind City]
					["qg"] = 2198,	-- Crier Goodman
					["coord"] = { 54.8, 62.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(5090, {	-- A Call to Arms: The Plaguelands! [Ironforge]
					["qg"] = 10877,	-- Courier Hammerfall
					["coord"] = { 31.6, 67, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(5091, {	-- A Call to Arms: The Plaguelands! [Darnassus]
					["qg"] = 10878,	-- Herald Moonstalker
					["coord"] = { 36.4, 39.8, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(10373, {	-- A Call to Arms: The Plaguelands! [The Exodar]
					["qg"] = 20722,	-- Herald Bran'daan
					["coord"] = { 55.4, 47.2, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				})),
				q(5093, {	-- A Call to Arms: The Plaguelands! [Orgrimmar]
					["qg"] = 10880,	-- Warcaller Gorlach
					["coord"] = { 46.6, 64.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(5094, {	-- A Call to Arms: The Plaguelands! [Undercity]
					["qg"] = 10879,	-- Harbinger Balthazad
					["coord"] = { 64, 44, UNDERCITY },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(5095, {	-- A Call to Arms: The Plaguelands! [Thunder Bluff]
					["qg"] = 10881,	-- Bluff Runner Windstrider
					["coord"] = { 41.4, 54.2, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(10374, {	-- A Call to Arms: The Plaguelands! [Silvermoon City]
					["qg"] = 20724,	-- Herald Amorlin
					["coord"] = { 59.3, 64.7, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				})),
				q(4971, {	-- A Matter of Time
					["qg"] = 10667,	-- Chromie
					["coord"] = { 39.4, 66.8, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12627, 1 },	-- Temporal Displacer
					},
					["lvl"] = 53,
					["groups"] = {
						i(15812),	-- Orchid Amice
						i(15813),	-- Gold Link Belt
					},
				}),
				q(5903, {	-- A Plague Upon Thee
					["qg"] = 11616,	-- Nathaniel Dumah
					["coord"] = { 43.4, 84.8, WESTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 15042, 1 },	-- Empty Termite Jar
						{ "i", 15043, 100 },	-- Plagueland Termites
					},
					["lvl"] = 48,
				}),
				q(5904, {	-- A Plague Upon Thee
					["qg"] = 11616,	-- Nathaniel Dumah
					["sourceQuest"] = 5903,	-- A Plague Upon Thee
					["coord"] = { 43.4, 84.8, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 15044, 1 },	-- Barrel of Plagueland Termites
					},
					["lvl"] = 48,
				}),
				q(6389, {	-- A Plague Upon Thee
					["provider"] = { "o", 177491 },	-- Termite Barrel
					["sourceQuest"] = 5904,	-- A Plague Upon Thee
					["coord"] = { 48.4, 31.9, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
				}),
				q(5901, {	-- A Plague Upon Thee
					["qg"] = 11615,	-- Mickey Levine
					["coord"] = { 83.2, 72.4, TIRISFAL_GLADES },
					["maps"] = { EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15042, 1 },	-- Empty Termite Jar
						{ "i", 15043, 100 },	-- Plagueland Termites
					},
					["lvl"] = 48,
				}),
				q(5902, {	-- A Plague Upon Thee
					["qg"] = 11615,	-- Mickey Levine
					["sourceQuest"] = 5901,	-- A Plague Upon Thee
					["coord"] = { 83.2, 72.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15044, 1 },	-- Barrel of Plagueland Termites
					},
					["lvl"] = 48,
				}),
				q(6390, {	-- A Plague Upon Thee
					["provider"] = { "o", 177491 },	-- Termite Barrel
					["sourceQuest"] = 5902,	-- A Plague Upon Thee
					["coord"] = { 48.4, 31.9, WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
				}),
				q(5153, {	-- A Strange Historian
					["qg"] = 10927,	-- Marlene Redpath
					["sourceQuest"] = 5152,	-- Auntie Marlene
					["coord"] = { 49.2, 78.4, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12894, 1 },	-- Joseph's Wedding Ring
					},
					["lvl"] = 50,
				}),
				q(211, {	-- Alas, Andorhal
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["sourceQuest"] = 5097,	-- All Along the Watchtowers
					["coord"] = { 42.7, 84.1, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 17114, 1 },	-- Araj's Phylactery Shard
					},
					["lvl"] = 50,
					["groups"] = {
						i(17759),	-- Mark of Resolution
					},
				}),
				q(105, {	-- Alas, Andorhal
					["qg"] = 10837,	-- High Executor Derrington
					["sourceQuest"] = 5098,	-- All Along the Watchtowers
					["coord"] = { 83.0, 69.0, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 17114, 1 },	-- Araj's Phylactery Shard
					},
					["lvl"] = 50,
					["groups"] = {
						i(17759),	-- Mark of Resolution
					},
				}),
				q(5097, {	-- All Along the Watchtowers (A)
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["sourceQuest"] = 5092,	-- Clear The Way
					["coord"] = { 42.7, 84.1, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12815, 1 },	-- Beacon Torch
					},
					["lvl"] = 50,
				}),
				q(5098, {	-- All Along the Watchtowers (H)
					["qg"] = 10837,	-- High Executor Derrington
					["sourceQuest"] = 5096,	-- Scarlet Diversions
					["coord"] = { 83.0, 69.0, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12815, 1 },	-- Beacon Torch
					},
					["lvl"] = 50,
				}),
				q(5401, {	-- Argent Dawn Commission
					["qg"] = 10840,	-- Argent Officer Pureheart
					["coord"] = { 43.0, 83.6, WESTERN_PLAGUELANDS },
					["lvl"] = 50,
					["groups"] = {
						i(12846),	-- Argent Dawn Commission
					},
				}),
				q(5405, {	-- Argent Dawn Commission
					["qg"] = 10839,	-- Argent Officer Garush
					["coord"] = { 83.2, 68.4, TIRISFAL_GLADES },
					["lvl"] = 50,
					["groups"] = {
						i(12846),	-- Argent Dawn Commission
					},
				}),
				q(5021, {	-- Better Late Than Never
					["qg"] = 10778,	-- Janice Felstone
					["coord"] = { 38.4, 54.0, WESTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(5023, {	-- Better Late Than Never
					["provider"] = { "o", 175894 },	-- Janice's Parcel
					["sourceQuest"] = 5021,	-- Better Late Than Never
					["coord"] = { 38.8, 55.2, WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12724, 1 },	-- Janice's Parcel
					},
					["lvl"] = 50,
				}),
				q(5022, {	-- Better Late Than Never
					["provider"] = { "o", 175894 },	-- Janice's Parcel
					["sourceQuest"] = 5021,	-- Better Late Than Never
					["coord"] = { 38.8, 55.2, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12724, 1 },	-- Janice's Parcel
					},
					["lvl"] = 50,
				}),
				q(5210, {	-- Brother Carlin
					["qg"] = 10667,	-- Chromie
					["sourceQuests"] = {
						5154,	-- The Annals of Darrowshire
						5168,	-- Heroes of Darrowshire
					},
					["coord"] = { 39.4, 66.8, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13202, 1 },	-- Extended Annals of Darrowshire
					},
					["lvl"] = 50,
				}),
				q(8415, {	-- Chillwind Camp
					["qgs"] = {
						5149,	-- Brandur Ironhammer <Paladin Trainer>
						928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
					},
					["coords"] = {
						{ 23.6, 6.6, IRONFORGE },
						{ 37.6, 32.6, STORMWIND_CITY },
					},
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(5524, {	-- Chromatic Mantle of the Dawn
					["qg"] = 10856,	-- Argent Quartermaster Hasana <The Argent Dawn>
					["sourceQuest"] = 5504,	-- Mantles of the Dawn
					["minReputation"] = { 529, EXALTED },	-- Argent Dawn
					["coord"] = { 83.2, 68.2, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["altQuests"] = {
						5517,	-- Chromatic Mantle of the Dawn
						5521,	-- Chromatic Mantle of the Dawn
						5524,	-- Chromatic Mantle of the Dawn
					},
					["cost"] = {
						{ "i", 12844, 25 },	-- Argent Dawn Valor Token
					},
					["lvl"] = 55,
					["groups"] = {
						i(18182),	-- Chromatic Mantle of the Dawn
					},
				}),
				q(5521, {	-- Chromatic Mantle of the Dawn
					["qg"] = 10857,	-- Argent Quartermaster Lightspark <The Argent Dawn>
					["sourceQuest"] = 5507,	-- Mantles of the Dawn
					["minReputation"] = { 529, EXALTED },	-- Argent Dawn
					["coord"] = { 42.8, 83.8, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["altQuests"] = {
						5517,	-- Chromatic Mantle of the Dawn
						5521,	-- Chromatic Mantle of the Dawn
						5524,	-- Chromatic Mantle of the Dawn
					},
					["cost"] = {
						{ "i", 12844, 25 },	-- Argent Dawn Valor Token
					},
					["lvl"] = 55,
					["groups"] = {
						i(18182),	-- Chromatic Mantle of the Dawn
					},
				}),
				q(5092, {	-- Clear the Way
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["sourceQuests"] = {
						5066,	-- A Call to Arms: The Plaguelands! [Stormwind City]
						5090,	-- A Call to Arms: The Plaguelands! [Ironforge]
						5091,	-- A Call to Arms: The Plaguelands! [Darnassus]
						-- #if AFTER TBC
						10373,	-- A Call to Arms: The Plaguelands! [The Exodar]
						-- #endif
					},
					["coord"] = { 42.7, 84.1, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(5404, {	-- Corruptor's Scourgestones
					["qg"] = 10840,	-- Argent Officer Pureheart
					["coord"] = { 43.0, 83.6, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12843, 1 },	-- Corruptor's Scourgestone
					},
					["lvl"] = 50,
					["groups"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(5406, {	-- Corruptor's Scourgestones
					["qg"] = 10839,	-- Argent Officer Garush
					["coord"] = { 83.2, 68.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12843, 1 },	-- Corruptor's Scourgestone
					},
					["lvl"] = 50,
					["groups"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(4972, {	-- Counting Out Time
					["qg"] = 10667,	-- Chromie
					["sourceQuest"] = 4971,	-- A Matter of Time
					["coord"] = { 39.4, 66.8, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12638, 5 },	-- Andorhal Watch
					},
					["lvl"] = 53,
					["groups"] = {
						i(12650),	-- Attuned Dampener
					},
				}),
				q(4973, {	-- Counting Out Time
					["qg"] = 10667,	-- Chromie
					["sourceQuest"] = 4972,	-- Counting Out Time
					["coord"] = { 39.4, 66.8, WESTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12638, 5 },	-- Andorhal Watch
					},
					["lvl"] = 53,
					["groups"] = {
						i(12650),	-- Attuned Dampener
					},
				}),
				q(5221, {	-- Dalson's Tears Cauldron
					["provider"] = { "o", 177289 },	-- Scourge Cauldron
					["coord"] = { 46.2, 52, WESTERN_PLAGUELANDS },
					["sourceQuests"] = {
						5219,	-- Target: Dalson's Tears
						5231,	-- Target: Dalson's Tears
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13320, 1 },	-- Arcane Quickener
						{ "i", 13356, 5 },	-- Somatic Intensifier
						{ "i", 14047, 4 },	-- Runecloth
					},
					["lvl"] = 50,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(9444, {	-- Defiling Uther's Tomb
					["qg"] = 17099,	-- Mehlar Dawnblade
					["sourceQuest"] = 9443,	-- The So-Called Mark of the Lightbringer
					["coord"] = { 26.6, 58.5, WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Uther's Tomb Defiled
							["provider"] = { "i", 23691 },	-- Corrupted Mark of the Lightbringer
							["coord"] = { 52.1, 83.5, WESTERN_PLAGUELANDS },
						}),
					},
				})),
				q(8414, {	-- Dispelling Evil
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["sourceQuest"] = 8415,	-- Chillwind Point
					["coord"] = { 42.8, 84.0, WESTERN_PLAGUELANDS },
					["cost"] = { { "i", 12840, 20 } },	-- Minion's Scourgestone
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(5218, {	-- Felstone Field Cauldron
					["provider"] = { "o", 176361 },	-- Scourge Cauldron
					["coord"] = { 37.2, 56.9, WESTERN_PLAGUELANDS },
					["sourceQuests"] = {
						5216,	-- Target: Felstone Field
						5229,	-- Target: Felstone Field
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13320, 1 },	-- Arcane Quickener
						{ "i", 13357, 6 },	-- Osseous Agitator
						{ "i", 14047, 4 },	-- Runecloth
					},
					["lvl"] = 50,
				}),
				q(26933, {	-- Foes Before Hoes
					["qg"] = 11055,	-- Shadow Priestess Vandis
					["sourceQuest"] = 26931,	-- Foxes and Hounds
					["coord"] = { 83.3, 69.8, TIRISFAL_GLADES },
					["timeline"] = { "added 4.0.3.13277" },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
				q(26931, {	-- Foxes and Hounds
					["qg"] = 11055,	-- Shadow Priestess Vandis
					["coord"] = { 83.3, 69.8, TIRISFAL_GLADES },
					["timeline"] = { "added 4.0.3.13277" },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						i(62161, {	-- Bullmastiff Vest
							["timeline"] = { "added 4.0.3.13277" },
						}),
						i(62163, {	-- Fox Hunter's Rifle
							["timeline"] = { "added 4.0.3.13277" },
						}),
						i(62162, {	-- Territorial Helm
							["timeline"] = { "added 4.0.3.13277" },
						}),
						i(131622, {	-- Whitetail Fox Tunic
							["timeline"] = { "added 7.0.3.22248" },
						}),
						i(62160, {	-- Vandis' Band
							["timeline"] = { "added 4.0.3.13277" },
						}),
					},
				}),
				q(5227, {	-- Gahrron's Withering Cauldron
					["provider"] = { "o", 176392 },	-- Scourge Cauldron
					["sourceQuests"] = {
						5225,	-- Target: Gahrron's Withering
						5235,	-- Target: Gahrron's Withering
					},
					["coord"] = { 62.5, 58.6, WESTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13320, 1 },	-- Arcane Quickener
						{ "i", 13354, 4 },	-- Ectoplasmic Resonator
						{ "i", 14047, 4 },	-- Runecloth
					},
					["lvl"] = 50,
				}),
				q(4986, {	-- Glyphed Oaken Branch (A)
					["qg"] = 10739,	-- Mulgris Deepriver
					["sourceQuest"] = 4985,	-- The Wildlife Suffers Too
					["coord"] = { 53.6, 64.6, WESTERN_PLAGUELANDS },
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12663, 1 },	-- Glyphed Oaken Branch
					},
					["lvl"] = 51,
					["groups"] = {
						i(15804),	-- Cerise Drape
					},
				}),
				q(4987, {	-- Glyphed Oaken Branch (H)
					["qg"] = 10739,	-- Mulgris Deepriver
					["sourceQuest"] = 4985,	-- The Wildlife Suffers Too
					["coord"] = { 53.6, 64.6, WESTERN_PLAGUELANDS },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12663, 1 },	-- Glyphed Oaken Branch
					},
					["lvl"] = 51,
					["groups"] = {
						i(15804),	-- Cerise Drape
					},
				}),
				q(5050, {	-- Good Luck Charm
					["qgs"] = {
						8403,	-- Jeremiah Payson <Cockroach Vendor>
						3520,	-- Ol' Emma
					},
					["sourceQuests"] = {
						5048,	-- Good Natured Emma
						5049,	-- The Jeremiah Blues
					},
					["coords"] = {
						{ 67.4, 43.8, UNDERCITY },
						{ 52.4, 41.8, STORMWIND_CITY },
					},
					["cost"] = {
						{ "i", 12721, 1 },	-- Good Luck Half-Charm
					},
					["lvl"] = 50,
				}),
				q(8416, {	-- Inert Scourgestones
					["qg"] = 1854,	-- High Priest Thel'danis
					["sourceQuest"] = 8414,	-- Dispelling Evil
					["coord"] = { 52.2, 83.6, WESTERN_PLAGUELANDS },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(5407, {	-- Invader's Scourgestones
					["qg"] = 10839,	-- Argent Officer Garush
					["coord"] = { 83.2, 68.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12841, 10 },	-- Invader's Scourgestones
					},
					["lvl"] = 50,
					["groups"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(5403, {	-- Invader's Scourgestones
					["qg"] = 10840,	-- Argent Officer Pureheart
					["coord"] = { 43.0, 83.6, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12841, 10 },	-- Invader's Scourgestones
					},
					["lvl"] = 50,
					["groups"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(26934, {	-- Latent Disease
					["qg"] = 11057,	-- Apothecary Dithers
					["sourceQuest"] = 26930,	-- After the Crusade
					["coord"] = { 83.2, 69.2, TIRISFAL_GLADES },
					["timeline"] = { "added 4.0.3.13277" },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
				q(5142, {	-- Little Pamela
					["qg"] = 10927,	-- Marlene Redpath
					["coord"] = { 49.2, 78.4, WESTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(5059, {	-- Locked Away
					["provider"] = { "o", 175925 },	-- Outhouse
					["coord"] = { 48.2, 49.6, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12738, 1 },	-- Dalson Outhouse Key
					},
					["altQuests"] = { 5060 },	-- Locked Away
					["lvl"] = 52,
					["groups"] = {
						{
							["itemID"] = 12738,	-- Dalson Outhouse Key
							["questID"] = 5060,	-- Locked Away
							["cr"] = 10816,	-- Wandering Skeleton
							["coord"] = { 48.0, 49.8, WESTERN_PLAGUELANDS },
						},
						{
							["itemID"] = 12739,	-- Dalson Cabinet Key
							["questID"] = 5060,	-- Locked Away
							["cr"] = 10836,	-- Farmer Dalson
							["coord"] = { 48.2, 49.6, WESTERN_PLAGUELANDS },
						},
					},
				}),
				q(5060, {	-- Locked Away
					["provider"] = { "o", 175924 },	-- Locked Cabinet
					["coord"] = { 47.4, 49.7, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12739, 1 },	-- Dalson Cabinet Key
					},
					["lvl"] = 52,
					["groups"] = {
						i(13474),	-- Farmer Dalson's Shotgun
						i(13475),	-- Dalson Family Wedding Ring
					},
				}),
				q(26936, {	-- Lower the Boom
					["qg"] = 10837,	-- High Executor Derrington
					["sourceQuests"] = {
						26930,	-- After the Crusade
						26933,	-- Foes Before Hoes
						26978,	-- Who Needs Cauldrons?
					},
					["coord"] = { 83.3, 69.0, TIRISFAL_GLADES },
					["timeline"] = { "added 4.0.3.13277" },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
				q(5507, {	-- Mantles of the Dawn
					["qg"] = 10857,	-- Argent Quartermaster Lightspark <The Argent Dawn>
					["minReputation"] = { 529, REVERED },	-- Argent Dawn
					["coord"] = { 42.8, 83.8, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12844, 10 },	-- Argent Dawn Valor Token
					},
					["lvl"] = 55,
				}),
				q(5504, {	-- Mantles of the Dawn
					["qg"] = 10856,	-- Argent Quartermaster Hasana <The Argent Dawn>
					["minReputation"] = { 529, REVERED },	-- Argent Dawn
					["coord"] = { 83.2, 68.2, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12844, 10 },	-- Argent Dawn Valor Token
					},
					["lvl"] = 55,
				}),
				q(5408, {	-- Minion's Scourgestones
					["qg"] = 10839,	-- Argent Officer Garush
					["coord"] = { 83.2, 68.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12840, 20 },	-- Minion's Scourgestone
					},
					["lvl"] = 50,
					["groups"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(5402, {	-- Minion's Scourgestones
					["qg"] = 10840,	-- Argent Officer Pureheart
					["coord"] = { 43.0, 83.6, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12840, 20 },	-- Minion's Scourgestone
					},
					["lvl"] = 50,
					["groups"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(5237, {	-- Mission Accomplished! (A)
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["sourceQuest"] = 5226,	-- Return to Chillwind Camp
					["coord"] = { 42.7, 84.1, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						i(15801),	-- Valiant Shortsword
						i(15800),	-- Intrepid Shortsword
						i(15799),	-- Heroic Commendation Medal
					},
				}),
				q(5238, {	-- Mission Accomplished! (H)
					["qg"] = 10837,	-- High Executor Derrington
					["sourceQuest"] = 5236,	-- Return to the Bulwark
					["coord"] = { 83.0, 69.0, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						i(15801),	-- Valiant Shortsword
						i(15800),	-- Intrepid Shortsword
						i(15799),	-- Heroic Commendation Medal
					},
				}),
				q(5058, {	-- Mrs. Dalson's Diary
					["provider"] = { "o", 175926 },	-- Mrs. Dalson's Diary
					["coord"] = { 47.8, 50.7, WESTERN_PLAGUELANDS },
					["lvl"] = 52,
				}),
				q(10590, {	-- Prove Your Hatred
					["qg"] = 17099,	-- Mehlar Dawnblade
					["sourceQuest"] = 9601,	-- To The Bulwark
					["coord"] = { 83.2, 71.2, TIRISFAL_GLADES },
					["timeline"] = { "added 2.0.1", "removed 4.0.3" },
					["cost"] = { { "i", 12840, 20 } },	-- Minion's Scourgestone
					["maps"] = { UNDERCITY },
					["classes"] = { PALADIN },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(5217, {	-- Return to Chillwind Camp
					["provider"] = { "o", 176361 },	-- Scourge Cauldron
					["sourceQuest"] = 5216,	-- Target: Felstone Field
					["coord"] = { 37.2, 56.9, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13190, 1 },	-- Filled Felstone Field Bottle
					},
					["lvl"] = 50,
				}),
				q(5220, {	-- Return to Chillwind Camp
					["provider"] = { "o", 177289 },	-- Scourge Cauldron
					["sourceQuest"] = 5219,	-- Target: Dalson's Tears
					["coord"] = { 46.2, 52, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13191, 1 },	-- Filled Dalson's Tears Bottle
					},
					["lvl"] = 50,
				}),
				q(5223, {	-- Return to Chillwind Camp
					["provider"] = { "o", 176393 },	-- Scourge Cauldron
					["sourceQuest"] = 5222,	-- Target: Writhing Haunt
					["coord"] = { 53, 65.7, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13192, 1 },	-- Filled Writhing Haunt Bottle
					},
					["lvl"] = 50,
				}),
				q(5226, {	-- Return to Chillwind Camp
					["provider"] = { "o", 176392 },	-- Scourge Cauldron
					["sourceQuest"] = 5225,	-- Target: Gahrron's Withering
					["coord"] = { 62.5, 58.6, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13193, 1 },	-- Filled Gahrron's Withering Bottle
					},
					["lvl"] = 50,
				}),
				q(5230, {	-- Return to the Bulwark
					["provider"] = { "o", 176361 },	-- Scourge Cauldron
					["sourceQuest"] = 5229,	-- Target: Felstone Field
					["coord"] = { 37.2, 56.9, WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13190, 1 },	-- Filled Felstone Field Bottle
					},
					["lvl"] = 50,
				}),
				q(5232, {	-- Return to the Bulwark
					["provider"] = { "o", 177289 },	-- Scourge Cauldron
					["sourceQuest"] = 5231, 	-- Target: Dalson's Tears
					["coord"] = { 46.2, 52, WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13191, 1 },	-- Filled Dalson's Tears Bottle
					},
					["lvl"] = 50,
				}),
				q(5234, {	-- Return to the Bulwark
					["provider"] = { "o", 176393 },	-- Scourge Cauldron
					["sourceQuest"] = 5233,	-- Target: Writhing Haunt
					["coord"] = { 53, 65.7, WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13192, 1 },	-- Filled Writhing Haunt Bottle
					},
					["lvl"] = 50,
				}),
				q(5236, {	-- Return to the Bulwark
					["provider"] = { "o", 176392 },	-- Scourge Cauldron
					["sourceQuest"] = 5235,	-- Target: Gahrron's Withering
					["coord"] = { 62.5, 58.6, WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13193, 1 },	-- Filled Gahrron's Withering Bottle
					},
					["lvl"] = 50,
				}),
				q(5096, {	-- Scarlet Diversions
					["qg"] = 10837,	-- High Executor Derrington
					["sourceQuests"] = {
						5093,	-- A Call to Arms: The Plaguelands! [Orgrimmar]
						5094,	-- A Call to Arms: The Plaguelands! [Undercity]
						5095,	-- A Call to Arms: The Plaguelands! [Thunder Bluff]
						-- #if AFTER TBC
						10374,	-- A Call to Arms: The Plaguelands! [Silvermoon City]
						-- #endif
					},
					["coord"] = { 83.0, 69.0, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12814, 1 },	-- Flame in a Bottle
						{ "i", 12807, 1 },	-- Scourge Banner
					},
					["lvl"] = 50,
				}),
				q(26979, {	-- Strange New Faces
					["qg"] = 10837,	-- High Executor Derrington
					["sourceQuest"] = 26936,	-- Lower the Boom
					["coord"] = { 83.3, 69.0, TIRISFAL_GLADES },
					["timeline"] = { "added 4.0.3.13277" },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
				q(5219, {	-- Target: Dalson's Tears
					["qg"] = 11053,	-- High Priestess MacDonnell
					["sourceQuest"] = 5217,	-- Return to Chillwind Camp
					["coord"] = { 43.0, 84.5, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13187, 1 },	-- Empty Dalson's Tears Bottle
						{ "i", 13195, 1 },	-- Dalson's Tears Cauldron Key
					},
					["lvl"] = 50,
				}),
				q(5231, {	-- Target: Dalson's Tears
					["qg"] = 11055,	-- Shadow Priestess Vandis
					["sourceQuest"] = 5230,	-- Return to the Bulwark
					["coord"] = { 83.0, 71.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13187, 1 },	-- Empty Dalson's Tears Bottle
						{ "i", 13195, 1 },	-- Dalson's Tears Cauldron Key
					},
					["lvl"] = 50,
				}),
				q(5216, {	-- Target: Felstone Field
					["qg"] = 11053,	-- High Priestess MacDonnell
					["sourceQuest"] = 5215,	-- The Scourge Cauldrons
					["coord"] = { 43.0, 84.5, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13186, 1 },	-- Empty Felstone Field Bottle
						{ "i", 13194, 1 },	-- Felstone Field Cauldron Key
					},
					["lvl"] = 50,
				}),
				q(5229, {	-- Target: Felstone Field
					["qg"] = 11055,	-- Shadow Priestess Vandis
					["sourceQuest"] = 5228,	-- The Scourge Cauldrons
					["coord"] = { 83.0, 71.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13186, 1 },	-- Empty Felstone Field Bottle
						{ "i", 13194, 1 },	-- Felstone Field Cauldron Key
					},
					["lvl"] = 50,
				}),
				q(5225, {	-- Target: Gahrron's Withering
					["qg"] = 11053,	-- High Priestess MacDonnell
					["sourceQuest"] = 5223,	-- Return to Chillwind Camp
					["coord"] = { 43.0, 84.5, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13189, 1 },	-- Empty Gahrron's Withering Bottle
						{ "i", 13196, 1 },	-- Gahrron's Withering Cauldron Key
					},
					["lvl"] = 50,
				}),
				q(5235, {	-- Target: Gahrron's Withering
					["qg"] = 11055,	-- Shadow Priestess Vandis
					["sourceQuest"] = 5234,	-- Return to the Bulwark
					["coord"] = { 83.0, 71.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13189, 1 },	-- Empty Gahrron's Withering Bottle
						{ "i", 13196, 1 },	-- Gahrron's Withering Cauldron Key
					},
					["lvl"] = 50,
				}),
				q(5222, {	-- Target: Writhing Haunt
					["qg"] = 11053,	-- High Priestess MacDonnell
					["sourceQuest"] = 5220,	-- Return to Chillwind Camp
					["coord"] = { 43.0, 84.5, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13188, 1 },	-- Empty Writhing Haunt Bottle
						{ "i", 13197, 1 },	-- Writhing Haunt Cauldron Key
					},
					["lvl"] = 50,
				}),
				q(5233, {	-- Target: Writhing Haunt
					["qg"] = 11055,	-- Shadow Priestess Vandis
					["sourceQuest"] = 5232,	-- Return to the Bulwark
					["coord"] = { 83.0, 71.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13188, 1 },	-- Empty Writhing Haunt Bottle
						{ "i", 13197, 1 },	-- Writhing Haunt Cauldron Key
					},
					["lvl"] = 50,
				}),
				q(5154, {	-- The Annals of Darrowshire
					["qg"] = 10667,	-- Chromie
					["sourceQuest"] = 5153,	-- A Strange Historian
					["coord"] = { 39.4, 66.8, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12900, 1 },	-- Annals of Darrowshire
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 12900,	-- Annals of Darrowshire
							["questID"] = 5154,	-- The Annals of Darrowshire
							["description"] = "The Musty Tome you are looking for has a faint X on its binding. If none of the books have this marking, you may have to interact with a few to despawn them.\n\nWARNING: The ghosts that spawn can be a pain.",
							["coord"] = { 43.4, 69.7, WESTERN_PLAGUELANDS },
						},
					},
				}),
				q(6186, {	-- The Blightcaller Cometh
					["qg"] = 12425,	-- Flint Shadowmore <SI:7>
					["sourceQuest"] = 6185,	-- The Eastern Plagues
					["coord"] = { 43.6, 84.5, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				q(6185, {	-- The Eastern Plagues
					["qg"] = 12425,	-- Flint Shadowmore <SI:7>
					["sourceQuest"] = 6184,	-- Flint Shadowmore
					["coord"] = { 43.6, 84.5, WESTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 16001, 1 },	-- SI:7 Insignia (Fredo)
						{ "i", 16003, 1 },	-- SI:7 Insignia (Rutger)
						{ "i", 16002, 1 },	-- SI:7 Insignia (Turyen)
					},
					["lvl"] = 56,
					["groups"] = {
						{
							["itemID"] = 16001,	-- SI:7 Insignia (Fredo)
							["questID"] = 6185,	-- The Eastern Plagues
							["coord"] = { 27.3, 75.0, EASTERN_PLAGUELANDS },
						},
						{
							["itemID"] = 16003,	-- SI:7 Insignia (Rutger)
							["questID"] = 6185,	-- The Eastern Plagues
							["coord"] = { 28.8, 79.8, EASTERN_PLAGUELANDS },
						},
						{
							["itemID"] = 16002,	-- SI:7 Insignia (Turyen)
							["questID"] = 6185,	-- The Eastern Plagues
							["coord"] = { 28.8, 74.9, EASTERN_PLAGUELANDS },
						},
					},
				}),
				q(5049, {	-- The Jeremiah Blues
					["qg"] = 10781,	-- Royal Overseer Bauhaus <Undercity Census>
					["sourceQuest"] = 5023,	-- Better Late Than Never
					["coord"] = { 69.6, 43.6, UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12724, 1 },	-- Janice's Parcel
					},
					["lvl"] = 50,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(9474, {	-- The Mark of the Lightbringer
					["qg"] = 17238,	-- Anchorite Truuen
					["coord"] = { 42.9, 84.5, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Mark of the Lightbringer
							["provider"] = { "i", 23661 },	-- Mark of the Lightbringer
							["coord"] = { 53.8, 24.4, WESTERN_PLAGUELANDS },
						}),
					},
				})),
				q(5215, {	-- The Scourge Cauldrons
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["sourceQuest"] = 5092,	-- Clear the Way
					["coord"] = { 42.7, 84.1, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(5228, {	-- The Scourge Cauldrons
					["qg"] = 10837,	-- High Executor Derrington
					["sourceQuest"] = 5096,	-- Scarlet Diversions
					["coord"] = { 83.0, 69.0, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(9443, {	-- The So-Called Mark of the Lightbringer
					["qg"] = 17099,	-- Mehlar Dawnblade
					["coord"] = { 26.6, 58.5, WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Mark of the Lightbringer
							["provider"] = { "i", 23661 },	-- Mark of the Lightbringer
							["coord"] = { 53.8, 24.4, WESTERN_PLAGUELANDS },
						}),
					},
				})),
				q(4984, {	-- The Wildlife Suffers Too
					["qg"] = 10739,	-- Mulgris Deepriver
					["coord"] = { 53.6, 64.6, WESTERN_PLAGUELANDS },
					["lvl"] = 51,
				}),
				q(4985, {	-- The Wildlife Suffers Too
					["qg"] = 10739,	-- Mulgris Deepriver
					["sourceQuest"] = 4984,	-- The Wildlife Suffers Too
					["coord"] = { 53.6, 64.6, WESTERN_PLAGUELANDS },
					["lvl"] = 51,
				}),
				q(9601, {	-- To The Bulwark
					["qgs"] = {
						16681,	-- Champion Bachi <Paladin Trainer>
						20406,	-- Champion Cyssa Dawnrose <Paladin Trainer>
					},
					["coords"] = {
						{ 92.0, 37.6, SILVERMOON_CITY },
						{ 57.8, 90.8, UNDERCITY },
					},
					["timeline"] = { "added 2.0.1", "removed 4.0.3" },
					["classes"] = { PALADIN },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(9446, {	-- Tomb of the Lightbringer
					["qg"] = 17238,	-- Anchorite Truuen
					["sourceQuest"] = 9474,	-- The Mark of the Lightbringer
					["coord"] = { 42.9, 84.5, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 55,
				})),
				q(5051, {	-- Two Halves Become One
					["qg"] = 10778,	-- Janice Felstone
					["sourceQuest"] = 5050,	-- Good Luck Charm
					["coord"] = { 38.4, 54.0, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12723, 1 },	-- Good Luck Charm
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 12722,	-- Good Luck Other-Half-Charm
							["cr"] = 10801,	-- Jabbering Ghoul
							["coord"] = { 38.6, 56.2, WESTERN_PLAGUELANDS },
							["cost"] = {
								{ "i", 12721, 1 },	-- Good Luck Half-Charm
							},
							["groups"] = {
								{
									["itemID"] = 12723,	-- Good Luck Charm
									["questID"] = 5051,	-- Two Halves Become One
								},
							},
						},
						i(13473),	-- Felstone Good Luck Charm
					},
				}),
				q(6004, {	-- Unfinished Business
					["qg"] = 11610,	-- Kirsta Deepshadow
					["coord"] = { 52, 28, WESTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(6023, {	-- Unfinished Business
					["qg"] = 11610,	-- Kirsta Deepshadow
					["sourceQuest"] = 6004,	-- Unfinished Business
					["coord"] = { 52, 28, WESTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(6025, {	-- Unfinished Business
					["qg"] = 11610,	-- Kirsta Deepshadow
					["sourceQuest"] = 6023,	-- Unfinished Business
					["coord"] = { 52, 28, WESTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(10592, {	-- Wisdom of the Banshee Queen
					["providers"] = {
						{ "n", 17099 },	-- Mehlar Dawnblade
						{ "i", 30700 },	-- Scourgestone Fragments
					},
					["sourceQuest"] = 10590,	-- Prove Your Hatred
					["coord"] = { 83.2, 71.2, TIRISFAL_GLADES },
					["timeline"] = { "added 2.0.1", "removed 4.0.3" },
					["maps"] = { UNDERCITY },
					["classes"] = { PALADIN },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(5224, {	-- Writhing Haunt Cauldron
					["provider"] = { "o", 176393 },	-- Scourge Cauldron
					["coord"] = { 53, 65.7, WESTERN_PLAGUELANDS },
					["sourceQuests"] = {
						5222,	-- Target: Writhing Haunt
						5233,	-- Target: Writhing Haunt
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13320, 1 },	-- Arcane Quickener
						{ "i", 13356, 5 },	-- Somatic Intensifier
						{ "i", 14047, 4 },	-- Runecloth
					},
					["lvl"] = 50,
				}),
			}),
			n(RARES, {
				i(12843, {	-- Corruptor's Scourgestone
					["description"] = "Can drop from any Undead rare mob or boss in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				n(1843, {  -- Foreman Jerris
					["coords"] = {
						{ 45.6, 9.4, WESTERN_PLAGUELANDS },
						{ 47.6, 13.8, WESTERN_PLAGUELANDS },
						{ 44.6, 19.0, WESTERN_PLAGUELANDS },
						{ 48.0, 21.6, WESTERN_PLAGUELANDS },
					},
				}),
				n(1844, {  -- Foreman Marcrid
					["coords"] = {
						{ 44.4, 34.4, WESTERN_PLAGUELANDS },
						{ 48.4, 34.6, WESTERN_PLAGUELANDS },
					},
					["groups"] = {
						i(12836),	-- Plans: Frostguard
					},
				}),
				n(1847, {  -- Foulmane
					["coords"] = {
						{ 44.0, 53.0, WESTERN_PLAGUELANDS },
						{ 46.2, 48.6, WESTERN_PLAGUELANDS },
						{ 48.0, 54.6, WESTERN_PLAGUELANDS },
						{ 46.2, 54.2, WESTERN_PLAGUELANDS },
					},
				}),
				n(1848, {  -- Lord Maldazzar
					["coords"] = {
						{ 48.8, 80.4, WESTERN_PLAGUELANDS },
						{ 50.2, 75.6, WESTERN_PLAGUELANDS },
						{ 54.5, 80.8, WESTERN_PLAGUELANDS },
						{ 50.4, 80.2, WESTERN_PLAGUELANDS },
					},
				}),
				n(1850, {  -- Putridius
					["coords"] = {
						{ 44.8, 62.8, WESTERN_PLAGUELANDS },
						{ 43.6, 67.6, WESTERN_PLAGUELANDS },
						{ 39.8, 68.0, WESTERN_PLAGUELANDS },
						{ 39.6, 74.2, WESTERN_PLAGUELANDS },
						{ 45.6, 72.8, WESTERN_PLAGUELANDS },
						{ 49.2, 70.6, WESTERN_PLAGUELANDS },
					},
				}),
				n(1841, {  -- Scarlet Executioner
					["coords"] = {
						{ 45.2, 17.2, WESTERN_PLAGUELANDS },
						{ 45.8, 21.0, WESTERN_PLAGUELANDS },
						{ 44.2, 18.6, WESTERN_PLAGUELANDS },
					},
				}),
				n(1839, {  -- Scarlet High Clerist
					["coord"] = { 55.0, 23.6, WESTERN_PLAGUELANDS },
				}),
				n(1838, {  -- Scarlet Interrogator
					["coords"] = {
						{ 43.6, 16.6, WESTERN_PLAGUELANDS },
						{ 44.2, 18.6, WESTERN_PLAGUELANDS },
						{ 47.6, 13.8, WESTERN_PLAGUELANDS },
						{ 47.8, 18.8, WESTERN_PLAGUELANDS },
					},
				}),
				n(1837, {  -- Scarlet Judge
					["coords"] = {
						{ 43.2, 10.6, WESTERN_PLAGUELANDS },
						{ 43.2, 16.6, WESTERN_PLAGUELANDS },
						{ 45.8, 20.8, WESTERN_PLAGUELANDS },
						{ 41.0, 14.6, WESTERN_PLAGUELANDS },
					},
				}),
				n(1885, {  -- Scarlet Smith
					["coords"] = {
						{ 43.0, 12.8, WESTERN_PLAGUELANDS },
						{ 46.8, 12.0, WESTERN_PLAGUELANDS },
						{ 47.6, 13.6, WESTERN_PLAGUELANDS },
						{ 47.0, 17.8, WESTERN_PLAGUELANDS },
					},
					["groups"] = {
						i(12719),	-- Plans: Runic Plate Leggings
					},
				}),
				n(1851, {  -- The Husk
					["coords"] = {
						{ 66.6, 42.6, WESTERN_PLAGUELANDS },
						{ 65.0, 38.6, WESTERN_PLAGUELANDS },
						{ 61.8, 37.6, WESTERN_PLAGUELANDS },
						{ 64.2, 33.4, WESTERN_PLAGUELANDS },
					},
				}),
			}),
			n(VENDORS, {
				n(11056, {	-- Alchemist Arbington
					["coord"] = { 42.6, 83.8, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(13320),	-- Arcane Quickener
						i(13370),	-- Vitreous Focuser
					},
				}),
				n(10857, {	-- Argent Quartermaster Lightspark <The Argent Dawn>
					["coord"] = { 42.8, 83.7, WESTERN_PLAGUELANDS },
					["groups"] = {
						i(22014, {	-- Hallowed Brazier
							["timeline"] = { "removed 4.0.3" },
							["minReputation"] = { 529, HONORED },	-- Argent Dawn
							["cost"] = { { "g", 1500000 } },	-- 150g
						}),
						i(18182, {	-- Chromatic Mantle of the Dawn
							["description"] = "You must have first completed 'Chromatic Mantle of the Dawn' in order to purchase this.",
							["sourceQuests"] = {
								5517,	-- Chromatic Mantle of the Dawn
								5521,	-- Chromatic Mantle of the Dawn
								5524,	-- Chromatic Mantle of the Dawn
							},
						}),
						i(18171, {	-- Arcane Mantle of the Dawn
							["description"] = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18169, {	-- Flame Mantle of the Dawn
							["description"] = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18170, {	-- Frost Mantle of the Dawn
							["description"] = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18172, {	-- Nature Mantle of the Dawn
							["description"] = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18173, {	-- Shadow Mantle of the Dawn
							["description"] = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(19447), 	-- Formula: Enchant Bracer - Healing Power (RECIPE!)
						i(19446), 	-- Formula: Enchant Bracer - Argent Versatility / CLASSIC: Formula: Enchant Bracer - Mana Regeneration (RECIPE!)
						i(19442), 	-- Formula: Powerful Anti-Venom
						i(19216), 	-- Pattern: Argent Boots
						i(19217), 	-- Pattern: Argent Shoulders
						i(19328), 	-- Pattern: Dawn Treaders
						i(19329), 	-- Pattern: Golden Mantle of the Dawn
						i(19203), 	-- Plans: Girdle of the Dawn
						i(19205), 	-- Plans: Gloves of the Dawn
						i(13482),	-- Recipe: Transmute Air to Fire
					},
				}),
				n(10667, {	-- Chromie
					["coord"] = { 39.4, 66.8, WESTERN_PLAGUELANDS },
					["groups"] = {
						applyclassicphase(PHASE_SIX_CLASSICERA, i(184937, {	-- Chronoboon Displacer
							["sourceQuest"] = 4972,	-- Counting Out Time
							["f"] = 55,	-- Consumable
							["groups"] = {
								i(184938, {	-- Supercharged Chronoboon Displacer
									["f"] = 55,	-- Consumable
								}),
							},
						})),
					},
				}),
				n(12942, {	-- Leonard Porter <Leatherworking Supplies>
					["coord"] = { 43.0, 84.3, WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(15725),	-- Pattern: Wicked Leather Gauntlets
						i(15741),	-- Pattern: Stormshroud Pants
					},
				}),
				n(11278, {	-- Magnus Frostwake
					["coord"] = { 68.0, 77.6, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13544, 1 },	-- Spectral Essence
					},
					["groups"] = {
						i(8030),	-- Plans: Ebon Shiv
						i(12823),	-- Plans: Huge Thorium Battleaxe
						i(12819),	-- Plans: Ornate Thorium Handaxe
						i(12703),	-- Plans: Storm Gauntlets
						i(13501),	-- Recipe: Major Mana Potion
						i(13485),	-- Recipe: Transmute Water to Air
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(17114, {	-- Araj's Phylactery Shard
					["allianceQuestID"] = 211,	-- Alas, Andorhal
					["hordeQuestID"] = 105,	-- Alas, Andorhal
					["cr"] = 1852,	-- Araj the Summoner
					["coord"] = { 45.6, 69.2, WESTERN_PLAGUELANDS },
				}),
				i(14610, {  -- Araj's Scarab
					["allianceQuestID"] = 5803,	-- Araj's Scarab (A)
					["hordeQuestID"] = 5804,	-- Araj's Scarab (H)
					["cr"] = 1852,	-- Araj the Summoner
					["coord"] = { 45.6, 69.2, WESTERN_PLAGUELANDS },
				}),
				i(12938, {	-- Blood of Heroes
					["description"] = "This item can be found sporatically on the ground in the Plaguelands.",
					["cr"] = 10996,	-- Fallen Hero
					["coords"] = {
						-- Hearthglen
						{ 54.9, 27.1, WESTERN_PLAGUELANDS },
						{ 46.8, 34.5, WESTERN_PLAGUELANDS },
						{ 49.8, 33.3, WESTERN_PLAGUELANDS },
						{ 56.7, 34.7, WESTERN_PLAGUELANDS },
						
						-- Spooky Cave
						{ 66.5, 42.2, WESTERN_PLAGUELANDS },
						{ 68.0, 44.7, WESTERN_PLAGUELANDS },
						{ 64.0, 48.7, WESTERN_PLAGUELANDS },
						{ 68.7, 49.2, WESTERN_PLAGUELANDS },
						{ 67.0, 53.8, WESTERN_PLAGUELANDS },
						
						-- Gahrron's Withering
						{ 64.1, 57.9, WESTERN_PLAGUELANDS },
						{ 63.2, 59.2, WESTERN_PLAGUELANDS },
						{ 62.0, 58.5, WESTERN_PLAGUELANDS },
						
						-- Felstone Field
						{ 36.5, 53.6, WESTERN_PLAGUELANDS },
						{ 35.9, 57.5, WESTERN_PLAGUELANDS },
						{ 38.2, 56.3, WESTERN_PLAGUELANDS },
						{ 40.8, 57.5, WESTERN_PLAGUELANDS },
						{ 42.2, 54.8, WESTERN_PLAGUELANDS },
						
						-- Dalson's Tears
						{ 44.6, 53.5, WESTERN_PLAGUELANDS },
						{ 45.9, 51.1, WESTERN_PLAGUELANDS },
						{ 47.9, 53.1, WESTERN_PLAGUELANDS },
						{ 52.3, 55.0, WESTERN_PLAGUELANDS },
						{ 47.0, 69.9, WESTERN_PLAGUELANDS },
						
						-- The Writhing Haunt
						{ 53.5, 63.5, WESTERN_PLAGUELANDS },
						{ 52.3, 66.3, WESTERN_PLAGUELANDS },
						{ 53.3, 66.2, WESTERN_PLAGUELANDS },
						{ 55.3, 59.6, WESTERN_PLAGUELANDS },
						{ 57.8, 66.6, WESTERN_PLAGUELANDS },
						
						-- Ruins of Andorhal
						{ 41.5, 62.1, WESTERN_PLAGUELANDS },
						{ 42.8, 64.2, WESTERN_PLAGUELANDS },
						{ 44.2, 65.0, WESTERN_PLAGUELANDS },
						{ 39.7, 69.6, WESTERN_PLAGUELANDS },
						{ 40.6, 73.1, WESTERN_PLAGUELANDS },
						{ 43.3, 68.3, WESTERN_PLAGUELANDS },
						{ 43.7, 70.5, WESTERN_PLAGUELANDS },
						{ 44.5, 71.7, WESTERN_PLAGUELANDS },
						{ 45.9, 71.4, WESTERN_PLAGUELANDS },
						{ 47.6, 70.0, WESTERN_PLAGUELANDS },
						{ 47.0, 67.1, WESTERN_PLAGUELANDS },
						{ 49.4, 68.1, WESTERN_PLAGUELANDS },
						
						-- Caer Darrow
						{ 63.6, 75.5, WESTERN_PLAGUELANDS },
						{ 64.9, 74.5, WESTERN_PLAGUELANDS },
						{ 65.8, 76.8, WESTERN_PLAGUELANDS },
						{ 68.9, 73.8, WESTERN_PLAGUELANDS },
						{ 69.5, 78.6, WESTERN_PLAGUELANDS },
						{ 69.5, 78.6, WESTERN_PLAGUELANDS },
						{ 68.3, 81.6, WESTERN_PLAGUELANDS },
						{ 68.7, 79.1, WESTERN_PLAGUELANDS },
						{ 67.8, 84.6, WESTERN_PLAGUELANDS },
					},
				}),
				applyclassicphase(PHASE_SIX, i(22526)),	-- Bone Fragments
				i(12841, {	-- Invader's Scourgestone
					["description"] = "Can drop from any Undead mobs in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(12840, {	-- Minion's Scourgestone
					["description"] = "Can drop from weak Undead mobs in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(13195, {  -- Dalson's Tears Cauldron Key
					["allianceQuestID"] = 5219,	-- Target: Dalson's Tears
					["hordeQuestID"] = 5231,	-- Target: Dalson's Tears
					["cr"] = 11077,	-- Cauldron Lord Malvinious
					["coord"] = { 46.2, 52.6, WESTERN_PLAGUELANDS },
				}),
				i(13357, {	-- Ectoplasmic Resonator
					["description"] = "These only drop from ghostly mobs in Western Plaguelands while you have Vitreous Focuser in your inventory.",
					["cost"] = {
						{ "i", 13370, 1 },	-- Vitreous Focuser
					},
				}),
				i(13194, {  -- Felstone Field Cauldron Key
					["allianceQuestID"] = 5216,	-- Target: Felstone Field
					["hordeQuestID"] = 5229,	-- Target: Felstone Field
					["cr"] = 11075,	-- Cauldron Lord Bilemaw
					["coord"] = { 37.0, 57.6, WESTERN_PLAGUELANDS },
				}),
				i(16252, {	-- Formula: Enchant Weapon - Crusader
					["cr"] = 4494,	-- Scarlet Spellbinder
				}),
				i(13196, {  -- Gahrron's Withering Cauldron Key
					["allianceQuestID"] = 5225,	-- Target: Gahrron's Withering
					["hordeQuestID"] = 5235,	-- Target: Gahrron's Withering
					["cr"] = 11078,	-- Cauldron Lord Soulwrath
					["coord"] = { 62.6, 59.0, WESTERN_PLAGUELANDS },
				}),
				i(20768, {	-- Oozing Bag
					["crs"] = {
						1808,	-- Devouring Ooze
						12387,	-- Large Vile Slime
						1806,	-- Vile Slime
					},
					["groups"] = {
						i(20769),	-- Disgusting Oozeling
					},
				}),
				i(13357, {	-- Osseous Agitator
					["description"] = "These only drop from skeletal mobs in Western Plaguelands while you have Vitreous Focuser in your inventory.",
					["cost"] = {
						{ "i", 13370, 1 },	-- Vitreous Focuser
					},
				}),
				i(15771, {	-- Pattern: Living Breastplate
					["cr"] = 1813,	-- Decaying Horror
				}),
				i(12707, {	-- Plans: Runic Plate Boots
					["cr"] = 1836,	-- Scarlet Cavalier
				}),
				i(9296, {	-- Recipe: Gift of Arthas
					["crs"] = {
						1783,	-- Skeletal Flayer
						1791,	-- Slavering Ghoul
					},
				}),
				i(13496, {	-- Recipe: Greater Nature Protection Potion
					["crs"] = {
						1813,	-- Decaying Horror
						1812,	-- Rotting Behemoth
					},
				}),
				i(12811, {	-- Righteous Orb
					["description"] = "Can drop from any Scarlet Crusade member in Stratholme in addition to the Scarlet Oracle and the Crimson Elite in the Plaguelands.",
					["cr"] = 12128,	-- Crimson Elite
				}),
				i(14619, {  -- Skeletal Fragments
					["allianceQuestID"] = 5537,	-- Skeletal Fragments
					["hordeQuestID"] = 964,	-- Skeletal Fragments
					["crs"] = {
						1789,	-- Skeletal Acolyte
						1787,	-- Skeletal Executioner
						1783,	-- Skeletal Flayer
						1784,	-- Skeletal Sorcerer
						1785,	-- Skeletal Terror
						1788,	-- Skeletal Warlord
					},
				}),
				i(13356, {	-- Somatic Intensifier
					["description"] = "These only drop from zombies in Western Plaguelands while you have Vitreous Focuser in your inventory.",
					["cost"] = {
						{ "i", 13370, 1 },	-- Vitreous Focuser
					},
				}),
				i(13197, {  -- Writhing Haunt Cauldron Key
					["allianceQuestID"] = 5222,	-- Target: Writhing Haunt
					["hordeQuestID"] = 5233,	-- Target: Writhing Haunt
					["cr"] = 11076,	-- Cauldron Lord Razarch
					["coord"] = { 52.8, 66.0, WESTERN_PLAGUELANDS },
				}),
			}),
		},
	}),
}));