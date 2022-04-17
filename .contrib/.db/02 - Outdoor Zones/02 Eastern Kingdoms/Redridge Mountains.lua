---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(REDRIDGE_MOUNTAINS, {
		["lore"] = "The Redridge Mountains, or the Red Ridge Mountains, are located east of Elwynn Forest, northeast of Duskwood, and south of the Burning Steppes. Although it may be considered contested, Horde characters have no settlements or NPCs and it is thus a place they use mostly for passing through to reach Flame Crest or Stonard.\n\nAn idyllic region of rushing rivers, towering elms and rising elevations, the Redridge Mountains are under Stormwind's protection (though since the second war it is technically independent), and remain one of the last peaceful regions in Azeroth. The people are content and calm, and supply Stormwind with timber, fish, and crops. A force of Blackrock orcs from the Burning Steppes has secured Stonewatch Keep, but so far the orcs keep to themselves.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(780, {	-- Explore Redridge Mountains
					-- #if BEFORE WRATH
					["description"] = "Explore Redridge Mountains, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["235:270:399:129"] = 97,	-- Alther's Mill
				["250:250:654:161"] = 1000,	-- Galardell Valley
				["255:300:500:215"] = 70,	-- Stonewatch
				["275:256:277:0"] = 996,	-- Render's Camp
				["320:210:595:320"] = 71,	-- Stonewatch Falls
				["340:195:83:197"] = 69,	-- Lakeshire
				["365:245:121:72"] = 95,	-- Redridge Canyons
				["365:350:0:284"] = 1002,	-- Three Corners
				["430:290:187:333"] = 1001,	-- Lakeridge Highway
				["465:255:484:361"] = 997,	-- Render's Valley
				["535:275:133:240"] = 68,	-- Lake Everstill
				--[[
				[96] = 6,                                -- Tower of Ilgalar
				[98] = 8,                                -- Rethban Caverns
				[998] = 11,                              -- Render's Rock
				[999] = 12,                              -- Stonewatch Tower
				[2099] = 16,                             -- Stonewatch Keep
				]]--
			})),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(5, {	-- Lakeshire, Redridge
					["cr"] = 931,	-- Ariena Stormfeather <Gryphon Master>
					["coord"] = { 30.6, 59.6, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(124, {	-- A Baying of Gnolls
					["qg"] = 415,	-- Verner Osgood
					["coord"] = { 31.0, 47.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
				}),
				q(129, {	-- A Free Lunch
					["qg"] = 379,	-- Darcy
					["coord"] = { 26.7, 44.3, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5534, 1 },	-- Parker's Lunch
					},
					["lvl"] = 12,
				}),
				q(94, {	-- A Watchful Eye
					["qg"] = 313,	-- Theocritus
					["coord"] = { 65.2, 69.8, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1083, 1 },	-- Glyph of Azora
					},
					["lvl"] = 20,
				}),
				q(2282, {	-- Alther's Mill
					["qg"] = 6966,	-- Lucius
					["sourceQuest"] = 2281,	-- Redridge Rendezvous
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 5060, 1 },	-- Thieves' Tools
						{ "i", 7871, 1 },	-- Token of Thievery
					},
					["lvl"] = 16,
					["groups"] = {
						{
							["itemID"] = 7871,	-- Token of Thievery
							["questID"] = 2282,	-- Alther's Mill
							["coord"] = { 52.0, 44.8, REDRIDGE_MOUNTAINS },
						},
						i(7907),	-- Certificate of Thievery
					},
				}),
				q(34, {	-- An Unwelcome Guest
					["qg"] = 342,	-- Martie Jainrose
					["coord"] = { 21.9, 46.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						{
							["itemID"] = 3631,	-- Bellygrub's Tusk
							["questID"] = 34,	-- An Unwelcome Guest
							["cr"] = 345,	-- Bellygrub
							["coord"] = { 16.6, 49.8, REDRIDGE_MOUNTAINS },
						},
						i(2562),	-- Bouquet of Scarlet Begonias
					},
				}),
				q(246, {	-- Assessing the Threat
					["qg"] = 1070,	-- Deputy Feldon
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
				}),
				q(128, {	-- Blackrock Bounty
					["qg"] = 903,	-- Guard Howe
					["coord"] = { 31.5, 58.0, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(20, {	-- Blackrock Menace
					["qg"] = 382,	-- Marshal Marris
					["coord"] = { 33.4, 49.0, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3014, 10 },	-- Battleworn Axe
					},
					["lvl"] = 18,
				}),
				q(131, {	-- Delivering Daffodils
					["qg"] = 342,	-- Martie Jainrose
					["sourceQuest"] = 130,	-- Visit the Herbalist
					["coord"] = { 21.9, 46.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1325, 1 },	-- Daffodil Bouquet
					},
					["lvl"] = 12,
					["groups"] = {
						i(1326),	-- Sauteed Sunfish
					},
				}),
				q(116, {	-- Dry Times
					["qg"] = 346,	-- Barkeep Daniels
					["coord"] = { 26.5, 44.2, REDRIDGE_MOUNTAINS },
					["maps"] = {
						DUSKWOOD,
						ELWYNN_FOREST,
						STORMWIND_CITY,
						WESTFALL,
					},
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1942, 1 },	-- Bottle of Moonshine
						{ "i", 1941, 1 },	-- Cask of Merlot
						{ "i", 1262, 1 },	-- Keg of Thunderbrew
						{ "i", 1939, 1 },	-- Skin of Sweet Rum
					},
					["lvl"] = 12,
					["groups"] = {
						i(1270),	-- Finely Woven Cloak
						i(10456),	-- A Bulging Coin Purse
					},
				}),
				q(244, {	-- Encroaching Gnolls
					["qg"] = 464,	-- Guard Parker
					["coord"] = { 17.3, 69.5, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
				}),
				q(3741, {	-- Hilary's Necklace
					["qg"] = 8965,	-- Shawn
					["coord"] = { 29.3, 53.4, REDRIDGE_MOUNTAINS },
					["cost"] = {
						{ "i", 10958, 1 },	-- Hilary's Necklace
					},
					["lvl"] = 12,
				}),
				q(126, {	-- Howling in the Hills
					["qg"] = 415,	-- Verner Osgood
					["coord"] = { 31.0, 47.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3614, 1},	-- Yowler's Paw
					},
					["lvl"] = 15,
					["groups"] = {
						{
							["itemID"] = 3614,	-- Yowler's Paw
							["questID"] = 126,	-- Howling in the Hills
							["cr"] = 518,	-- Yowler
							["coord"] = { 28.8, 23.2, REDRIDGE_MOUNTAINS },
						},
						i(1319),	-- Ring of Iron Will
						i(2910),	-- Gold Militia Boots
					},
				}),
				q(248, {	-- Looking Further
					["provider"] = { "o", 31 },	-- Old Lion Statue
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(145, {	-- Messenger to Darkshire (1/2)
					["qg"] = 344,	-- Magistrate Solomon
					["sourceQuest"] = 144,	-- Messenger to Westfall (2/2)
					["coord"] = { 30.0, 44.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1409, 1 },	-- Solomon's Plea to Darkshire
					},
					["lvl"] = 18,
				}),
				q(146, {	-- Messenger to Darkshire (2/2)
					["qg"] = 263,	-- Lord Ello Ebonlocke
					["sourceQuest"] = 145,	-- Messenger to Darkshire (1/2)
					["coord"] = { 72.0, 46.6, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1410, 1 },	-- Ebonlocke's Response to Solomon
					},
					["lvl"] = 18,
				}),
				q(120, {	-- Messenger to Stormwind (1/2)
					["qg"] = 344,	-- Magistrate Solomon
					["coord"] = { 30.0, 44.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1293, 1 },	-- The State of Lakeshire
					},
					["lvl"] = 14,
				}),
				q(121, {	-- Messenger to Stormwind (2/2)
					["qg"] = 466,	-- General Marcus Jonathan
					["sourceQuest"] = 120,	-- Messenger to Stormwind (1/2)
					["coord"] = { 63.8, 75.4, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1294, 1 },	-- The General's Response
					},
					["lvl"] = 14,
				}),
				q(143, {	-- Messenger to Westfall (1/2)
					["qg"] = 344,	-- Magistrate Solomon
					["sourceQuest"] = 121,	-- Messenger to Stormwind (2/2)
					["coord"] = { 30.0, 44.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1407, 1 },	-- Solomon's Plea to Westfall
					},
					["lvl"] = 14,
				}),
				q(144, {	-- Messenger to Westfall (2/2)
					["qg"] = 234,	-- Gryan Stoutmantle
					["sourceQuest"] = 143,	-- Messenger to Westfall (1/2)
					["coord"] = { 56.2, 47.6, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1408, 1 },	-- Stoutmantle's Response to Solomon
					},
					["lvl"] = 14,
				}),
				q(219, {	-- Missing In Action
					["qg"] = 349,	-- Corporal Keeshan
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						i(3555),	-- Robe of Solomon
						i(1275),	-- Deputy Chain Coat
						i(3431),	-- Bone-studded Leather
					},
				}),
				q(249, {	-- Morganth
					["provider"] = { "o", 31 },	-- Old Lion Statue
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3617, 1 },	-- Pendant of Shadow
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 3617,	-- Pendant of Shadow
							["questID"] = 249,	-- Morganth
							["cr"] = 397,	-- Morganth
							["coord"] = { 80, 49, REDRIDGE_MOUNTAINS },
						},
						i(5274),	-- Rose Mantle
					},
				}),
				q(150, {	-- Murloc Poachers
					["qg"] = 381,	-- Dockmaster Baren
					["coord"] = { 27.7, 47.3, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1468, 8 },	-- Murloc Fin
					},
					["lvl"] = 20,
					["groups"] = {
						i(3567),	-- Dwarven Fishing Pole
					},
				}),
				q(92, {	-- Redridge Goulash
					["qg"] = 343,	-- Chef Breanna
					["coord"] = { 22.7, 44.0, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2296, 5 },	-- Great Goretusk Snout
						{ "i", 1080, 5 },	-- Tough Condor Meat
						{ "i", 1081, 5 },	-- Crisp Spider Meat
					},
					["lvl"] = 15,
					["groups"] = {
						i(1082),	-- Redridge Goulash
						i(2699),	-- Recipe: Redridge Goulash
					},
				}),
				q(347, {	-- Rethban Ore
					["qg"] = 341,	-- Foreman Oslow
					["sourceQuest"] = 345,	-- Ink Supplies (Elwynn Forest)
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2798, 5 },	-- Rethban Ore
					},
					["lvl"] = 20,
				}),
				q(119, {	-- Return to Verner
					["qg"] = 514,	-- Smith Argus
					["coord"] = { 41.7, 65.5, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1284, 1 },	-- Crate of Horseshoes
					},
					["lvl"] = 13,
				}),
				q(127, {	-- Selling Fish
					["qg"] = 381,	-- Dockmaster Baren
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						i(3663),	-- Murloc Fin Soup
						i(1322),	-- Fishliver Oil
						i(3680),	-- Recipe: Murloc Fin Soup
					},
				}),
				q(115, {	-- Shadow Magic
					["qg"] = 382,	-- Marshal Marris
					["coord"] = { 33.4, 49.0, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(91, {	-- Solomon's Law
					["qg"] = 900,	-- Bailiff Conacher
					["coord"] = { 29.6, 44.3, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1075, 10 },	-- Shadowhide Pendant
					},
					["lvl"] = 17,
				}),
				q(19, {	-- Tharil'zun
					["qg"] = 382,	-- Marshal Marris
					["coord"] = { 33.4, 49.0, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1260, 1},	-- Tharil'zun's Head
					},
					["lvl"] = 18,
					["groups"] = {
						{
							["itemID"] = 1260,	-- Tharil'zun's Head
							["questID"] = 19,	-- Tharil'zun
							["cr"] = 486,	-- Tharil'zun
							["coord"] = { 68.4, 58.8, REDRIDGE_MOUNTAINS },
						},
						i(1276),	-- Fire Hardened Buckler
						i(6093),	-- Orc Crusher
					},
				}),
				q(132, {	-- The Defias Brotherhood (2/7)
					["qg"] = 266,	-- Wiley the Black
					["sourceQuest"] = 65,	-- The Defias Brotherhood (1/7)
					["coord"] = { 26.6, 45.3, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1327, 1 },	-- Wiley's Note
					},
					["lvl"] = 14,
				}),
				q(89, {	-- The Everstill Bridge
					["qg"] = 341,	-- Foreman Oslow
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2856, 5 },	-- Iron Pike
						{ "i", 1013, 5 },	-- Iron Rivet
					},
					["lvl"] = 15,
					["groups"] = {
						i(1310),	-- Smith's Trousers
						i(1303),	-- Bridgeworker's Gloves
						i(1304),	-- Riding Gloves
					},
				}),
				q(125, {	-- The Lost Tools
					["qg"] = 341,	-- Foreman Oslow
					["coord"] = { 32.2, 48.7, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1309, 1 },	-- Oslow's Toolbox
					},
					["lvl"] = 15,
					["groups"] = {
						{
							["itemID"] = 1309,	-- Oslow's Toolbox
							["questID"] = 125,	-- The Lost Tools
							["coord"] = { 41.4, 54.4, REDRIDGE_MOUNTAINS },
						},
						i(2313),	-- Medium Armor Kit
					},
				}),
				q(118, {	-- The Price of Shoes
					["qg"] = 415,	-- Verner Osgood
					["coord"] = { 31.0, 47.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1283, 1 },	-- Verner's Notes
					},
					["lvl"] = 14,
				}),
				q(1699, {	-- The Rethban Gauntlet
					["qg"] = 6166,	-- Yorus Barleybrew
					-- #if AFTER TBC
					["sourceQuests"] = {
						1698,	-- Yorus Barleybrew
						10371,	-- Yorus Barleybrew
					},
					-- #else
					["sourceQuest"] = 1698,	-- Yorus Barleybrew
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
				q(1702, {	-- The Shieldsmith
					["qg"] = 6166,	-- Yorus Barleybrew
					["sourceQuest"] = 1699,	-- The Rethban Gauntlet
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 6843, 1 },	-- Cask of Scalder
					},
					["lvl"] = 20,
					["groups"] = {
						i(6970),	-- Furen's Favor
					},
				}),
				q(178, {	-- Theocritus' Retrieval
					["provider"] = { "i", 1962 },	-- Glowing Shadowhide Pendant
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1956, 1 },	-- Faded Shadowhide Pendant
					},
					["lvl"] = 15,
					["groups"] = {
						i(1970),	-- Restoring Balm
					},
				}),
				q(122, {	-- Underbelly Scales
					["qg"] = 415,	-- Verner Osgood
					["coord"] = { 31.0, 47.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1221, 6},	-- Underbelly Whelp Scale
					},
					["lvl"] = 14,
					["groups"] = {
						i(6092),	-- Black Whelp Boots
						i(1302),	-- Black Whelp Gloves
					},
				}),
				q(130, {	-- Visit the Herbalist
					["qg"] = 464,	-- Guard Parker
					["sourceQuest"] = 129,	-- A Free Lunch
					["coord"] = { 17.3, 69.5, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(169, {	-- Wanted: Gath'Ilzogg
					["provider"] = { "o", 60 },	-- Wanted: Gath'Ilzogg
					["coord"] = { 29.6, 46.2, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3633, 1 },	-- Head of Gath'Ilzogg
					},
					["lvl"] = 15,
					["groups"] = {
						{
							["itemID"] = 3633,	-- Head of Gath'Ilzogg
							["questID"] = 169,	-- Wanted: Gath'Ilzogg
							["cr"] = 334,	-- Gath'Ilzogg <Warlord of the Blackrock Clan>
							["coord"] = { 69.6, 55.8, REDRIDGE_MOUNTAINS },
						},
					},
				}),
				q(180, {	-- Wanted: Lieutenant Fangore
					["provider"] = { "o", 47 },	-- Wanted: Lieutenant Fangore
					["coord"] = { 26.7, 46.5, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3632, 1 },	-- Fangore's Paw
					},
					["lvl"] = 15,
					["groups"] = {
						{
							["itemID"] = 3632,	-- Fangore's Paw
							["questID"] = 180,	-- Wanted: Lieutenant Fangore
							["cr"] = 703,	-- Lieutenant Fangore
							["coord"] = { 80.0, 39.0, REDRIDGE_MOUNTAINS },
						},
					},
				}),
				q(1698, {	-- Yorus Barleybrew
					["qgs"] = {
						5479,	-- Wu Shen <Warrior Trainer>
						7315,	-- Darnath Bladesigner <Warrior Trainer>
					},
					["coords"] = {
						{ 48.6, 35.6, DARNASSUS },
						{ 78.8, 45.6, STORMWIND_CITY },
					},
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(10371, {	-- Yorus Barleybrew (Draenei)
					["qg"] = 16771,	-- Ahonan
					["coord"] = { 55.0, 83.4, THE_EXODAR },
					["timeline"] = { "removed 4.0.3.10000" },
					["races"] = { DRAENEI },
					["classes"] = { WARRIOR },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				})),
			}),
			n(RARES, {
				n(14273, {  -- Boulderheart
					["coord"] = { 88.8, 67.0, REDRIDGE_MOUNTAINS },
				}),
				n(616, {  -- Chatter
					["coords"] = {
						{ 51.2, 37.2, REDRIDGE_MOUNTAINS },
						{ 56.0, 41.4, REDRIDGE_MOUNTAINS },
						{ 58.6, 41.0, REDRIDGE_MOUNTAINS },
						{ 57.8, 49.8, REDRIDGE_MOUNTAINS },
						{ 53.6, 48.6, REDRIDGE_MOUNTAINS },
						{ 49.2, 41.8, REDRIDGE_MOUNTAINS },
					},
					["groups"] = {
						i(3229),	-- Tarantula Silk Sash
					},
				}),
				n(584, {  -- Kazon
					["coords"] = {
						{ 33.0, 6.6, REDRIDGE_MOUNTAINS },
						{ 36.0, 8.6, REDRIDGE_MOUNTAINS },
						{ 36.6, 11.6, REDRIDGE_MOUNTAINS },
						{ 38.4, 13.6, REDRIDGE_MOUNTAINS },
						{ 42.4, 15.4, REDRIDGE_MOUNTAINS },
					},
					["groups"] = {
						i(3231),	-- Cutthroat Pauldrons
						i(2058),	-- Kazon's Maul
					},
				}),
				n(14271, {  -- Ribchaser
					["coords"] = {
						{ 16.2, 60.6, REDRIDGE_MOUNTAINS },
						{ 14.0, 64.2, REDRIDGE_MOUNTAINS },
						{ 18.8, 64.8, REDRIDGE_MOUNTAINS },
						{ 16.0, 67.2, REDRIDGE_MOUNTAINS },
						{ 28.4, 84.0, REDRIDGE_MOUNTAINS },
						{ 32.6, 78.8, REDRIDGE_MOUNTAINS },
						{ 33.6, 84.8, REDRIDGE_MOUNTAINS },
					},
				}),
				n(947, {  -- Rohh the Silent
					["coords"] = {
						{ 76.0, 29.4, REDRIDGE_MOUNTAINS },
						{ 76.0, 34.2, REDRIDGE_MOUNTAINS },
						{ 73.0, 41.6, REDRIDGE_MOUNTAINS },
						{ 78.0, 40.4, REDRIDGE_MOUNTAINS },
						{ 76.4, 38.6, REDRIDGE_MOUNTAINS },
						{ 83.0, 47.8, REDRIDGE_MOUNTAINS },
						{ 80.2, 48.6, REDRIDGE_MOUNTAINS },
						{ 83.2, 51.0, REDRIDGE_MOUNTAINS },
						{ 83.4, 57.6, REDRIDGE_MOUNTAINS },
					},
					["groups"] = {
						i(4446),	-- Blackvenom Blade
						i(4447),	-- Cloak of Night
					},
				}),
				n(14269, {  -- Seeker Aqualon
					["coords"] = {
						{ 46.2, 59.6, REDRIDGE_MOUNTAINS },
						{ 50.2, 61.4, REDRIDGE_MOUNTAINS },
						{ 28.2, 58.2, REDRIDGE_MOUNTAINS },
						{ 63.6, 62.6, REDRIDGE_MOUNTAINS },
						{ 71.6, 64.6, REDRIDGE_MOUNTAINS },
						{ 75.8, 67.4, REDRIDGE_MOUNTAINS },
						{ 73.2, 71.2, REDRIDGE_MOUNTAINS },
					},
				}),
				n(14272, {  -- Snarlflare
					["coords"] = {
						{ 36.4, 66.8, REDRIDGE_MOUNTAINS },
						{ 43.4, 30.0, REDRIDGE_MOUNTAINS },
						{ 49.2, 33.0, REDRIDGE_MOUNTAINS },
						{ 54.6, 37.2, REDRIDGE_MOUNTAINS },
					},
				}),
				n(14270, {  -- Squiddic
					["coords"] = {
						{ 42.8, 52.8, REDRIDGE_MOUNTAINS },
						{ 39.0, 60.8, REDRIDGE_MOUNTAINS },
						{ 46.0, 63.4, REDRIDGE_MOUNTAINS },
						{ 52.6, 67.6, REDRIDGE_MOUNTAINS },
						{ 54.6, 60.0, REDRIDGE_MOUNTAINS },
						{ 47.6, 54.4, REDRIDGE_MOUNTAINS },
					},
				}),
			}),
			prof(SKINNING, {
				["crs"] = {
					441,	-- Black Dragon Whelp
					14272,	-- Snarlflare
				},
				["groups"] = {
					i(7286),	-- Black Whelp Scale
				},
			}),
			n(VENDORS, {
				n(777, {	-- Amy Davenport <Tradeswoman>
					["coord"] = { 29.0, 47.6, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5772),	-- Pattern: Red Woolen Bag
						i(20576),	-- Pattern: Black Whelp Tunic
					},
				}),
				n(844, {	-- Antonio Perelli <Traveling Salesman>
					["coord"] = { 29.1, 47.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4777),	-- Ironwood Maul
						i(4778),	-- Heavy Spiked Mace
						i(4794),	-- Wolf Bracers
						i(4795),	-- Bear Bracers
						i(4796),	-- Owl Bracers
						i(4817),	-- Blessed Claymore
						i(4818),	-- Executioner's Sword
					},
				}),
				n(3097, {	-- Bernard Brubaker <Leather Armor Merchant>
					["coord"] = { 88.2, 71.6, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4794),	-- Wolf Bracers
						i(4795),	-- Bear Bracers
						i(4796),	-- Owl Bracers
					},
				}),
				n(3096, {	-- Captured Servant of Azora <Specialist Tailoring Supplies>
					["coord"] = { 74.5, 79.6, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4790),	-- Inferno Cloak
						i(4792),	-- Spirit Cloak
						i(4793),	-- Sylvan Cloak
					},
				}),
				n(2697, {	-- Clyde Ranthal <Leatherworking Supplies>
					["coord"] = { 89.0, 70.2, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7289),	-- Pattern: Black Whelp Cloak
					},
				}),
				n(3091, {	-- Franklin Hamar <Tailoring Supplies>
					["coord"] = { 27.2, 45.4, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4781),	-- Whispering Vest
						i(4782),	-- Solstice Robe
						i(4786),	-- Wise Man's Belt
					},
				}),
				n(3085, {	-- Gloria Femmel <Cooking Supplies>
					["coord"] = { 26.7, 43.6, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
				n(793, {	-- Kara Adams <Shield Crafter>
					["coord"] = { 30.6, 46.6, REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4820),	-- Guardian Buckler
						i(4821),	-- Bear Buckler
						i(4822),	-- Owl's Disk
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(3014, {	-- Battleworn Axe
					["questID"] = 20,	-- Blackrock Menace
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						435,	-- Blackrock Champion
						4464,	-- Blackrock Gladiator
						440,	-- Blackrock Grunt
						4462,	-- Blackrock Hunter
						485,	-- Blackrock Outrunner
						437,	-- Blackrock Renegade
						4064,	-- Blackrock Scout
						4065,	-- Blackrock Sentry
						436,	-- Blackrock Shadowcaster
						4463,	-- Blackrock Summoner
						615,	-- Blackrock Tracker
					},
				}),
				i(1446, {	-- Blackrock Boots
					["cr"] = 440,	-- Blackrock Grunt
				}),
				i(1455, {	-- Blackrock Champion's Axe
					["crs"] = {
						435,	-- Blackrock Champion
						4464,	-- Blackrock Gladiator
					},
				}),
				i(1448, {	-- Blackrock Gauntlets
					["crs"] = {
						485,	-- Blackrock Outrunner
						4064,	-- Blackrock Scout
					},
				}),
				i(1296, {	-- Blackrock Mace
					["crs"] = {
						437,	-- Blackrock Renegade
						4065,	-- Blackrock Sentry
					},
				}),
				i(1445, {	-- Blackrock Pauldrons
					["crs"] = {
						615,	-- Blackrock Tracker
						4462,	-- Blackrock Hunter
					},
				}),
				i(1287, {	-- Giant Tarantula Fang
					["cr"] = 442,	-- Tarantula
				}),
				i(1962, {	-- Glowing Shadowhide Pendant
					["questID"] = 178,	-- Theocritus' Retrieval
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						703,	-- Lieutenant Fangore
						434,	-- Rabid Shadowhide Gnoll
						947,	-- Rohh the Silent
						579,	-- Shadowhide Assassin
						432,	-- Shadowhide Brute
						429,	-- Shadowhide Darkweaver
						433,	-- Shadowhide Gnoll
						431,	-- Shadowhide Slayer
						568,	-- Shadowhide Warrior
					},
				}),
				i(1213, {	-- Gnoll Kindred Bracers
					["cr"] = 712,	-- Redridge Thrasher
				}),
				i(1214, {	-- Gnoll Punisher
					["crs"] = {
						14271,	-- Ribchaser
						426,	-- Redridge Brute
					},
				}),
				i(1440, {	-- Gnoll Skull Basher
					["cr"] = 446,	-- Redridge Basher
				}),
				i(1211, {	-- Gnoll War Harness
					["cr"] = 423,	-- Redridge Mongrel
				}),
				i(2296, {	-- Great Goretusk Snout
					["questID"] = 92,	-- Redridge Goulash
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						345,	-- Bellygrub
						547,	-- Great Goretusk
					},
				}),
				i(1218, {	-- Heavy Gnoll War Club
					["cr"] = 445,	-- Redridge Alpha
				}),
				i(2856, {	-- Iron Pike
					["questID"] = 89,	-- The Everstill Bridge
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						446,	-- Redridge Basher
						426,	-- Redridge Brute
						580,	-- Redridge Drudger
						430,	-- Redridge Mystic
						14271,	-- Ribchaser
					},
				}),
				i(1013, {	-- Iron Rivet
					["questID"] = 89,	-- The Everstill Bridge
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						446,	-- Redridge Basher
						426,	-- Redridge Brute
						580,	-- Redridge Drudger
						430,	-- Redridge Mystic
						14271,	-- Ribchaser
					},
				}),
				i(1299, {	-- Lesser Belt of the Spire
					["cr"] = 436,	-- Blackrock Shadowcaster
				}),
				i(1300, {	-- Lesser Staff of the Spire
					["cr"] = 436,	-- Blackrock Shadowcaster
				}),
				i(1220, {	-- Lupine Axe
					["cr"] = 580,	-- Redridge Drudger
				}),
				i(1406, {	-- Pearl-encrusted Spear
					["cr"] = 544,	-- Murloc Nightcrawler
				}),
				i(1219, {	-- Redridge Machete
					["cr"] = 424,	-- Redridge Poacher
				}),
				i(2798, {	-- Rethban Ore
					["cr"] = 580,	-- Redridge Drudger
					["questID"] = 347,	-- Rethban Ore
					["races"] = ALLIANCE_ONLY,
				}),
				i(1462, {	-- Ring of the Shadow
					["cr"] = 429,	-- Shadowhide Darkweaver
				}),
				i(1473, {	-- Riverside Staff
					["cr"] = 545,	-- Murloc Tidecaller
				}),
				i(2566, {	-- Sacrificial Robes
					["cr"] = 397,	-- Morganth
				}),
				i(1469, {	-- Scimitar of Atun
					["crs"] = {
						14270,	-- Squiddic
						578,	-- Murloc Scout
					},
				}),
				i(2175, {	-- Shadowhide Battle Axe
					["cr"] = 568,	-- Shadowhide Warrior
				}),
				i(1457, {	-- Shadowhide Mace
					["cr"] = 433,	-- Shadowhide Gnoll
				}),
				i(1458, {	-- Shadowhide Maul
					["cr"] = 432,	-- Shadowhide Brute
				}),
				i(1075, {	-- Shadowhide Pendant
					["questID"] = 91,	-- Solomon's Law
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						703,	-- Lieutenant Fangore
						434,	-- Rabid Shadowhide Gnoll
						947,	-- Rohh the Silent
						579,	-- Shadowhide Assassin
						432,	-- Shadowhide Brute
						429,	-- Shadowhide Darkweaver
						433,	-- Shadowhide Gnoll
						431,	-- Shadowhide Slayer
						568,	-- Shadowhide Warrior
					},
				}),
				i(1459, {	-- Shadowhide Scalper
					["cr"] = 579,	-- Shadowhide Assassin
				}),
				i(1460, {	-- Shadowhide Two-handed Sword
					["cr"] = 434,	-- Rabid Shadowhide Gnoll
				}),
				i(1461, {	-- Slayer's Battle Axe
					["cr"] = 431,	-- Shadowhide Slayer
				}),
				i(1080, {	-- Tough Condor Meat
					["questID"] = 92,	-- Redridge Goulash
					["cr"] = 428,	-- Dire Condor
					["races"] = ALLIANCE_ONLY,
				}),
				i(1221, {	-- Underbelly Whelp Scale
					["questID"] = 122,	-- Underbelly Scales
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						14272,	-- Snarlflare
						441,	-- Black Dragon Whelp
					},
				}),
			}),
		},
	}),
}));