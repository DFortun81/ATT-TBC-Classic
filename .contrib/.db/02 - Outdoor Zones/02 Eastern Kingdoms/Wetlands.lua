---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(WETLANDS, {
		["lore"] = "The Wetlands is a large, wet zone below Stonewrought Dam and north of Loch Modan, covered with small rivers, lakes, and ponds. Bordered on three sides by mountains, the Wetlands are open to the ocean to the west. Adventurers seeking a route to the Wetlands must either come through sieged Dun Algaz from Loch Modan or cross the damaged Thandol Span from Arathi Highlands. The northern slopes of Wetlands are generally classed within mountains of Khaz Modan.\n\nThe Wetlands is a vast, cold swamp. Mists cloak the ground, and the overcast sky makes the land a uniform gray. Many Ironforge strongholds once stood in this region, but war has reduced them to rubble. Wild creatures, murlocs and renegade orcs now control the land. Menethil Harbor, a city on the west coast, is the Alliance’s only presence in this dreary region.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(841, {	-- Explore Wetlands
					-- #if BEFORE WRATH
					["description"] = "Explore Wetlands, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["175:128:13:314"] = 150,	-- Menethil Harbor
				["185:240:456:125"] = 1025,	-- The Green Belt
				["190:160:628:176"] = 1017,	-- Raptor Ridge
				["195:185:247:205"] = 118,	-- Whelgar's Excavation Site
				["200:185:349:115"] = 309,	-- Ironbeard's Tomb
				["200:240:237:41"] = 1023,	-- Saltspray Glen
				["205:180:401:21"] = 205,	-- Dun Modr
				["205:245:527:264"] = 1020,	-- Mosshide Fen
				["225:185:347:218"] = 1036,	-- Angerfang Encampment
				["225:190:89:142"] = 1022,	-- Bluegill Marsh
				["230:190:470:371"] = 1021,	-- Thelgen Rock
				["240:175:77:245"] = 1018,	-- Black Channel Marsh
				["256:250:507:115"] = 1016,	-- Direforge Hill
				["300:240:92:82"] = 1024,	-- Sundown Marsh
				["350:360:611:230"] = 1038,	-- Dragonmaw Gates
				--[[
				[298] = 4,                               -- Baradin Bay
				[299] = 5,                               -- Menethil Bay
				[836] = 7,                               -- Dun Algaz
				[881] = 8,                               -- Thandol Span
				[1037] = 19,                             -- Grim Batol
				[1039] = 21,                             -- The Lost Fleet
				[2103] = 22,                             -- Menethil Keep
				[2104] = 23,                             -- Deepwater Tavern
				[2365] = 24,                             -- The Great Sea
				[2402] = 25,                             -- The Forbidding Sea
				]]--
			})),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(7, {	-- Menethil Harbor, Wetlands
					["cr"] = 1571,	-- Shellei Brondir <Gryphon Master>
					["coord"] = { 9.6, 59.6, WETLANDS },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(304, {	-- A Grim Task
					["qg"] = 1071,	-- Longbraid the Grim
					["coord"] = { 49.8, 18.3, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3639, 1 },	-- Ear of Balgaras
					},
					["lvl"] = 26,
					["groups"] = {
						{
							["itemID"] = 3639,	-- Ear of Balgaras
							["questID"] = 304,	-- A Grim Task
							["cr"] = 1364,	-- Balgaras the Foul
							["coords"] = {
								{ 47.4, 15.0, WETLANDS },
								{ 46.6, 18.6, WETLANDS },
								{ 61.8, 31.0, WETLANDS },
							},
						},
						i(2916),	-- Gold Lion Shield
						i(2917),	-- Tranquil Ring
					},
				}),
				q(471, {	-- Apprentice's Duties
					["qg"] = 2094,	-- James Halloran
					["sourceQuest"] = 484,	-- Young Crocolisk Skins
					["coord"] = { 8.5, 55.7, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3348, 6 },	-- Giant Crocolisk Skin
					},
					["lvl"] = 18,
					["groups"] = {
						i(2545),	-- Malleable Chain Leggings
						i(3561),	-- Resilient Poncho
						i(3681),	-- Recipe: Crocolisk Gumbo
					},
				}),
				q(275, {	-- Blisters on The Land
					["qg"] = 1244,	-- Rethiel the Greenwarden
					["sourceQuest"] = 277,	-- Fire Taboo
					["coord"] = { 56.3, 40.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(3558),	-- Fen Keeper Robe
						i(1273),	-- Forest Chain
						i(2263),	-- Phytoblade
					},
				}),
				q(279, {	-- Claws from the Deep
					["qg"] = 1242,	-- Karl Boran
					["coord"] = { 8.3, 58.5, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3618, 1 },	-- Gobbler's Head
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 3618,	-- Gobbler's Head
							["questID"] = 279,	-- Claws from the Deep
							["cr"] = 1259,	-- Gobbler
							["coord"] = { 17.4, 40.4, WETLANDS },
						},
					},
				}),
				q(293, {	-- Cleansing the Eye
					["qg"] = 1217,	-- Glorin Steelbrow
					["sourceQuest"] = 292,	-- The Eye of Paleth
					["coord"] = { 10.6, 60.5, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2944, 1 },	-- Cursed Eye of Paleth
					},
					["lvl"] = 22,
					["groups"] = {
						i(2943),	-- Eye of Paleth
					},
				}),
				q(469, {	-- Daily Delivery
					["qg"] = 2093,	-- Einar Stonegrip
					["coord"] = { 49.8, 39.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3347, 1 },	-- Bundle of Crocolisk Skins
					},
					["lvl"] = 18,
				}),
				q(474, {	-- Defeat Nek'rosh
					["provider"] = { "o", 1609 },	-- Dragonmaw Catapult
					["sourceQuest"] = 465,	-- Nek'rosh's Gambit
					["coord"] = { 47.5, 46.9, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3625, 1 },	-- Nek'rosh's Head
					},
					["lvl"] = 23,
					["groups"] = {
						{
							["itemID"] = 3625,	-- Nek'rosh's Head
							["questID"] = 474,	-- Defeat Nek'rosh
							["cr"] = 2091,	-- Chieftain Nek'rosh
							["coord"] = { 54.2, 54.2, WETLANDS },
						},
						i(3209),	-- Ancient War Sword
						i(6194),	-- Barreling Reaper
					},
				}),
				q(470, {	-- Digging Through the Ooze
					["qg"] = 2111,	-- Sida
					["coord"] = { 11.8, 58.0, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3349, 1 },	-- Sida's Bag
					},
					["lvl"] = 19,
					["groups"] = {
						i(3352),	-- Ooze-covered Bag
					},
				}),
				q(472, {	-- Fall of Dun Modr
					["qg"] = 2097,	-- Harlo Barnaby
					["coord"] = { 10.8, 55.9, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(1132, {	-- Fiora Longears
					["qg"] = 4455,	-- Red Jack Flint
					["coord"] = { 9.9, 57.9, WETLANDS },
					["maps"] = { DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 18,
				}),
				q(277, {	-- Fire Taboo
					["qg"] = 1244,	-- Rethiel the Greenwarden
					["sourceQuest"] = 276,	-- Tramping Paws
					["coord"] = { 56.3, 40.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2611, 9 },	-- Crude Flint
					},
					["lvl"] = 20,
					["groups"] = {
						i(4606),	-- Spongy Morel
					},
				}),
				q(305, {	-- In Search of The Excavation Team (1/2)
					["qg"] = 2096,	-- Tarrel Rockweaver
					["coord"] = { 11.5, 52.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 21,
				}),
				q(306, {	-- In Search of The Excavation Team (2/2)
					["qg"] = 1076,	-- Merrin Rockweaver
					["sourceQuest"] = 305,	-- In Search of The Excavation Team (1/2)
					["coord"] = { 38.8, 52.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2639, 1 },	-- Merrin's Letter
					},
					["lvl"] = 21,
				}),
				q(290, {	-- Lifting the Curse
					["qg"] = 1239,	-- First Mate Fitzsimmons
					["sourceQuest"] = 289,	-- The Cursed Crew
					["coord"] = { 10.9, 59.6, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2629, 1 },	-- Intrepid Strongbox Key
					},
					["lvl"] = 22,
					["groups"] = {
						{
							["itemID"] = 2629,	-- Intrepid Strongbox Key
							["questID"] = 290,	-- Lifting the Curse
							["cr"] = 1160,	-- Captain Halyndor
							["coord"] = { 15.6, 23.4, WETLANDS },
						},
					},
				}),
				q(321, {	-- Lightforge Iron
					["qg"] = 1217,	-- Glorin Steelbrow
					["sourceQuest"] = 270,	-- The Doomed Fleet
					["coord"] = { 10.6, 60.5, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(2702),	-- Lightforge Ingot
					},
				}),
				q(526, {	-- Lightforge Ingots
					["qg"] = 1217,	-- Glorin Steelbrow
					["sourceQuest"] = 321,	-- Lightforge Iron
					["altQuests"] = { 324 },	-- The Lost Ingots
					["coord"] = { 10.6, 60.6, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2702, 5 },	-- Lightforge Ingot
					},
					["lvl"] = 20,
				}),
				q(465, {	-- Nek'rosh's Gambit
					["qg"] = 2104,	-- Captain Stoutfist
					["sourceQuest"] = 464,	-- War Banners
					["coord"] = { 9.8, 57.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3339, 1 },	-- Dwarven Tinder
					},
					["lvl"] = 23,
				}),
				q(294, {	-- Ormer's Revenge (1/3)
					["qg"] = 1078,	-- Ormer Ironbraid
					["coord"] = { 38, 51.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(295, {	-- Ormer's Revenge (2/3)
					["qg"] = 1078,	-- Ormer Ironbraid
					["sourceQuest"] = 294,	-- Ormer's Revenge (1/3)
					["coord"] = { 38, 51.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(296, {	-- Ormer's Revenge (3/3)
					["qg"] = 1078,	-- Ormer Ironbraid
					["sourceQuest"] = 295,	-- Ormer's Revenge (2/3)
					["coord"] = { 38, 51.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3638, 1 },	-- Sarltooth's Talon
					},
					["lvl"] = 22,
					["groups"] = {
						{
							["itemID"] = 3638,	-- Sarltooth's Talon
							["questID"] = 296,	-- Ormer's Revenge (3/3)
							["cr"] = 1353,	-- Sarltooth
							["coord"] = { 33.0, 51.4, WETLANDS },
						},
						i(3493),	-- Raptor's End
						i(3566),	-- Raptorbane Armor
						i(5246),	-- Excavation Rod
						i(3682),	-- Recipe: Curiously Tasty Omelet
					},
				}),
				q(634, {	-- Plea To The Alliance
					["qg"] = 1075,	-- Rhag Garmason
					["sourceQuest"] = 633,	-- The Thandol Span (3/3)
					["coord"] = { 49.9, 18.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(281, {	-- Reclaiming Goods
					["qg"] = 1242,	-- Karl Boran
					["sourceQuest"] = 279,	-- Claws from the Deep
					["coord"] = { 8.4, 58.6, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(473, {	-- Report to Captain Stoutfist
					["qg"] = 2086,	-- Valstag Ironjaw
					["coord"] = { 10.1, 56.9, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 23,
				}),
				q(286, {	-- Return the Statuette
					["provider"] = { "o", 259 },	-- Half-buried Barrel
					["sourceQuest"] = 285,	-- Search More Hovels
					["coord"] = { 14.0, 34.8, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2625, 1 },	-- Menethil Statuette
					},
					["lvl"] = 20,
					["groups"] = {
						i(2950),	-- Icicle Rod
						i(2949),	-- Mariner Boots
					},
				}),
				q(285, {	-- Search More Hovels
					["provider"] = { "o", 142151 },	-- Sealed Barrel
					["sourceQuest"] = 284,	-- The Search Continues
					["coord"] = { 13.6, 38.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(943, {	-- The Absent Minded Prospector (5/5)
					["qg"] = 2911,	-- Archaeologist Flagongut
					["sourceQuest"] = 942,	-- The Absent Minded Prospector (4/5) (Darnassus)
					["coord"] = { 10.8, 60.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5234, 1 },	-- Flagongut's Fossil
						{ "i", 5233, 1 },	-- Stone of Relu
					},
					["lvl"] = 15,
					["groups"] = {
						{
							["itemID"] = 5234,	-- Flagongut's Fossil
							["questID"] = 943,	-- The Absent Minded Prospector (5/5)
							["coord"] = { 38.8, 52.2, WETLANDS },
						},
						i(5627),	-- Relic Blade
						i(5626),	-- Skullchipper
					},
				}),
				q(289, {	-- The Cursed Crew
					["qg"] = 1239,	-- First Mate Fitzsimmons
					["sourceQuest"] = 288,	-- The Third Fleet
					["coord"] = { 10.9, 59.6, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3619, 1 },	-- Snellig's Snuffbox
					},
					["lvl"] = 22,
					["groups"] = {
						{
							["itemID"] = 3619,	-- Snellig's Snuffbox
							["questID"] = 289,	-- The Cursed Crew
							["cr"] = 1159,	-- First Mate Snellig
							["coord"] = { 14.0, 30.6, WETLANDS },
						},
					},
				}),
				q(303, {	-- The Dark Iron War
					["qg"] = 1074,	-- Motley Garmason
					["coord"] = { 49.7, 18.3, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(292, {	-- The Eye of Paleth
					["provider"] = { "o", 112948 },	-- Intrepid's Locked Strongbox
					["sourceQuest"] = 290,	-- Lifting the Curse
					["coord"] = { 14.5, 24.0, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2944, 1 },	-- Cursed Eye of Paleth
					},
					["lvl"] = 22,
					["groups"] = {
						i(2944),	-- Cursed Eye of Paleth
					},
				}),
				q(463, {	-- The Greenwarden
					["qg"] = 1239,	-- First Mate Fitzsimmons
					["coord"] = { 10.9, 59.6, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(324, {	-- The Lost Ingots
					["provider"] = { "o", 2734 },	-- Waterlogged Chest
					["altQuests"] = { 526 },	-- Lightforge Ingots
					["sourceQuest"] = 321,	-- Lightforge Iron
					["coord"] = { 12.1, 64.1, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2702, 5 },	-- Lightforge Ingot
					},
					["lvl"] = 20,
				}),
				q(1249, {	-- The Missing Diplomat (11/17)
					["qg"] = 4963,	-- Mikhail <Bartender>
					["sourceQuest"] = 1248,	-- The Missing Diplomat (10/17)
					["coord"] = { 10.6, 60.7, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1250, {	-- The Missing Diplomat (12/17)
					["qg"] = 4962,	-- Tapoke "Slim" Jahn
					["sourceQuest"] = 1249,		-- The Missing Diplomat (11/17)
					["coord"] = { 10.6, 60.3, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1264, {	-- The Missing Diplomat (13/17)
					["qg"] = 4963,	-- Mikhail <Bartender>
					["sourceQuest"] = 1250,	-- The Missing Diplomat (12/17)
					["coord"] = { 10.6, 60.7, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(284, {	-- The Search Continues
					["provider"] = { "o", 261 },	-- Damaged Crate
					["sourceQuest"] = 281,	-- Reclaiming Goods
					["coord"] = { 13.5, 41.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(631, {	-- The Thandol Span (1/3)
					["qg"] = 1075,	-- Rhag Garmason
					["coord"] = { 49.9, 18.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(632, {	-- The Thandol Span (2/3)
					["provider"] = { "o", 2652 },	-- Ebenezer Rustlocke's Corpse
					["sourceQuest"] = 631,	-- The Thandol Span (1/3)
					["coord"] = { 51.3, 8.0, WETLANDS },
					["cost"] = {
						{ "i", 4429, 1 },	-- 	Deepfury's Orders
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(633, {	-- The Thandol Span (3/3)
					["qg"] = 1075,	-- Rhag Garmason
					["sourceQuest"] = 632,	-- The Thandol Span (2/3)
					["coord"] = { 49.9, 18.2, WETLANDS },
					["maps"] = { ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						i(4504),	-- Dwarven Guard Cloak
						i(4505),	-- Swampland Trousers
					},
				}),
				q(288, {	-- The Third Fleet
					["qg"] = 1239,	-- First Mate Fitzsimmons
					["coord"] = { 10.9, 59.6, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2594, 1 },	-- Flagon of Dwarven Honeymead
					},
					["lvl"] = 22,
				}),
				q(276, {	-- Tramping Paws
					["qg"] = 1244,	-- Rethiel the Greenwarden
					["sourceQuest"] = 463,	-- The Greenwarden
					["coord"] = { 56.3, 40.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(299, {	-- Uncovering the Past
					["qg"] = 1077,	-- Prospector Whelgar
					["coord"] = { 38.8, 52.2, WETLANDS },
					["description"] = "The quest items spawn randomly in the dig site below.",
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2658, 1 },	-- Ados Fragment
						{ "i", 2660, 1 },	-- Golm Fragment
						{ "i", 2659, 1 },	-- Modr Fragment
						{ "i", 2661, 1 },	-- Neru Fragment
					},
					["lvl"] = 25,
					["groups"] = {
						i(2913),	-- Silk Mantle of Gamn
					},
				}),
				q(464, {	-- War Banners
					["qg"] = 2104,	-- Captain Stoutfist
					["sourceQuest"] = 473,	-- Report to Captain Stoutfist
					["coord"] = { 9.8, 57.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3337, 8 },	-- Dragonmaw War Banner
					},
					["lvl"] = 23,
				}),
				q(484, {	-- Young Crocolisk Skins
					["qg"] = 2094,	-- James Halloran
					["coord"] = { 8.5, 55.7, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3397, 4 },	-- Young Crocolisk Skin
					},
					["lvl"] = 18,
				}),
			}),
			n(RARES, {
				n(1037, {	-- Dragonmaw Battlemaster
					["coords"] = {
						{ 42.8, 43.8, WETLANDS },
						{ 47.6, 46.0, WETLANDS },
						{ 50.0, 48.2, WETLANDS },
						{ 50.8, 50.6, WETLANDS },
						{ 53.0, 53.6, WETLANDS },
					},
				}),
				n(2108, {	-- Garneg Charskull
					["coords"] = {
						{ 38.6, 46.2, WETLANDS },
						{ 43.2, 44.2, WETLANDS },
						{ 48.0, 47.6, WETLANDS },
					},
					["groups"] = {
						i(6200),	-- Garneg's War Belt
						i(3392),	-- Ringed Helm
					},
				}),
				n(14425, {	-- Gnawbone
					["coords"] = {
						{ 39.0, 30.6, WETLANDS },
						{ 30.6, 31.2, WETLANDS },
						{ 35.4, 37.2, WETLANDS },
						{ 38.4, 36.4, WETLANDS },
					},
				}),
				n(1112, {	-- Leech Widow
					["coord"] = { 46.8, 61.4, WETLANDS },
					["groups"] = {
						i(4444),	-- Black Husk Shield
						i(6199),	-- Black Widow Band
					},
				}),
				n(2090, {	-- Ma'ruk Wyrmscale <Dragonmaw Warlord>
					["coord"] = { 47.8, 76.8, WETLANDS },
					["groups"] = {
						i(5749),	-- Scythe Axe
						i(5750),	-- Warchief's Girdle
					},
				}),
				n(14424, {	-- Mirelow
					["coords"] = {
						{ 18.6, 28.4, WETLANDS },
						{ 22.8, 31.4, WETLANDS },
						{ 27.8, 32.8, WETLANDS },
						{ 23.0, 21.4, WETLANDS },
						{ 24.6, 37.0, WETLANDS },
					},
				}),
				n(1140, {	-- Razormaw Matriarch
					["coord"] = { 70.8, 30.4, WETLANDS },
					["groups"] = {
						i(4463),	-- Beaded Raptor Collar
						i(6198),	-- Jurassic Wristguards
					},
				}),
				n(14433, {	-- Sludginn
					["coords"] = {
						{ 14.8, 67.2, WETLANDS },
						{ 12.0, 70.6, WETLANDS },
					},
				}),
			}),
			prof(SKINNING, {
				-- #if AFTER 4.0.3
				i(7286, {	-- Black Whelp Scale
					["cr"] = 42042,	-- Ebon Whelp
				}),
				-- #endif
				i(7287, {	-- Red Whelp Scale
					["crs"] = {
						1069,	-- Crimson Whelp
						1044,	-- Flamesnorting Whelp
					},
				}),
			}),
			n(VENDORS, {
				n(1441, {	-- Brak Durnad <Weaponsmith>
					["coord"] = { 11.5, 59.6, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4817),	-- Blessed Claymore
						i(4818),	-- Executioner's Sword
					},
				}),
				n(3180, {	-- Dark Iron Entrepreneur <Speciality Goods>
					["coord"] = { 46.6, 18.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4824),	-- Blurred Axe
						i(4825),	-- Callous Axe
						i(4826),	-- Marauder Axe
						i(4830),	-- Saber Leggings
						i(4831),	-- Stalking Pants
						i(4832),	-- Mystic Sarong
						i(4833),	-- Glorious Shoulders
						i(4835),	-- Elite Shoulders
					},
				}),
				n(2682, {	-- Fradd Swiftgear <Engineering Supplies>
					["coord"] = { 26.4, 25.8, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(13309),	-- Schematic: Lovingly Crafted Boomstick
						i(14639),	-- Schematic: Minor Recombobulator
					},
				}),
				n(1454, {	-- Jennabink Powerseam <Tailoring Supplies & Specialty Goods>
					["coord"] = { 8.1, 55.8, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4827),	-- Wizard's Belt
						i(4828),	-- Nightwind Belt
						i(4829),	-- Dreamer's Belt
						i(4790),	-- Inferno Cloak
						i(4792),	-- Spirit Cloak
						i(4793),	-- Sylvan Cloak
						i(5772),	-- Pattern: Red Woolen Bag
						i(6275),	-- Pattern: Greater Adept's Robe
					},
				}),
				n(1459, {	-- Naela Trance <Bowyer>
					["coord"] = { 11.3, 58.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11304),	-- Fine Longbow
					},
				}),
				n(1448, {	-- Neal Allen <Engineering Supplies & General Goods>
					["coord"] = { 10.8, 56.8, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(20970, {	-- Design: Pendant of the Agate Shield
							["isLimited"] = true,
						}),
					},
				}),
				n(3178, {	-- Stuart Fleming <Fisherman>
					["coord"] = { 8.0, 58.3, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6368),	-- Recipe: Rainbow Fin Albacore
						i(6369),	-- Recipe: Rockscale Cod
						i(17062),	-- Recipe: Mithril Head Trout
					},
				}),
				n(1460, {	-- Unger Statforth <Horse Breeder>
					["coord"] = { 8.6, 54.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2411),	-- Black Stallion Bridle
						i(2414),	-- Pinto Bridle
						i(5655),	-- Chestnut Mare Bridle
						i(5656),	-- Brown Horse Bridle
					},
				}),
				n(2679, {	-- Wenna Silkbeard <Special Goods Dealer>
					["coord"] = { 25.6, 25.8, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4827),	-- Wizard's Belt
						i(4828),	-- Nightwind Belt
						i(4829),	-- Dreamer's Belt
						i(4830),	-- Saber Leggings
						i(4831),	-- Stalking Pants
						i(4832),	-- Mystic Sarong
						i(4833),	-- Glorious Shoulders
						i(4835),	-- Elite Shoulders
						i(7114),	-- Pattern: Azure Silk Gloves
						i(7290),	-- Pattern: Red Whelp Gloves
						i(7613),	-- Pattern: Green Leather Armor
					},
				})
			}),
			n(ZONE_DROPS, {
				i(3022, {	-- Bluegill Breeches
					["cr"] = 1028,	-- Bluegill Muckdweller
				}),
				i(2046, {	-- Bluegill Kukri
					["cr"] = 1027,	-- Bluegill Warrior
				}),
				i(1560, {	-- Bluegill Sandals
					["cr"] = 1025,	-- Bluegill Puddlejumper
				}),
				i(2611, {	-- Crude Flint
					["questID"] = 277,	-- Fire Taboo
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						14425,	-- Gnawbone
						1014,	-- Mosshide Alpha
						1012,	-- Mosshide Brute
						1010,	-- Mosshide Fenrunner
						1009,	-- Mosshide Mistweaver
						1013,	-- Mosshide Mystic
						1011,	-- Mosshide Trapper
					},
				}),
				i(2084, {	-- Darksteel Bastard Sword
					["cr"] = 1054,	-- Dark Iron Demolitionist
				}),
				i(1955, {	-- Dragonmaw Chain Boots
					["cr"] = 1035,	-- Dragonmaw Swamprunner
				}),
				i(753, {	-- Dragonmaw Shortsword
					["cr"] = 1036,	-- Dragonmaw Centurion
				}),
				i(7131, {	-- Dragonmaw Shinbone
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["crs"] = {
						2091,	-- Chieftain Nek'rosh
						1037,	-- Dragonmaw Battlemaster
						1057,	-- Dragonmaw Bonewarder
						1036,	-- Dragonmaw Centurion
						1034,	-- Dragonmaw Raider
						1038,	-- Dragonmaw Shadowwarder
						1035,	-- Dragonmaw Swamprunner
					},
					["groups"] = {
						{
							["itemID"] = 7134,	-- Sturdy Dragonmaw Shinbone
							["questID"] = 1846,	-- Dragonmaw Shinbones
						},
					},
				}),
				i(3337, {	-- Dragonmaw War Banner
					["questID"] = 464,	-- War Banners
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						2091,	-- Chieftain Nek'rosh
						1037,	-- Dragonmaw Battlemaster
						1057,	-- Dragonmaw Bonewarder
						1036,	-- Dragonmaw Centurion
						1034,	-- Dragonmaw Raider
						1038,	-- Dragonmaw Shadowwarder
						1035,	-- Dragonmaw Swamprunner
					},
				}),
				i(11150, {	-- Formula: Enchant Gloves - Mining
					["crs"] = {
						1364,	-- Balgaras the Foul
						1054,	-- Dark Iron Demolitionist
						1051,	-- Dark Iron Dwarf
						1052,	-- Dark Iron Saboteur
						1053,	-- Dark Iron Tunneler
					},
				}),
				i(3348, {	-- Giant Crocolisk Skin
					["questID"] = 471,	-- Apprentice's Duties
					["races"] = ALLIANCE_ONLY,
					["cr"] = 2089,	-- Giant Wetlands Crocolisk
				}),
				i(892, {	-- Gnoll Casting Gloves
					["cr"] = 1009,	-- Mosshide Mistweaver
				}),
				i(3340, {	-- Incendicite Ore
					["questID"] = 466,	-- Search for Incendicite
					["races"] = ALLIANCE_ONLY,
				}),
				i(2702, {	-- Lightforge Ingot
					["questID"] = 526,	-- Lightforge Ingots
					["cr"] = 1418,	-- Bluegill Raider
					["races"] = ALLIANCE_ONLY,
					["altQuests"] = {
						324,	-- The Lost Ingots
					},
				}),
				i(5788, {	-- Pattern: Thick Murloc Armor
					["cr"] = 1160,	-- Captain Halyndor
				}),
				i(6930, {	-- Rod of Channeling
					["allianceQuestID"] = 1804,	-- Tome of the Cabal
					["hordeQuestID"] = 1805,	-- Tome of the Cabal
					["classes"] = { WARLOCK },
					["crs"] = {
						1057,	-- Dragonmaw Bonewarder
						1038,	-- Dragonmaw Shadowwarder
					},
				}),
				i(6838, {	-- Scorched Spider Fang
					["questID"] = 1701,	-- Fire Hardened Mail
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["crs"] = {
						4040,	-- Cave Stalker
						1111,	-- Leech Stalker
					},
				}),
				i(3349, {	-- Sida's Bag
					["questID"] = 470,	-- Digging Through the Ooze
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						1032,	-- Black Ooze
						1031,	-- Crimson Ooze
						1033,	-- Monstrous Ooze
					},
				}),
				i(3076, {	-- Smoldering Boots
					["cr"] = 1042,	-- Red Whelp
				}),
				i(3074, {	-- Smoldering Gloves
					["cr"] = 1043,	-- Lost Whelp
				}),
				i(3073, {	-- Smoldering Pants
					["cr"] = 1069,	-- Crimson Whelp
				}),
				i(3072, {	-- Smoldering Robe
					["cr"] = 1044,	-- Flamesnorting Whelp
				}),
				i(6315, {	-- Steelarrow Crossbow
					["cr"] = 6523,	-- Dark Iron Rifleman
				}),
				i(5233, {	-- Stone of Relu
					["questID"] = 943,	-- The Absent Minded Prospector (5/5)
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						1020,	-- Mottled Raptor
						1023,	-- Mottled Razormaw
						1021,	-- Mottled Screecher
						1022,	-- Mottled Scytheclaw
					},
				}),
				i(8499, {	-- Tiny Crimson Whelpling
					["crs"] = {
						1069,	-- Crimson Whelp
						1044,	-- Flamesnorting Whelp
						1042,	-- Red Whelp
					},
				}),
				i(756, {	-- Tunnel Pick
					["cr"] = 1053,	-- Dark Iron Tunneler
				}),
				i(3397, {	-- Young Crocolisk Skin
					["questID"] = 484,	-- Young Crocolisk Skins
					["races"] = ALLIANCE_ONLY,
					["cr"] = 1417,	-- Young Wetlands Crocolisk
				}),
			}),
		},
	}),
}));