---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(KALIMDOR, {
	m(DUROTAR, {
		["lore"] = "Once the home of the savage quilboar, the Horde arrived on Kalimdor's shore and, in the aftermath of the Third War, drove the quilboar from the land and established this region as its own. Warchief Thrall named the new nation after his father, Durotan, and rules ably. Horde settlements are scattered throughout the rocky land, which is only marginally more fertile than the Barrens.\n\nThe Horde's greatest city is Orgrimmar, a warrior city that symbolizes the greatness of the orcs and their allies. Much of Durotar remains wild, and the orcs continually fend off centaur and quilboar as they attempt to tame the land.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(728, {	-- Explore Durotar
					-- #if BEFORE WRATH
					["description"] = "Explore Durotar, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["128:110:464:33"] = 817,	-- Skull Rock
				["160:120:413:476"] = 366,	-- Kolkar Crag
				["160:190:474:384"] = 367,	-- Sen'jin Village
				["190:180:462:286"] = 372,	-- Tiragarde Keep
				["190:200:327:60"] = 369,	-- Thunder Ridge
				["200:240:549:427"] = 368,	-- Echo Isles
				["210:160:427:78"] = 370,	-- Drygulch Ravine
				["215:215:355:320"] = 363,	-- Valley of Trials
				["220:230:432:170"] = 362,	-- Razor Hill
				["230:230:301:189"] = 816,	-- Razormane Grounds
				["445:160:244:0"] = 1637,	-- Orgrimmar
				--[[
				[364] = 3,                               -- The Den
				[365] = 4,                               -- Burning Blade Coven
				[371] = 10,                              -- Dustwind Cave
				[373] = 12,                              -- Scuttle Coast
				[374] = 13,                              -- Bladefist Bay
				[375] = 14,                              -- Deadeye Shore
				[393] = 15,                              -- Darkspear Strand
				[410] = 17,                              -- Razorwind Canyon
				[638] = 18,                              -- Hidden Path
				[639] = 19,                              -- Spirit Rock
				[640] = 20,                              -- Shrine of the Dormant Flame
				[814] = 21,                              -- Southfury River
				[1296] = 24,                             -- Rocktusk Farm
				[1297] = 25,                             -- Jaggedswine Farm
				[2320] = 26,                             -- The Great Sea
				[2337] = 27,                             -- Razor Hill Barracks
				[2979] = 28,                             -- Tor'kren Farm
				]]--
			})),
			-- #endif
			n(QUESTS, {
				q(2161, {	-- A Peon's Burden
					["qg"] = 6786,	-- Ukor
					["coord"] = { 52.05, 68.31, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 7629, 1 },	-- Ukor's Burden
					},
				}),
				q(818, {	-- A Solvent Spirit
					["qg"] = 3304,	-- Master Vornal
					["coord"] = { 55.95, 74.39, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4888, 8 },	-- Crawler Mucus
						{ "i", 4887, 4 },	-- Intact Makrura Eye
					},
					["lvl"] = 5,
					["groups"] = {
						i(4941),	-- Really Sticky Glue
					},
				}),
				un(NEVER_IMPLEMENTED, q(785, {	-- A Strategic Alliance
					-- low enough questID for classic, but unable to verify if it actually was in vanilla
					-- since Neeru Fireblade was moved to Orgrimmar for launch, it seems unlikely.
					["qg"] = 3216,	-- Neeru Fireblade
					["coord"] = { 49.64, 50.31, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
				})),
				q(809, {	-- Ak'Zeloth
					["qg"] = 3216,	-- Neeru Fireblade
					["sourceQuest"] = 829,	-- Neeru Fireblade
					["coord"] = { 49.6, 50.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
				}),
				q(815, {	-- Break a Few Eggs
					["qg"] = 3191,	-- Cook Torka
					["coord"] = { 51.11, 42.45, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4890, 3 },	-- Taillasher Egg
					},
					["lvl"] = 6,
				}),
				q(1843, {	-- Brutal Gauntlets
					["qg"] = 6408,	-- Ula'elek
					["sourceQuest"] = 1842,	-- Satyr Hooves
					["coord"] = { 56.2, 74.4, DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["groups"] = {
						i(7129),	-- Brutal Gauntlets
					},
				}),
				q(794, {	-- Burning Blade Medallion
					["qg"] = 3145,	-- Zureetha Fargaze
					["sourceQuests"] = {
						792,	-- Vile Familiars
						1499,	-- Vile Familiars (Part 2 - Warlocks only!)
					},
					["coord"] = { 42.85, 69.14, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4859, 1 },	-- Burning Blade Medallion
					},
					["groups"] = {
						{
							["itemID"] = 4859,	-- Burning Blade Medallion
							["questID"] = 794,	-- Burning Blade Medallion
							["cr"] = 3183,	-- Yarrog Baneshadow
							["coord"] = { 42.8, 52.6, DUROTAR },
						},
						i(4921),	-- Dust-covered Leggings
						i(4922),	-- Jagged Chain Vest
						i(6713),	-- Ripped Pants
					},
				}),
				q(832, {	-- Burning Shadows
					["provider"] = { "i", 4903 },	-- Eye of Burning Shadow
					["coord"] = { 51.78, 9.56, DUROTAR },
					["maps"] = { ORGRIMMAR },
					["cr"] = 3204,	-- Gazz'uz
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
				}),
				q(1516, {	-- Call of Earth (1/3)
					["qg"] = 5887,	-- Canaga Earthcaller
					["coord"] = { 42.4, 69.0, DUROTAR },
					["timeline"] = { "removed 4.0.3.10000" },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["altQuests"] = {
						1519, -- Call to Earth (1/3 Mulgore)
					},
					["cost"] = {
						{ "i", 6640, 2 },	-- Felstalker Hoof
					},
					["lvl"] = 4,
				}),
				q(1517, {	-- Call of Earth (2/3)
					["qg"] = 5887,	-- Canaga Earthcaller
					["sourceQuest"] = 1516,	-- Call of Earth (1/3)
					["coord"] = { 42.4, 69.0, DUROTAR },
					["timeline"] = { "removed 4.0.3.10000" },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["altQuests"] = {
						1520, -- Call to Earth (2/3 Mulgore)
					},
					["cost"] = {
						{ "i", 6635, 1 },	-- Earth Sapta
					},
					["lvl"] = 4,
				}),
				q(1518, {	-- Call of Earth (3/3)
					["qg"] = 5891,	-- Minor Manifestation of Earth
					["sourceQuest"] = 1517,	-- Call of Earth (2/3)
					["coord"] = { 44.0, 76.0, DUROTAR },
					["timeline"] = { "removed 4.0.3.10000" },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["altQuests"] = {
						1521, -- Call to Earth (3/3 Mulgore)
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
				q(791, {	-- Carry Your Weight
					["qg"] = 3147,	-- Furl Scornbrow
					["coord"] = { 49.8, 40.4, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4870, 8 },	-- Canvas Scraps
					},
					["lvl"] = 4,
					["groups"] = {
						i(11845),	-- Handmade Leather Bag
					},
				}),
				q(840, {	-- Conscript of the Horde
					["qg"] = 3336,	-- Takrin Pathseeker
					["coord"] = { 50.85, 43.59, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4992, 1 },	-- Recruitment Letter
					},
					["lvl"] = 10,
				}),
				q(842, {	-- Crossroads Conscription
					["qg"] = 3337,	-- Kargal Battlescar
					["sourceQuest"] = 840,	-- Conscript of the Horde
					["coord"] = { 62.26, 19.37, THE_BARRENS },
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4995, 1 },	-- Signed Recruitment Letter
					},
					["lvl"] = 10,
				}),
				q(788, {	-- Cutting Teeth
					["qg"] = 3143,	-- Gornek
					["sourceQuest"] = 4641,	-- Your Place In The World
					["coord"] = { 42.06, 68.33, DUROTAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4915),	-- Soft Wool Boots
						i(4914),	-- Battleworn Leather Gloves
					},
				}),
				q(806, {	-- Dark Storms
					["qg"] = 3142,	-- Orgnil Soulscar
					["sourceQuest"] = 823,	-- Report to Orgnil
					["coord"] = { 52.2, 43.2, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4869, 1 },	-- Fizzle's Claw
					},
					["lvl"] = 4,
					["groups"] = {
						{
							["itemID"] = 4869,	-- Fizzle's Claw
							["questID"] = 806,	-- Dark Storms
							["cr"] = 3203,	-- Fizzle Darkstorm
							["coord"] = { 42.6, 26.4, DUROTAR },
						},
						i(4942),	-- Tiger Hide Boots
					},
				}),
				q(1463, {	-- Earth Sapta
					["qg"] = 5887,	-- Canaga Earthcaller
					["sourceQuest"] = 1516,	-- Call of Earth (1/3)
					["coord"] = { 42.4, 69.0, DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["repeatable"] = true,
					["altQuests"] = {
						1462, -- Earth Sapta (Mulgore)
					},
					["cost"] = {
						{ "i", 6635, 1 },	-- Earth Sapta
					},
					["lvl"] = 4,
				}),
				q(837, {	-- Encroachment
					["qg"] = 3139,	-- Gar'Thok
					["coord"] = { 52, 43.4, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
				}),
				q(3088, {	-- Encrypted Parchment
					["qg"] = 3143,	-- Gornek
					["sourceQuest"] = 788,	-- Cutting Teeth
					["coord"] = { 42.06, 68.33, DUROTAR },
					["races"] = { ORC },
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 9560, 1 },	-- Encrypted Parchment
					},
				}),
				q(3083, {	-- Encrypted Tablet
					["qg"] = 3143,	-- Gornek
					["sourceQuest"] = 788,	-- Cutting Teeth
					["coord"] = { 42.06, 68.33, DUROTAR },
					["races"] = { TROLL },
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 9554, 1 },	-- Encrypted Tablet
					},
				}),
				q(3087, {	-- Etched Parchment
					["qg"] = 3143,	-- Gornek
					["sourceQuest"] = 788,	-- Cutting Teeth
					["coord"] = { 42.06, 68.33, DUROTAR },
					["races"] = { ORC },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 9553, 1 },	-- Etched Parchment
					},
				}),
				q(3082, {	-- Etched Tablet
					["qg"] = 3143,	-- Gornek
					["sourceQuest"] = 788,	-- Cutting Teeth
					["coord"] = { 42.06, 68.33, DUROTAR },
					["races"] = { TROLL },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 9564, 1 },	-- Etched Tablet
					},
				}),
				q(813, {	-- Finding the Antidote
					["qg"] = 3189,	-- Kor'ghan
					["coord"] = { 47, 53.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["crs"] = {
						3226,	-- Corrupted Scorpid
						5823,	-- Death Flayer
						3127,	-- Venomtail Scorpid
					},
					["cost"] = {
						{ "i", 4886, 4 },	-- Venomtail Poison Sac
					},
					["lvl"] = 7,
					["groups"] = {
						{
							["itemID"] = 4904,	-- Venomtail Antidote
							["questID"] = 812,	-- Need for a Cure
						},
					},
				}),
				q(926, {	-- Flawed Power Stone
					["provider"] = { "o", 5620 },	-- Flawed Power Stones
					["coord"] = { 62.4, 20, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						{
							["itemID"] = 4986,	-- Flawed Power Stone
							["questID"] = 924,	-- The Demon Seed
						},
					},
				}),
				q(825, {	-- From The Wreckage....
					["qg"] = 3139,	-- Gar'Thok
					["sourceQuest"] = 784,	-- Vanquish the Betrayers
					["coord"] = { 52, 43.4, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4863, 3 },	-- Gnomish Tools
					},
					["lvl"] = 3,
					["groups"] = {
						i(4936),	-- Dirt-trodden Boots
						i(4928),	-- Sandrunner Wristguards
						i(4935),	-- Wide Metal Girdle
					},
				}),
				q(4402, {	-- Galgar's Cactus Apple Surprise
					["qg"] = 9796,	-- Galgar
					["sourceQuest"] = 788,	-- Cutting Teeth
					["coord"] = { 42.73, 67.23, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11583, 10 },	-- Cactus Apple
					},
					["groups"] = {
						i(11584),	-- Cactus Apple Surprise
					},
				}),
				q(1506, {	-- Gan'rul's Summons
					["qg"] = 3294,	-- Ophek
					["coord"] = { 54.2, 41.2, DUROTAR },
					["races"] = { ORC, TROLL, UNDEAD },
					["classes"] = { WARLOCK },
					["altQuests"] = {
						1478,	-- Halgar's Summons
					},
					["lvl"] = 10,
				}),
				q(5648, {	-- Garments of Spirituality
					["qg"] = 3706,	-- Tai'jin
					["sourceQuest"] = 5649,	-- In Favor of Spirituality
					["coord"] = { 54.2, 42.8, DUROTAR },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 5,
					["groups"] = {
						i(16606),	-- Juju Hex Robes
					},
				}),
				q(3086, {	-- Glyphic Tablet
					["qg"] = 3143,	-- Gornek
					["sourceQuest"] = 788,	-- Cutting Teeth
					["coord"] = { 42.0, 68.4, DUROTAR },
					["classes"] = { MAGE },
					["races"] = { TROLL },
					["cost"] = {
						{ "i", 9575, 1 },	-- Glyphic Tablet
					},
				}),
				q(3085, {	-- Hallowed Tablet
					["qg"] = 3143,	-- Gornek
					["sourceQuest"] = 788,	-- Cutting Teeth
					["coord"] = { 42.0, 68.4, DUROTAR },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["cost"] = {
						{ "i", 9561, 1 },	-- Hallowed Tablet
					},
				}),
				q(5649, {	-- In Favor of Spirituality
					["qg"] = 3707,	-- Ken'jai
					["coord"] = { 42.4, 68.8, DUROTAR },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 5
				}),
				q(7664, {	-- Ivory Raptor Replacement
					["qg"] = 7952,	-- Zjolnir
					["coord"] = { 55.2, 75.6, DUROTAR },
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["timeline"] = { "removed 1.4.0" },
					["cost"] = { { "i", 13317, 1 } },	-- Ivory Raptor (MOUNT!)
					["sym"] = { { "select", "itemID", 18788, 18789, 18790 } },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
				}),
				q(1884, {	-- Ju-Ju Heaps
					["qg"] = 5880,	-- Un'Thuwa <Mage Trainer>
					["sourceQuests"] = {
						1881,	-- Speak with Anastasia
						1883,	-- Speak with Un'thuwa
					},
					["coord"] = { 56.2, 75.0, DUROTAR },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["lvl"] = 10,
					["groups"] = {
						i(7508),	-- Ley Orb
						i(9513),	-- Ley Staff
					},
				}),
				q(5441, {	-- Lazy Peons
					["qg"] = 11378,	-- Foreman Thazz'ril
					["coord"] = { 44.62, 68.65, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16114, 1 },	-- Foreman's Blackjack
					},
					["lvl"] = 3,
				}),
				q(816, {	-- Lost But Not Forgotten
					["qg"] = 3193,	-- Misha Tor'kren
					["coord"] = { 43.10, 30.24, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4891, 1 },	-- Kron's Amulet
					},
					["lvl"] = 8,
					["groups"] = {
						i(4944),	-- Handsewn Cloak
					},
				}),
				q(828, {	-- Margoz
					["qg"] = 3142,	-- Orgnil Soulscar
					["sourceQuest"] = 806,	-- Dark Storms
					["coord"] = { 52.2, 43.2, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
				}),
				q(808, {	-- Minshina's Skull
					["qg"] = 3188,	-- Master Gadrin
					["sourceQuest"] = 805,	-- Report to Sen'jin Village
					["coord"] = { 55.95, 74.72, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4864, 1 },	-- Minshina's Skull
					},
					["lvl"] = 4,
					["groups"] = {
						{
							["itemID"] = 4864,	-- Minshina's Skull
							["questID"] = 808,	-- Minshina's Skull
							["coord"] = { 67.4, 87.7, DUROTAR },
						},
						i(4945),	-- Faintly Glowing Skull
					},
				}),
				q(812, {	-- Need for a Cure
					["qg"] = 3190,	-- Rhinag
					["coord"] = { 41.54, 18.61, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4904, 1 },	-- Venomtail Antidote
					},
					["lvl"] = 7,
					["groups"] = {
						i(4937),	-- Charging Buckler
						i(4929),	-- Light Scorpid Armor
					},
				}),
				q(829, {	-- Neeru Fireblade
					["qg"] = 3208,	-- Margoz
					["sourceQuest"] = 827,	-- Skull Rock
					["coord"] = { 56.41, 20.05, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6658, 1 },	-- Example Collar
					},
					["lvl"] = 4,
				}),
				q(817, {	-- Practical Prey
					["qg"] = 3194,	-- Vel'rin Fang
					["coord"] = { 55.95, 73.92, DUROTAR },
					["cr"] = 3121,	-- Durotar Tiger
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4892, 4 },	-- Durotar Tiger Fur
					},
					["lvl"] = 5,
				}),
				q(7665, {	-- Red Raptor Replacement
					["qg"] = 7952,	-- Zjolnir
					["coord"] = { 55.2, 75.6, DUROTAR },
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["timeline"] = { "removed 1.4.0" },
					["cost"] = { { "i", 8586, 1 } },	-- Mottled Red Raptor (MOUNT!)
					["sym"] = { { "select", "itemID", 18788, 18789, 18790 } },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
				}),
				q(823, {	-- Report to Orgnil
					["qg"] = 3188,	-- Master Gadrin
					["sourceQuest"] = 805,	-- Report to Sen'jin Village
					["coord"] = { 56, 74.6, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
				}),
				q(805, {	-- Report to Sen'jin Village
					["qg"] = 3145,	-- Zureetha Fargaze
					["sourceQuest"] = 794,	-- Burning Blade Medallion
					["coord"] = { 42.8, 69, DUROTAR },
					["races"] = HORDE_ONLY,
				}),
				q(3089, {	-- Rune-Inscribed Parchment
					["qg"] = 3143,	-- Gornek
					["sourceQuest"] = 788,	-- Cutting Teeth
					["coord"] = { 42.06, 68.33, DUROTAR },
					["races"] = { ORC },
					["classes"] = { SHAMAN },
					["cost"] = {
						{ "i", 9568, 1 },	-- Rune-Inscribed Parchment
					},
				}),
				q(3084, {	-- Rune-Inscribed Tablet
					["qg"] = 3143,	-- Gornek
					["sourceQuest"] = 788,	-- Cutting Teeth
					["coord"] = { 42.06, 68.33, DUROTAR },
					["races"] = { TROLL },
					["classes"] = { SHAMAN },
					["cost"] = {
						{ "i", 9562, 1 },	-- Rune-Inscribed Tablet
					},
				}),
				q(790, {	-- Sarkoth (1/2)
					["qg"] = 3287,	-- Hana'zua
					["coord"] = { 40.60, 62.60, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4905, 1 },	-- Sarkoth's Mangled Claw
					},
					["groups"] = {
						{
							["itemID"] = 4905,	-- Sarkoth's Mangled Claw
							["questID"] = 790,	-- Sarkoth (1/2)
							["cr"] = 3281,	-- Sarkoth
							["coord"] = { 40.6, 66.6, DUROTAR },
						},
					},
				}),
				q(804, {	-- Sarkoth (2/2)
					["qg"] = 3287,	-- Hana'zua
					["sourceQuest"] = 790,	-- Sarkoth (1/2)
					["coord"] = { 40.60, 62.60, DUROTAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4916),	-- Soft Wool Vest
						i(4917),	-- Battleworn Chain Leggings
					},
				}),
				q(1842, {	-- Satyr Hooves
					["qg"] = 6408,	-- Ula'elek
					["sourceQuest"] = 1839,	-- Ula'elek and the Brutal Gauntlets
					["coord"] = { 56.2, 74.4, DUROTAR },
					["maps"] = { ASHENVALE },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 7128, 7 },	-- Uncloven Satyr Hoof
					},
					["lvl"] = 20,
				}),
				q(835, {	-- Securing the Lines
					["qg"] = 3293,	-- Rezlak
					["sourceQuest"] = 834,	-- Winds in the Desert
					["coord"] = { 46.38, 22.94, DUROTAR },
					--["races"] = ALL_RACES,	-- Crieve: Yes, doable on Alliance.
					["lvl"] = 7,
					["groups"] = {
						i(4932),	-- Harpy Wing Clipper
						i(4931),	-- Hickory Shortbow
						i(4938),	-- Blemished Wooden Staff
					},
				}),
				q(2383, {	-- Simple Parchment
					["qg"] = 3143,	-- Gornek
					["sourceQuest"] = 788,	-- Cutting Teeth
					["coord"] = { 42.06, 68.33, DUROTAR },
					["races"] = { ORC },
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 12635, 1 },	-- Simple Parchment
					},
				}),
				q(3065, {	-- Simple Tablet
					["qg"] = 3143,	-- Gornek
					["sourceQuest"] = 788,	-- Cutting Teeth
					["coord"] = { 42.06, 68.33, DUROTAR },
					["races"] = { TROLL },
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 6488, 1 },	-- Simple Tablet
					},
				}),
				q(827, {	-- Skull Rock
					["qg"] = 3208,	-- Margoz
					["sourceQuest"] = 828,	-- Margoz
					["coord"] = { 56.41, 20.05, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4871, 6 },	-- Searing Collar
					},
					["lvl"] = 4,
					["groups"] = {
						i(4947),	-- Jagged Dagger
						i(4939),	-- Steady Bastard Sword
						i(4948),	-- Stinging Mace
					},
				}),
				q(1883, {	-- Speak with Un'thuwa
					["qgs"] = {
						3049,	-- Thurston Xane <Mage Trainer>
						7311,	-- Uthel'nay <Mage Trainer>
					},
					["coords"] = {
						{ 39, 86, ORGRIMMAR },
						{ 25, 20.6, THUNDER_BLUFF },
					},
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["altQuests"] = {
						1881,	-- Speak with Anastasia
					},
					["lvl"] = 10,
					["isBreadcrumb"] = true
				}),
				q(789, {	-- Sting of the Scorpid
					["qg"] = 3143,	-- Gornek
					["sourceQuest"] = 788,	-- Cutting Teeth
					["coord"] = { 42.06, 68.33, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4862, 10 },	-- Scorpid Worker Tail
					},
					["groups"] = {
						i(4919),	-- Soft Wool Belt
						i(4920),	-- Battleworn Cape
					},
				}),
				q(3090, {	-- Tainted Parchment
					["qg"] = 3143,	-- Gornek
					["sourceQuest"] = 788,	-- Cutting Teeth
					["coord"] = { 42.06, 68.33, DUROTAR },
					["races"] = { ORC, TROLL },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 9579, 1 },	-- Tainted Parchment
					},
				}),
				q(6062, {	-- Taming the Beast (1/3)
					["qg"] = 3171,	-- Thotar <Hunter Trainer>
					["sourceQuests"] = {
						6068,	-- The Hunter's Path
						6069,	-- The Hunter's Path
						6070,	-- The Hunter's Path
					},
					["coord"] = { 51.8, 43.4, DUROTAR },
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 15917, 1 },	-- Taming Rod
					},
					["lvl"] = 10,
				}),
				q(6083, {	-- Taming the Beast (2/3)
					["qg"] = 3171,	-- Thotar <Hunter Trainer>
					["sourceQuest"] = 6062,	-- Taming the Beast (1/3)
					["coord"] = { 51.8, 43.4, DUROTAR },
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 15919, 1 },	-- Taming Rod
					},
					["lvl"] = 10,
				}),
				q(6082, {	-- Taming the Beast (3/3)
					["qg"] = 3171,	-- Thotar <Hunter Trainer>
					["sourceQuest"] = 6083,	-- Taming the Beast (2/3)
					["coord"] = { 51.8, 43.4, DUROTAR },
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 15920, 1 },	-- Taming Rod
					},
					["lvl"] = 10,
					["groups"] = {
						recipe(883),	-- Call Pet
						recipe(2641),	-- Dismiss Pet
						recipe(1515),	-- Tame Beast
					},
				}),
				q(6394, {	-- Thazz'ril's Pick
					["qg"] = 11378,	-- Foreman Thazz'ril
					["sourceQuest"] = 5441,	-- Lazy Peons
					["coord"] = { 44.62, 68.65, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16332, 1 },	-- Thazz'ril's Pick
					},
					["lvl"] = 3,
					["groups"] = {
						{
							["itemID"] = 16332,	-- Thazz'ril's Pick
							["questID"] = 6394,	-- Thazz'ril's Pick
							["coord"] = { 43.8, 53.8, DUROTAR },
						},
					},
				}),
				q(830, {	-- The Admiral's Orders
					["provider"] = { "i", 4881 },	-- Aged Envelope
					["coord"] = { 59.26, 57.65, DUROTAR },
					["races"] = HORDE_ONLY,
				}),
				q(831, {	-- The Admiral's Orders
					["qg"] = 3139,	-- Gar'Thok
					["sourceQuest"] = 830,	-- The Admiral's Orders
					["coord"] = { 52, 43.4, DUROTAR },
					["races"] = HORDE_ONLY,
				}),
				q(924, {	-- The Demon Seed
					["qg"] = 3521,	-- Ak'Zeloth
					["sourceQuest"] = 809,	-- Ak'Zeloth
					["coord"] = { 62.4, 20, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						{
							["itemID"] = 4986,	-- Flawed Power Stone
							["questID"] = 924,	-- The Demon Seed
							["coord"] = { 47, 19, THE_BARRENS },
						},
						i(5420),	-- Banshee Armor
					},
				}),
				q(6068, {	-- The Hunter's Path
					["qg"] = 3407,	-- Sian'dur <Hunter Trainer>
					["coord"] = { 67.8, 17.8, ORGRIMMAR },
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6069, {	-- The Hunter's Path
					["qg"] = 11814,	-- Kali Remik
					["coord"] = { 6.2, 74.2, DUROTAR },
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6070, {	-- The Hunter's Path
					["qg"] = 3038,	-- Kary Thunderhorn <Hunter Trainer>
					["coord"] = { 58.4, 88, THUNDER_BLUFF },
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(787, {	-- The New Horde
					["qg"] = 3144,	-- Eitrigg
					["coord"] = { 34.3, 39.4, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
				}),
				q(1859, {	-- Therzok
					["qg"] = 3170,	-- Kaplak
					["coord"] = { 51.98, 43.70, DUROTAR },
					["races"] = { ORC, TROLL },
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(786, {	-- Thwarting Kolkar Aggression
					["qg"] = 3140,	-- Lar Prowltusk
					--["sourceQuest"] = 785,	-- A Strategic Alliance [didn't make it into Classic]
					["coord"] = { 54.52, 75.20, DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						{
							["objectID"] = 3192,	-- Attack Plan: Orgrimmar
							["questID"] = 786,	-- Thwarting Kolkar Aggression
							["coord"] = { 46.3, 79.0, DUROTAR },
						},
						{
							["objectID"] = 3190,	-- Attack Plan: Sen'jin Village
							["questID"] = 786,	-- Thwarting Kolkar Aggression
							["coord"] = { 47.6, 77.4, DUROTAR },
						},
						{
							["objectID"] = 3189,	-- Attack Plan: Valley of Trials
							["questID"] = 786,	-- Thwarting Kolkar Aggression
							["coord"] = { 49.8, 81.3, DUROTAR },
						},
						i(4933),	-- Seasoned Fighter's Cloak
						i(6062),	-- Heavy Cord Bracers
					},
				}),
				q(6081, {	-- Training the Beast
					["qg"] = 3171,	-- Thotar <Hunter Trainer>
					["sourceQuest"] = 6082,	-- Taming the Beast (3/3)
					["coord"] = { 51.8, 43.4, DUROTAR },
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { HUNTER },
					["lvl"] = 10,
					["groups"] = {
						recipe(6991),		-- Feed Pet
						recipe(982),		-- Revive Pet
					},
				}),
				q(2380, {	-- To Orgrimmar!
					["qg"] = 3170,	-- Kaplak
					["coord"] = { 51.98, 43.70, DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				q(784, {	-- Vanquish the Betrayers
					["qg"] = 3139,	-- Gar'Thok
					["coord"] = { 52, 43.4, DUROTAR },
					["races"] = HORDE_ONLY,
					["cr"] = 3192,	-- Lieutenant Benedict
					["lvl"] = 3,
				}),
				q(792, {	-- Vile Familiars
					["qg"] = 3145,	-- Zureetha Fargaze
					["coord"] = { 42.85, 69.14, DUROTAR },
					["classes"] = exclude(WARLOCK, ALL_CLASSES),
					["races"] = HORDE_ONLY,
					["lvl"] = 2,
					["groups"] = {
						i(4924),	-- Primitive Club
						i(4925),	-- Primitive Hand Blade
						i(4923),	-- Primitive Hatchet
						i(5778),	-- Primitive Walking Stick
					},
				}),
				q(1485, {	-- Vile Familiars (Part 1 - Warlocks only!)
					["qg"] = 5765,	-- Ruzan
					["coord"] = { 42.6, 69.0, DUROTAR },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["cr"] = 3101,	-- Vile Familiar
					["cost"] = {
						{ "i", 6487, 8 },	-- Vile Familiar Head
					},
					["groups"] = {
						recipe(688),	-- Summon Imp
					},
				}),
				q(1499, {	-- Vile Familiars (Part 2 - Warlocks only!)
					["qg"] = 5765,	-- Ruzan
					["sourceQuest"] = 1485,	-- Vile Familiars (Part 1 - Warlocks only!)
					["coord"] = { 42.6, 69.0, DUROTAR },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
				}),
				q(834, {	-- Winds in the Desert
					["qg"] = 3293,	-- Rezlak
					["coord"] = { 46.38, 22.94, DUROTAR },
					--["races"] = ALL_RACES,	-- Crieve: Yes, doable on Alliance.
					["cost"] = {
						{ "i", 4918, 5 },	-- Sack of Supplies
					},
					["lvl"] = 7,
				}),
				q(4641, {	-- Your Place In The World
					["qg"] = 10176,	-- Kaltunk
					["sourceQuest"] = 787,	-- The New Horde
					["coord"] = { 43.2, 68.4, DUROTAR },
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
				}),
				q(826, {	-- Zalazane
					["qg"] = 3188,	-- Master Gadrin
					["sourceQuest"] = 805,	-- Report to Sen'jin Village
					["coord"] = { 55.95, 74.72, DUROTAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4866, 1 },	-- 	Zalazane's Head
					},
					["lvl"] = 4,
					["groups"] = {
						{
							["itemID"] = 4866,	-- Zalazane's Head
							["questID"] = 826,	-- Zalazane
							["cr"] = 3205,	-- Zalazane
							["coord"] = { 67.6, 87.8, DUROTAR },
						},
						i(4946),	-- Lightweight Boots
						i(4940),	-- Veiled Grips
					},
				}),
			}),
			n(RARES, {
				n(5824, {	-- Captain Flat Tusk <Captain of the Battleguard>
					["coords"] = {
						{ 42.6, 39.2, DUROTAR },
						{ 44.8, 50.4, DUROTAR },
						{ 38.6, 52.4, DUROTAR },
					},
				}),
				n(5823, {	-- Death Flayer
					["coord"] = { 36.8, 49.8, DUROTAR },
				}),
				n(5822, {	-- Felweaver Scornn
					["coord"] = { 51.6, 9.6, DUROTAR },
				}),
				n(5826, {	-- Geolord Mottle
					["coords"] = {
						{ 43.6, 40.8, DUROTAR },
						{ 49.6, 45.0, DUROTAR },
						{ 47.6, 50.0, DUROTAR },
						{ 44.6, 48.4, DUROTAR },
						{ 43.8, 50.0, DUROTAR },
					},
				}),
				n(5808, {	-- Warlord Kolkanis
					["coords"] = {
						{ 46.6, 79.8, DUROTAR },
						{ 48.2, 78.2, DUROTAR },
						{ 49.6, 80.6, DUROTAR },
					},
				}),
				n(5809, {	-- Watch Commander Zalaphil
					["coord"] = { 59.6, 59.0, DUROTAR },
				}),
			}),
			n(VENDORS, {
				n(3881, {	-- Grimtak <Butcher>
					["coord"] = { 51.2, 42.6, DUROTAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5483),	-- Recipe: Scorpid Surprise
					},
				}),
				n(5942, {	-- Zansoa <Fishing Supplies>
					["coord"] = { 56.0, 73.4, DUROTAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6326),	-- Recipe: Slitherskin Mackerel
						i(6368),	-- Recipe: Rainbow Fin Albacore
					},
				}),
				n(7952, {	-- Zjolnir <Raptor Handler>
					["coord"] = { 55.2, 75.6, DUROTAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(8588),	-- Emerald Raptor (MOUNT!)
						i(18788),	-- Swift Blue Raptor (MOUNT!)
						i(18789),	-- Swift Olive Raptor (MOUNT!)
						i(18790),	-- Swift Orange Raptor (MOUNT!)
						i(8591),	-- Turquoise Raptor (MOUNT!)
						i(8592),	-- Violet Raptor (MOUNT!)
						i(13317, {	-- Ivory Raptor (MOUNT!)
							["timeline"] = { "removed 1.4.0" },
						}),
						i(8586, {	-- Mottled Red Raptor (MOUNT!)
							["timeline"] = { "removed 1.4.0" },
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(4882, {	-- Benedict's Key
					["cr"] = 3192,	-- Lieutenant Benedict
					["coord"] = { 59.6, 58.2, DUROTAR },
					["groups"] = {
						{
							["objectID"] = 3239,	-- Benedict's Chest
							["coord"] = { 59.3, 57.7, DUROTAR },
							["groups"] = {
								{
									["itemID"] = 4881,	-- Aged Envelope
									["questID"] = 830,	-- The Admiral's Orders
									["races"] = HORDE_ONLY,
								},
							},
						},
					},
				}),
				i(4870, {	-- Canvas Scraps
					["questID"] = 791,	-- Carry Your Weight
					["races"] = HORDE_ONLY,
					["crs"] = {
						3119,	-- Kolkar Drudge
						3120,	-- Kolkar Outrunner
						3129,	-- Kul Tiras Marine
						3128,	-- Kul Tiras Sailor
						3192,	-- Lieutenant Benedict
						5808,	-- Warlord Kolkanis
						5809,	-- Watch Commander Zalaphil
					},
				}),
				i(4888, {	-- Crawler Mucus
					["questID"] = 818,	-- A Solvent Spirit
					["races"] = HORDE_ONLY,
					["crs"] = {
						3228,	-- Corrupted Surf Crawler
						3108,	-- Encrusted Surf Crawler
						3106,	-- Pygmy Surf Crawler
						3107,	-- Surf Crawler
					},
				}),
				i(6640, {	-- Felstalker Hoof
					["questID"] = 1516,	-- Call of Earth (1/3)
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["cr"] = 3102,	-- Felstalker
				}),
				i(4887, {	-- Intact Makrura Eye
					["questID"] = 818,	-- A Solvent Spirit
					["races"] = HORDE_ONLY,
					["cr"] = 3103,	-- Makrura Clacker
				}),
				i(4891, {	-- Kron's Amulet
					["questID"] = 816,	-- Lost But Not Forgotten
					["races"] = HORDE_ONLY,
					["crs"] = {
						3231,	-- Corrupted Dreadmaw Crocolisk
						3110,	-- Dreadmaw Crocolisk
					},
				}),
				i(14544, {	-- Lieutenant's Insignia
					["races"] = HORDE_ONLY,
					["crs"] = {
						3198,	-- Burning Blade Apprentice
						3197,	-- Burning Blade Fanatic
					},
				}),
				i(6652, {	-- Reagent Pouch
					["questID"] = 1525,	-- Call of Fire (3/5)
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["cr"] = 3199,	-- Burning Blade Cultist
				}),
				i(4862, {	-- Scorpid Worker Tail
					["questID"] = 789,	-- Sting of the Scorpid
					["races"] = HORDE_ONLY,
					["crs"] = {
						3281,	-- Sarkoth
						3124,	-- Scorpid Worker
					},
				}),
				i(4871, {	-- Searing Collar
					["questID"] = 827,	-- Skull Rock
					["races"] = HORDE_ONLY,
					["crs"] = {
						3198,	-- Burning Blade Apprentice
						3199,	-- Burning Blade Cultist
						3197,	-- Burning Blade Fanatic
						3196,	-- Burning Blade Neophyte
						3195,	-- Burning Blade Thug
					},
				}),
				i(6486, {	-- Singed Scale
					["questID"] = 1498,	-- Path of Defense
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["crs"] = {
						3131,	-- Lightning Hide
						3130,	-- Thunder Lizard
					},
				}),
			}),
		},
	}),
}));