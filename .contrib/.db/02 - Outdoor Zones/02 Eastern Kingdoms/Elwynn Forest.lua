---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(ELWYNN_FOREST, {
		["lore"] = "Northshire was the pride of Stormwind's vineyards until recently when Defias bandits drove off the farmers and occupied the farm and fields. In addition, the Echo Ridge Mine north of the abbey has been infested by kobolds.\n\nKobolds infested the Jasperlode Mine and Fargodeep Mine. Gnolls have erected camps in the Forest's Edge region and the northern rim of Stone Cairn Lake. It is rumored that both the kobolds and gnolls are somehow associated with the Defias Brotherhood. Murlocs have taken up residence in and around Stone Cairn Lake and Crystal Lake. Defias presence in the region has been growing and their people have holdings at Mirror Lake Orchard, Northshire Vineyards, the Brackwell Pumpkin Patch, Jerod's Landing and Stone Cairn Lake.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(776, {	-- Explore Elwynn Forest
					-- #if BEFORE WRATH
					["description"] = "Explore Elwynn Forest, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["225:220:422:332"] = 18,	-- Crystal Lake
				["240:220:250:270"] = 87,	-- Goldshire
				["255:250:551:292"] = 91,	-- Tower of Azora
				["256:210:704:330"] = 88,	-- Eastvale Logging Camp
				["256:237:425:431"] = 797,	-- Jerod's Landing
				["256:240:238:428"] = 57,	-- Fargodeep Mine
				["256:249:577:419"] = 62,	-- Brackwell Pumpkin Patch
				["256:256:381:147"] = 9,	-- Northshire Valley
				["256:341:124:327"] = 60,	-- Forest's Edge
				["306:233:696:435"] = 798,	-- Ridgepoint Tower
				["310:256:587:190"] = 86,	-- Stone Cairn Lake
				["485:405:0:0"] = 1519,	-- Stormwind City
				--[[
				[23] = 3,                                -- Northshire River
				[24] = 4,                                -- Northshire Abbey
				[34] = 5,                                -- Echo Ridge Mine
				[53] = 6,                                -- Thieves Camp
				[54] = 7,                                -- Jasperlode Mine
				[56] = 9,                                -- Heroes' Vigil
				[59] = 11,                               -- Northshire Vineyards
				[61] = 13,                               -- Thunder Falls
				[63] = 15,                               -- The Stonefield Farm
				[64] = 16,                               -- The Maclure Vineyards
				[80] = 17,                               -- Stormwind Mountains
				[89] = 21,                               -- Mirror Lake Orchard
				[92] = 23,                               -- Mirror Lake
				[120] = 24,                              -- Westbrook Garrison
				]]--
			})),
			-- #endif
			n(QUESTS, {
				q(5545, {	-- A Bundle of Trouble
					["qg"] = 10616,	-- Supervisor Raelen
					["coord"] = { 81.4, 66.2, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13872, 8 },	-- Bundle of Wood
					},
					["lvl"] = 5,
				}),
				q(40, {	-- A Fishy Peril
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 241,	-- Remy "Two Times"
				}),
				q(783, {	-- A Threat Within
					["races"] = ALLIANCE_ONLY,
					["qg"] = 823,	-- Deputy Willem
					["coord"] = { 48.1, 42.9, ELWYNN_FOREST },
				}),
				q(84, {	-- Back to Billy
					["qg"] = 246,	-- "Auntie" Bernice Stonefield
					["sourceQuest"] = 86,	-- Pie for Billy
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 962, 1 },	-- Pork Belly Pie
					},
					["lvl"] = 5,
				}),
				q(6, {	-- Bounty on Garrick Padfoot
					["qg"] = 823,	-- Deputy Willem
					["sourceQuest"] = 18,	-- Brotherhood of Thieves
					["coord"] = { 48.1, 42.9, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 182, 1 },	-- Garrick's Head
					},
					["lvl"] = 2,
					["groups"] = {
						{
							["itemID"] = 182,	-- Garrick's Head
							["questID"] = 6,	-- Bounty on Garrick Padfoot
							["cr"] = 103,	-- Garrick Padfoot
							["coord"] = { 57.4, 48.6, ELWYNN_FOREST },
						},
						i(6076),	-- Tapered Pants
						i(60),	-- Layered Tunic
						i(3070),	-- Ensign Cloak
					},
				}),
				q(46, {	-- Bounty on Murlocs
					["qg"] = 261,	-- Guard Thomas
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
					["groups"] = {
						i(4840),	-- Long Bayonet
						i(1158),	-- Solid Metal Club
						i(1008),	-- Well-used Sword
					},
				}),
				q(18, {	-- Brotherhood of Thieves
					["qg"] = 823,	-- Deputy Willem
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 752, 12 },	-- Red Burlap Bandana
					},
					["lvl"] = 2,
					["groups"] = {
						i(2224),	-- Militia Dagger
						i(5580),	-- Militia Hammer
						i(1161),	-- Militia Shortsword
						i(5579),	-- Militia Warhammer
						i(1159),	-- Militia Quarterstaff
					},
				}),
				q(59, {	-- Cloth and Leather Armor
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 83,	-- Red Linen Goods
					["coord"] = { 42.2, 65.8, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 748, 1 },	-- Stormwind Armor Marker
					},
					["lvl"] = 7,
					["groups"] = {
						i(1171),	-- Well-stitched Robe
						i(2237),	-- Patched Pants
					},
				}),
				q(112, {	-- Collecting Kelp
					["qg"] = 253,	-- William Pestle
					["sourceQuest"] = 107,	-- Note to William
					["coord"] = { 43.2, 65.8, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1256, 4 },	-- Crystal Kelp Frond
					},
					["lvl"] = 5,
				}),
				q(3101, {	-- Consecrated Letter
					["qg"] = 197,	-- Marshal McBride
					["sourceQuest"] = 7,	-- Kobold Camp Cleanup
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
					["classes"] = { PALADIN },
					["races"] = { HUMAN },
				}),
				q(1667, {	-- Dead-tooth Jack
					["qg"] = 294,	-- Marshal Haggard
					["sourceQuest"] = 1666,	-- Marshal Haggard
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 6783,	-- Dead-tooth's Key
							["questID"] = 1667,	-- Dead-tooth Jack
							["cr"] = 6093,	-- Dead-Tooth Jack
							["coord"] = { 89.2, 80.6, ELWYNN_FOREST },
						},
						i(6979),	-- Haggard's Axe
						i(6980),	-- Haggard's Dagger
						i(6983),	-- Haggard's Hammer
						i(6985),	-- Haggard's Sword
					},
				}),
				q(39, {	-- Deliver Thomas' Report
					["qg"] = 261,	-- Guard Thomas
					["sourceQuest"] = 71,	-- Report to Thomas
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
				}),
				q(45, {	-- Discover Rolf's Fate
					["provider"] = { "o", 55 },	-- A half-eaten body
					["sourceQuest"] = 37,	-- Find the Lost Guards
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
				}),
				q(5261, {	-- Eagan Peltskinner
					["qg"] = 823,	-- Deputy Willem
					["sourceQuest"] = 783,	-- A Threat Within
					["coord"] = { 48.17, 42.94, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(1097, {	-- Elmore's Task
					["qgs"] = {
						514,	-- Smith Argus
						415,	-- Verner Osgood
					},
					["coords"] = {
						{ 41.7, 65.5, ELWYNN_FOREST },	-- Smith Argus
						{ 31.0, 47.4, REDRIDGE_MOUNTAINS },	-- Verner Osgood
					},
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 9,
				}),
				q(3102, {	-- Encrypted Letter
					["qg"] = 197,	-- Marshal McBride
					["sourceQuest"] = 7,	-- Kobold Camp Cleanup
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
					["races"] = { HUMAN },
					["classes"] = { ROGUE },
				}),
				q(37, {	-- Find the Lost Guards
					["qg"] = 261,	-- Guard Thomas
					["sourceQuest"] = 35,	-- Further Concerns
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
				}),
				q(35, {	-- Further Concerns
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 40,	-- A Fishy Peril
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
				}),
				q(1685, {	-- Gakin's Summons
					["qg"] = 6121,	-- Remen Marcot
					["coord"] = { 44.4, 66.2, ELWYNN_FOREST },
					["altQuests"] = {
						1715, -- The Slaughtered Lamb
					},
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(5624, {	-- Garments of the Light
					["qg"] = 377,	-- Priestess Josetta <Priest Trainer>
					["sourceQuest"] = 5623,	-- In Favor of the Light
					["coord"] = { 43.4, 65.6, ELWYNN_FOREST },
					["races"] = { HUMAN },
					["classes"] = { PRIEST },
					["lvl"] = 5,
					["groups"] = {
						i(16605),	-- Friar's Robes of the Light
					},
				}),
				q(16, {	-- Give Gerard a Drink
					["qg"] = 255,	-- Gerard Tiller
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(4536),	-- Shiny Red Apple
					},
				}),
				q(3104, {	-- Glyphic Letter
					["qg"] = 197,	-- Marshal McBride
					["sourceQuest"] = 7,	-- Kobold Camp Cleanup
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
					["races"] = { HUMAN },
					["classes"] = { MAGE },
				}),
				q(47, {	-- Gold Dust Exchange
					["qg"] = 241,	-- Remy "Two Times"
					["sourceQuest"] = 54,	-- Report to Goldshire
					["coord"] = { 41.7, 65.5, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 773, 8 },	-- Gold Dust
					},
					["lvl"] = 4,
					["groups"] = {
						i(1191),	-- Bag of Marbles
					},
				}),
				q(87, {	-- Goldtooth
					["qg"] = 247,	-- Billy Maclure
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 981, 1 },	-- Bernice's Necklace
					},
					["lvl"] = 5,
					["groups"] = {
						{
							["itemID"] = 981,	-- Bernice's Necklace
							["cr"] = 327,	-- Goldtooth
							["coord"] = { 41.6, 78.8, ELWYNN_FOREST },
						},
						i(1359),	-- Lion-stamped Gloves
					},
				}),
				q(3905, {	-- Grape Manifest
					["qg"] = 9296,	-- Milly Osworth
					["sourceQuest"] = 3904,	-- Milly's Harvest
					["coord"] = { 50.7, 39.3, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11125, 1 },	-- Grape Manifest
					},
					["lvl"] = 2,
					["groups"] = {
						i(11475),	-- Wine-stained Cloak
						i(2690),	-- Latched Belt
					},
				}),
				q(3103, {	-- Hallowed Letter
					["races"] = { HUMAN },
					["qg"] = 197,	-- Marshal McBride
					["classes"] = { PRIEST },
					["sourceQuest"] = 7,	-- Kobold Camp Cleanup
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
				}),
				q(5623, {	-- In Favor of the Light
					["qg"] = 375,	-- Priestess Anetta <Priest Trainer>
					["coord"] = { 49.8, 39.6, ELWYNN_FOREST },
					["races"] = { HUMAN },
					["classes"] = { PRIEST },
					["lvl"] = 5,
				}),
				q(345, {	-- Ink Supplies
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 951,	-- Brother Paxton
					["sourceQuest"] = 344,	-- Brother Paxton (quest in Stormwind)
					["coord"] = { 49.6, 40.4, ELWYNN_FOREST },
				}),
				q(15, {	-- Investigate Echo Ridge
					["races"] = ALLIANCE_ONLY,
					["qg"] = 197,	-- Marshal McBride
					["sourceQuest"] = 7,	-- Kobold Camp Cleanup
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
				}),
				q(7, {	-- Kobold Camp Cleanup
					["races"] = ALLIANCE_ONLY,
					["qg"] = 197,	-- Marshal McBride
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
				}),
				q(60, {	-- Kobold Candles
					["qg"] = 253,	-- William Pestle
					["sourceQuest"] = 54,	-- Report to Goldshire
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 772, 8 },	-- Large Candle
					},
					["lvl"] = 3,
					["groups"] = {
						i(1434),	-- Glowing Wax Stick
					},
				}),
				q(85, {	-- Lost Necklace
					["qg"] = 246,	-- "Auntie" Bernice Stonefield
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 5,
				}),
				q(147, {	-- Manhunt
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 123,	-- The Collector
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
					["cost"] = {
						{ "i", 2239, 1 },	-- The Collector's Ring
					},
					["groups"] = {
						{
							["itemID"] = 2239,	-- The Collector's Ring
							["questID"] = 147,	-- Manhunt
							["cr"] = 473,	-- Morgan the Collector
							["coord"] = { 71.0, 80.6, ELWYNN_FOREST },
						},
						i(1360),	-- Stormwind Chain Gloves
						i(1183),	-- Elastic Wristguards
					},
				}),
				q(3903, {	-- Milly Osworth
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 823,	-- Deputy Willem
					["sourceQuest"] = 18,	-- Brotherhood of Thieves
				}),
				q(3904, {	-- Milly's Harvest
					["qg"] = 9296,	-- Milly Osworth
					["sourceQuest"] = 3903,	-- Milly Osworth
					["coord"] = { 50.7, 39.3, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11119, 8 },	-- Milly's Harvest
					},
					["lvl"] = 2,
				}),
				q(107, {	-- Note to William
					["qg"] = 248,	-- Gramma Stonefield
					["sourceQuest"] = 111,	-- Speak with Gramma
					["coord"] = { 34.8, 83.8, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1252, 1 },	-- Gramma Stonefield's Note
					},
					["lvl"] = 5,
				}),
				q(7678, {	-- Palomino Exchange
					["qg"] = 384,	-- Katie Hunter
					["coord"] = { 84.0, 65.4, ELWYNN_FOREST },
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["timeline"] = { "removed 1.4.0" },
					["cost"] = { { "i", 12354, 1 } },	-- Palomino (MOUNT!)
					["sym"] = { { "select", "itemID", 18777, 18776, 18778 } },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
				}),
				q(86, {	-- Pie for Billy
					["qg"] = 247,	-- Billy Maclure
					["sourceQuest"] = 85,	-- Lost Necklace
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 769, 4 },	-- Chunk of Boar Meat
					},
					["lvl"] = 5,
				}),
				q(88, {	-- Princess Must Die!
					["qg"] = 244,	-- Ma Stonefield
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1006, 1 },	-- Brass Collar
					},
					["lvl"] = 6,
					["groups"] = {
						{
							["itemID"] = 1006,	-- Brass Collar
							["questID"] = 88,	-- Princess Must Die!
							["cr"] = 330,	-- Princess
							["coord"] = { 69.8, 79.4, ELWYNN_FOREST },
						},
						i(1173),	-- Weather-worn Boots
						i(1182),	-- Brass-studded Bracers
						i(11191),	-- Farmer's Boots
					},
				}),
				q(52, {	-- Protect the Frontier
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 261,	-- Guard Thomas
					["groups"] = {
						i(858),	-- Lesser Healing Potion
					},
				}),
				q(83, {	-- Red Linen Goods
					["qg"] = 278,	-- Sara Timberlain
					["coord"] = { 79.5, 68.7, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1019, 8 },	-- Red Linen Bandana
					},
					["lvl"] = 4,
					["groups"] = {
						i(2575),	-- Red Linen Shirt
						i(983),		-- Red Linen Sash
					},
				}),
				q(54, {	-- Report to Goldshire
					["qg"] = 197,	-- Marshal McBride
					["sourceQuest"] = 21,	-- Skirmish at Echo Ridge
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 745, 1 },	-- Marshal McBride's Documents
					},
					["groups"] = {
						i(6078),	-- Pikeman Shield
					},
				}),
				q(109, {	-- Report to Gryan Stoutmantle
					["qgs"] = {
						237,	-- Farmer Furlbrow
						240,	-- Marshal Dughan
						261,	-- Guard Thomas
						963,	-- Deputy Rainer
					},
					["maps"] = { WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
				}),
				q(71, {	-- Report to Thomas
					["provider"] = { "o", 56 },	-- Rolf's corpse
					["sourceQuest"] = 45,	-- Discover Rolf's Fate
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 735, 1 },	-- Rolf and Malakai's Medallions
					},
					["lvl"] = 7,
				}),
				q(2158, {	-- Rest and Relaxation
					["qg"] = 6774,	-- Falkhaan Isenstrider
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4656),	-- Small Pumpkin
						i(159),	-- Refreshing Spring Water
					},
				}),
				q(346, {	-- Return to Kristoff
					["qg"] = 951,	-- Brother Paxton
					["sourceQuest"] = 347,	-- Rethban Ore (quest in Redridge Mountains)
					["coord"] = { 49.6, 40.4, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2795, 1 },	-- Book: Stresses of Iron
					},
					["lvl"] = 20,
					["groups"] = {
						i(6095),
					},
				}),
				q(11, {	-- Riverpaw Gnoll Bounty
					["qg"] = 963,	-- Deputy Rainer
					["sourceQuest"] = 239,	-- Westbrook Garrison Needs Help!
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 782, 8 },	-- Painted Gnoll Armband
					},
					["lvl"] = 6,
					["groups"] = {
						i(2249),	-- Militia Buckler
						i(2238),	-- Urchin's Pants
					},
				}),
				q(2205, {	-- Seek out SI:7
					["qg"] = 917,	-- Keryn Sylvius
					["isBreadcrumb"] = true,
					["coord"] = { 43.9, 65.9, ELWYNN_FOREST },
					["description"] = "Keryn Sylvius is located on the 2nd floor of the Lion's Pride Inn.",
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 10,
				}),
				q(61, {	-- Shipment to Stormwind
					["qg"] = 253,	-- William Pestle
					["sourceQuest"] = 47,	-- Gold Dust Exchange
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 957, 1 },	-- William's Shipment
					},
					["lvl"] = 3,
					["groups"] = {
						i(1178),	-- Explosive Rocket
						i(1177),	-- Oil of Olaf
						i(2454),	-- Elixir of Lion's Strength
					},
				}),
				q(2300, {	-- SI:7
					["qg"] = 917,	-- Keryn Sylvius
					["sourceQuest"] = 2205,	-- Seek out SI:7
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				q(3100, {	-- Simple Letter
					["qg"] = 197,	-- Marshal McBride
					["sourceQuest"] = 7,	-- Kobold Camp Cleanup
					["races"] = { HUMAN },
					["classes"] = { WARRIOR },
				}),
				q(21, {	-- Skirmish at Echo Ridge
					["qg"] = 197,	-- Marshal McBride
					["sourceQuest"] = 15,	-- Investigate Echo Ridge
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2186),	-- Outfitter Belt
						i(2691),	-- Outfitter Boots
						i(11192),	-- Outfitter Gloves
					},
				}),
				q(111, {	-- Speak with Gramma
					["qg"] = 252,	-- Tommy Joe Stonefield
					["sourceQuest"] = 106,	-- Young Lovers
					["coord"] = { 29.8, 86, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 5,
				}),
				q(1860, {	-- Speak with Jennea
					["qg"] = 328,	-- Zaldimar Wefhellt <Mage Trainer>
					["altQuests"] = { 1879 },	-- Speak with Bink
					["coord"] = { 43.3, 66.2, ELWYNN_FOREST },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(123, {	-- The Collector
					["provider"] = { "i", 1307 },	-- Gold Pickup Schedule
					["crs"] = { 100 },	-- Gruff Swiftbite
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2223, 1 },	-- The Collector's Schedule
					},
					["lvl"] = 7,
				}),
				q(114, {	-- The Escape
					["qg"] = 253,	-- William Pestle
					["sourceQuest"] = 112,	-- Collecting Kelp
					["coord"] = { 43.2, 65.8, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1257, 1 },	-- Invisibility Liquor
					},
					["lvl"] = 5,
					["groups"] = {
						i(118),	-- Minor Healing Potion
					},
				}),
				q(62, {	-- The Fargodeep Mine
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 54,	-- Report to Goldshire
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 4,
				}),
				q(76, {	-- The Jasperlode Mine
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 62,	-- The Fargodeep Mine
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 4,
				}),
				q(2998, {	-- The Tome of Divinity
					["qg"] = 927,	-- Brother Wilhelm
					["altQuests"] = {
						3681,	-- The Tome of Divinity
						1787,	-- The Tome of Divinity (8)
					},
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1787, {	-- The Tome of Divinity (8)
					["qg"] = 6172,	-- Henze Faulk
					["sourceQuest"] = 1786,	-- The Tome of Divinity (7)
					["cr"] = 474,	-- Defias Rogue Wizard
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["cost"] = {
						{ "i", 6846, 1 },	-- Defias Script
					},
					["lvl"] = 12,
				}),
				q(1598, {	-- The Stolen Tome
					["qg"] = 459,	-- Drusilla La Salle
					["coord"] = { 49.9, 42.6, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
					["altQuests"] = {
						1599,	-- Beginnings
					},
					["cost"] = {
						{ "i", 6785, 1 },	-- Powers of the Void
					},
					["groups"] = {
						{
							["itemID"] = 6785,	-- Powers of the Void
							["questID"] = 1598,	-- The Stolen Tome
							["coord"] = { 56.7, 44.0, ELWYNN_FOREST },
							["altQuests"] = {
								1599,	-- Beginnings
							},
						},
						recipe(688),	-- Summon Imp
					},
				}),
				q(176, {	-- Wanted: "Hogger"
					["providers"] = {
						{ "o", 68 },	-- Wanted Poster
						{ "o", 156561 },	-- Wanted Poster
					},
					["sourceQuest"] = 239,	-- Westbrook Garrison Needs Help!
					["coord"] = { 24.6, 78.2, ELWYNN_FOREST },
					["description"] = "Click on the Wanted Poster to accept this quest.",
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1931, 1 },	-- Huge Gnoll Claw
					},
					["lvl"] = 5,
					["groups"] = {
						{
							["itemID"] = 1931,	-- Huge Gnoll Claw
							["questID"] = 176,	-- Wanted: "Hogger"
							["cr"] = 448,	-- Hogger
							["coord"] = { 26.6, 89.8, ELWYNN_FOREST },
						},
						i(6085),	-- Footman Tunic
						i(6084),	-- Stormwind Guard Leggings
						i(6215),	-- Balanced Fighting Stick
					},
				}),
				q(239, {	-- Westbrook Garrison Needs Help!
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 76,	-- The Jasperlode Mine
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 6,
				}),
				q(7677, {	-- White Stallion Exchange
					["qg"] = 384,	-- Katie Hunter
					["coord"] = { 84.0, 65.4, ELWYNN_FOREST },
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["timeline"] = { "removed 1.4.0" },
					["cost"] = { { "i", 12353, 1 } },	-- White Stallion (MOUNT!)
					["sym"] = { { "select", "itemID", 18777, 18776, 18778 } },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
				}),
				q(33, {	-- Wolves Across the Border
					["qg"] = 196,	-- Eagan Peltskinner
					["sourceQuest"] = 5261,	-- Eagan Peltskinner
					["coord"] = { 48.9, 40.1, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 750, 8 },	-- Tough Wolf Meat
					},
					["groups"] = {
						i(80),	-- Soft Fur-lined Shoes
						i(6070),	-- Wolfskin Bracers
					},
				}),
				q(106, {	-- Young Lovers
					["qg"] = 251,	-- Maybell Maclure
					["coord"] = { 43, 89.6, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1208, 1 },	-- Maybell's Love Letter
					},
					["lvl"] = 5,
				}),
			}),
			n(RARES, {
				n(472, {	-- Fedfennel
					["coord"] = { 68.0, 40.6, ELWYNN_FOREST },
					["groups"] = {
						i(3233),	-- Gnoll Hide Sack
						i(5744),	-- Pale Skinner
					},
				}),
				n(100, {	-- Gruff Swiftbite
					["coord"] = { 27.6, 88.4, ELWYNN_FOREST },
				}),
				n(99, {	-- Morgaine the Sly
					["coord"] = { 31.8, 65.6, ELWYNN_FOREST },
					["groups"] = {
						i(1917),	-- Jeweled Dagger
						i(6201),	-- Lithe Boots
						i(2091),	-- Magic Dust
					},
				}),
				n(471, {	-- Mother Fang
					["coord"] = { 61.8, 47.8, ELWYNN_FOREST },
					["groups"] = {
						i(3000),	-- Brood Mother Carapace
						i(6148),	-- Web-covered Boots
					},
				}),
				n(79, {	-- Narg the Taskmaster
					["coord"] = { 41.2, 78.8, ELWYNN_FOREST },
					["groups"] = {
						i(6147),	-- Ratty Old Belt
						i(1913),	-- Studded Blackjack
					},
				}),
				n(61, {	-- Thuros Lightfingers
					["coords"] = {
						{ 30.0, 59.6, ELWYNN_FOREST },
						{ 51.4, 60.8, ELWYNN_FOREST },
						{ 51.2, 85.0, ELWYNN_FOREST },
						{ 89.6, 78.6, ELWYNN_FOREST },
					},
					["groups"] = {
						i(6202),	-- Fingerless Gloves
						i(6203),	-- Thuggish Shield
					},
				}),
			}),
			n(VENDORS, {
				n(844, {	-- Antonio Perelli <Traveling Salesman>
					["description"] = "This vendor travels in a big circuit from Elwynn Forest (stopping in Goldshire) to Westfall (stopping in Sentinel Hill) to Duskwood (stopping in Darkshire) to Redridge Mountains (stopping in Lakeshire) and then back to Elwynn Forest.  If you cannot find him in this zone, check one of the other three.",
					-- #if AFTER CATA
					["coords"] = {
						{ 74.4, 41.2, DUSKWOOD },
						{ 75.0, 46.4, DUSKWOOD },
						{ 19.6, 60.6, DUSKWOOD },
						{ 42.6, 66.6, ELWYNN_FOREST },
						{ 75.0, 72.4, ELWYNN_FOREST },
						{ 27.8, 43.6, REDRIDGE_MOUNTAINS },
						{ 57.4, 52.2, WESTFALL },
					},
					-- #else
					["coords"] = {
						{ 19.6, 60.6, DUSKWOOD },
						{ 50.8, 66.6, DUSKWOOD },
						{ 75.0, 46.4, DUSKWOOD },
						{ 42.6, 66.6, ELWYNN_FOREST },
						{ 68.8, 71.6, ELWYNN_FOREST },
						{ 75.0, 72.4, ELWYNN_FOREST },
						{ 29.1, 47.4, REDRIDGE_MOUNTAINS },
						{ 57.4, 52.2, WESTFALL },
						{ 57.8, 65.0, WESTFALL },
					},
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if BEFORE 4.0.3
						i(4777, {	-- Ironwood Maul
							["isLimited"] = true,
						}),
						i(4778, {	-- Heavy Spiked Mace
							["isLimited"] = true,
						}),
						-- #endif
						i(4795, {	-- Bear Bracers
							["isLimited"] = true,
						}),
						i(4796, {	-- Owl Bracers
							["isLimited"] = true,
						}),
						i(4794, {	-- Wolf Bracers
							["isLimited"] = true,
						}),
						-- #if BEFORE 4.0.3
						i(4817, {	-- Blessed Claymore
							["isLimited"] = true,
						}),
						i(4818, {	-- Executioner's Sword
							["isLimited"] = true,
						}),
						-- #endif
					},
				}),
				n(465, {	-- Barkeep Dobbins <Bartender>
					["coord"] = { 43.8, 65.8, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						{
							["itemID"] = 1939,	-- Skin of Sweet Rum
							["questID"] = 116,	-- Dry Times
							["races"] = ALLIANCE_ONLY,
						},
					},
				}),
				n(6367, {	-- Donni Anthania <Crazy Cat Lady>
					["coord"] = { 44.2, 53.2, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8485),	-- Cat Carrier (Bombay)
						i(8486),	-- Cat Carrier (Cornish Rex)
						i(8487),	-- Cat Carrier (Orange Tabby)
						i(8488),	-- Cat Carrier (Silver Tabby)
					},
				}),
				n(6749, {	-- Erma <Stable Master>
					["coord"] = { 42.8, 65.8, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12354, {	-- Palomino (MOUNT!)
							["timeline"] = { "removed 1.4.0" },
						}),
						i(12353, {	-- White Stallion (MOUNT!)
							["timeline"] = { "removed 1.4.0" },
						}),
					},
				}),
				n(384, {	-- Katie Hunter <Horse Breeder>
					["coord"] = { 84.0, 65.4, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2414),	-- Pinto Bridle
						i(5655),	-- Chestnut Mare Bridle
						i(5656),	-- Brown Horse Bridle
						i(18776),	-- Swift Palomino
						i(18777),	-- Swift Brown Steed
						i(18778),	-- Swift White Steed
					},
				}),
				n(1250, {	-- Drake Lindgren <General & Trade Supplies>
					["coord"] = { 83.2, 66.6, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6272),	-- Pattern: Blue Linen Robe
					},
				}),
				n(1198, {	-- Rallic Finn <Bowyer>
					["coord"] = { 83.3, 66.1, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11303),	-- Fine Shortbow
					},
				}),
				n(66, {	-- Tharynn Bouden <Trade Supplies>
					["coord"] = { 41.8, 67.0, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6270),	-- Pattern: Blue Linen Vest
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6328),	-- Recipe: Longjaw Mud Snapper
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(1256, {	-- Crystal Kelp Frond
					["questID"] = 112,	-- Collecting Kelp
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						285,	-- Murloc
						735,	-- Murloc Streamrunner
					},
				}),
				i(773, {	-- Gold Dust
					["questID"] = 47,	-- Gold Dust Exchange
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						327,	-- Goldtooth
						476,	-- Kobold Geomancer
						40,		-- Kobold Miner
						475,	-- Kobold Tunneler
					},
				}),
				i(1307, {	-- Gold Pickup Schedule
					["questID"] = 123,	-- The Collector
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						100,	-- Gruff Swiftbite
						448,	-- Hogger
						478,	-- Riverpaw Outrunner
						97,		-- Riverpaw Runt
					},
				}),
				i(778, {	-- Kobold Excavation Pick
					["cr"] = 476,	-- Kobold Geomancer
				}),
				i(1389, {	-- Kobold Mining Mallet
					["cr"] = 40,	-- Kobold Miner
				}),
				i(1195, {	-- Kobold Mining Shovel
					["cr"] = 475,	-- Kobold Tunneler
				}),
				i(772, {	-- Large Candle
					["questID"] = 60,	-- Kobold Candles
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						327,	-- Goldtooth
						476,	-- Kobold Geomancer
						40,		-- Kobold Miner
						475,	-- Kobold Tunneler
					},
				}),
				i(1399, {	-- Magic Candle
					["cr"] = 476,	-- Kobold Geomancer
				}),
				i(782, {	-- Painted Gnoll Armband
					["questID"] = 11,	-- Riverpaw Gnoll Bounty
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						478,	-- Riverpaw Outrunner
						97,		-- Riverpaw Runt
					},
				}),
				i(2057, {	-- Pitted Defias Shortsword
					["cr"] = 38,	-- Defias Thug
				}),
				i(752, {	-- Red Burlap Bandana
					["questID"] = 18,	-- Brotherhood of Thieves
					["races"] = ALLIANCE_ONLY,
					["cr"] = 38,	-- Defias Thug
				}),
				i(1019, {	-- Red Linen Bandana
					["questID"] = 83,	-- Red Linen Goods
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						583,	-- Defias Ambusher
						116,	-- Defias Bandit
						6866,	-- Defias Bodyguard
						6846,	-- Defias Dockmaster
						6927,	-- Defias Dockworker
						474,	-- Defias Rogue Wizard
						880,	-- Erlan Drudgemoor
						473,	-- Morgan the Collector
						881,	-- Surena Caledon
					},
				}),
				i(2055, {	-- Small Wooden Hammer
					["cr"] = 80,	-- Kobold Laborer
				}),
				i(781, {	-- Stone Gnoll Hammer
					["crs"] = {
						478,	-- Riverpaw Outrunner
						97,		-- Riverpaw Runt
					},
				}),
				i(780, {	-- Torn Murloc Fin
					["questID"] = 46,	-- Bounty on Murlocs
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						46,		-- Murloc Forager
						732,	-- Murloc Lurker
					},
				}),
				i(1972, {	-- Westfall Deed
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						116,	-- Defias Bandit
						6866,	-- Defias Bodyguard
						6846,	-- Defias Dockmaster
						6927,	-- Defias Dockworker
						474,	-- Defias Rogue Wizard
						880,	-- Erlan Drudgemoor
					},
				}),
			}),
		},
	}),
}));

root("NeverImplemented", bubbleDown({ ["u"] = NEVER_IMPLEMENTED }, {
	n(QUESTS, {
		q(7962),	-- Wabbit Pelts
			-- i(13913),	-- 22 Pound Lobster
		q(7961),	-- Waskily Wabbits!
			-- i(3300),	-- Rabbit's Foot
			-- i(8497),	-- Rabbit Crate (Snowshoe)
	}),
}));