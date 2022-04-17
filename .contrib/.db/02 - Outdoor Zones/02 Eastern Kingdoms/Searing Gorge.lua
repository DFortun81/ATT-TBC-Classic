---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(SEARING_GORGE, {
		["lore"] = "Just as Blackrock orcs and their allies dominate Burning Steppes, so Dark Iron dwarves dominate the Searing Gorge. A large population of Dark Iron dwarves, War Golems, and Elementals resides in this dark, mountainous area.\n\nThe climate is very similar to Burning Steppes, as it was the same catastrophe that blackened both: the summoning of Ragnaros. The Searing Gorge is a part of Khaz Modan. Before being shattered by the summoning it was a mountainous region, part of the Redridge Mountains.\n\nLarge mining operations take place in The Cauldron, a giant excavation site forming a huge rift in the middle of the Searing Gorge. The Slag Pit lies within The Cauldron and is an underground mining site rich with multiple types of ore. The mining work is mainly done by slave labor, which consists for the most part of captured enemies.\n\nEver since the Dark Iron dwarves' capital, Thaurissan, was destroyed by the summoning of Ragnaros, they have searched for a landmass to control for their filthy, industrious works. The Searing Gorge was the obvious choice due to a low military presence, scarce population, few settlements, and high vulnerability. The dwarven garrisons were soon overrun by a massive Dark Iron invasion which forced them to retreat to Loch Modan and seal the passage.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(774, {	-- Explore Searing Gorge
					-- #if BEFORE WRATH
					["description"] = "Explore Searing Gorge, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["275:235:77:366"] = 1957,	-- Blackchar Cave
				["305:220:494:300"] = 247,	-- Grimesilt Dig Site
				["305:230:545:407"] = 1958,	-- Tanner Camp
				["360:280:247:388"] = 1444,	-- The Sea of Cinders
				["405:430:85:30"] = 1442,	-- Firewatch Ridge
				["425:325:250:170"] = 246,	-- The Cauldron
				["460:365:422:8"] = 1959,	-- Dustfire Valley
				--[[
				[1443] = 4,                              -- The Slag Pit
				[1445] = 6,                              -- Blackrock Mountain
				[1446] = 7,                              -- Thorium Point
				[2838] = 11,                             -- Stonewrought Pass
				]]--
			})),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(74, {	-- Thorium Point, Searing Gorge
					["cr"] = 2941,	-- Lanie Reed <Gryphon Master>
					["coord"] = { 37.8, 30.6, SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(75, {	-- Thorium Point, Searing Gorge
					["cr"] = 3305,	-- Grisha <Wind Rider Master>
					["coord"] = { 34.8, 30.6, SEARING_GORGE },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(4449, {	-- Caught!
					["provider"] = { "o", 173265 },	-- Wooden Outhouse
					["lvl"] = 43,
				}),
				q(7723, {	-- Curse These Fat Fingers
					["qg"] = 14627,	-- Hansel Heavyhands
					["coord"] = { 38.6, 27.8, SEARING_GORGE },
					["lvl"] = 45,
					["groups"] = {
						i(19126),	-- Slagplate Gauntlets
					},
				}),
				q(3441, {	-- Divine Retribution
					["qg"] = 8479,	-- Kalaran Windblade
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["lvl"] = 40,
				}),
				q(3371, {	-- Dwarven Justice
					["qg"] = 8256,	-- Curator Thorius
					["sourceQuest"] = 3368,	-- Suntara Stones (2/2)
					["coord"] = { 71.4, 16.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7724, {	-- Fiery Menace!
					["qg"] = 14627,	-- Hansel Heavyhands
					["coord"] = { 38.6, 27.8, SEARING_GORGE },
					["lvl"] = 45,
					["groups"] = {
						i(19125),	-- Seared Mail Girdle
					},
				}),
				q(3443, {	-- Forging the Shaft
					["qg"] = 8479,	-- Kalaran Windblade
					["sourceQuest"] = 3442,	-- The Flawless Flame
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["cost"] = {
						{ "i", 10551, 8 },	-- Thorium Plated Dagger
					},
					["lvl"] = 40,
				}),
				q(7737, {	-- Gaining Acceptance
					["qg"] = 14624,	-- Master Smith Burninate
					["minReputation"] = { 59, FRIENDLY },	-- Thorium Brotherhood
					["maxReputation"] = { 59, FRIENDLY },	-- Thorium Brotherhood
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
					["repeatable"] = true,
					["lvl"] = 40,
				}),
				q(7727, {	-- Incendosaurs? Whateverosaur is More Like It
					["qg"] = 14627,	-- Hansel Heavyhands
					["coord"] = { 38.6, 27.8, SEARING_GORGE },
					["lvl"] = 45,
					["groups"] = {
						i(19141),	-- Luffa
					},
				}),
				q(7729, {	-- JOB OPPORTUNITY: Culling the Competition
					["provider"] = { "o", 179827 },	-- Wanted\/Missing\/Lost & Found
					["coord"] = { 37.7, 26.5, SEARING_GORGE },
					["lvl"] = 45,
				}),
				un(NEVER_IMPLEMENTED, q(7702, {	-- Kill 'Em With Sleep Deprivation
					["qg"] = 14628,	-- Evonice Sootsmoker
					["coord"] = { 38.4, 27.7, SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						un(NEVER_IMPLEMENTED, i(19129)),	-- Everglowing Robe
					},
				})),
				q(4450, {	-- Ledger from Tanaris
					["provider"] = { "o", 173265 },	-- Wooden Outhouse
					["sourceQuest"] = 4449,	-- Caught!
					["maps"] = { DUSTWALLOW_MARSH, SWAMP_OF_SORROWS },
					["cost"] = {
						{ "i", 11727, 1 },	-- Goodsteel Ledger
						{ "i", 11725, 20 },	-- Solid Crystal Leg Shaft
						{ "i", 11724, 1 },	-- Overdue Package
						{ "i", 11723, 1 },	-- Goodsteel's Balanced Flameberge
					},
					["lvl"] = 43,
					["groups"] = {
						{
							["itemID"] = 11724,	-- Overdue Package
							["questID"] = 4450,	-- Ledger from Tanaris
							["coord"] = { 54.1, 55.8, DUSTWALLOW_MARSH },
						},
						{
							["itemID"] = 11723,	-- Goodsteel's Balanced Flameberge
							["questID"] = 4450,	-- Ledger from Tanaris
							["cr"] = 9916,	-- Jarquia
							["coords"] = {
								{ 94.4, 51.8, SWAMP_OF_SORROWS },
								{ 92.6, 65.6, SWAMP_OF_SORROWS },
							},
						},
						i(11860),	-- Charged Lightning Rod
						i(11861),	-- Girdle of Reprisal
					},
				}),
				un(NEVER_IMPLEMENTED, q(7704, {	-- Look at the Size of It!
					["provider"] = { "i", 18950 },	-- Chambermaid Pillaclencher's Pillow
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 45,
					["groups"] = {
						un(NEVER_IMPLEMENTED, i(18951)),	-- Evonice's Landin' Pilla
					},
				})),
				q(3377, {	-- Prayer to Elune
					["qg"] = 8436,	-- Zamael Lunthistle
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(3378, {	-- Prayer to Elune
					["qg"] = 8436,	-- Zamael Lunthistle
					["sourceQuest"] = 3377,	-- Prayer to Elune
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10458, 1 },	-- Prayer to Elune
					},
					["lvl"] = 40,
					["groups"] = {
						i(10745),	-- Kaylari Shoulders
						i(10746),	-- Runesteel Vambraces
					},
				}),
				q(3372, {	-- Release Them
					["qg"] = 8417,	-- Dying Archaeologist
					["sourceQuest"] = 3371,	-- Dwarven Justice
					["coord"] = { 41.2, 25.6, SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10442, 1 },	-- Mysterious Artifact
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 10442,	-- Mysterious Artifact
							["questID"] = 3372,	-- Release Them
							["coord"] = { 29.2, 25.9, SEARING_GORGE },
						},
					},
				}),
				q(8242, {	-- Restoring Fiery Flux Supplies via Heavy Leather
					["qg"] = 14624,	-- Master Smith Burninate
					["minReputation"] = { 59, NEUTRAL },	-- Thorium Brotherhood
					["maxReputation"] = { 59, NEUTRAL },	-- Thorium Brotherhood
					["sourceQuest"] = 7722,	-- What the Flux?
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
					["cost"] = {
						{ "i", 18944, 2 },	-- Incendosaur Scale
						{ "i", 4234, 10 },	-- Heavy Leather
						{ "i", 3857, 1 },	-- Coal
					},
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(8241, {	-- Restoring Fiery Flux Supplies via Iron
					["qg"] = 14624,	-- Master Smith Burninate
					["minReputation"] = { 59, NEUTRAL },	-- Thorium Brotherhood
					["maxReputation"] = { 59, NEUTRAL },	-- Thorium Brotherhood
					["sourceQuest"] = 7722,	-- What the Flux?
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
					["cost"] = {
						{ "i", 18944, 2 },	-- Incendosaur Scale
						{ "i", 3575, 4 },	-- Iron Bar
						{ "i", 3857, 1 },	-- Coal
					},
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(7736, {	-- Restoring Fiery Flux Supplies via Kingsblood
					["qg"] = 14624,	-- Master Smith Burninate
					["minReputation"] = { 59, NEUTRAL },	-- Thorium Brotherhood
					["maxReputation"] = { 59, NEUTRAL },	-- Thorium Brotherhood
					["sourceQuest"] = 7722,	-- What the Flux?
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
					["cost"] = {
						{ "i", 18944, 2 },	-- Incendosaur Scale
						{ "i", 3356, 4 },	-- Kingsblood
						{ "i", 3857, 1 },	-- Coal
					},
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(3566, {	-- Rise, Obsidion!
					["qg"] = 8417,	-- Dying Archaeologist
					["sourceQuest"] = 3372,	-- Release Them
					["coord"] = { 41.2, 25.6, SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10447, 1 },	-- Head of Lathoric the Black
						{ "i", 10446, 1 },	-- Heart of Obsidion
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 10447,	-- Head of Lathoric the Black
							["questID"] = 3566,	-- Rise, Obsidion!
							["cr"] = 8391,	-- Lathoric the Black
							["coord"] = { 41.6, 26.6, SEARING_GORGE },
						},
						{
							["itemID"] = 10446,	-- Heart of Obsidion
							["questID"] = 3566,	-- Rise, Obsidion!
							["cr"] = 8400,	-- Obsidion
							["coord"] = { 42.6, 27.0, SEARING_GORGE },
						},
						i(10740),	-- Centurion Legplates
						i(10741),	-- Lordrec Helmet
						i(10739),	-- Ring of Fortitude
					},
				}),
				q(7728, {	-- STOLEN: Smithing Tuyere and Lookout's Spyglass
					["provider"] = { "o", 179827 },	-- Wanted\/Missing\/Lost & Found
					["coord"] = { 37.7, 26.5, SEARING_GORGE },
					["cost"] = {
						{ "i", 18960, 1 },	-- Lookout's Spyglass
						{ "i", 18959, 1 },	-- Smithing Tuyere
					},
					["lvl"] = 45,
					["groups"] = {
						i(19124),	-- Slagplate Leggings
						i(19123),	-- Everwarm Handwraps
					},
				}),
				q(3463, {	-- Set Them Ablaze!
					["qg"] = 8509,	-- Squire Maltrake
					["sourceQuest"] = 3462,	-- Squire Maltrake
					["coord"] = { 39.1, 39.1, SEARING_GORGE },
					["cost"] = {
						{ "i", 10515, 1 },	-- Torch of Retribution
					},
					["lvl"] = 40,
					["groups"] = {
						i(10742),	-- Dragonflight Leggings
						i(10743),	-- Drakefire Headguard
						i(10744),	-- Axe of the Ebon Drake
					},
				}),
				q(3462, {	-- Squire Maltrake
					["qg"] = 8479,	-- Kalaran Windblade
					["sourceQuest"] = 3454,	-- The Torch of Retribution
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["lvl"] = 40,
				}),
				q(3367, {	-- Suntara Stones (1/2)
					["qg"] = 8284,	-- Dorius Stonetender
					["coord"] = { 63.8, 60.8, SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(3368, {	-- Suntara Stones (2/2)
					["provider"] = { "i", 10443 },	-- Singed Letter
					["sourceQuest"] = 3367,	-- Suntara Stones (1/2)
					["description"] = "The Signed Letter will be on the ground after you finish escorting Dorius Stonetender.",
					["coord"] = { 74.5, 19.3, SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(3452, {	-- The Flame's Casing
					["qg"] = 8479,	-- Kalaran Windblade
					["sourceQuest"] = 3443,	-- Forging the Shaft
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["cost"] = {
						{ "i", 10552, 1 },	-- Symbol of Ragnaros
					},
					["lvl"] = 40,
				}),
				q(3442, {	-- The Flawless Flame
					["qg"] = 8479,	-- Kalaran Windblade
					["sourceQuest"] = 3441,	-- Divine Retribution
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["cost"] = {
						{ "i", 10511, 4 },	-- Golem Oil
						{ "i", 10509, 4 },	-- Heart of Flame
					},
					["lvl"] = 40,
				}),
				q(3181, {	-- The Horn of the Beast
					["provider"] = { "i", 10000 },	-- Margol's Horn
					["coord"] = { 73.0, 77.2, SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10005, 1 },	-- Margol's Gigantic Horn
					},
					["lvl"] = 40,
				}),
				q(4451, {	-- The Key to Freedom
					["provider"] = { "i", 11818 },	-- Grimesilt Outhouse Key
					["lvl"] = 43,
				}),
				q(3453, {	-- The Torch of Retribution
					["qg"] = 8479,	-- Kalaran Windblade
					["sourceQuest"] = 3452,	-- The Flame's Casing
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["lvl"] = 40,
				}),
				q(3454, {	-- The Torch of Retribution
					["qg"] = 8479,	-- Kalaran Windblade
					["sourceQuest"] = 3453,	-- The Torch of Retribution
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["lvl"] = 40,
					["groups"] = {
						i(10515),	-- Torch of Retribution
					},
				}),
				q(3481, {	-- Trinkets...
					["provider"] = { "o", 149502 },	-- Hoard of the Black Dragonflight
					["sourceQuest"] = 3463,	-- Set Them Ablaze!
					["lvl"] = 40,
					["groups"] = {
						i(10569, {	-- Hoard of the Black Dragonflight
							i(10575),	-- Black Dragonflight Molt
						}),
					},
				}),
				q(7701, {	-- WANTED: Overseer Maltorius
					["provider"] = { "o", 179827 },	-- Wanted\/Missing\/Lost & Found
					["coord"] = { 37.7, 26.5, SEARING_GORGE },
					["cost"] = {
						{ "i", 18946, 1 },	-- Head of Overseer Maltorius
					},
					["lvl"] = 45,
					["groups"] = {
						{
							["itemID"] = 18946,	-- Head of Overseer Maltorius
							["questID"] = 7701,	-- WANTED: Overseer Maltorius
							["cr"] = 14621,	-- Overseer Maltorius
							["coord"] = { 41.8, 35.4, SEARING_GORGE },
						},
						i(19128),	-- Seared Mail Vest
						i(19127),	-- Charred Leather Tunic
					},
				}),
				q(7722, {	-- What the Flux?
					["qg"] = 14624,	-- Master Smith Burninate
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
					["cost"] = {
						{ "i", 18922, 1 },	-- Secret Plans: Fiery Flux
					},
					["lvl"] = 45,
					["groups"] = {
						{
							["itemID"] = 18922,	-- Secret Plans: Fiery Flux
							["questID"] = 7722,	-- What the Flux?
							["coord"] = { 40.6, 35.7, SEARING_GORGE },
						},
					},
				}),
			}),
			n(RARES, {
				n(8279, {  -- Faulty War Golem
					["coords"] = {
						{ 34.0, 47.8, SEARING_GORGE },
						{ 33.2, 63.8, SEARING_GORGE },
						{ 44.2, 42.4, SEARING_GORGE },
						{ 48.6, 67.6, SEARING_GORGE },
						{ 60.0, 57.8, SEARING_GORGE },
					},
				}),
				n(8282, {  -- Highlord Mastrogonde
					["coords"] = {
						{ 14.6, 39.4, SEARING_GORGE },
						{ 30.6, 26.8, SEARING_GORGE },
					},
				}),
				n(8277, {  -- Rekk'tilac
					["coords"] = {
						{ 35.8, 25.8, SEARING_GORGE },
						{ 30.2, 72.0, SEARING_GORGE },
						{ 58.2, 24.6, SEARING_GORGE },
						{ 52.8, 71.2, SEARING_GORGE },
						{ 62.8, 71.6, SEARING_GORGE },
						{ 70.6, 75.6, SEARING_GORGE },
					},
				}),
				n(8281, {  -- Scald
					["coords"] = {
						{ 37.0, 54.2, SEARING_GORGE },
						{ 49.6, 49.6, SEARING_GORGE },
						{ 51.6, 46.4, SEARING_GORGE },
						{ 54.8, 45.6, SEARING_GORGE },
						{ 57.2, 44.6, SEARING_GORGE },
						{ 59.4, 41.4, SEARING_GORGE },
					},
				}),
				n(8280, {  -- Shleipnarr
					["coords"] = {
						{ 66.0, 37.4, SEARING_GORGE },
						{ 67.0, 39.6, SEARING_GORGE },
						{ 63.6, 51.2, SEARING_GORGE },
						{ 58.4, 52.0, SEARING_GORGE },
						{ 55.6, 58.8, SEARING_GORGE },
						{ 50.6, 61.4, SEARING_GORGE },
					},
				}),
				n(8283, {  -- Slave Master Blackheart
					["coords"] = {
						{ 41.8, 24.0, SEARING_GORGE },
						{ 46.6, 25.2, SEARING_GORGE },
						{ 41.6, 35.6, SEARING_GORGE },
						{ 45.6, 38.8, SEARING_GORGE },
						{ 41.6, 44.8, SEARING_GORGE },
					},
				}),
				n(8278, {  -- Smoldar
					["coords"] = {
						{ 30.0, 50.8, SEARING_GORGE },
						{ 29.2, 60.8, SEARING_GORGE },
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(10511, {	-- Golem Oil
					["questID"] = 3442,	-- The Flawless Flame
					["crs"] = {
						5854,	-- Heavy War Golem
						5855,	-- Magma Elemental
						5853,	-- Tempered War Golem
					},
				}),
				i(11818, {	-- Grimesilt Outhouse Key
					["questID"] = 4451,	-- The Key to Freedom
					["crs"] = {
						15692,	-- Dark Iron Kidnapper
						8566,	-- Dark Iron Lookout
						8504,	-- Dark Iron Sentry
						5844,	-- Dark Iron Slaver
						5840,	-- Dark Iron Steamsmith
						5846,	-- Dark Iron Taskmaster
					},
				}),
				i(10509, {	-- Heart of Flame
					["questID"] = 3442,	-- The Flawless Flame
					["crs"] = {
						5850,	-- Blazing Elemental
						5852,	-- Inferno Elemental
						5855,	-- Magma Elemental
						8281,	-- Scald
					},
				}),
				i(18944, {	-- Incendosaur Scale
					["cr"] = 9318,	-- Incendosaur
				}),
				i(18960, {	-- Lookout's Spyglass
					["questID"] = 7728,	-- STOLEN: Smithing Tuyere and Lookout's Spyglass
					["cr"] = 8566,	-- Dark Iron Lookout
				}),
				i(10000, {	-- Margol's Horn
					["questID"] = 3181,	-- The Horn of the Beast
					["coord"] = { 73.6, 82.6, SEARING_GORGE },
					["cr"] = 5833,	-- Margol the Rager
					["races"] = ALLIANCE_ONLY,
				}),
				i(14476, {	-- Pattern: Cindercloth Gloves
					["cr"] = 5861,	-- Twilight Fire Guard
				}),
				i(14471, {	-- Pattern: Cindercloth Vest
					["cr"] = 5861,	-- Twilight Fire Guard
				}),
				i(10458, {	-- Prayer to Elune
					["questID"] = 3378,	-- Prayer to Elune
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						5860,	-- Twilight Dark Shaman
						5861,	-- Twilight Fire Guard
						5862,	-- Twilight Geomancer
						8419,	-- Twilight Idolater
					},
				}),
				applyclassicphase(PHASE_FIVE, i(21547, {	-- Recipe: Elixir of Greater Firepower
					["crs"] = {
						5844,	-- Dark Iron Slaver
						5846,	-- Dark Iron Taskmaster
						8637,	-- Dark Iron Watchman
					},
				})),
				i(18959, {	-- Smithing Tuyere
					["questID"] = 7728,	-- STOLEN: Smithing Tuyere and Lookout's Spyglass
					["cr"] = 5840,	-- Dark Iron Steamsmith
				}),
				i(11725, {	-- Solid Crystal Leg Shaft
					["questID"] = 4450,	-- Ledger from Tanaris
					["cr"] = 5856,	-- Glassweb Spider
				}),
				i(10552, {	-- Symbol of Ragnaros
					["questID"] = 3452,	-- The Flame's Casing
					["crs"] = {
						5860,	-- Twilight Dark Shaman
						5861,	-- Twilight Fire Guard
						5862,	-- Twilight Geomancer
						8419,	-- Twilight Idolater
					},
				}),
				i(10551, {	-- Thorium Plated Dagger
					["questID"] = 3443,	-- Forging the Shaft
					["crs"] = {
						5839,	-- Dark Iron Geologist
						15692,	-- Dark Iron Kidnapper
						8566,	-- Dark Iron Lookout
						8504,	-- Dark Iron Sentry
						5844,	-- Dark Iron Slaver
						5840,	-- Dark Iron Steamsmith
						8337,	-- Dark Iron Steelshifter
						5846,	-- Dark Iron Taskmaster
						8637,	-- Dark Iron Watchman
						5843,	-- Slave Worker
					},
				}),
			}),
		},
	}),
}));