---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(LOCH_MODAN, {
		["lore"] = "Loch Modan is a large area east of Dun Morogh, situated in eastern Khaz Modan. It is known for its temperate climate, abandoned archaeological dig site and, until the cataclysm, the huge lake from which the region takes its name. The gray and rugged Khaz Modan mountains rise up on all sides around the loch, and the hills are lightly wooded with pine and birch. The loch was held in place by the now broken Stonewrought Dam, an architectural wonder of no equal on Azeroth.\n\nLoch Modan is heavily populated by hostile troggs, unearthed from caves below ground by the dwarven digs. They have since settled in the surrounding mountainous area and built crude camps and caves from which to strike at passing travelers. Other dangers include dangerous wildlife, aggressive kobolds, and the powerful ogres of the Mo'grosh Stronghold.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(779, {	-- Explore Loch Modan
					-- #if BEFORE WRATH
					["description"] = "Explore Loch Modan, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["195:250:109:370"] = 924,	-- Valley of Kings
				["230:300:125:12"] = 838,	-- North Gate Pass
				["235:270:229:11"] = 149,	-- Silver Stream Mine
				["255:285:215:348"] = 923,	-- Stonesplinter Valley
				["256:230:217:203"] = 144,	-- Thelsamar
				["290:175:339:11"] = 146,	-- Stonewrought Dam
				["295:358:309:310"] = 936,	-- Grizzlepaw Ridge
				["315:235:542:48"] = 143,	-- Mo'grosh Stronghold
				["320:410:352:87"] = 556,	-- The Loch
				["345:256:482:321"] = 142,	-- Ironband's Excavation Site
				["370:295:546:199"] = 147,	-- The Farstrider Lodge
				--[[
				[145] = 4,                               -- Algaz Gate
				[837] = 9,                               -- Dun Algaz
				[839] = 11,                              -- South Gate Pass
				[925] = 14,                              -- Algaz Station
				[2101] = 16,                             -- Stoutlager Inn
				]]--
			})),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(8, {	-- Thelsamar, Loch Modan
					["cr"] = 1572,	-- Thorgrum Borrelson <Gryphon Master>
					["coord"] = { 33.8, 50.8, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(250, {	-- A Dark Threat Looms (1/7)
					["qg"] = 1093,	-- Chief Engineer Hinderweir VII
					["coord"] = { 46, 13.6, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(199, {	-- A Dark Threat Looms (2/7)
					["provider"] = { "o", 257 },	-- Suspicious Barrel
					["sourceQuest"] = 250,	-- A Dark Threat Looms (1/7)
					["coord"] = { 56.1, 13.3, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2563, 1 },	-- Strange Smelling Powder
					},
					["lvl"] = 16,
				}),
				q(161, {	-- A Dark Threat Looms (3/7)
					["qg"] = 1093,	-- Chief Engineer Hinderweir VII
					["sourceQuest"] = 199,	-- A Dark Threat Looms (2/7)
					["coord"] = { 46, 13.6, LOCH_MODAN },
					["maps"] = { WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2563, 1 },	-- Strange Smelling Powder
					},
					["lvl"] = 16,
				}),
				q(274, {	-- A Dark Threat Looms (4/7)
					["qg"] = 1073,	-- Ashlan Stonesmirk
					["sourceQuest"] = 161,	-- A Dark Threat Looms (3/7)
					["coord"] = { 50, 18.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2609, 1 },	-- Disarming Colloid
					},
					["lvl"] = 16,
				}),
				q(278, {	-- A Dark Threat Looms (5/7)
					["qg"] = 1093,	-- Chief Engineer Hinderweir VII
					["sourceQuest"] = 274,	-- A Dark Threat Looms (4/7)
					["coord"] = { 46, 13.6, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2606, 1 },	-- Lurker Venom
						{ "i", 2607, 1 },	-- Mo'grosh Crystal
						{ "i", 2939, 1 },	-- Crocolisk Tear
					},
					["lvl"] = 16,
				}),
				q(280, {	-- A Dark Threat Looms (6/7)
					["qg"] = 1093,	-- Chief Engineer Hinderweir VII
					["sourceQuest"] = 278,	-- A Dark Threat Looms (5/7)
					["coord"] = { 46, 13.6, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2610, 1 },	-- Disarming Mixture
					},
					["lvl"] = 16,
				}),
				q(283, {	-- A Dark Threat Looms (7/7)
					["provider"] = { "o", 1585 },	-- Explosive Charge
					["coord"] = { 50.6, 14.4, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						i(2907),	-- Dwarven Tree Chopper
						i(2908),	-- Thornblade
					},
				}),
				q(257, {	-- A Hunter's Boast
					["lvl"] = 11,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1187,	-- Daryl the Youngling
					["groups"] = {
						i(2903),	-- Daryl's Hunting Bow
						i(2904),	-- Daryl's Hunting Rifle
					},
				}),
				q(258, {	-- A Hunter's Challenge
					["lvl"] = 11,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1187,	-- Daryl the Youngling
					["sourceQuest"] = 257,	-- A Hunter's Boast
					["groups"] = {
						i(859),	-- Fine Cloth Shirt
						i(3572),	-- Daryl's Shortsword
					},
				}),
				q(454, {	-- After the Ambush
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2057,	-- Huldar
					["sourceQuest"] = 273,	-- Resupplying the Excavation
				}),
				q(704, {	-- Agmond's Fate
					["qg"] = 1344,	-- Prospector Ironband
					["sourceQuest"] = 739,	-- Murdaloc
					["coord"] = { 65.9, 65.6, LOCH_MODAN },
					["maps"] = { BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4610,	-- Carved Stone Urn
							["questID"] = 704,	-- Agmond's Fate
							["description"] = "Can be found in the outdoor section of Uldaman.",
						},
						i(4980),	-- Prospector Gloves
					},
				}),
				q(2500, {	-- Badlands Reagent Run
					["qg"] = 1470,	-- Ghak Healtouch
					["coord"] = { 37.07, 49.38, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 7847, 5 },	-- Buzzard Gizzard
						{ "i", 7846, 10 },	-- Crag Coyote Fang
						{ "i", 7848, 5 },	-- Rock Elemental Shard
					},
					["lvl"] = 36,
				}),
				q(1655, {	-- Bailor's Ore Shipment
					["qg"] = 6241,	-- Bailor Stonehand
					["sourceQuest"] = 1653,	-- The Test of Righteousness
					["coord"] = { 36.0, 45.0, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["repeatable"] = true,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Jordan's Ore Shipment
							["provider"] = { "i", 6992 },	-- Jordan's Ore Shipment
							["coord"] = { 71.6, 21.4, LOCH_MODAN },
						}),
						i(6993),	-- Jordan's Refined Ore Shipment
					},
				}),
				q(2038, {	-- Bingles' Missing Supplies
					["qg"] = 6577,	-- Bingles Blastenheimer
					["sourceQuest"] = 2039,	-- Find Bingles
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						i(12522),	-- Bingles' Flying Gloves
					},
				}),
				q(385, {	-- Crocolisk Hunting
					["qg"] = 1154,	-- Marek Ironheart
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2924, 5 },	-- Crocolisk Meat
						{ "i", 2925, 6 },	-- Crocolisk Skin
					},
					["lvl"] = 10,
					["groups"] = {
						i(3678),	-- Recipe: Crocolisk Steak
						i(2240),	-- Rugged Cape
					},
				}),
				q(298, {	-- Excavation Progress Report
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1344,	-- Prospector Ironband
					["coord"] = { 65.9, 65.6, LOCH_MODAN },
				}),
				q(307, {	-- Filthy Paws
					["qg"] = 1343,	-- Mountaineer Stormpike
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						i(3166),	-- Ironheart Chain
						i(3161),	-- Robe of the Keeper
						i(3160),	-- Ironplate Buckler
					},
					["coord"] = { 24.7, 18.3, LOCH_MODAN },
					["description"] = "Enter the building at 23.3, 17.9 and go up the stairs to access Mountaineer Stormpike.",
				}),
				q(738, {	-- Find Agmond
					["qg"] = 1344,	-- Prospector Ironband
					["sourceQuest"] = 707,	-- Ironband Wants You!
					["coord"] = { 65.93, 65.62, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(4982),	-- Ripped Prospector Belt
						i(2776),	-- Gold Ore
						i(1529),	-- Jade
					},
				}),
				q(297, {	-- Gathering Idols
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1345,	-- Magmar Fellhew
					["sourceQuest"] = 436,	-- Ironband's Excavation
					["groups"] = {
						i(5241),	-- Dwarven Flamestick
						i(6186),	-- Trogg Slicer
						i(3154),	-- Thelsamar Axe
					},
					["coord"] = { 64.9, 66.7, LOCH_MODAN },
				}),
				q(6387, {	-- Honor Students
					["qg"] = 1681,	-- Brock Stoneseeker
					["coord"] = { 37, 47.8, LOCH_MODAN },
					["races"] = { DWARF, GNOME },
					["cost"] = {
						{ "i", 16310, 1 },	-- Brock's List
					},
					["lvl"] = 10,
				}),
				q(224, {	-- In Defense of the King's Lands (1/4)
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1089,	-- Mountaineer Cobbleflint
					["coord"] = { 22.1, 73.2, LOCH_MODAN },
				}),
				q(237, {	-- In Defense of the King's Lands (2/4)
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1091,	-- Mountaineer Gravelgaw
					["sourceQuest"] = 224,	-- In Defense of the King's Lands (1/4)
				}),
				q(263, {	-- In Defense of the King's Lands (3/4)
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1090,	-- Mountaineer Wallbang
					["sourceQuest"] = 237,	-- In Defense of the King's Lands (2/4)
					["groups"] = {
						i(2863),	-- Coarse Sharpening Stone
					},
				}),
				q(217, {	-- In Defense of the King's Lands (4/4)
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1092,	-- Captain Rugelfuss
					["sourceQuest"] = 263,	-- In Defense of the King's Lands (3/4)
					["groups"] = {
						i(1436),	-- Frontier Britches
						i(6187),	-- Dwarven Defender
						i(1832),	-- Lucky Trousers
					},
				}),
				q(436, {	-- Ironband's Excavation
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1105,	-- Jern Hornhelm
					["coord"] = { 37.2, 47.4, LOCH_MODAN },
					["description"] = "Enter the building at 37.2, 47.0 and go down the stairs to get to Jern Hornhelm.",
					["isBreadcrumb"] = true,
				}),
				q(255, {	-- Mercenaries
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1139,	-- Magistrate Bluntnose
					["coord"] = { 34.6, 44.5, LOCH_MODAN },
				}),
				q(1339, {	-- Mountaineer Stormpike's Task
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1340,	-- Mountaineer Kadrell
					["isBreadcrumb"] = true,
				}),
				q(302, {	-- Powder to Ironband
					["qg"] = 1356,	-- Prospector Stormpike
					["sourceQuest"] = 301,	-- Report to Ironforge
					["coord"] = { 74.4, 12, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(3182, {	-- Proof of Deed
					["qg"] = 3836,	-- Mountaineer Pebblebitty
					["sourceQuest"] = 3181,	-- The Horn of the Beast
					["coord"] = { 18.2, 84.0, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10005, 1 },	-- Margol's Gigantic Horn
					},
					["lvl"] = 40,
				}),
				q(309, {	-- Protecting the Shipment
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qgs"] = {
						1379,	-- Miran
						2057,	-- Huldar
					},
					["sourceQuest"] = 454,	-- After the Ambush
					["groups"] = {
						i(3217),	-- Foreman Belt
						i(6188),	-- Mud Stompers
					},
				}),
				q(416, {	-- Rat Catching
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1340,	-- Mountaineer Kadrell
					["groups"] = {
						i(3158),	-- Burnt Hide Bracers
						i(860),	-- Cavalier's Boots
					},
				}),
				q(301, {	-- Report to Ironforge
					["qg"] = 1105,	-- Jern Hornhelm
					["sourceQuest"] = 298,	-- Excavation Progress Report
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2637, 1 },	-- Ironbrand's Progress Report
					},
					["lvl"] = 10,
				}),
				q(468, {	-- Report to Mountaineer Rockgar
					["qg"] = 1340,	-- Mountaineer Kadrell
					["coord"] = { 34.8, 47, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 19,
				}),
				q(273, {	-- Resupplying the Excavation
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1105,	-- Jern Hornhelm
					["sourceQuest"] = 302,	-- Powder to Ironband
				}),
				q(6391, {	-- Ride to Ironforge
					["qg"] = 1572,	-- Thorgrum Borrelson
					["sourceQuest"] = 6387,	-- Honor Students
					["coord"] = { 33.9, 50.9, LOCH_MODAN },
					["races"] = { DWARF, GNOME },
					["cost"] = {
						{ "i", 16310, 1 },	-- Brock's List
					},
					["lvl"] = 10,
				}),
				un(NEVER_IMPLEMENTED, q(912, {	-- Stonesplinter Trogg Disguise
					["lvl"] = 10,
					["groups"] = {
						un(NEVER_IMPLEMENTED, i(5131)),	-- Knowledge: Stonesplinter Disguise
					},
				})),
				q(1338, {	-- Stormpike's Order
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1343,	-- Mountaineer Stormpike
					["coord"] = { 24.7, 18.3, LOCH_MODAN },
					["description"] = "Enter the building at 23.3, 17.9 and go up the stairs to access Mountaineer Stormpike.",
				}),
				q(455, {	-- The Algaz Gauntlet
					["qg"] = 1342,	-- Mountaineer Rockgar
					["sourceQuest"] = 468,	-- Report to Mountaineer Rockgar
					["coord"] = { 25.5, 10.5, LOCH_MODAN },
					["maps"] = { WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 19,
				}),
				q(267, {	-- The Trogg Threat
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1092,	-- Captain Rugelfuss
				}),
				q(418, {	-- Thelsamar Blood Sausages
					["qg"] = 1963,	-- Vidra Hearthstove
					["description"] = "Vidra Hearthstove is behind the bar on the first floor of the Stoutlager Inn.",
					["coord"] = { 34.8, 49.3, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3172, 3 },	-- Boar Intestines
						{ "i", 3173, 3 },	-- Bear Meat
						{ "i", 3174, 3 },	-- Spider Ichor
					},
					["lvl"] = 7,
					["groups"] = {
						i(3220),	-- Blood Sausage
						i(3679),	-- Recipe: Blood Sausage
					},
				}),
				q(17, {	-- Uldaman Reagent Run
					["sourceQuest"] = 2500,	-- Badlands Reagent Run
					["qg"] = 1470,	-- Ghak Healtouch
					["cost"] = {
						{ "i", 8047, 12 },	-- Magenta Fungus Cap
					},
					["coord"] = { 37.07, 49.38, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(271, {	-- Vyrin's Revenge (1/2)
					["qg"] = 1156,	-- Vyrin Swiftwind
					["sourceQuest"] = 258,	-- A Hunter's Challenge
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2713, 1 },	-- Ol' Sooty's Head
					},
					["lvl"] = 15,
					["groups"] = {
						{
							["itemID"] = 2713,	-- Ol' Sooty's Head
							["questID"] = 271,	-- Vyrin's Revenge (1/2)
							["cr"] = 1225,	-- Ol' Sooty
							["coord"] = { 37.6, 62.6, LOCH_MODAN },
						},
					},
				}),
				q(531, {	-- Vyrin's Revenge (2/2)
					["qg"] = 1187,	-- Daryl the Youngling
					["sourceQuest"] = 271,	-- Vyrin's Revenge (1/2)
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2713, 1 },	-- Ol' Sooty's Head
					},
					["lvl"] = 15,
					["groups"] = {
						i(3574),	-- Hunting Ammo Sack
						i(3573),	-- Hunting Quiver
					},
				}),
				q(256, {	-- WANTED: Chok'sul
					["provider"] = { "o", 256 },	-- WANTED
					["coord"] = { 37.2, 46.4, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						{
							["itemID"] = 2561,	-- Chok'sul's Head
							["questID"] = 256,	-- WANTED: Chok'sul
							["cr"] = 1210,	-- Chok'sul
							["coord"] = { 79.6, 14.2, LOCH_MODAN },
						},
						i(6189),	-- Durable Chain Shoulders
						i(6191),	-- Kimbra Boots
						i(1449),	-- Minor Channeling Ring
					},
				}),
			}),
			n(RARES, {
				n(1398, {  -- Boss Galgosh <Stonesplinter Chieftain>
					["coords"] = {
						{ 68.4, 66.0, LOCH_MODAN },
						{ 65.8, 68.0, LOCH_MODAN },
						{ 68.8, 68.6, LOCH_MODAN },
						{ 72.4, 67.6, LOCH_MODAN },
						{ 70.4, 63.8, LOCH_MODAN },
					},
					["groups"] = {
						i(1938),	-- Block Mallet
						i(1215),	-- Support Girdle
					},
				}),
				n(14267, {  -- Emogg the Crusher
					["coords"] = {
						{ 65.0, 21.0, LOCH_MODAN },
						{ 68.4, 28.8, LOCH_MODAN },
						{ 64.2, 28.4, LOCH_MODAN },
						{ 71.6, 21.0, LOCH_MODAN },
					},
				}),
				n(1425, {  -- Grizlak
					["coord"] = { 35.4, 27.8, LOCH_MODAN },
					["groups"] = {
						i(2284),	-- Rat Cloth Cloak
						i(6195),	-- Wax-polished Armor
					},
				}),
				n(2476, {  -- Large Loch Crocolisk
					["coords"] = {
						{ 58.8, 28.2, LOCH_MODAN },
						{ 59.8, 31.8, LOCH_MODAN },
						{ 61.2, 40.6, LOCH_MODAN },
						{ 62.4, 45.6, LOCH_MODAN },
					},
					["groups"] = {
						i(6197),	-- Loch Croc Hide Vest
						i(3563),	-- Seafarer's Pantaloons
					},
				}),
				n(14268, {  -- Lord Condar
					["coords"] = {
						{ 62.8, 78.2, LOCH_MODAN },
						{ 74.8, 67.8, LOCH_MODAN },
						{ 78.0, 74.2, LOCH_MODAN },
					},
				}),
				n(1399, {  -- Magosh <Stonesplinter Tribal Shaman>
					["coord"] = { 70.0, 66.2, LOCH_MODAN },
					["groups"] = {
						i(2241),	-- Desperado Cape
						i(3571),	-- Trogg Beater
					},
				}),
				n(14266, {  -- Shanda the Spinner
					["coord"] = { 77.8, 53.6, LOCH_MODAN },
				}),
			}),
			n(VENDORS, {
				n(1214, {	-- Aldren Cordon <Clothier>
					["coord"] = { 64.8, 66.0, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4781),	-- Whispering Vest
						i(4782),	-- Solstice Robe
						i(4786),	-- Wise Man's Belt
					},
				}),
				n(1687, {	-- Cliff Hadin <Bowyer>
					["coord"] = { 83.0, 63.0, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11304),	-- Fine Longbow
					},
				}),
				n(1465, {	-- Drav Roughcut <Tradesman>
					["coord"] = { 35.6, 49.2, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6892),	-- Recipe: Smoked Bear Meat
					},
				}),
				n(954, {	-- Kat Sampson <Leather Armor Merchant>
					["coord"] = { 82.6, 64.0, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4788),	-- Agile Boots
						i(4789),	-- Stable Boots
					},
				}),
				n(1684, {	-- Khara Deepwater <Fishing Supplies>
					["coord"] = { 40.4, 39.4, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6328),	-- Recipe: Longjaw Mud Snapper
						i(6329),	-- Recipe: Loch Frenzy Delight
					},
				}),
				n(167, {	-- Morhan Coppertongue <Metalsmith>
					["coord"] = { 34.0, 46.6, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4765),	-- Enamelled Broadsword
						i(4766),	-- Feral Blade
					},
				}),
				n(222, {	-- Nillen Andemar <Macecrafter>
					["coord"] = { 42.8, 10.0, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4777),	-- Ironwood Maul
						i(4778),	-- Heavy Spiked Mace
					},
				}),
				n(1474, {	-- Rann Flamespinner <Tailoring Supplies>
					["coord"] = { 36.0, 45.9, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5772),	-- Pattern: Red Woolen Bag
						i(6275),	-- Pattern: Greater Adept's Robe
					},
				}),
				n(1685, {	-- Xandar Goodbeard <General Supplies>
					["coord"] = { 82.6, 63.4, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5640),	-- Recipe: Rage Potion
						i(6053),	-- Recipe: Holy Protection Potion
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(5319, {	-- Bashing Pauldrons
					["cr"] = 2478,  -- Haren Swifthoof <Horde Runner>
				}),
				i(2924, {	-- Crocolisk Meat
					["questID"] = 385,	-- Crocolisk Hunting
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						5053,	-- Deviate Crocolisk
						2476,	-- Large Loch Crocolisk
						1693,	-- Loch Crocolisk
					},
				}),
				i(2925, {	-- Crocolisk Skin
					["questID"] = 385,	-- Crocolisk Hunting
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						2476,	-- Large Loch Crocolisk
						1693,	-- Loch Crocolisk
					},
				}),
				i(2939, {	-- Crocolisk Tear
					["questID"] = 278,	-- A Dark Threat Looms
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						2476,	-- Large Loch Crocolisk
						1693,	-- Loch Crocolisk
					},
				}),
				i(2606, {	-- Lurker Venom
					["questID"] = 278,	-- A Dark Threat Looms
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						1184,	-- Cliff Lurker
						1195,	-- Forest Lurker
						14266,	-- Shanda the Spinner
						1185,	-- Wood Lurker
					},
				}),
				i(2823, {	-- Mo'grosh Can Opener
					["cr"] = 1180,  -- Mo'grosh Brute
				}),
				i(2607, {	-- Mo'grosh Crystal
					["questID"] = 278,	-- A Dark Threat Looms
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						14267,	-- Emogg the Crusher
						1180,	-- Mo'grosh Brute
						1179,	-- Mo'grosh Enforcer
						1183,	-- Mo'grosh Mystic
						1178,	-- Mo'grosh Ogre
						1181,	-- Mo'grosh Shaman
					},
				}),
				i(2821, {	-- Mo'grosh Masher
					["crs"] = {
						14267,  -- Emogg the Crusher
						1179,  -- Mo'grosh Enforcer
					},
				}),
				i(2822, {	-- Mo'grosh Toothpick
					["cr"] = 1178,  -- Mo'grosh Ogre
				}),
				i(4949, {	-- Orcish Cleaver
					["cr"] = 7170,  -- Thragomm <Horde Runner>
				}),
				i(2283, {	-- Rat Cloth Belt
					["cr"] = 1177,  -- Tunnel Rat Surveyor
				}),
				i(2281, {	-- Rodentia Flint Axe
					["crs"] = {
						1176,  -- Tunnel Rat Forager
						1202,  -- Tunnel Rat Kobold
					},
				}),
				i(2282, {	-- Rodentia Shortsword
					["crs"] = {
						1173,  -- Tunnel Rat Scout
						1172,  -- Tunnel Rat Vermin
					},
				}),
				i(2274, {	-- Sapper's Gloves
					["cr"] = 1222,  -- Dark Iron Sapper
				}),
				i(2265, {	-- Stonesplinter Axe
					["cr"] = 1163,  -- Stonesplinter Skullthumper
				}),
				i(2268, {	-- Stonesplinter Blade
					["crs"] = {
						1162,  -- Stonesplinter Scout
						1161,  -- Stonesplinter Trogg
					},
				}),
				i(2266, {	-- Stonesplinter Dagger
					["cr"] = 1166,  -- Stonesplinter Seer
				}),
				i(2267, {	-- Stonesplinter Mace
					["cr"] = 1197,  -- Stonesplinter Shaman
				}),
				i(5109),	-- Stonesplinter Rags
			}),
		},
	}),
}));