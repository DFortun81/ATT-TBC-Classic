---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(DUN_MOROGH, {
		["lore"] = "Dun Morogh is a snowy region located between the magma-strewn wasteland of the Searing Gorge to the south, the gentle ridges of Loch Modan to the east, and the swampy Wetlands to the north. Dun Morogh is home to both the gnomes of Gnomeregan and the Ironforge dwarves and is the location of the major city of Ironforge. The Khaz Modan mountains surround Dun Morogh on all sides, making it accessible only by certain passes that are currently watched over by dwarven troops.\n\nThe center of dwarven culture and ingenuity, Dun Morogh holds the capital of Ironforge. The region is snow-swept and forested, with gray, craggy mountains and slinking wolves. Troggs recently overran Gnomeregan, the gnomes’ former capital, and drove its citizens to Ironforge. Frostmane trolls menace dwarven patrols. Several villages and towns dot the landscape, and though the trade routes can be perilous, dwarven mountaineers and warriors keep their settlements safe.",
		["groups"] = {
			m(COLDRIDGE_VALLEY, {
				["lore"] = "Coldridge Valley is the starting area for young dwarven recruits, and contains the base camp of Anvilmar. It is located in the southwestern corner of Dun Morogh, and is linked to the greater area by Coldridge Pass to the northeast.",
				["icon"] = "Interface\\Icons\\Achievement_Character_Dwarf_Male",
				["groups"] = {
					n(QUESTS, {
						q(170, {	-- A New Threat
							["qg"] = 713,	-- Balir Frosthammer
							["sourceQuest"] = 179,	-- Dwarven Outfitters
							["coord"] = { 29.6, 71.2, DUN_MOROGH },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(6185),	-- Bear Shawl
								i(2172),	-- Rustic Belt
								i(6173),	-- Snow Boots
							},
						}),
						q(3361, {	-- A Refugee's Quandary
							["qg"] = 8416,	-- Felix Whindlebolt
							["coord"] = { 28.6, 67.8, DUN_MOROGH },
							["races"] = ALLIANCE_ONLY,
							["cost"] = {
								{ "i", 10438, 1 },	-- Felix's Box
								{ "i", 16314, 1 },	-- Felix's Bucket of Bolts
								{ "i", 16313, 1 },	-- Felix's Chest
							},
							["lvl"] = 3,
							["groups"] = {
								{
									["itemID"] = 10438,	-- Felix's Box
									["questID"] = 3361,	-- A Refugee's Quandary
									["coord"] = { 20.9, 76.1, DUN_MOROGH },
								},
								{
									["itemID"] = 16314,	-- Felix's Bucket of Bolts
									["questID"] = 3361,	-- A Refugee's Quandary
									["coord"] = { 26.3, 79.2, DUN_MOROGH },
								},
								{
									["itemID"] = 16313,	-- Felix's Chest
									["questID"] = 3361,	-- A Refugee's Quandary
									["coord"] = { 22.8, 79.9, DUN_MOROGH },
								},
							},
						}),
					}),
				},
			}),
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(627, {	-- Explore Dun Morogh
					-- #if BEFORE WRATH
					["description"] = "Explore Dun Morogh, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if AFTER MOP
			petbattle(filter(BATTLE_PETS, {
				p(441, {	-- Alpine Hare
					["crs"] = { 61690 },	-- Alpine Hare
					-- #if AFTER CATA
					["maps"] = { COLDRIDGE_VALLEY, NEW_TINKERTOWN },
					-- #else
					["maps"] = { COLDRIDGE_VALLEY },
					-- #endif
				}),
				p(378, {	-- Rabbit
					["crs"] = { 61080 },	-- Rabbit
					["maps"] = { COLDRIDGE_VALLEY },
				}),
				p(440, {	-- Snow Cub
					["crs"] = { 61689 },	-- Snow Cub
					-- #if AFTER CATA
					["maps"] = { COLDRIDGE_VALLEY, NEW_TINKERTOWN },
					-- #else
					["maps"] = { COLDRIDGE_VALLEY },
					-- #endif
				}),
			})),
			-- #endif
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["115:115:252:249"] = 137,	-- Brewnall Village
				["125:125:217:287"] = 135,	-- Frostmane Hold
				["128:120:792:279"] = 806,	-- South Gate Outpost
				["128:128:573:280"] = 803,	-- Amberstill Ranch
				["128:165:502:221"] = 138,	-- Misty Pine Refuge
				["128:165:759:173"] = 808,	-- North Gate Outpost
				["128:180:281:167"] = 211,	-- Iceflow Lake
				["128:190:347:163"] = 802,	-- Shimmer Ridge
				["150:128:295:385"] = 800,	-- Coldridge Pass
				["155:128:522:322"] = 804,	-- The Tundrid Hills
				["155:170:694:273"] = 212,	-- Helm's Bed Lake
				["165:165:608:291"] = 134,	-- Gol'Bolar Quarry
				["180:128:274:296"] = 801,	-- Chill Breeze Valley
				["180:165:166:184"] = 133,	-- Gnomeregan
				["200:185:314:311"] = 136,	-- The Grizzled Den
				["200:200:386:294"] = 131,	-- Kharanos
				["240:185:155:403"] = 132,	-- Coldridge Valley
				["315:200:397:163"] = 809,	-- Gates of Ironforge
				--[[
				[77] = 1,                                -- Anvilmar
				[189] = 10,                              -- Steelgrill's Depot
				[716] = 13,                              -- Ironband's Compound
				[805] = 19,                              -- South Gate Pass
				[807] = 21,                              -- North Gate Pass
				[2102] = 24,                             -- Thunderbrew Distillery
				]]--
			})),
			-- #endif
			-- #if AFTER 4.0.3.13277
			n(FLIGHT_PATHS, {
				fp(620, {	-- Gol'Bolar Quarry, Dun Morogh
					["cr"] = 43702,	-- Dominic Galebeard <Gryphon Master>
					["coord"] = { 75.8, 54.4, DUN_MOROGH },
					["timeline"] = { "added 4.0.3.13277" },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(619, {	-- Kharanos, Dun Morogh
					["cr"] = 43701,	-- Brolan Galebeard <Gryphon Master>
					["coord"] = { 53.8, 52.6, DUN_MOROGH },
					["timeline"] = { "added 4.0.3.13277" },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			-- #endif
			n(QUESTS, {
				q(319, {	-- A Favor for Evershine
					["qg"] = 1374,	-- Rejold Barleybrew
					["sourceQuest"] = 318,	-- Evershine
					["coord"] = { 30.2, 45.8, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 2,
				}),
				
				q(417, {	-- A Pilot's Revenge
					["provider"] = { "o", 2059 },	-- A Dwarven Corpse
					["sourceQuest"] = 419,	-- The Lost Pilot
					["coord"] = { 79.7, 36.2, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3117, 1 },	-- Hildelve's Journal
						{ "i", 3183, 1 },	-- Mangy Claw
					},
					["lvl"] = 8,
					["groups"] = {
						{
							["itemID"] = 3183, 	-- Mangy Claw
							["questID"] = 417,	-- A Pilot's Revenge
							["cr"] = 1961,	-- Mangeclaw
							["coord"] = { 78.34, 37.74, DUN_MOROGH },
						},
						i(2218),	-- Craftsman's Dagger
						i(1009),	-- Compact Hammer
					},
				}),
				
				q(5541, {	-- Ammo for Rumbleshot
					["qg"] = 1694,	-- Loslor Rudge
					["coord"] = { 50.0, 49.4, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13850, 1 },	-- Rumbleshot's Ammo
					},
					["lvl"] = 5,
					["groups"] = {
						{
							["itemID"] = 13850,	-- Rumbleshot's Ammo
							["questID"] = 5541,	-- Ammo for Rumbleshot
							["coord"] = { 44.13, 56.95, DUN_MOROGH },
						},
					},
				}),
				q(1599, {	-- Beginnings
					["qg"] = 460,	-- Alamar Grimm <Warlock Trainer>
					["coord"] = { 28.6, 66.1, DUN_MOROGH },
					["altQuests"] = { 1598 },	-- The Stolen Tome
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
					["groups"] = {
						objective(1, {	-- 0/3 Feather Charm
							["provider"] = { "i", 6753 },	-- Feather Charm
							["cr"] = 946,	-- Frostmane Novice
						}),
						recipe(688),	-- Summon Imp
					},
				}),
				q(310, {	-- Bitter Rivals
					["qg"] = 1375,	-- Marleth Barleybrew
					["coord"] = { 30.2, 45.6, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2548, 1 },	-- Barrel of Barleybrew Scalder
					},
					["lvl"] = 2,
				}),
				q(3365, {	-- Bring Back the Mug
					["qg"] = 836,	-- Durnan Furcutter
					["sourceQuest"] = 3364,	-- Scalding Mornbrew Delivery
					["coord"] = { 28.8, 66.4, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10440, 1 },	-- Nori's Mug
					},
					["lvl"] = 4,
				}),
				q(233, {	-- Coldridge Valley Mail Delivery (1/2)
					["qg"] = 658,	-- Sten Stoutarm
					["sourceQuest"] = 179,	-- Dwarven Outfitters
					["coord"] = { 29.8, 71.2, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2187, 1 },	-- A Stack of Letters
					},
				}),
				q(234, {	-- Coldridge Valley Mail Delivery (2/2)
					["qg"] = 714,	-- Talin Keeneye
					["sourceQuest"] = 233,	-- Coldridge Valley Mail Delivery (1/2)
					["coord"] = { 22.6, 71.4, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2188, 1 },	-- A Letter to Grelin Whitebeard
					},
				}),
				q(3107, {	-- Consecrated Rune
					["qg"] = 658,	-- Sten Stoutarm
					["sourceQuest"] = 179,	-- Dwarven Outfitters
					["coord"] = { 29.8, 71.2, DUN_MOROGH },
					["races"] = { DWARF },
					["classes"] = { PALADIN },
					["cost"] = {
						{ "i", 9563, 1 },	-- Consecrated Rune
					},
				}),
				q(308, {	-- Distracting Jarven
					["qg"] = 1373,	-- Jarven Thunderbrew
					["altQuests"] = {
						310,	-- Bitter Rivals
					},
					["coord"] = { 47.6, 52.6, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 2686, 1 },	-- Thunder Ale
					},
				}),
				q(179, {	-- Dwarven Outfitters
					["qg"] = 658,	-- Sten Stoutarm
					["coord"] = { 29.8, 71.2, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 750, 8 },	-- Tough Wolf Meat
					},
					["groups"] = {
						i(719),	-- Rabbit Handler Gloves
						i(6171),	-- Wolf Handler Gloves
						i(2547),	-- Boar Handler Gloves
					},
				}),
				q(3113, {	-- Encrypted Memorandum
					["qg"] = 658,	-- Sten Stoutarm
					["sourceQuest"] = 179,	-- Dwarven Outfitters
					["coord"] = { 29.8, 71.2, DUN_MOROGH },
					["races"] = { GNOME },
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 9558, 1 },	-- Encrypted Memorandum
					},
				}),
				q(3109, {	-- Encrypted Rune
					["qg"] = 658,	-- Sten Stoutarm
					["sourceQuest"] = 179,	-- Dwarven Outfitters
					["coord"] = { 29.8, 71.2, DUN_MOROGH },
					["races"] = { DWARF },
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 9550, 1 },	-- Encrypted Rune
					},
				}),
				q(3108, {	-- Etched Rune
					["qg"] = 658,	-- Sten Stoutarm
					["sourceQuest"] = 179,	-- Dwarven Outfitters
					["coord"] = { 29.8, 71.2, DUN_MOROGH },
					["races"] = { DWARF },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 9566, 1 },	-- Etched Rune
					},
				}),
				q(318, {	-- Evershine
					["qg"] = 1378,	-- Pilot Bellowfiz
					["sourceQuest"] = 317,	-- Stocking Jetsteam
					["coord"] = { 49.4, 48.4, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 2,
				}),
				q(287, {	-- Frostmane Hold
					["qg"] = 1252,	-- Senir Whitebeard
					["sourceQuest"] = 420,	-- Senir's Observations (2/2)
					["coord"] = { 46.6, 53.8, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
					["groups"] = {
						i(3216),	-- Warm Winter Robe
						i(2900),	-- Stone Buckler
					},
				}),
				q(5625, {	-- Garments of the Light
					["qg"] = 1226,	-- Maxan Anvol <Priest Trainer>
					["sourceQuest"] = 5626,	-- In Favor of the Light
					["coord"] = { 47.2, 52.2, DUN_MOROGH },
					["races"] = { DWARF },
					["classes"] = { PRIEST },
					["lvl"] = 5,
					["groups"] = {
						i(16605),	-- Friar's Robes of the Light
					},
				}),
				q(3114, {	-- Glyphic Memorandum
					["qg"] = 658,	-- Sten Stoutarm
					["sourceQuest"] = 179,	-- Dwarven Outfitters
					["coord"] = { 29.8, 71.2, DUN_MOROGH },
					["races"] = { GNOME },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 9573, 1 },	-- Glyphic Memorandum
					},
				}),
				q(403, {	-- Guarded Thunderbrew Barrel
					["provider"] = { "o", 269 },	-- Guarded Thunder Ale Barrel
					["sourceQuest"] = 310,	-- Bitter Rivals
					["coord"] = { 47.7, 52.7, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["altQuests"] = {
						311,	-- Return to Marleth
					},
				}),
				q(3110, {	-- Hallowed Rune
					["qg"] = 658,	-- Sten Stoutarm
					["sourceQuest"] = 179,	-- Dwarven Outfitters
					["coord"] = { 29.8, 71.2, DUN_MOROGH },
					["races"] = { DWARF },
					["isYearly"] = true,
					["classes"] = { PRIEST },
					["cost"] = {
						{ "i", 9556, 1 },	-- Hallowed Rune
					},
				}),
				-- #if AFTER 4.0.3
				q(6387, {	-- Honor Students
					["providers"] = {
						{ "n", 1699 },	-- Gremlock Stoneseeker
						{ "i", 16310 },	-- Gremlock's List
					},
					["coord"] = { 54.7, 50.5, DUN_MOROGH },
					["races"] = { DARKIRON, DWARF, GNOME },
				}),
				-- #endif
				q(5626, {	-- In Favor of the Light
					["qg"] = 837,	-- Branstock Khalder <Priest Trainer>
					["coord"] = { 28.6, 66.4, DUN_MOROGH },
					["races"] = { DWARF },
					["classes"] = { PRIEST },
					["lvl"] = 5,
				}),
				q(1679, {	-- Muren Stormpike
					["qg"] = 1229,	-- Granis Swiftaxe <Warrior Trainer>
					["altQuests"] = {
						1638,	-- A Warrior's Training
						1684,	-- Elanaria
						1678,	-- Vejrek
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
					},
					["coord"] = { 47.2, 52.6, DUN_MOROGH },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(2239, {	-- Onin's Report
					["qg"] = 6886,	-- Onin MacHammer
					["sourceQuest"] = 2238,	-- Simple Subterfugin'
					["coord"] = { 25.2, 44.4, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 7715, 1 },	-- Onin's Report
					},
					["lvl"] = 10,
					["groups"] = {
						i(7298),	-- Blade of Cunning
					},
				}),
				q(412, {	-- Operation Recombobulation
					["qg"] = 1269,	-- Razzle Sprysprocket
					["coord"] = { 45.8, 49.2, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
					["groups"] = {
						objective(1, {	-- 0/8 Restabilization Cog
							["provider"] = { "i", 3083 },	-- Restabilization Cog
							["crs"] = {
								8503,	-- Gibblewilt
								1211,	-- Leper Gnome
							},
						}),
						objective(2, {	-- 0/8 Gyromechanic Gear
							["provider"] = { "i", 3084 },	-- Gyromechanic Gear
							["crs"] = {
								8503,	-- Gibblewilt
								1211,	-- Leper Gnome
							},
						}),
						i(3152),	-- Driving Gloves
						i(3153),	-- Oil-stained Cloak
					},
				}),
				q(314, {	-- Protecting the Herd
					["qg"] = 1265,	-- Rudra Amberstill
					["coord"] = { 63, 49.8, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3627, 1 },	-- Fang of Vagash
					},
					["lvl"] = 6,
					["groups"] = {
						{
							["itemID"] = 3627,	-- Fang of Vagash
							["questID"] = 314,	-- Protecting the Herd
							["cr"] = 1388,	-- Vagash
							["coord"] = { 62.65, 46.08, DUN_MOROGH },
						},
						i(10549),	-- Rancher's Trousers
						i(2817),	-- Soft Leather Tunic
						i(3103),	-- Coldridge Hammer
					},
				}),
				q(415, {	-- Rejold's New Brew
					["qgs"] = {
						1378,	-- Pilot Bellowfiz
						1872,	-- Tharek Blackstone
					},
					["coords"] = {
						{ 49.4, 48.4, DUN_MOROGH },
						{ 46, 51.6, DUN_MOROGH },
					},
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 8,
					["groups"] = {
						i(3087),	-- Mug of Shimmer Stout
					},
				}),
				q(320, {	-- Return to Bellowfiz
					["qg"] = 1374,	-- Rejold Barleybrew
					["sourceQuest"] = 319,	-- A Favor for Evershine
					["coord"] = { 30.2, 45.8, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2696, 1 },	-- Cask of Evershine
					},
					["lvl"] = 2,
					["groups"] = {
						i(1011),	-- Sharp Axe
						i(1010),	-- Gnarled Short Staff
						i(10547),	-- Camping Knife
					},
				}),
				q(311, {	-- Return to Marleth
					["provider"] = { "o", 270 },	-- Unguarded Thunder Ale Barrel
					["sourceQuest"] = 310,	-- Bitter Rivals
					["coord"] = { 47.7, 52.7, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2666, 1 },	-- Barrel of Thunder Ale
					},
					["lvl"] = 2,
				}),
				-- #if AFTER 4.0.3
				q(6391, {	-- Ride to Ironforge
					["providers"] = {
						{ "n", 43701 },	-- Brolan Galebeard
						{ "i", 16310 },	-- Gremlock's List
					},
					["sourceQuest"] = 6387,	-- Honor Students
					["coord"] = { 53.8, 52.6, DUN_MOROGH },
					["races"] = { DARKIRON, DWARF, GNOME },
				}),
				-- #endif
				q(2218, {	-- Road to Salvation
					["qg"] = 1234,	-- Hogral Bakkan
					["coord"] = { 47.6, 52.6, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 10,
				}),
				q(3364, {	-- Scalding Mornbrew Delivery
					["qg"] = 12738,	-- Nori Pridedrift
					["coord"] = { 25, 75.8, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10439, 1 },	-- Durnan's Scalding Mornbrew
					},
					["lvl"] = 4,
				}),
				q(466, {	-- Search for Incendicite
					["qg"] = 1377,	-- Pilot Stonegear
					["sourceQuest"] = 467,	-- Stonegear's Search
					["coord"] = { 49.6, 48.4, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["maps"] = { WETLANDS },
					["cost"] = {
						{ "i", 3340, 6 },	-- Incendicite Ore
					},
					["lvl"] = 20,
					["groups"] = {
						i(3565),	-- Beerstained Gloves
					},
				}),
				q(282, {	-- Senir's Observations (1/2)
					["qg"] = 786,	-- Grelin Whitebeard
					["sourceQuest"] = 218,	-- The Stolen Journal
					["coord"] = { 25, 75.8, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2619, 1 },	-- Grelin's Report
					},
				}),
				q(420, {	-- Senir's Observations (2/2)
					["qg"] = 1965,	-- Mountaineer Thalos
					["sourceQuest"] = 282,	-- Senir's Observations (1/2)
					["coord"] = { 33.4, 71.8, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2619, 1 },	-- Grelin's Report
					},
				}),
				q(413, {	-- Shimmer Stout
					["qg"] = 1374,	-- Rejold Barleybrew
					["sourceQuests"] = {
						415,	-- Rejold's New Brew
						315,	-- The Perfect Stout
					},
					["coord"] = { 30.2, 45.8, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3085, 1 },	-- Barrel of Shimmer Stout
					},
					["lvl"] = 8,
				}),
				q(3112, {	-- Simple Memorandum
					["qg"] = 658,	-- Sten Stoutarm
					["sourceQuest"] = 179,	-- Dwarven Outfitters
					["coord"] = { 29.8, 71.2, DUN_MOROGH },
					["races"] = { GNOME },
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 9544, 1 },	-- Simple Memorandum
					},
				}),
				q(3106, {	-- Simple Rune
					["qg"] = 658,	-- Sten Stoutarm
					["sourceQuest"] = 179,	-- Dwarven Outfitters
					["coord"] = { 29.8, 71.2, DUN_MOROGH },
					["races"] = { DWARF, NIGHT_ELF },
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 9543, 1 },	-- Simple Rune
					},
				}),
				q(1879, {	-- Speak with Bink
					["qg"] = 1228,	-- Magis Sparkmantle <Mage Trainer>
					["altQuests"] = {
						1860,	-- Speak with Jennea
					},
					["coord"] = { 47.4, 52, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(317, {	-- Stocking Jetsteam
					["qg"] = 1378,	-- Pilot Bellowfiz
					["coord"] = { 49.4, 48.4, DUN_MOROGH },
					["cost"] = { { "i", 769, 4 } },	-- Chunk of Boar Meat
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 2,
					["groups"] = {
						objective(2, {	-- 0/2 Thick Bear Fur
							["provider"] = { "i", 6952 },	-- Thick Bear Fur
							["crs"] = {
								1128,	-- Young Black Bear
								1196,	-- Ice Claw Bear
							},
						}),
					},
				}),
				q(467, {	-- Stonegear's Search
					["qgs"] = {
						1340,	-- Mountaineer Kadrell
						2092,	-- Pilot Longbeard
					},
					["coords"] = {
						{ 34.8, 47, LOCH_MODAN },
						{ 72.4, 93.6, IRONFORGE },
					},
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(414, {	-- Stout to Kadrell
					["qg"] = 1959,	-- Mountaineer Barleybrew
					["sourceQuest"] = 413,	-- Shimmer Stout
					["coord"] = { 86.2, 48.8, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3086, 1 },	-- Cask of Shimmer Stout
					},
					["lvl"] = 8,
				}),
				q(2160, {	-- Supplies to Tannok
					["qg"] = 6782,	-- Hands Springsprocket
					["coord"] = { 33.8, 72.2, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 7646, 1 },	-- Crate of Inn Supplies
					},
					["groups"] = {
						i(117),	-- Tough Jerky
						i(159),	-- Refreshing Spring Water
					},
				}),
				q(3115, {	-- Tainted Memorandum
					["qg"] = 658,	-- Sten Stoutarm
					["sourceQuest"] = 179,	-- Dwarven Outfitters
					["coord"] = { 29.8, 71.2, DUN_MOROGH },
					["races"] = { GNOME },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 9577, 1 },	-- Tainted Memorandum
					},
				}),
				q(6064, {	-- Taming the Beast
					["qg"] = 1231,	-- Grif Wildheart <Hunter Trainer>
					["sourceQuests"] = {
						6074,	-- The Hunter's Path
						6075,	-- The Hunter's Path
						6076,	-- The Hunter's Path
					},
					["coord"] = { 45.8, 53.0, DUN_MOROGH },
					["races"] = { DWARF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
				}),
				q(6084, {	-- Taming the Beast
					["qg"] = 1231,	-- Grif Wildheart <Hunter Trainer>
					["sourceQuest"] = 6064,  -- Taming the Beast
					["coord"] = { 45.8, 53.0, DUN_MOROGH },
					["races"] = { DWARF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
				}),
				q(6085, {	-- Taming the Beast
					["qg"] = 1231,	-- Grif Wildheart <Hunter Trainer>
					["sourceQuest"] = 6084,  -- Taming the Beast
					["coord"] = { 45.8, 53.0, DUN_MOROGH },
					["races"] = { DWARF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
				}),
				q(6086, {	-- Taming the Beast
					["qg"] = 1231,	-- Grif Wildheart <Hunter Trainer>
					["sourceQuest"] = 6085,  -- Taming the Beast
					["coord"] = { 45.8, 53.0, DUN_MOROGH },
					["races"] = { DWARF },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						recipe(883),	-- Call Pet
						recipe(2641),	-- Dismiss Pet
						recipe(1515),	-- Tame Beast
					},
				}),
				q(1653, {	-- The Test of Righteousness (1/3)
					["qg"] = 6171,	-- Duthorian Rall
					["sourceQuest"] = 1652,	-- The Tome of Valor (4/4)
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 20,
				}),
				q(1654, {	-- The Test of Righteousness (2/3)
					["qg"] = 6181,	-- Jordan Stilwell
					["sourceQuest"] = 1653,	-- The Test of Righteousness (1/3)
					["coord"] = { 52.6, 36.8, DUN_MOROGH },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DEADMINES, LOCH_MODAN, SHADOWFANG_KEEP, BLACKFATHOM_DEEPS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 20,
				}),
				q(1806, {	-- The Test of Righteousness (3/3)
					["qg"] = 6181,	-- Jordan Stilwell
					["sourceQuest"] = 1654,	-- The Test of Righteousness (2/3)
					["coord"] = { 52.6, 36.8, DUN_MOROGH },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 20,
					["groups"] = {
						i(6953, {	-- Verigan's Fist
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(183, {	-- The Boar Hunter
					["qg"] = 714,	-- Talin Keeneye
					["coord"] = { 22.6, 71.4, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(79),	-- Dwarven Cloth Britches
						i(61),	-- Dwarven Leather Pants
					},
				}),
				q(313, {	-- The Grizzled Den
					["qg"] = 1377,	-- Pilot Stonegear
					["coord"] = { 49.6, 48.4, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 4,
					["groups"] = {
						objective(1, {	-- 0/8 Wendigo Mane
							["provider"] = { "i", 2671 },	-- Wendigo Mane
							["crs"] = {
								1134,	-- Young Wendigo
								1137,	-- Edan the Howler
								1271,	-- Old Icebeard
								1135,	-- Wendigo
							},
						}),
					},
				}),
				q(6074, {	-- The Hunter's Path
					["qg"] = 5116,	-- Olmin Burningbeard <Hunter Trainer>
					["coord"] = { 70, 84.6, IRONFORGE },
					["races"] = { DWARF },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6075, {	-- The Hunter's Path
					["qg"] = 11807,	-- Tristane Shadowstone
					["coord"] = { 30.6, 45.4, DUN_MOROGH },
					["races"] = { DWARF },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6076, {	-- The Hunter's Path
					["qg"] = 5515,	-- Einris Brightspear <Hunter Trainer>
					["coord"] = { 61.6, 15.4, STORMWIND_CITY },
					["races"] = { DWARF },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(419, {	-- The Lost Pilot
					["qg"] = 1960,	-- Pilot Hammerfoot
					["coord"] = { 83.8, 39.2, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 8,
					["groups"] = {
						i(3151),	-- Siege Brigade Vest
					},
				}),
				q(315, {	-- The Perfect Stout
					["qg"] = 1374,	-- Rejold Barleybrew
					["sourceQuest"] = 415,	-- Rejold's New Brew
					["coord"] = { 30.2, 45.8, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- 0/6 Shimmerweed
							["provider"] = { "i", 2676 },	-- Shimmerweed
							["cr"] = 1397,	-- Frostmane Seer
						}),
						i(2905),	-- Goat Fur Cloak
						i(2326),	-- Ivy-weave Bracers
					},
				}),
				q(433, {	-- The Public Servant
					["qg"] = 1977,	-- Senator Mehr Stonehallow
					["coord"] = { 68.6, 56, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
					["lvl"] = 6,
				}),
				q(291, {	-- The Reports
					["qg"] = 1252,	-- Senir Whitebeard
					["sourceQuest"] = 287,	-- Frostmane Hold
					["coord"] = { 46.6, 53.8, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2628, 1 },	-- Senir's Report
					},
				}),
				q(218, {	-- The Stolen Journal
					["qg"] = 786,	-- Grelin Whitebeard
					["sourceQuest"] = 182,	-- The Troll Cave
					["coord"] = { 25, 75.8, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2004, 1 },	-- Grenlin Whitebeard's Journal
					},
					["groups"] = {
						{
							["itemID"] = 2004,	-- Grenlin Whitebeard's Journal
							["questID"] = 218,	-- The Stolen Journal
							["cr"] = 808,	-- Grik'nir the Cold
							["coord"] = { 30.4, 80.2, DUN_MOROGH },
						},
						i(6176),	-- Dwarven Kite Shield
						i(5581),	-- Smooth Walking Staff
					},
				}),
				q(182, {	-- The Troll Cave
					["qg"] = 786,	-- Grelin Whitebeard
					["coord"] = { 25, 75.8, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2047),	-- Anvilmar Hand Axe
						i(2048),	-- Anvilmar Hammer
						i(2195),	-- Anvilmar Knife
						i(5761),	-- Anvilmar Sledge
						i(961),	-- Healing Herb
					},
				}),
				q(432, {	-- Those Blasted Troggs!
					["qg"] = 1254,	-- Foreman Stonebrow
					["coord"] = { 69, 56.2, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 5,
				}),
				q(2299, {	-- To Hulfdan!
					["qg"] = 1234,	-- Hogral Bakkan
					["sourceQuest"] = 2218,	-- Road to Salvation
					["altQuests"] = {
						2205,	-- Seek out SI:7
					},
					["coord"] = { 47.6, 52.6, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				q(400, {	-- Tools for Steelgrill
					["qg"] = 1872,	-- Tharek Blackstone
					["coord"] = { 46, 51.6, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2999, 1 },	-- Steelgrill's Tools
					},
					["lvl"] = 2,
				}),
				q(312, {	-- Tundra MacGrann's Stolen Stash
					["qg"] = 1266,	-- Tundra MacGrann
					["coord"] = { 34.6, 51.6, DUN_MOROGH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2667, 1 },	-- MacGrann's Dried Meats
					},
					["lvl"] = 7,
					["groups"] = {
						{
							["itemID"] = 2667,	-- MacGrann's Dried Meats
							["questID"] = 312,	-- Tundra MacGrann's Stolen Stash
							["coord"] = { 38.5, 53.93, DUN_MOROGH },
						},
						i(6177),	-- Ironwrought Bracers
						i(10550),	-- Wooly Mittens
					},
				}),
			}),
			n(RARES, {
				n(1130, {	-- Bjarn
					-- #if AFTER CATA
					["coords"] = {
						{ 69.2, 55.8, DUN_MOROGH },
						{ 69.8, 58.6, DUN_MOROGH },
						{ 67.8, 58.8, DUN_MOROGH },
						{ 66.2, 59.8, DUN_MOROGH },
					},
					-- #else
					["coords"] = {
						{ 52.8, 58.4, DUN_MOROGH },
						{ 56.8, 56.8, DUN_MOROGH },
						{ 63.6, 60.6, DUN_MOROGH },
						{ 59.0, 61.6, DUN_MOROGH },
					},
					-- #endif
					["groups"] = {
						i(2069, {	-- Black Bear Hide Vest
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				n(1137, {	-- Edan the Howler
					-- #if AFTER CATA
					["coord"] = { 46.4, 47.6, DUN_MOROGH },
					-- #else
					["coords"] = {
						{ 43.6, 49.6, DUN_MOROGH },
						{ 39.6, 48.2, DUN_MOROGH },
						{ 42.2, 46.4, DUN_MOROGH },
					},
					-- #endif
					["groups"] = {
						i(3225, {	-- Bloodstained Knife
							["timeline"] = { "removed 4.0.3" },
						}),
						i(3008, {	-- Wendigo Fur Cloak
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				n(8503, {	-- Gibblewilt
					-- #if AFTER CATA
					["coord"] = { 40.8, 45.2, NEW_TINKERTOWN },
					-- #else
					["coords"] = {
						{ 27.2, 36.6, DUN_MOROGH },
						{ 25.0, 44.6, DUN_MOROGH },
					},
					-- #endif
					["groups"] = {
						i(10554, {	-- Foreman Pants
							["timeline"] = { "removed 4.0.3" },
						}),
						i(10553, {	-- Foreman Vest
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				n(1260, {	-- Great Father Arctikus
					-- #if AFTER CATA
					["coord"] = { 29.8, 67.8, NEW_TINKERTOWN },
					-- #else
					["coords"] = {
						{ 23.8, 53.4, DUN_MOROGH },
						{ 22.0, 51.0, DUN_MOROGH },
					},
					-- #endif
					["groups"] = {
						i(3223, {	-- Frostmane Scepter
							["timeline"] = { "removed 4.0.3" },
						}),
						i(2546, {	-- Royal Frostmane Girdle
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				n(1119, {	-- Hammerspine
					-- #if AFTER CATA
					["description"] = "Spawns at the very end of the cave.",
					["coords"] = {
						{ 77.9, 55.1, DUN_MOROGH }, -- cave entrance
						{ 56.3, 39.1, 31 }, -- spawn area
					},
					-- #else
					["coords"] = {
						{ 71.8, 51.4, DUN_MOROGH },
						{ 72.8, 53.8, DUN_MOROGH },
					},
					-- #endif
					["groups"] = {
						i(763, {	-- Ice-covered Bracers
							["timeline"] = { "removed 4.0.3" },
						}),
						i(2254, {	-- Icepane Warhammer
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				n(1271, {	-- Old Icebeard
					["coord"] = { 38.4, 54.0, DUN_MOROGH },
					["timeline"] = { "removed 4.0.3" },
					["groups"] = {
						i(2899, {	-- Wengido Collar
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				n(1132, {	-- Timber
					-- #if AFTER CATA
					["coord"] = { 67.8, 37.4, NEW_TINKERTOWN },
					-- #else
					["coords"] = {
						{ 36.0, 37.8, DUN_MOROGH },
						{ 35.6, 42.8, DUN_MOROGH },
						{ 31.8, 42.6, DUN_MOROGH },
					},
					-- #endif
					["groups"] = {
						i(3224, {	-- Silver-lined Bracers
							["timeline"] = { "removed 4.0.3" },
						}),
						i(1965, {	-- White Wolf Gloves
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				n(107431, {	-- Weaponized Rabbot
					["coord"] = { 66.0, 27.0, NEW_TINKERTOWN },
					["timeline"] = { "added 7.0.3.22290" },
				}),
			}),
			n(VENDORS, {
				n(8508, {	-- Gretta Ganter <Fisherman Supplies>
					-- #if AFTER CATA
					["coord"] = { 51.6, 50.0, NEW_TINKERTOWN },
					-- #else
					["coord"] = { 31.6, 44.6, DUN_MOROGH },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
					},
				}),
				n(1247, {	-- Innkeeper Belm <Innkeeper>
					-- #if AFTER CATA
					["coord"] = { 54.4, 50.8, DUN_MOROGH },
					-- #else
					["coord"] = { 47.4, 52.6, DUN_MOROGH },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2894),	-- Rhapsody Malt
						i(2686),	-- Thunder Ale
					},
				}),
				n(7955, {	-- Milli Featherwhistle <Mechanostrider Merchant>
					-- #if AFTER CATA
					["coord"] = { 56.2, 46.3, DUN_MOROGH },
					-- #else
					["coord"] = { 49.0, 48.0, DUN_MOROGH },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8595),	-- Blue Mechanostrider (MOUNT!)
						i(13321),	-- Green Mechanostrider (MOUNT!)
						i(8563),	-- Red Mechanostrider (MOUNT!)
						i(13322),	-- Unpainted Mechanostrider (MOUNT!)
						i(18772),	-- Swift Green Mechanostrider (MOUNT!)
						i(18773),	-- Swift White Mechanostrider (MOUNT!)
						i(18774),	-- Swift Yellow Mechanostrider (MOUNT!)
						i(13327, {	-- Icy Blue Mechanostrider Mod A (MOUNT!)
							["timeline"] = { "removed 1.4.0" },
						}),
						i(13326, {	-- White Mechanostrider Mod A (MOUNT!)
							["timeline"] = { "removed 1.4.0" },
						}),
					},
				}),
				n(1261, {	-- Veron Amberstill <Ram Breeder>
					-- #if AFTER CATA
					["coord"] = { 70.6, 48.9, DUN_MOROGH },
					-- #else
					["coord"] = { 63.4, 50.6, DUN_MOROGH },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5872),	-- Brown Ram (MOUNT!)
						i(5864),	-- Gray Ram (MOUNT!)
						i(5873),	-- White Ram (MOUNT!)
						i(18786),	-- Swift Brown Ram (MOUNT!)
						i(18787),	-- Swift Gray Ram (MOUNT!)
						i(18785),	-- Swift White Ram (MOUNT!)
						i(13328, {	-- Black Ram (MOUNT!)
							["timeline"] = { "removed 1.4.0" },
						}),
						i(13329, {	-- Frost Ram (MOUNT!)
							["timeline"] = { "removed 1.4.0" },
						}),
					},
				}),
				n(1263, {	-- Yarlyn Amberstill
					-- #if AFTER CATA
					["coord"] = { 70.5, 49.1, DUN_MOROGH },
					-- #else
					["coord"] = { 63.2, 50.8, DUN_MOROGH },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8497),	-- Rabbit Crate (Snowshoe) (PET!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(2886),	-- Crag Boar Rib
				i(2067, {	-- Frostbit Staff
					["timeline"] = { "removed 4.0.3" },
					["cr"] = 1117,	-- Rockjaw Bonesnapper
				}),
				i(2259, {	-- Frostmane Club
					["timeline"] = { "removed 4.0.3" },
					["cr"] = 1121,	-- Frostmane Snowstrider
				}),
				i(2260, {	-- Frostmane Hand Axe
					["timeline"] = { "removed 4.0.3" },
					["crs"] = {
						1123,	-- Frostmane Headhunter
						1122,	-- Frostmane Hideskinner
					},
				}),
				i(2108, {	-- Frostmane Leather Vest
					["timeline"] = { "removed 4.0.3" },
					["cr"] = 706,	-- Frostmane Troll Whelp
				}),
				i(2898, {	-- Mountaineer Chestpiece
					["timeline"] = { "removed 4.0.3" },
					["cr"] = 1196,	-- Ice Claw Bear
				}),
				i(2066, {	-- Skull Hatchet
					["timeline"] = { "removed 4.0.3" },
					["cr"] = 1115,	-- Rockjaw Skullthumper
				}),
				i(2787, {	-- Trogg Dagger
					["cr"] = 724,	-- Burly Rockjaw Trogg
				}),
			}),
		},
	}),
}));