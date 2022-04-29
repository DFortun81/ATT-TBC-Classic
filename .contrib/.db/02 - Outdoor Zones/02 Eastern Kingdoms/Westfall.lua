---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(WESTFALL, {
		["lore"] = "Westfall borders the Kingdom of Stormwind and is mostly populated by humans not under the Alliance’s complete control. The region was stolen right under the Alliance’s nose by its own bitter people. This rich land has lain fallow since the Second War, but it is now held by the Defias Brotherhood. Stormwind claims the land as its own, but it has found little time to be concerned with it, with insufficient funds and might to retake the region. A handful of farmers still try to keep their land, and some even attempt a tithe to Stormwind every year, but most only grow enough to feed themselves. The Defias Brotherhood controls much of the region, focused in the southern area of Moonbrook.\n\nOnce a rich agricultural center, much of Westfall now lies fallow and forgotten. The Defias Brotherhood, renegade humans who wield secrecy and technology against Stormwind, control much of the area. Bandits and gnolls raid those farms that remain, and Stormwind’s resources are stretched too thin to protect the beleaguered populace. Westfall has the mild temperatures of Elwynn, but winds batter it both from the sea and from Duskwood. The bare farmlands add little to break the wind, which can cut through clothing on a blustery day.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(802, {	-- Explore Westfall
					-- #if BEFORE WRATH
					["description"] = "Explore Westfall, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["165:200:488:0"] = 916,	-- The Jansen Stead
				["195:240:442:241"] = 108,	-- Sentinel Hill
				["200:185:208:375"] = 921,	-- Demont's Place
				["200:240:524:252"] = 917,	-- The Dead Acre
				["210:215:387:11"] = 109,	-- Furlbrow's Pumpkin Farm
				["215:215:307:29"] = 111,	-- Jangolode Mine
				["220:200:317:331"] = 20,	-- Moonbrook
				["225:205:328:148"] = 918,	-- The Molsen Farm
				["225:210:459:105"] = 107,	-- Saldean's Farm
				["225:256:220:102"] = 113,	-- Gold Coast Quarry
				["256:175:339:418"] = 920,	-- The Dagger Hills
				["280:190:205:467"] = 115,	-- Westfall Lighthouse
				["288:235:523:377"] = 922,	-- The Dust Plains
				["305:210:204:260"] = 219,	-- Alexston Farmstead
				--[[
				[2] = 1,                                 -- Longshore
				[26] = 3,                                -- Lighthouse
				[919] = 14,                              -- Stendel's Pond
				[2364] = 19,                             -- The Great Sea
				]]--
			})),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(4, {	-- Sentinel Hill, Westfall
					["cr"] = 523,	-- Thor <Gryphon Master>
					["coord"] = { 56.6, 52.6, WESTFALL },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(6181, {	-- A Swift Message
					["qg"] = 491,	-- Quartermaster Lewis
					["coord"] = { 56.9, 47.2, WESTFALL },
					["races"] = { HUMAN },
					["cost"] = {
						{ "i", 15998, 1 },	-- Lewis' Note
					},
					["lvl"] = 10,
				}),
				q(136, {	-- Captain Sander's Hidden Treasure (1/4)
					["provider"] = { "i", 1357 },	-- Captain Sander's Treasure Map
					["lvl"] = 10,
				}),
				q(138, {	-- Captain Sander's Hidden Treasure (2/4)
					["provider"] = { "o", 35 },	-- Captain's Footlocker
					["sourceQuest"] = 136,	-- Captain Sander's Hidden Treasure (1/4)
					["coord"] = { 25.9, 47.77, WESTFALL },
					["cost"] = {
						{ "i", 1358, 1 },	-- A Clue to Sander's Treasure
					},
					["lvl"] = 10,
				}),
				q(139, {	-- Captain Sander's Hidden Treasure (3/4)
					["provider"] = { "o", 36 },	-- Broken Barrel
					["sourceQuest"] = 138,	-- Captain Sander's Hidden Treasure (2/4)
					["coord"] = { 40.50, 47.82, WESTFALL },
					["cost"] = {
						{ "i", 1361, 1 },	-- Another Clue to Sander's Treasure
					},
					["lvl"] = 10,
				}),
				q(140, {	-- Captain Sander's Hidden Treasure (4/4)
					["provider"] = { "o", 34 },	-- Old Jug
					["sourceQuest"] = 139,	-- Captain Sander's Hidden Treasure (3/4)
					["coords"] = {
						{ 40.62, 17.01, WESTFALL },
						{ 25.97, 16.90, WESTFALL },
					},
					["cost"] = {
						{ "i", 1362, 1 },	-- Final Clue to Sander's Treasure
					},
					["lvl"] = 10,
					["groups"] = {
						i(2842),	-- Silver Bar
						i(3343),	-- Captain Sander's Booty Bag
						i(3342),	-- Captain Sander's Shirt
						i(3344),	-- Captain Sander's Sash
					},
				}),
				q(3861, {	-- CLUCK!
					["qg"] = 620,	-- Chicken
					["description"] = "Simply target any Chicken and spam /chicken at it until it emotes at you. This will take about 100 emotes. (make a macro!)\n\nOnce it does, type /cheer with it targetted.\n\nThe Chicken will never turn friendly for a Horde player, even if they get the emote.",
					["maps"] = {
						-- #if AFTER TBC
						AZUREMYST_ISLE,
						-- #endif
						DUSKWOOD,
						DUSTWALLOW_MARSH,
						ELWYNN_FOREST,
						HILLSBRAD_FOOTHILLS,
						THE_BARRENS,
						REDRIDGE_MOUNTAINS,
						TIRISFAL_GLADES,
						WESTFALL,
					},
					["cost"] = { { "i", 11109, 1 } },	-- Special Chicken Feed
					["repeatable"] = true,
					-- #if BEFORE 3.1.0
					["races"] = ALLIANCE_ONLY,
					-- #endif
					["groups"] = {
						i(11110, {	-- Chicken Egg
							-- #if BEFORE 3.1.0
							["description"] = "A Horde player can get this pet if they have an Alliance character complete the quest itself and allow the Horde player to loot the egg.",
							-- #endif
						}),
					},
				}),
				q(6281, {	-- Continue to Stormwind
					["qg"] = 523,	-- Thor
					["sourceQuest"] = 6181,	-- A Swift Message
					["coord"] = { 56.4, 52.6, WESTFALL },
					["races"] = { HUMAN },
					["cost"] = {
						{ "i", 15998, 1 },	-- Lewis' Note
					},
					["lvl"] = 10,
				}),
				q(1076, {	-- Devils in Westfall
					["qg"] = 4078,	-- Collin Mauren
					["sourceQuest"] = 1075,	-- A Scroll from Mauren
					["coord"] = { 43.1, 80.3, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5669, 1 },	-- Dust Devil Debris
					},
					["lvl"] = 17,
				}),
				q(184, {	-- Furlbrow's Deed
					["provider"] = { "i", 1972 },	-- Westfall Deed
					["maps"] = { ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1971, 1 },	-- Furlbrow's Deed
					},
					["lvl"] = 8,
					["groups"] = {
						i(5057),	-- Ripe Watermelon
						i(4656),	-- Small Pumpkin
					},
				}),
				q(22, {		-- Goretusk Liver Pie
					["qg"] = 235,	-- Salma Saldean
					["coord"] = { 56.4, 30.6, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 723, 8 },	-- Goretusk Liver
					},
					["lvl"] = 9,
					["groups"] = {
						i(724),	-- Goretusk Liver Pie
						i(2697),	-- Recipe: Goretusk Liver Pie
					},
				}),
				q(103, {	-- Keeper of the Flame
					["qg"] = 392,	-- Captain Grayson
					["coord"] = { 30, 86, WESTFALL },
					["cost"] = {
						{ "i", 814, 5 },	-- Flask of Oil
					},
					["lvl"] = 10,
					["groups"] = {
						i(2455),	-- Minor Mana Potion
						i(118),	-- Minor Healing Potion
						i(955),	-- Scroll of Intellect
						i(1180),	-- Scroll of Stamina
					},
				}),
				q(2359, {	-- Klaven's Tower
					["qg"] = 7024,	-- Agent Kearnen
					["sourceQuest"] = 2360,	-- Mathias and the Defias
					["coord"] = { 68.5, 70.2, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 8046, 1 },	-- Kearnen's Journal
						{ "i", 7923, 1 },	-- Defias Tower Key
						{ "i", 7908, 1 },	-- Klaven Mortwake's Journal
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 7923,	-- Defias Tower Key
							["questID"] = 2359,	-- Klaven's Tower
							["cr"] = 7051,	-- Malformed Defias Drone
							["coord"] = { 68.6, 72.2, WESTFALL },
						},
						{
							["itemID"] = 7908,	-- Klaven Mortwake's Journal
							["questID"] = 2359,	-- Klaven's Tower
							["cr"] = 7053,	-- Klaven Mortwake
							["coord"] = { 71.0, 74.6, WESTFALL },
						},
						recipe(8681),	-- Instant Poison
						i(18160),	-- Recipe: Thistle Tea
					},
				}),
				q(102, {	-- Patrolling Westfall
					["qg"] = 821,	-- Captain Danuvin
					["coord"] = { 56.4, 47.6, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 725, 8 },	-- Gnoll Paw
					},
					["lvl"] = 8,
					["groups"] = {
						i(1154),	-- Belt of the People's Militia
						i(710),	-- Bracers of the People's Militia
					},
				}),
				q(151, {	-- Poor Old Blanchy
					["qg"] = 238,	-- Verna Furlbrow
					["coord"] = { 60.0, 19.4, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1528, 8 },	-- Handful of Oats
					},
					["lvl"] = 9,
					["groups"] = {
						i(2165),	-- Old Blanchy's Blanket
						i(1537),	-- Old Blanchy's Feed Pouch
					},
				}),
				q(153, {	-- Red Leather Bandanas
					["qg"] = 878,	-- Scout Galiaan
					["coord"] = { 54.0, 53.0, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 829, 15 },	-- Red Leather Bandana
					},
					["lvl"] = 10,
					["groups"] = {
						i(3511),	-- Cloak of the People's Militia
						i(5944),	-- Greaves of the People's Militia
						i(12295),	-- Leggings of the People's Militia
					},
				}),
				q(48, {		-- Sweet Amber (1/5)
					["qg"] = 239,	-- Grimbooze Thunderbrew
					["coord"] = { 44.6, 80.2, WESTFALL },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 737, 1 } -- Holy Spring Water
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 737,	-- Holy Spring Water
							["questID"] = 48,	-- Sweet Amber
							["coord"] = { 28.9, 62.0, STRANGLETHORN_VALE },
						},
					},
				}),
				q(49, {		-- Sweet Amber (2/5)
					["qg"] = 239,	-- Grimbooze Thunderbrew
					["sourceQuest"] = 48,	-- Sweet Amber (1/5)
					["coord"] = { 44.6, 80.2, WESTFALL },
					["maps"] = { THE_HINTERLANDS, TANARIS, SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 738, 1},	-- Sack of Barley
						{ "i", 739, 1},	-- Sack of Corn
						{ "i", 740, 1},	-- Sack of Rye
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 738,	-- Sack of Barley
							["questID"] = 49,	-- Sweet Amber (2/5)
							["coord"] = { 62.5, 23.3, SWAMP_OF_SORROWS },
						},
						{
							["itemID"] = 739,	-- Sack of Corn
							["questID"] = 49,	-- Sweet Amber (2/5)
							["coord"] = { 65.8, 36.7, TANARIS },
						},
						{
							["itemID"] = 740,	-- Sack of Rye
							["questID"] = 49,	-- Sweet Amber (2/5)
							["coord"] = { 39.9, 66.2, THE_HINTERLANDS },
						},
					},
				}),
				q(50, {		-- Sweet Amber (3/5)
					["qg"] = 239,	-- Grimbooze Thunderbrew
					["sourceQuest"] = 49,	-- Sweet Amber (2/5)
					["coord"] = { 44.6, 80.2, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6037, 1 },	-- Truesilver Bar
					},
					["lvl"] = 40,
				}),
				q(51, {		-- Sweet Amber (4/5)
					["qg"] = 239,	-- Grimbooze Thunderbrew
					["sourceQuest"] = 50,	-- Sweet Amber (3/5)
					["coord"] = { 44.6, 80.2, WESTFALL },
					["maps"] = { FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 742, 1 },	-- A Sycamore Branch
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 742,	-- A Sycamore Branch
							["questID"] = 51,	-- Sweet Amber (4/5)
							["cr"] = 5881,	-- Cursed Sycamore
							["coord"] = { 54.8, 70.4, FERALAS },
						},
					},
				}),
				q(53, {		-- Sweet Amber (5/5)
					["qg"] = 239,	-- Grimbooze Thunderbrew
					["sourceQuest"] = 51,	-- Sweet Amber (4/5)
					["coord"] = { 44.6, 80.2, WESTFALL },
					["maps"] = { SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 743, 1 },	-- Bundle of Charred Oak
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 743,	-- Bundle of Charred Oak
							["questID"] = 53,	-- Sweet Amber (5/5)
							["coord"] = { 54.6, 50.7, SEARING_GORGE },
						},
						i(744),	-- Thunderbrew's Boot Flask
					},
				}),
				q(152, {	-- The Coast Isn't Clear
					["qg"] = 392,	-- Captain Grayson
					["coord"] = { 30, 86, WESTFALL },
					["lvl"] = 10,
				}),
				q(104, {	-- The Coastal Menace
					["qg"] = 392,	-- Captain Grayson
					["coord"] = { 30, 86, WESTFALL },
					["cost"] = {
						{ "i", 3636, 1 },	-- Scale of Old Murk-Eye
					},
					["lvl"] = 15,
					["groups"] = {
						{
							["itemID"] = 3636,	-- Scale of Old Murk-Eye
							["questID"] = 104,	-- The Coastal Menace
							["cr"] = 391,	-- Old Murk-Eye
							["coord"] = { 34.4, 84.6, WESTFALL },
						},
						i(1172),	-- Grayson's Torch
						i(1557),	-- Buckler of the Seas
						i(5240),	-- Torchlight Wand
					},
				}),
				q(65, {		-- The Defias Brotherhood (1/7)
					["qg"] = 234,	-- Gryan Stoutmantle
					["coord"] = { 56.3, 47.6, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(135, {	-- The Defias Brotherhood (3/7)
					["qg"] = 234,	-- Gryan Stoutmantle
					["sourceQuest"] = 132,	-- The Defias Brotherhood (2/7)
					["coord"] = { 56.3, 47.6, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1327, 1 },	-- Wiley's Note
					},
					["lvl"] = 14,
				}),
				q(142, {	-- The Defias Brotherhood (5/7)
					["qg"] = 234,	-- Gryan Stoutmantle
					["sourceQuest"] = 141,	-- The Defias Brotherhood (4/7)
					["coord"] = { 56.3, 47.6, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1381, 1 },	-- A Mysterious Message
					},
					["lvl"] = 14,
					["groups"] = {
						{
							["itemID"] = 1381,	-- A Mysterious Message
							["questID"] = 142,	-- The Defias Brotherhood (5/7)
							["cr"] = 550, 	-- Defias Messenger
							["coord"] = { 45.6, 68.6, WESTFALL },
						},
					},
				}),
				q(155, {	-- The Defias Brotherhood (6/7)
					["qg"] = 467,	-- The Defias Traitor
					["sourceQuest"] = 142,	-- The Defias Brotherhood (5/7)
					["coord"] = { 55.6, 47.5, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
				}),
				q(64, {		-- The Forgotten Heirloom
					["qg"] = 237,	-- Farmer Furlbrow
					["coord"] = { 60.0, 19.4, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 841, 1 },	-- Furlbrow's Pocket Watch
					},
					["lvl"] = 9,
					["groups"] = {
						i(4541),	-- Freshly Baked Bread
						i(1179),	-- Ice Cold Milk
					},
				}),
				q(9, {		-- The Killing Fields
					["qg"] = 233,	-- Farmer Saldean
					["coord"] = { 56.0, 31.2, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 8,
					["groups"] = {
						i(3578),	-- Harvester's Pants
						i(1561),	-- Harvester's Robe
					},
				}),
				q(12, {		-- The People's Militia (1/3)
					["qg"] = 234,	-- Gryan Stoutmantle
					["coord"] = { 56.3, 47.6, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
				}),
				q(13, {		-- The People's Militia (2/3)
					["qg"] = 234,	-- Gryan Stoutmantle
					["sourceQuest"] = 12,	-- The People's Militia (1/3)
					["coord"] = { 56.3, 47.6, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
				}),
				q(14, {		-- The People's Militia (3/3)
					["qg"] = 234,	-- Gryan Stoutmantle
					["sourceQuest"] = 13,	-- The People's Militia (2/3)
					["coord"] = { 56.3, 47.6, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						i(1566),	-- Edge of the People's Militia
						i(1480),	-- Fist of the People's Militia
						i(12296),	-- Spark of the People's Militia
					},
				}),
				q(117, {	-- Thunderbrew
					["qg"] = 239,	-- Grimbooze Thunderbrew
					["coord"] = { 44.6, 80.2, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 1274, 5 },	-- Hops
					},
					["groups"] = {
						{
							["itemID"] = 1262,	-- Keg of Thunderbrew
							["questID"] = 116,	-- Dry Times
							["races"] = ALLIANCE_ONLY,
						},
					},
				}),
				q(36, {		-- Westfall Stew (1/2)
					["qg"] = 238,	-- Verna Furlbrow
					["coord"] = { 60.0, 19.4, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2832, 1 },	-- Verna's Westfall Stew Recipe
					},
					["lvl"] = 9,
				}),
				q(38, {		-- Westfall Stew (2/2)
					["qg"] = 235,	-- Salma Saldean
					["sourceQuest"] = 36,	-- Westfall Stew (1/2)
					["coord"] = { 56.4, 30.6, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 729, 3 },	-- Stringy Vulture Meat
						{ "i", 730, 3 },	-- Murloc Eye
						{ "i", 731, 3 },	-- Goretusk Snout
						{ "i", 732, 3 },	-- Okra
					},
					["lvl"] = 9,
					["groups"] = {
						i(733),	-- Westfall Stew
						i(1479),	-- Salma's Oven Mitts
						i(728),	-- Recipe: Westfall Stew
						i(2225),	-- Sharp Kitchen Knife
					},
				}),
			}),
			n(RARES, {
				n(520, {	-- Brack
					["coords"] = {
						{ 55.2, 13.4, WESTFALL },
						{ 48.6, 10.0, WESTFALL },
						{ 43.0, 10.0, WESTFALL },
						{ 39.0, 15.0, WESTFALL },
						{ 35.0, 20.6, WESTFALL },
						{ 31.0, 26.4, WESTFALL },
						{ 29.0, 34.6, WESTFALL },
						{ 29.6, 39.8, WESTFALL },
						{ 27.2, 45.0, WESTFALL },
						{ 26.6, 56.4, WESTFALL },
						{ 26.2, 65.6, WESTFALL },
						{ 28.8, 72.6, WESTFALL },
						{ 29.0, 79.4, WESTFALL },
						{ 33.6, 83.2, WESTFALL },
					},
					["groups"] = {
						i(2235),	-- Brackclaw
						i(6179),	-- Privateer's Cape
					},
				}),
				n(573, {	-- Foe Reaper 4000
					["coords"] = {
						{ 51.8, 24.6, WESTFALL },
						{ 45.5, 36.0, WESTFALL },
						{ 38.6, 51.6, WESTFALL },
						{ 62.8, 62.2, WESTFALL },
						{ 51.6, 67.4, WESTFALL },
					},
					["groups"] = {
						i(933),		-- Large Rucksack
						i(4434),	-- Scarecrow Trousers
					},
				}),
				n(572, {	-- Leprithus
					["coords"] = {
						{ 42.4, 30.8, WESTFALL },
						{ 65.2, 63.2, WESTFALL },
						{ 60.0, 77.6, WESTFALL },
					},
					["groups"] = {
						i(1387),	-- Ghoulfang
						i(1314),	-- Ghoul Fingers
					},
				}),
				n(1424, {	-- Master Digger
					["coord"] = { 46.2, 18.8, WESTFALL },
					["groups"] = {
						i(6205),	-- Burrowing Shovel
						i(6206),	-- Rock Chipper
					},
				}),
				n(506, {	-- Sergeant Brashclaw
					["coord"] = { 51.8, 24.6, WESTFALL },
					["groups"] = {
						i(2203),	-- Brashclaw's Chopper
						i(2204),	-- Brashclaw's Skewer
					},
				}),
				n(519, {	-- Slark
					["coords"] = {
						{ 55.2, 13.4, WESTFALL },
						{ 48.6, 10.0, WESTFALL },
						{ 43.0, 10.0, WESTFALL },
						{ 39.0, 15.0, WESTFALL },
						{ 35.0, 20.6, WESTFALL },
						{ 31.0, 26.4, WESTFALL },
						{ 29.0, 34.6, WESTFALL },
						{ 29.6, 39.8, WESTFALL },
						{ 27.2, 45.0, WESTFALL },
						{ 26.6, 56.4, WESTFALL },
						{ 26.2, 65.6, WESTFALL },
						{ 28.8, 72.6, WESTFALL },
						{ 29.0, 79.4, WESTFALL },
						{ 33.6, 83.2, WESTFALL },
					},
					["groups"] = {
						i(3188),	-- Coral Claymore
						i(6180),	-- Slarkskin
					},
				}),
				n(462, {	-- Vultros
					["coords"] = {
						{ 51.8, 24.6, WESTFALL },
						{ 45.5, 44.6, WESTFALL },
						{ 64.4, 56.0, WESTFALL },
						{ 45.6, 60.2, WESTFALL },
						{ 35.8, 68.4, WESTFALL },
						{ 64.0, 73.8, WESTFALL },
					},
					["groups"] = {
						i(5971),	-- Feathered Cape
						i(4454),	-- Talon of Vultros
					},
				}),
			}),
			n(VENDORS, {
				n(1669, {	-- Defias Profiteer <Free Wheeling Merchant>
					["coord"] = { 43.4, 66.8, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4788),	-- Agile Boots
						i(4789),	-- Stable Boots
						i(5640),	-- Recipe: Rage Potion
					},
				}),
				n(843, {	-- Gina MacGregor <Trade Supplies>
					["coord"] = { 57.6, 54.1, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5787),	-- Pattern: Murloc Scale Breastplate
						i(5786),	-- Pattern: Murloc Scale Belt
						i(5771),	-- Pattern: Red Linen Bag
						i(6274),	-- Pattern: Blue Overalls
					},
				}),
				n(4305, {	-- Kriggon Talsone <Fisherman>
					["coord"] = { 36.2, 90.0, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5528),	-- Recipe: Clam Chowder
						i(6326),	-- Recipe: Slitherskin Mackerel
						i(6368),	-- Recipe: Rainbow Fin Albacore
						i(16111),	-- Recipe: Spiced Chili Crab
					},
				}),
				n(1668, {	-- William MacGregor <Bowyer>
					["coord"] = { 57.7, 53.9, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11304),	-- Fine Longbow
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(826, {	-- Brutish Riverpaw Axe
					["cr"] = 124,	-- Riverpaw Brute
				}),
				i(1357, {	-- Captain Sander's Treasure Map
					["questID"] = 136,	-- Captain Sander's Hidden Treasure (1/4)
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						126,	-- Murloc Coastrunner
						458,	-- Murloc Hunter
						456,	-- Murloc Minor Oracle
						513,	-- Murloc Netter
						517,	-- Murloc Oracle
						515,	-- Murloc Raider
						127,	-- Murloc Tidehunter
						171,	-- Murloc Warrior
						391,	-- Old Murk-Eye
						519,	-- Slark
					},
				}),
				-- #if AFTER 4.0.3
				i(1927, {	-- Deadmines Cleaver
					["cr"] = 594,	-- Defias Henchman
				}),
				-- #endif
				i(1394, {	-- Driftwood Club
					["cr"] = 171,	-- Murloc Warrior
				}),
				i(4290, {	-- Dust Bowl
					["cr"] = 832,	-- Dust Devil
				}),
				i(5669, {	-- Dust Devil Debris
					["questID"] = 1076,	-- Devils in Westfall
					["cr"] = 832,	-- Dust Devil
					["races"] = ALLIANCE_ONLY,
				}),
				i(1405, {	-- Foamspittle Staff
					["cr"] = 517,	-- Murloc Oracle
				}),
				i(725, {	-- Gnoll Paw
					["questID"] = 102,	-- Patrolling Westfall
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						452,	-- Riverpaw Bandit
						124,	-- Riverpaw Brute
						117,	-- Riverpaw Gnoll
						501,	-- Riverpaw Herbalist
						1426,	-- Riverpaw Miner
						123,	-- Riverpaw Mongrel
						453,	-- Riverpaw Mystic
						125,	-- Riverpaw Overseer
						500,	-- Riverpaw Scout
						1065,	-- Riverpaw Shaman
						98,		-- Riverpaw Taskmaster
						506,	-- Sergeant Brashclaw
					},
				}),
				i(731, {	-- Goretusk Snout
					["questID"] = 38,	-- Westfall Stew
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						157,	-- Goretusk
						454,	-- Young Goretusk
					},
				}),
				i(1401, {	-- Green Tea Leaf
					["cr"] = 501,	-- Riverpaw Herbalist
				}),
				i(2087, {	-- Hard Crawler Carapace
					["cr"] = 830,	-- Sand Crawler
				}),
				i(1274, {	-- Hops
					["crs"] = {
						573,	-- Foe Reaper 4000
						36,		-- Harvest Golem
						115,	-- Harvest Reaper
						114,	-- Harvest Watcher
						480,	-- Rusty Harvest Golem
					},
				}),
				i(2088, {	-- Long Crawler Limb
					["cr"] = 831,	-- Sea Crawler
				}),
				i(2091, {	-- Magic Dust
					["cr"] = 832,	-- Dust Devil
				}),
				i(732, {	-- Okra
					["questID"] = 38,	-- Westfall Stew
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						573,	-- Foe Reaper 4000
						36,		-- Harvest Golem
						115,	-- Harvest Reaper
						114,	-- Harvest Watcher
						480,	-- Rusty Harvest Golem
					},
				}),
				i(1190, {	-- Overseer's Cloak
					["cr"] = 125,	-- Riverpaw Overseer
				}),
				i(1189, {	-- Overseer's Ring
					["cr"] = 125,	-- Riverpaw Overseer
				}),
				i(5771, {	-- Pattern: Red Linen Bag
					["cr"] = 590,	-- Defias Looter
				}),
				i(5772, {	-- Pattern: Red Woolen Bag
					["cr"] = 450,	-- Defias Renegade Mage
				}),
				i(829, {	-- Red Leather Bandana
					["questID"] = 153,	-- Red Leather Bandanas
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						502,	-- Benny Blaanco
						481,	-- Defias Footpad
						122,	-- Defias Highwayman
						449,	-- Defias Knuckleduster
						590,	-- Defias Looter
						121,	-- Defias Pathstalker
						589,	-- Defias Pillager
						6180,	-- Defias Raider
						450,	-- Defias Renegade Mage
						95,		-- Defias Smuggler
						504,	-- Defias Trapper
						594,	-- Defias Henchman
					},
				}),
				i(915, {	-- Red Silk Bandana
					["description"] = "Can also drop from any Defias mob in the Deadmines.",
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						619,	-- Defias Conjurer
						824,	-- Defias Digger
						594,	-- Defias Henchman
					},
				}),
				i(821, {	-- Riverpaw Leather Vest
					["cr"] = 123,	-- Riverpaw Mongrel
				}),
				i(1391, {	-- Riverpaw Mystic Staff
					["cr"] = 453,	-- Riverpaw Mystic
				}),
				i(832, {	-- Silver Defias Belt
					["cr"] = 121,	-- Defias Pathstalker
				}),
				i(820, {	-- Slicer Blade
					["cr"] = 115,	-- Harvest Reaper
				}),
				i(816, {	-- Small Hand Blade
					["cr"] = 36,	-- Harvest Golem
				}),
				i(1933, {	-- Staff of Conjuring
					["cr"] = 619,	-- Defias Conjurer
				}),
				i(2327, {	-- Sturdy Leather Bracers
					["cr"] = 480,	-- Rusty Harvest Golem
				}),
				i(827, {	-- Wicked Blackjack
					["crs"] = {
						122,	-- Defias Highwayman
						449,	-- Defias Knuckleduster
					},
				}),
			}),
		},
	}),
}));