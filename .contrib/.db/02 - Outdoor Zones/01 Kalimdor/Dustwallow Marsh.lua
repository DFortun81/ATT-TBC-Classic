---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(KALIMDOR, {
	m(DUSTWALLOW_MARSH, {
		["lore"] = "A hot, fetid swampland, underground springs feed Dustwallow Marsh and keep it eternally wet and muddy. Mosquitoes buzz in the air. Trees dip fronds into the waters. The climate is home to a variety of predators, including alligators and murlocs.\n\nBlack dragons dwell in the southern end of the swamp, and the creatures lair in such profusion that the area garners the name \"Wyrmbog.\" Dustwallow Marsh abuts the ocean on its east side, and the mixing of the waters makes a wide swath brackish. Off the coast is a rocky island, on which is perched the Alliance stronghold-city of Theramore.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(850, {	-- Explore Dustwallow Marsh
					-- #if BEFORE WRATH
					["description"] = "Explore Dustwallow Marsh, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, {
				exploration(2079, "200:195:660:21"),	-- Alcaz Island
				applyclassicphase(TBC_PHASE_ONE, exploration(512, {		-- Blackhoof Village
					["coord"] = { 41.8, 13.7, DUSTWALLOW_MARSH },
				})),
				applyclassicphase(TBC_PHASE_ONE, exploration(498, {		-- Bloodfen Burrow
					["coord"] = { 32.6, 65.9, DUSTWALLOW_MARSH },
				})),
				exploration(496, "280:270:230:0"),		-- Brackenwall Village
				exploration(509, "255:250:257:313"),	-- The Den of Flame
				exploration(2302, "400:255:239:189"),	-- The Quagmire
				exploration(513, "230:205:534:224"),	-- Theramore Isle
				exploration(502, "250:315:422:0"),		-- Witch Hill
				exploration(511, "285:240:367:381"),	-- Wyrmbog
				--[[
				[403] = 1,                               -- Shady Rest Inn
				[497] = 3,                               -- Swamplight Manor
				[499] = 5,                               -- Darkmist Cavern
				[500] = 6,                               -- Moggle Point
				[501] = 7,                               -- Beezil's Wreck
				[503] = 9,                               -- Sentry Point
				[504] = 10,                              -- North Point Tower
				[505] = 11,                              -- West Point Tower
				[506] = 12,                              -- Lost Point
				[507] = 13,                              -- Bluefen
				[508] = 14,                              -- Stonemaul Ruins
				[510] = 16,                              -- The Dragonmurk
				[514] = 20,                              -- Foothold Citadel
				[515] = 21,                              -- Ironclad Prison
				[516] = 22,                              -- Dustwallow Bay
				[517] = 23,                              -- Tidefury Cove
				[518] = 24,                              -- Dreadmurk Shore
				[2158] = 26,                             -- Emberstrife's Den
				[2318] = 28,                             -- The Great Sea
				]]--
			}),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(55, {	-- Brackenwall Village, Dustwallow Marsh
					["cr"] = 11899,	-- Shardi <Wind Rider Master>
					["coord"] = { 35.6, 31.8, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
				}),
				applyclassicphase(TBC_PHASE_ONE, fp(179, {	-- Mudsprocket, Dustwallow Marsh
					["cr"] = 23612,	-- Dyslix Silvergrub <Flight Master>
					["coord"] = { 42.8, 72.4, DUSTWALLOW_MARSH },
				})),
				fp(32, {	-- Theramore, Dustwallow Marsh
					["cr"] = 4321,	-- Baldruc <Gryphon Master>
					["coord"] = { 67.4, 51.2, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(1258, {	-- ... and Bugs
					["qg"] = 4794,	-- Morgan Stern
					["sourceQuest"] = 1204,	-- Mudrock Soup and Bugs
					["coord"] = { 66.4, 45.5, DUSTWALLOW_MARSH },
					["maps"] = { SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/12 Pristine Crawler Leg
							["provider"] = { "i", 5938 },	-- Pristine Crawler Leg
							["crs"] = {
								1088,	-- Monstrous Crawler
								922,	-- Silt Crawler
							},
						}),
						i(6801),	-- Baroque Apron
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11136, {	-- A Disturbing Development
					["qg"] = 23951,	-- Lieutenant Aden
					["sourceQuest"] = 11134,	-- The End of the Deserters
					["coord"] = { 65.1, 47.1, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 32,
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11143, {	-- A Grim Connection
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 1287,	-- The Deserters (2/2)
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
				})),
				q(6625, {	-- Alliance Trauma
					["qg"] = 5150,	-- Nissa Firestone
					["coord"] = { 54.8, 58.6, IRONFORGE },
					-- #if AFTER BFA
					["description"] = "Needs a minimum of 225 skill in Tailoring.",
					["requireSkill"] = TAILORING,
					-- #else
					["description"] = "Needs a minimum of 225 skill in First Aid.",
					["requireSkill"] = FIRST_AID,
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(35, 10, 35),
				}),
				q(1168, {	-- Army of the Black Dragon
					["qg"] = 4502,	-- Tharg
					["coord"] = { 37.2, 31.4, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						i(9706),	-- Tharg's Disk
						i(9705),	-- Tharg's Shoelace
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11148, {	-- Arms of the Grimtotems
					["qg"] = 23568,	-- Captain Darill
					["sourceQuest"] = 11143,	-- A Grim Connection
					["coord"] = { 46.6, 24.6, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 33071, 7 },	-- Blackhoof Armaments
					},
					["lvl"] = 33,
					["groups"] = {
						i(33272),	-- Biting Axe
						i(33268),	-- Bone Dirk
						i(33264),	-- Glowing Tourmaline Ring
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11160, {	-- Banner of the Stonemaul
					["qg"] = 23579,	-- Brogg <Stonemaul Survivor>
					["sourceQuest"] = 11158,	-- Bloodfen Feathers
					["coord"] = { 41.9, 74.0, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 33086, 1 },	-- Stonemaul Banner
					},
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- Stonemaul Banner
							["coord"] = { 38.1, 69.4, DUSTWALLOW_MARSH },
						}),
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11158, {	-- Bloodfen Feathers
					["qg"] = 23579,	-- Brogg <Stonemaul Survivor>
					["coord"] = { 41.9, 74.0, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 33085, 5 },	-- Bloodfen Feather
					},
					["lvl"] = 35,
				})),
				q(1220, {	-- Captain Vimes
					["qg"] = 4947,	-- Theramore Lieutenant
					["sourceQuest"] = 1219,	-- The Orc Report
					["coords"] = {
						{ 68.1, 48.2, DUSTWALLOW_MARSH },
						{ 67.2, 51.0, DUSTWALLOW_MARSH },
						{ 65.1, 47.1, DUSTWALLOW_MARSH },
					},
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5917, 1 },	-- Spy's Report
					},
					["lvl"] = 30,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11217, {	-- Catch a Dragon by the Tail
					["qg"] = 23570,	-- Gizzix Grimegurgle
					["coord"] = { 41.6, 73.0, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 33175, 8 },	-- Wyrmtail
					},
					["lvl"] = 37,
					["groups"] = {
						i(33271),	-- Battlecaster's Edge
						i(33235),	-- Journeyman's Epaulets
						i(33241),	-- Oiled Leather Leggings
					},
				})),
				q(1958, {	-- Celestial Power
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1957,	-- Mana Surges
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["lvl"] = 35,
					["groups"] = {
						i(7515),	-- Celestial Orb
						i(9517),	-- Celestial Stave
					},
				}),
				q(1173, {	-- Challenge Overlord Mok'Morokk
					["qg"] = 4500,	-- Overlord Mok'Morokk
					["sourceQuest"] = 1172,	-- The Brood of Onyxia (3/3)
					["coord"] = { 36.2, 31.4, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						i(10703),	-- Fiendish Skiv
						i(10704),	-- Chillnail Splinter
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11162, {	-- Challenge to the Black Flight
					["qg"] = 23579,	-- Brogg <Stonemaul Survivor>
					["sourceQuest"] = 11159,	-- Spirits of Stonemaul Hold
					["coord"] = { 41.9, 74.0, DUSTWALLOW_MARSH },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- Stonemaul Clan Avenged
							["provider"] = { "i", 33095 },	-- Stonemaul Banner
							["cr"] = 23789,	-- Smolderwing
						}),
						i(33231),	-- Oversized Stonemaul Hood
						i(33237),	-- Brogg's Battle Harness
						i(33256),	-- Refitted Bruiser Gauntlets
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11213, {	-- Check Up on Tabetha
					["qg"] = 4791,	-- Nazeer Bloodpike
					["coord"] = { 35.2, 30.7, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11183, {	-- Cleansing Witch Hill
					["qg"] = 23843,	-- Mordant Grimsby
					["sourceQuest"] = 11181,	-- The Witch's Bane
					["coord"] = { 55.6, 26.1, DUSTWALLOW_MARSH },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- Witch Hill Cleansed
							["provider"] = { "i", 33113 },	-- Witchbane Torch
							["cr"] = 23864,	-- Zelfrax
						}),
						i(33229),	-- Mordant's Travel Tunic
						i(33257),	-- Scaled Marshwalkers
						i(33245),	-- Grimsby's Gaudy Girdle
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11144, {	-- Confirming the Suspicion
					["qg"] = 23568,	-- Captain Darill
					["sourceQuest"] = 11143,	-- A Grim Connection
					["coord"] = { 46.6, 24.6, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 33051, 1 },	-- Grimtotem Battle Plan
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11174, {	-- Corrosion Prevention
					["qg"] = 23797,	-- Moxie Steelgrille
					["sourceQuest"] = 11172,	-- The Zeppelin Crash
					["coord"] = { 53.6, 56.9, DUSTWALLOW_MARSH },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/10 Oozes Dissolved
							["provider"] = { "i", 33108 },	-- Ooze Buster
							["crs"] = {
								4393,	-- Acidic Swamp Ooze
								4394,	-- Bubbling Swamp Ooze
							},
						}),
						i(33233),	-- Cobalt-threaded Gloves
						i(33239),	-- Marshwarden's Tunic
						i(33255),	-- Rustproof Waistguard
					},
				})),
				q(1285, {	-- Daelin's Men
					["qg"] = 4948,	-- Adjutant Tesoran
					["sourceQuest"] = 1259,	-- Lieutenant Paval Reethe (2/2)
					["coord"] = { 68.0, 48.1, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11193, {	-- Dastardly Denizens of the Deep
					["qg"] = 23892,	-- Babs Fizzletorque
					["sourceQuest"] = 11192,	-- Thresher Oil
					["coord"] = { 72.1, 47.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 33127, 1 },	-- Dastardly Denizens of the Deep
					},
					["lvl"] = 30,
				})),
				q(1205, {	-- Deadmire
					["qg"] = 3441,	-- Melor Stonehoof
					["coord"] = { 61.52, 80.88, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5945, 1 },	-- Deadmire's Tooth
					},
					["lvl"] = 35,
					["groups"] = {
						i(5945, {	-- Deadmire's Tooth
							["cr"] = 4841,	-- Deadmire
							["coord"] = { 47.6, 56.6, DUSTWALLOW_MARSH },
						}),
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11137, {	-- Defias in Dustwallow?
					["qg"] = 5086,	-- Captain Wymor
					["sourceQuest"] = 11136,	-- A Disturbing Development
					["coord"] = { 59.7, 41.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 33037, 1 },	-- Defias Orders
					},
					["lvl"] = 32,
					["groups"] = {
						i(23679, {	-- Defias Orders
							["cr"] = 23679,	-- Garn Mathers
							["coord"] = { 64.9, 27.3, DUSTWALLOW_MARSH },
						}),
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11208, {	-- Delivery for Drazzit
					["qg"] = 23797,	-- Moxie Steelgrille
					["sourceQuest"] = 11207,	-- Secure the Cargo!
					["coord"] = { 53.6, 56.9, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 33163, 1 },	-- Zeppelin Cargo
					},
					["lvl"] = 35,
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11156, {	-- Direhorn Raiders
					["qg"] = 23600,	-- Apprentice Morlann <Tabetha's Apprentice>
					["coord"] = { 46.1, 57.4, DUSTWALLOW_MARSH },
					["lvl"] = 35,
					["groups"] = {
						i(33240),	-- Grimtotem Earthbinder's Tunic
						i(33262),	-- Morlann's Seal
						i(33261),	-- Destroyer's Cloak
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11133, {	-- Discrediting the Deserters
					["qg"] = 23566,	-- Calia Hastings <SI:7>
					["sourceQuest"] = 11128,	-- Propaganda War
					["coord"] = { 68.3, 51.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 33015, 1 },	-- Altered Leaflets
					},
					["lvl"] = 32,
				})),
				q(1271, {	-- Feast at the Blue Recluse
					["qg"] = 1141,	-- Angus Stern
					["sourceQuests"] = {
						1258,	-- ... and Bugs
						1222,	-- Stinky's Escape
					},
					["description"] = "Don't forget to loot all the food and drinks off the tables.",
					-- #if AFTER WRATH
					["coord"] = { 51.8, 93.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 41.4, 89.2, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(5951),	-- Moist Towelette
					},
				}),
				-- #if BEFORE TBC
				q(1132, {	-- Fiora Longears
					["qg"] = 4455,	-- Red Jack Flint
					["coord"] = { 9.9, 57.9, WETLANDS },
					["timeline"] = { "removed 3.3.0" },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 18,
				}),
				-- #endif
				applyclassicphase(TBC_PHASE_ONE, q(11211, {	-- Help for Mudsprocket
					["qg"] = 6546,	-- Tabetha
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["isBreadcrumb"] = true,
					["lvl"] = 38,
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11215, {	-- Help Mudsprocket
					["qg"] = 4791,	-- Nazeer Bloodpike
					["coord"] = { 35.2, 30.7, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				})),
				q(1949, {	-- Hidden Secrets
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1947,	-- Journey to the Marsh
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["lvl"] = 30,
				}),
				-- #if BEFORE TBC
				q(1135, {	-- Highperch Venom
					-- This quest was moved to Darkshore after TBC Prepatch.
					["qg"] = 4456,	-- Fiora Longears
					["coord"] = { 66.5, 45.2, DUSTWALLOW_MARSH },
					["maps"] = { THOUSAND_NEEDLES },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5809, 10 },	-- Highperch Venom Sac
					},
					["lvl"] = 25,
					["groups"] = {
						i(6719),	-- Windborne Belt
					},
				}),
				-- #endif
				q(1177, {	-- Hungry!
					["qg"] = 4503,	-- Mudcrush Durtfeet
					["coord"] = { 35.2, 38.3, DUSTWALLOW_MARSH },
					-- #if AFTER TBC
					["cost"] = {
						{ "i", 5847, 8 },	-- Mirefin Head
					},
					-- #else
					["cost"] = {
						{ "i", 5847, 12 },	-- Mirefin Head
					},
					-- #endif
					["lvl"] = 32,
					["groups"] = {
						i(9518),	-- Mud's Crushers
						i(9519),	-- Durtfeet Stompers
					},
				}),
				q(1169, {	-- Identifying the Brood
					["qg"] = 4501,	-- Draz'Zilb
					["coord"] = { 37, 33, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					-- #if AFTER TBC
					["cost"] = {
						{ "i", 5840, 7 },	-- Searing Tongue
						{ "i", 5841, 7 },	-- Searing Heart
					},
					-- #else
					["cost"] = {
						{ "i", 5840, 15 },	-- Searing Tongue
						{ "i", 5841, 15 },	-- Searing Heart
					},
					-- #endif
					["lvl"] = 38,
					["groups"] = {
						i(9703),	-- Scorched Cape
						i(9704),	-- Rustler Gloves
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11123, {	-- Inspecting the Ruins [Alliance]
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 1282,	-- They Call Him Smiling Jim
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11124, {	-- Inspecting the Ruins [Horde]
					["qg"] = 4926,	-- Krog
					["coord"] = { 36.4, 31.9, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				})),
				q(1948, {	-- Items of Power
					["providers"] = {
						{ "n", 6546 },	-- Tabetha
						{ "i", 7516 },	-- Tabetha's Instructions
					},
					["sourceQuest"] = 1951,	-- Rituals of Power
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["maps"] = { ARATHI_HIGHLANDS },
					["cost"] = { { "i", 1529, 1 } },	-- Jade
					["classes"] = { MAGE },
					["lvl"] = 30,
					["groups"] = {
						objective(2, {	-- 0/1 Bolt Charged Bramble
							["provider"] = { "i", 7272 },	-- Bolt Charged Bramble
							["coord"] = { 52, 51, ARATHI_HIGHLANDS },
							["cost"] = { { "i", 7273, 10 } },	-- Witherbark Totem Stick
						}),
						i(7273, {	-- Witherbark Totem Stick
							["crs"] = {
								2554,	-- Witherbark Axe Thrower
								2558,	-- Witherbark Berserker
								2556,	-- Witherbark Headhunter
								2557,	-- Witherbark Shadow Hunter
								2553,	-- Witherbark Shadowcaster
								2552,	-- Witherbark Troll
								2555,	-- Witherbark Witch Doctor
								2605,	-- Zalas Witherbark <Warband Leader>
							},
						}),
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11194, {	-- Is it Real?
					["qg"] = 23896,	-- "Dirty" Michael Crowe <Fish Merchant>
					["sourceQuest"] = 11193,	-- Dastardly Denizens of the Deep
					["coord"] = { 69.2, 51.9, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11141, {	-- Jaina Must Know
					["qg"] = 23569,	-- Renn McGill <SI:7 Salvage Diver>
					["sourceQuest"] = 11140,	-- Recover the Cargo!
					["coord"] = { 63.7, 17.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
				})),
				q(1301, {	-- James Hyal (1/2)
					["qg"] = 5081,	-- Connor Rivers
					["coord"] = { 40.4, 91.6, STORMWIND_CITY },
					["maps"] = { WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1302, {	-- James Hyal (2/2)
					["qg"] = 5082,	-- Vincent Hyal
					["sourceQuest"] = 1301,	-- James Hyal (1/2)
					["altQuests"] = { 1282 },	-- They Call Him Smiling Jim
					["coord"] = { 10.8, 60.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1203, {	-- Jarl Needs a Blade
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["sourceQuest"] = 1206,	-- Jarl Needs Eyes
					["coord"] = { 55.4, 26.2, DUSTWALLOW_MARSH },
					-- #if BEFORE TBC
					["cost"] = {
						{ "i", 3853, 1 },	-- Moonsteel Broadsword
					},
					-- #else
					["cost"] = {
						{ "i", 33110, 1 },	-- Razorspine's Sword
					},
					-- #endif
					["lvl"] = 30,
					["groups"] = {
						-- #if AFTER TBC
						i(33110, {	-- Razorspine's Sword
							["cr"] = 23841,	-- Razorspine
						}),
						-- #endif
						i(9622),	-- Reedknot Ring
						i(5016),	-- Artisan's Trousers
					},
				}),
				q(1206, {	-- Jarl Needs Eyes
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["sourceQuest"] = 1218,	-- Marsh Frog Legs (TBC+) / Soothing Spices (Classic)
					["coord"] = { 55.4, 26.2, DUSTWALLOW_MARSH },
					-- #if BEFORE TBC
					["cost"] = {
						{ "i", 5884, 40 },	-- Unpopped Darkmist Eye
					},
					-- #else
					["cost"] = {
						{ "i", 5884, 20 },	-- Unpopped Darkmist Eye
					},
					-- #endif
					["lvl"] = 30,
				}),
				-- #if BEFORE TBC
				q(1133, {	-- Journey to Astranaar
					-- This quest was moved to Darkshore after TBC Prepatch.
					["qg"] = 4456,	-- Fiora Longears
					["sourceQuest"] = 1132,	-- Fiora Longears
					["coord"] = { 66.4, 45.2, DUSTWALLOW_MARSH },
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				-- #endif
				q(1947, {	-- Journey to the Marsh
					["qgs"] = {
						5885,	-- Deino <Mage Trainer>
						5144,	-- Bink <Mage Trainer>
						5497,	-- Jennea Cannon <Mage Trainer>
						3048,	-- Ursyn Ghull <Mage Trainer>
						4568,	-- Anastasia Hartwell <Mage Trainer>
					},
					["coords"] = {
						{ 38.4, 86, ORGRIMMAR },
						{ 27, 8.2, IRONFORGE },
						{ 38.6, 79.4, STORMWIND_CITY },
						{ 25.8, 14.4, THUNDER_BLUFF },
						{ 85, 10.2, UNDERCITY },
					},
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11206, {	-- Justice Dispensed
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 11205,	-- Raze Direhorn Post! [Horde]
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						i(33230),	-- Leggings of the Long Road
						i(33243),	-- Skirmisher's Cover
						i(33251),	-- Steel-banded Hauberk
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11151, {	-- Justice for the Hyals
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 11150,	-- Raze Direhorn Post! [Alliance]
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				})),
				q(1252, {	-- Lieutenant Paval Reethe (1/2)
					["provider"] = { "o", 21042 },	-- Theramore Guard Badge
					["coord"] = { 29.8, 48.2, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5950, 1 },	-- Reethe's Badge
					},
					["lvl"] = 30,
				}),
				q(1259, {	-- Lieutenant Paval Reethe (2/2)
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 1252,	-- Lieutenant Paval Reethe (1/2)
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1269, {	-- Lieutenant Paval Reethe
					["provider"] = { "o", 21042 },	-- Theramore Guard Badge
					["coord"] = { 29.8, 48.2, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5950, 1 },	-- Reethe's Badge
					},
					["lvl"] = 30,
				}),
				q(1952, {	-- Mage's Wand
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1948,	-- Items of Power
					["coord"] = { 46.0, 57.0, DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["lvl"] = 30,
					["groups"] = {
						i(7514),	-- Icefury Wand
						i(11263),	-- Nether Force Wand
						i(7513),	-- Ragefire Wand
					},
				}),
				q(1957, {	-- Mana Surges
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1956,	-- Power in Uldaman
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["cr"] = 6550,	-- Mana Surge
					["lvl"] = 35,
				}),
				q(1261, {	-- Marg Speaks
					["provider"] = { "o", 2076 },	-- Bubbling Cauldron
					["sourceQuest"] = 1240,	-- The Troll Witchdoctor
					["coord"] = { 32.2, 27.7, STRANGLETHORN_VALE },
					["maps"] = { DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5942, 1 },	-- Jeweled Pendant
					},
					["lvl"] = 30,
				}),
				-- #if AFTER TBC
				q(1218, {	-- Marsh Frog Legs (TBC+) / Soothing Spices (Classic)
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["coord"] = { 55.4, 26.2, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 33202, 10 },	-- Marsh Frog Leg
					},
					["lvl"] = 30,
					["groups"] = {
						i(6807),	-- Frog Leg Stew
					},
				}),
				-- #endif
				applyclassicphase(TBC_PHASE_ONE, q(11214, {	-- Mission to Mudsprocket
					["qg"] = 23951,	-- Lieutenant Aden
					["coord"] = { 65.1, 47.1, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 39,
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11200, {	-- More than Coincidence
					["qg"] = 4926,	-- Krog
					["sourceQuest"] = 11204,	-- Return to Krog
					["coord"] = { 36.4, 31.9, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 33071, 7 },	-- Blackhoof Armaments
					},
					["lvl"] = 33,
					["groups"] = {
						i(33272),	-- Biting Axe
						i(33268),	-- Bone Dirk
						i(33264),	-- Glowing Tourmaline Ring
					},
				})),
				q(1260, {	-- Morgan Stern
					["qg"] = 1141,	-- Angus Stern
					-- #if AFTER WRATH
					["coord"] = { 51.8, 93.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 41.4, 89.2, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 33,
				}),
				q(1204, {	-- Mudrock Soup and Bugs
					["qg"] = 4794,	-- Morgan Stern
					["sourceQuest"] = 1260,	-- Morgan Stern
					["coord"] = { 66.4, 45.5, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5883, 8 },	-- Forked Mudrock Tongue
					},
					["lvl"] = 33,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11209, {	-- Nat's Bargain
					["qg"] = 12919,	-- Nat Pagle
					["sourceQuest"] = 11194,	-- Is it Real?
					["coord"] = { 58.8, 60.2, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 33166, 1 },	-- Pagle's Fish Paste, Extra Strength
					},
					["lvl"] = 30,
					["groups"] = {
						i(19221),	-- Darkmoon Special Reserve
					},
				})),
				q(6607, {	-- Nat Pagle, Angler Extreme
					["qg"] = 12919,	-- Nat Pagle
					["sourceQuests"] = {
						6609,	-- I Got Nothin' Left!
						6608,	-- You Too Good.
					},
					["requireSkill"] = FISHING,
					["description"] = "Requires 225 Fishing to start this quest.",
					["coord"] = { 58.6, 60.0, DUSTWALLOW_MARSH },
					["maps"] = { FERALAS, SWAMP_OF_SORROWS, DESOLACE, STRANGLETHORN_VALE },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Feralas Ahi
							["provider"] = { "i", 16967 },	-- Feralas Ahi
							["coord"] = { 63.5, 53.6, FERALAS },
						}),
						objective(2, {	-- 0/1 Misty Reed Mahi Mahi
							["provider"] = { "i", 16970 },	-- Misty Reed Mahi Mahi
							["coord"] = { 94.1, 39.7, SWAMP_OF_SORROWS },
						}),
						objective(3, {	-- 0/1 Sar'theris Striker
							["provider"] = { "i", 16968 },	-- Sar'theris Striker
							["coords"] = {
								{ 36.2, 32.9, DESOLACE },
								{ 26.0, 80.1, DESOLACE },
							},
						}),
						objective(4, {	-- 0/1 Savage Coast Blue Sailfin
							["provider"] = { "i", 16969 },	-- Savage Coast Blue Sailfin
							["coord"] = { 26.3, 67.8, STRANGLETHORN_VALE },
						}),
						recipe(18248, { ["rank"] = 4 }),	-- Fishing (Artisan)
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11210, {	-- Oh, It's Real
					["qg"] = 12919,	-- Nat Pagle
					["sourceQuest"] = 11209,	-- Nat's Bargain
					["coord"] = { 58.8, 60.2, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				})),
				q(1166, {	-- Overlord Mok'Morokk's Concern
					["qg"] = 4500,	-- Overlord Mok'Morokk
					["coord"] = { 36.2, 31.4, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5835, 1 },	-- Mok'Morokk's Grog
						{ "i", 5834, 1 },	-- Mok'Morokk's Snuff
						{ "i", 5836, 1 },	-- Mok'Morokk's Strongbox
					},
					["lvl"] = 38,
					["groups"] = {
						{
							["itemID"] = 5835,	-- Mok'Morokk's Grog
							["coord"] = { 38.6, 65.4, DUSTWALLOW_MARSH },
						},
						{
							["itemID"] = 5834,	-- Mok'Morokk's Snuff
							["coord"] = { 44.4, 66, DUSTWALLOW_MARSH },
						},
						{
							["itemID"] = 5836,	-- Mok'Morokk's Strongbox
							["coord"] = { 36.6, 69.4, DUSTWALLOW_MARSH },
						},
						i(10702),	-- Enormous Ogre Boots
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11152, {	-- Peace at Last
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 11151,	-- Justice for the Hyals
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- Wreath Laid at Hyal Monument
							["provider"] = { "i", 33082 },	-- Wreath
							["coord"] = { 63.7, 42.9, DUSTWALLOW_MARSH },
							["cr"] = 23768,	-- Lynn Hyal
						}),
						i(33230),	-- Leggings of the Long Road
						i(33243),	-- Skirmisher's Cover
						i(33251),	-- Steel-banded Hauberk
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11128, {	-- Propaganda War
					["qg"] = 23566,	-- Calia Hastings <SI:7>
					["sourceQuest"] = 11126,	-- Traitors Among Us
					["coord"] = { 68.3, 51.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 33008, 1 },	-- Deserter Propaganda
					},
					["lvl"] = 32,
					["groups"] = {
						i(33008, {	-- Deserter Propaganda
							["coord"] = { 67.9, 58.7, DUSTWALLOW_MARSH },
						}),
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11145, {	-- Prisoners of the Grimtotems
					["qg"] = 23723,	-- Sergeant Lukas
					["sourceQuest"] = 11146,	-- Raptor Captor
					["coord"] = { 46.7, 23.1, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- 0/5 Theramore Prisoners Freed
							["cr"] = 23720,	-- Theramore Prisoner
							["cost"] = {
								{ "i", 33061, 1 },	-- Grimtotem Key
							},
						}),
					},
				})),
				q(1273, {	-- Questioning Reethe
					["qg"] = 4983,	-- Ogron
					["sourceQuest"] = 1269,	-- Lieutenant Paval Reethe
					["coord"] = { 40.8, 36.6, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(6797),	-- Eyepoker
						i(6798),	-- Blasting Hackbut
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11146, {	-- Raptor Captor
					["qg"] = 23723,	-- Sergeant Lukas
					["coord"] = { 46.7, 23.1, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- Raptors Captured (6)
							["provider"] = { "i", 33069 },	-- Sturdy Rope
							["crs"] = {
								4351,	-- Bloodfen Raptor
								4352,	-- Bloodfen Screecher
							},
						}),
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11150, {	-- Raze Direhorn Post! [Alliance]
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 11149,	-- Tabetha's Assistance
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- North Tent Burned
							["provider"] = { "i", 33072 },	-- Tabetha's Torch
							["coord"] = { 46.6, 45.9, DUSTWALLOW_MARSH },
							["cr"] = 23751,	-- North Tent
						}),
						objective(2, {	-- Northeast Tent Burned
							["provider"] = { "i", 33072 },	-- Tabetha's Torch
							["coord"] = { 47.3, 46.5, DUSTWALLOW_MARSH },
							["cr"] = 23752,	-- Northeast Tent
						}),
						objective(3, {	-- East Tent Burned
							["provider"] = { "i", 33072 },	-- Tabetha's Torch
							["coord"] = { 47.5, 47.6, DUSTWALLOW_MARSH },
							["cr"] = 23753,	-- East Tent
						}),
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11205, {	-- Raze Direhorn Post! [Horde]
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 11203,	-- Seek Out Tabetha
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- North Tent Burned
							["provider"] = { "i", 33072 },	-- Tabetha's Torch
							["coord"] = { 46.6, 45.9, DUSTWALLOW_MARSH },
							["cr"] = 23751,	-- North Tent
						}),
						objective(2, {	-- Northeast Tent Burned
							["provider"] = { "i", 33072 },	-- Tabetha's Torch
							["coord"] = { 47.3, 46.5, DUSTWALLOW_MARSH },
							["cr"] = 23752,	-- Northeast Tent
						}),
						objective(3, {	-- East Tent Burned
							["provider"] = { "i", 33072 },	-- Tabetha's Torch
							["coord"] = { 47.5, 47.6, DUSTWALLOW_MARSH },
							["cr"] = 23753,	-- East Tent
						}),
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11140, {	-- Recover the Cargo!
					["qg"] = 23569,	-- Renn McGill <SI:7 Salvage Diver>
					["sourceQuest"] = 11139,	-- Secondhand Diving Gear
					["coord"] = { 63.7, 17.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 33041, 6 },	-- Salvaged Strongbox
					},
					["lvl"] = 32,
					["groups"] = {
						i(33045, {	-- Renn's Supplies
							i(33040),	-- Repaired Diving Gear
							i(33044, {	-- Salvage Kit
								i(33041),	-- Salvaged Strongbox
							}),
						}),
						i(33267),	-- Fleshripper
						i(33270),	-- Mariner's Sword
						i(33259),	-- Crimson Barbut
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11138, {	-- Renn McGill
					["qg"] = 5086,	-- Captain Wymor
					["sourceQuest"] = 11137,	-- Defias in Dustwallow?
					["coord"] = { 59.7, 41.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 33037, 1 },	-- Defias Orders
					},
					["lvl"] = 32,
				})),
				q(1262, {	-- Report to Zor
					["qg"] = 4791,	-- Nazeer Bloodpike
					["sourceQuest"] = 1261,	-- Marg Speaks
					["coord"] = { 35.2, 30.6, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5942, 1 },	-- Jeweled Pendant
					},
					["lvl"] = 30,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11204, {	-- Return to Krog
					["qg"] = 4943,	-- Mosarn
					["sourceQuest"] = 1276,	-- The Black Shield (5/5)
					["coord"] = { 54.0, 80.8, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						i(33267),	-- Fleshripper
						i(33270),	-- Mariner's Sword
						i(33259),	-- Crimson Barbut
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11223, {	-- Return to Jaina
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["sourceQuest"] = 11222,	-- Warn Bolvar!
					["coord"] = { 78.2, 18.1, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						i(33269),	-- Bejeweled Dagger
						i(33252),	-- Gleaming Scale Breastplate
						i(33250),	-- Archer's Wristguard
					},
				})),
				q(1953, {	-- Return to the Marsh
					["qgs"] = {
						5885,	-- Deino <Mage Trainer>
						5144,	-- Bink <Mage Trainer>
						5497,	-- Jennea Cannon <Mage Trainer>
						3048,	-- Ursyn Ghull <Mage Trainer>
						4568,	-- Anastasia Hartwell <Mage Trainer>
					},
					["coords"] = {
						{ 38.4, 86, ORGRIMMAR },
						{ 27, 8.2, IRONFORGE },
						{ 38.6, 79.4, STORMWIND_CITY },
						{ 25.8, 14.4, THUNDER_BLUFF },
						{ 85, 10.2, UNDERCITY },
					},
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11139, {	-- Secondhand Diving Gear
					["qg"] = 23569,	-- Renn McGill <SI:7 Salvage Diver>
					["sourceQuest"] = 11138,	-- Renn McGill
					["coord"] = { 63.7, 17.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/1 Damaged Diving Gear
							["provider"] = { "i", 33038 },	-- Damaged Diving Gear
							["coord"] = { 61.68, 18.16, DUSTWALLOW_MARSH },
						}),
						objective(2, {	-- 0/1 Tool Kit
							["provider"] = { "i", 33039 },	-- Tool Kit
							["coord"] = { 62.9, 18.80, DUSTWALLOW_MARSH },
						}),
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11207, {	-- Secure the Cargo!
					["qg"] = 23797,	-- Moxie Steelgrille
					["coord"] = { 53.6, 56.9, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 33163, 8 },	-- Zeppelin Cargo
					},
					["lvl"] = 35,
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11203, {	-- Seek Out Tabetha
					["qg"] = 4926,	-- Krog
					["sourceQuest"] = 11201,	-- The Grimtotem Plot
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				})),
				q(7541, {	-- Service to the Horde
					["qg"] = 4047,	-- Zor Lonetree
					["sourceQuest"] = 1262,	-- Report to Zor
					["coord"] = { 39, 38, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(18585),	-- Band of Allegiance
						i(18586),	-- Lonetree's Circle
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11186, {	-- Signs of Treachery?
					["provider"] = { "i", 33115 },	-- Sealed Letter
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11159, {	-- Spirits of Stonemaul Hold
					["qg"] = 23579,	-- Brogg <Stonemaul Survivor>
					["sourceQuest"] = 11161,	-- The Essence of Enmity
					["coord"] = { 41.9, 74.0, DUSTWALLOW_MARSH },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- Stonemaul Spirits laid to rest
							["provider"] = { "i", 33091 },	-- Energized Totem
							["cr"] = 23786,	-- Stonemaul Spirit
						}),
					},
				})),
				-- #if BEFORE TBC
				q(1218, {	-- Soothing Spices (Classic) / Marsh Frog Legs (TBC+)
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["coord"] = { 55.4, 26.2, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 3713, 3 },	-- Soothing Spices
					},
					["lvl"] = 30,
					["groups"] = {
						i(6807),	-- Frog Leg Stew
					},
				}),
				-- #endif
				q(1222, {	-- Stinky's Escape [Alliance]
					["qg"] = 4880,	-- "Stinky" Ignatz
					["coord"] = { 46.9, 17.5, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(3825),	-- Elixir of Fortitude
					},
				}),
				q(1270, {	-- Stinky's Escape [Horde]
					["qg"] = 4880,	-- "Stinky" Ignatz
					["coord"] = { 46.9, 17.5, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(3825),	-- Elixir of Fortitude
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11142, {	-- Survey Alcaz Island
					["qg"] = 4968,	-- Lady Jaina Proudmoore <Ruler of Theramore>
					["sourceQuest"] = 11141,	-- Jaina Must Know
					["coord"] = { 66.3, 49.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
				})),
				q(1268, {	-- Suspicious Hoofprints
					["providers"] = {
						{ "o", 21015 },	-- Hoofprints
						{ "o", 21016 },	-- Hoofprints
					},
					["coord"] = { 29.7, 47.7, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1284, {	-- Suspicious Hoofprints
					["providers"] = {
						{ "o", 21015 },	-- Hoofprints
						{ "o", 21016 },	-- Hoofprints
					},
					["coord"] = { 29.7, 47.7, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11149, {	-- Tabetha's Assistance
					["qg"] = 23568,	-- Captain Darill
					["sourceQuest"] = 11148,	-- Arms of the Grimtotems
					["coord"] = { 46.6, 24.6, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11212, {	-- Tabetha's Farm
					["qg"] = 4921,	-- Guard Byron
					["coord"] = { 66.2, 46.1, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11198, {	-- Take Down Tethyr!
					["qg"] = 23905,	-- Major Mills
					["sourceQuest"] = 11210,	-- Oh, It's Real
					["coord"] = { 69.7, 51.2, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- Defend Theramore Docks from Tethyr
							["qg"] = 23899,	-- Tethyr
						}),
						i(33228),	-- Crimson Tunic
						i(33253),	-- Golden Helm
						i(33247),	-- Swift Wind Spaulders
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11185, {	-- The Apothecary's Letter
					["provider"] = { "i", 33114 },	-- Sealed Letter
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				})),
				q(1253, {	-- The Black Shield (1/3)
					["provider"] = { "o", 20992 },	-- Black Shield
					["coord"] = { 29.6, 48.5, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 5919, 1 },	-- Blackened Iron Shield
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1319, {	-- The Black Shield (2/3)
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 1253,	-- The Black Shield (1/3)
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 5919, 1 },	-- Blackened Iron Shield
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1320, {	-- The Black Shield (3/3)
					["qg"] = 4941,	-- Caz Twosprocket
					["sourceQuest"] = 1319,	-- The Black Shield (2/3)
					["coord"] = { 64.6, 50.4, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1251, {	-- The Black Shield (1/5)
					["provider"] = { "o", 20992 },	-- Black Shield
					["coord"] = { 29.6, 48.5, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 5919, 1 },	-- Blackened Iron Shield
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1321, {	-- The Black Shield (2/5)
					["qg"] = 4926,	-- Krog
					["sourceQuest"] = 1251,	-- The Black Shield (1/5)
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 5919, 1 },	-- Blackened Iron Shield
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1322, {	-- The Black Shield (3/5)
					["qg"] = 5087,	-- Do'gol
					["sourceQuest"] = 1321,	-- The Black Shield (2/5)
					["coord"] = { 36.4, 30.8, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 5959, 6 },	-- Acidic Venom Sac
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1323, {	-- The Black Shield (4/5)
					["qg"] = 5087,	-- Do'gol
					["sourceQuest"] = 1322,	-- The Black Shield (3/5)
					["coord"] = { 36.4, 30.8, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1276, {	-- The Black Shield (5/5)
					["qg"] = 4926,	-- Krog
					["sourceQuest"] = 1323,	-- The Black Shield (4/5)
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 5919, 1 },	-- Blackened Iron Shield
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1170, {	-- The Brood of Onyxia (1/3)
					["qg"] = 4501,	-- Draz'Zilb
					["sourceQuest"] = 1169,	-- Identifying the Brood
					["coord"] = { 37, 33, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(1171, {	-- The Brood of Onyxia (2/3)
					["qg"] = 4500,	-- Overlord Mok'Morokk
					["sourceQuest"] = 1170,	-- The Brood of Onyxia (1/3)
					["coord"] = { 36.2, 31.4, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(1172, {	-- The Brood of Onyxia (3/3)
					["qg"] = 4501,	-- Draz'Zilb
					["sourceQuest"] = 1171,	-- The Brood of Onyxia (2/3)
					["coord"] = { 37, 33, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						i(10700),	-- Encarmine Boots
						i(10701),	-- Boots of Zua'tec
					},
				}),
				q(1286, {	-- The Deserters (1/2)
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 1285,	-- Daelin's Men
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1287, {	-- The Deserters (2/2)
					["qg"] = 5089,	-- Balos Jacken
					["sourceQuest"] = 1286,	-- The Deserters (1/2)
					["coord"] = { 36, 54.2, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11134, {	-- The End of the Deserters
					["qg"] = 23566,	-- Calia Hastings <SI:7>
					["sourceQuest"] = 11133,	-- Discrediting the Deserters
					["coord"] = { 68.3, 51.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						i(33232),	-- Journeyman's Cowl
						i(33249),	-- Boots of the Skirmisher
						i(33274),	-- Mercenary's Crossbow
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11161, {	-- The Essence of Enmity
					["qg"] = 23579,	-- Brogg <Stonemaul Survivor>
					["sourceQuest"] = 11158,	-- Bloodfen Feathers
					["coord"] = { 41.9, 74.0, DUSTWALLOW_MARSH },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/10 Black Dragonkin Essence
							["cost"] = {
								{ "i", 33088, 1 },	-- Brogg's Totem
							},
							["crs"] = {
								4331,	-- Firemane Ash Tail
								4329,	-- Firemane Scout
								4328,	-- Firemane Scalebane
							},
						}),
					},
				})),
				q(1955, {	-- The Exorcism
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1954,	-- The Infernal Orb
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["cr"] = 6549,	-- Demon of the Orb
					["lvl"] = 35,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11201, {	-- The Grimtotem Plot
					["qg"] = 4926,	-- Krog
					["sourceQuest"] = 11204,	-- Return to Krog
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 33051, 1 },	-- Grimtotem Battle Plan
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11169, {	-- The Grimtotem Weapon
					["qg"] = 23601,	-- Apprentice Garion <Tabetha's Apprentice>
					["coord"] = { 46.0, 57.2, DUSTWALLOW_MARSH },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- Totem Tests Performed (10)
							["provider"] = { "i", 33101 },	-- Captured Totem
							["cr"] = 23811,	-- Captured Totem
						}),
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11177, {	-- The Hermit of Swamplight Manor
					["qg"] = 23835,	-- Sergeant Amelyn
					["sourceQuest"] = 11134,	-- The End of the Deserters
					["coord"] = { 68.3, 51.8, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11225, {	-- The Hermit of Witch Hill
					["qg"] = 4501,	-- Draz'Zilb
					["coord"] = { 37.1, 33.1, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				})),
				q(1954, {	-- The Infernal Orb
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1953,	-- Return to the Marsh
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["maps"] = { DESOLACE },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 7291, 1 },	-- Infernal Orb
					},
					["lvl"] = 35,
				}),
				q(1238, {	-- The Lost Report
					["provider"] = { "o", 20985 },	-- Loose Dirt
					["coord"] = { 55.4, 26, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5917, 1 },	-- Spy's Report
					},
					["lvl"] = 30,
				}),
				q(1265, {	-- The Missing Diplomat (14/17)
					["qg"] = 4964,	-- Commander Samaul
					["sourceQuest"] = 1264,	-- The Missing Diplomat (13/17)
					["coord"] = { 68.0, 48.6, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1266, {	-- The Missing Diplomat (15/17)
					["qg"] = 4967,	-- Archmage Tervosh
					["sourceQuest"] = 1265,	-- The Missing Diplomat (14/17)
					["coord"] = { 66.4, 49.3, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1324, {	-- The Missing Diplomat (16/17)
					["qg"] = 4966,	-- Private Hendel
					["sourceQuest"] = 1266,	-- The Missing Diplomat (15/17)
					["coord"] = { 45.2, 24.6, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1267, {	-- The Missing Diplomat (17/17)
					["qg"] = 4968,	-- Lady Jaina Proudmoore
					["sourceQuest"] = 1324,	-- The Missing Diplomat (16/17)
					["coord"] = { 45.2, 24.2, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						i(6757),	-- Jaina's Signet Ring
					},
				}),
				q(1219, {	-- The Orc Report
					["provider"] = { "o", 20985 },	-- Loose Dirt
					["coord"] = { 55.4, 26, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5917, 1 },	-- Spy's Report
					},
					["lvl"] = 30,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11173, {	-- The Reagent Thief
					["qg"] = 23601,	-- Apprentice Garion <Tabetha's Apprentice>
					["coord"] = { 46.0, 57.2, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 33103, 6 },	-- Marsh Venom
					},
					["lvl"] = 35,
					["groups"] = {
						i(33273),	-- Seasoned Marshwood Bow
						i(33260),	-- Spellbound Cloak
						i(33244),	-- The Wanderer's Cover
					},
				})),
				q(1239, {	-- The Severed Head
					["provider"] = { "o", 20985 },	-- Loose Dirt
					["sourceQuest"] = 1238,	-- The Lost Report
					["coord"] = { 55.4, 26, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5918, 1 },	-- Defiant Orc Head
					},
					["lvl"] = 30,
				}),
				q(1202, {	-- The Theramore Docks
					["qg"] = 4791,	-- Nazeer Bloodpike
					["sourceQuest"] = 1201,	-- Theramore Spies
					["coord"] = { 35.2, 30.6, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5882, 1 },	-- Captain's Documents
					},
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Captain's Documents
							["provider"] = { "i", 5882 },	-- Captain's Documents
							["coord"] = { 71.5, 51.1, DUSTWALLOW_MARSH },
						}),
					},
				}),
				q(1240, {	-- The Troll Witchdoctor
					["qg"] = 4791,	-- Nazeer Bloodpike
					["sourceQuest"] = 1239,	-- The Severed Head
					["coord"] = { 35.2, 30.6, DUSTWALLOW_MARSH },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5918, 1 },	-- Defiant Orc Head
					},
					["lvl"] = 30,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11181, {	-- The Witch's Bane
					["qg"] = 23843,	-- Mordant Grimsby
					["sourceQuest"] = 11180,	-- What's Haunting Witch Hill?
					["coord"] = { 55.6, 26.1, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 33112, 9 },	-- Witchbane
					},
					["lvl"] = 30,
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11172, {	-- The Zeppelin Crash
					["qg"] = 23600,	-- Apprentice Morlann <Tabetha's Apprentice>
					["coord"] = { 46.1, 57.4, DUSTWALLOW_MARSH },
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				})),
				q(1201, {	-- Theramore Spies
					["qg"] = 4791,	-- Nazeer Bloodpike
					["coord"] = { 35.2, 30.6, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- Theramore Infiltrator slain (9) 
							["cr"] = 4834,	-- Theramore Infiltrator
						}),
					},
				}),
				q(1282, {	-- They Call Him Smiling Jim
					["qg"] = 4921,	-- Guard Byron
					["altQuests"] = { 1302 },	-- James Hyal (2/2)
					["coord"] = { 66, 46, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(11191, {	-- This Old Lighthouse
					["qg"] = 23835,	-- Sergeant Amelyn
					["coord"] = { 68.3, 51.8, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11192, {	-- Thresher Oil
					["qg"] = 23892,	-- Babs Fizzletorque
					["sourceQuest"] = 11191,	-- This Old Lighthouse
					["coord"] = { 72.1, 47.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 33126, 4 },	-- Thresher Oil
					},
					["lvl"] = 30,
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11126, {	-- Traitors Among Us
					["qg"] = 23566,	-- Calia Hastings <SI:7>
					["coord"] = { 68.3, 51.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				})),
				q(6624, {	-- Triage (A)
					["qg"] = 12939,	-- Doctor Gustaf VanHowzen
					["sourceQuest"] = 6625,	-- Alliance Trauma
					["coord"] = { 67.7, 48.9, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER BFA
					["description"] = "Needs a minimum of 225 skill in Tailoring.",
					["requireSkill"] = TAILORING,
					-- #else
					["description"] = "Needs a minimum of 225 skill in First Aid.",
					["requireSkill"] = FIRST_AID,
					-- #endif
					["lvl"] = lvlsquish(35, 15, 35),
					["groups"] = {
						objective(1, {	-- 0/15 Patients Saved
							["provider"] = { "i", 16991 },	-- Triage Bandage
							["crs"] = {
								12936,	-- Badly Injured Alliance Soldier
								12937,	-- Critically Injured Alliance Soldier
								12938,	-- Injured Alliance Soldier
							},
						}),
						-- #if BEFORE 3.1.0
						recipe(10846, { ["rank"] = 4 }),	-- First Aid (Artisan)
						-- #endif
						i(49193, {	-- Alliance Trauma Certification
							["timeline"] = { "added 3.2.0.10192" },
						}),
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, q(9437, {	-- Twilight of the Dawn Runner
					["qg"] = 17095,	-- Balandar Brightstar
					["coord"] = { 35.9, 31.7, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 23657, 1 },	-- Dawn Runner Cargo
					},
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- Rescue Ithania from North Point Tower
							["qg"] = 17119,	-- Ithania
							["coord"] = { 46.6, 24.5, DUSTWALLOW_MARSH },
						}),
						objective(2, {	-- 0/1 Dawn Runner Cargo
							["provider"] = { "i", 23657 },	-- Dawn Runner Cargo
							["coord"] = { 46.6, 24.3, DUSTWALLOW_MARSH },
						}),
						i(33269),	-- Bejeweled Dagger
						i(33252),	-- Gleaming Scale Breastplate
						i(33250),	-- Archer's Wristguard
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11147, {	-- Unleash the Raptors
					["qg"] = 23723,	-- Sergeant Lukas
					["sourceQuest"] = 11146,	-- Raptor Captor
					["coord"] = { 46.7, 23.1, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						objective(1, {	-- Raptors Released
							["provider"] = { "i", 33070 },	-- Raptor Bait
							["coord"] = { 41, 11, DUSTWALLOW_MARSH },
						}),
						i(33266),	-- Book of the Adept
						i(33248),	-- Crested Shoulderpads
						i(33265),	-- Pendant of Ferocity
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11184, {	-- WANTED: Goreclaw the Ravenous
					["provider"] = { "o", 186426 },	-- Wanted Poster
					["coord"] = { 41.8, 73.1, DUSTWALLOW_MARSH },
					["model"] = 192468,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- Goreclaw the Ravenous slain
							["cr"] = 23873,	-- Goreclaw the Ravenous
							["coord"] = { 32.2, 65.7, DUSTWALLOW_MARSH },
						}),
						i(33242),	-- Raptorhide Legguards
						i(33263),	-- Raptor Eye Ring
						i(33258),	-- Protective Engineer's Leggings
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11222, {	-- Warn Bolvar!
					["qg"] = 4968,	-- Lady Jaina Proudmoore <Ruler of Theramore>
					["sourceQuest"] = 11142,	-- Survey Alcaz Island
					["coord"] = { 66.3, 49.0, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
				})),
				applyclassicphase(TBC_PHASE_ONE, q(11180, {	-- What's Haunting Witch Hill?
					["qg"] = 23843,	-- Mordant Grimsby
					["coord"] = { 55.6, 26.1, DUSTWALLOW_MARSH },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- Information Gathered
							["cr"] = 23861,	-- Restless Apparition
						}),
					},
				})),
			}),
			n(RARES, {
				n(4339, {	-- Brimgore
					["coords"] = {
						{ 41.2, 75.2, DUSTWALLOW_MARSH },
						{ 43.6, 77.4, DUSTWALLOW_MARSH },
						{ 45.2, 81.8, DUSTWALLOW_MARSH },
					},
				}),
				n(14230, {	-- Burgle Eye
					["coords"] = {
						{ 63.0, 7.2, DUSTWALLOW_MARSH },
						{ 59.6, 10.6, DUSTWALLOW_MARSH },
						{ 57.6, 17.6, DUSTWALLOW_MARSH },
						{ 62.8, 18.4, DUSTWALLOW_MARSH },
						{ 64.4, 28.6, DUSTWALLOW_MARSH },
					},
				}),
				n(4380, {	-- Darkmist Widow
					["coord"] = { 31.0, 20.6, DUSTWALLOW_MARSH },
				}),
				n(14232, {	-- Dart
					["coord"] = { 47.6, 18.6, DUSTWALLOW_MARSH },
				}),
				n(14231, {	-- Drogoth the Roamer
					["coords"] = {
						{ 36.2, 13.6, DUSTWALLOW_MARSH },
						{ 39.4, 14.4, DUSTWALLOW_MARSH },
						{ 39.6, 21.2, DUSTWALLOW_MARSH },
						{ 42.2, 18.8, DUSTWALLOW_MARSH },
						{ 42.8, 22.0, DUSTWALLOW_MARSH },
					},
				}),
				n(14234, {	-- Hayoc
					["coords"] = {
						{ 54.8, 60.0, DUSTWALLOW_MARSH },
						{ 52.0, 63.6, DUSTWALLOW_MARSH },
						{ 52.0, 65.4, DUSTWALLOW_MARSH },
						{ 53.6, 66.2, DUSTWALLOW_MARSH },
						{ 55.6, 67.8, DUSTWALLOW_MARSH },
					},
				}),
				n(14236, {	-- Lord Angler
					["coord"] = { 55.8, 64.6, DUSTWALLOW_MARSH },
				}),
				n(14237, {	-- Oozeworm
					["coords"] = {
						{ 39.8, 62.6, DUSTWALLOW_MARSH },
						{ 36.6, 62.6, DUSTWALLOW_MARSH },
						{ 36.0, 68.4, DUSTWALLOW_MARSH },
					},
				}),
				n(14233, {	-- Ripscale
					["coords"] = {
						{ 37.8, 50.4, DUSTWALLOW_MARSH },
						{ 43.8, 50.2, DUSTWALLOW_MARSH },
						{ 42.6, 55.4, DUSTWALLOW_MARSH },
						{ 47.6, 54.8, DUSTWALLOW_MARSH },
						{ 50.0, 57.6, DUSTWALLOW_MARSH },
					},
				}),
				n(14235, {	-- The Rot
					["coords"] = {
						{ 51.2, 50.8, DUSTWALLOW_MARSH },
						{ 52.6, 51.6, DUSTWALLOW_MARSH },
						{ 53.6, 54.2, DUSTWALLOW_MARSH },
						{ 52.2, 57.4, DUSTWALLOW_MARSH },
						{ 52.0, 60.4, DUSTWALLOW_MARSH },
					},
				}),
			}),
			n(VENDORS, {
				n(13476, {	-- Balai Lok'Wein <Potions, Scrolls and Reagents>
					["coord"] = { 36.4, 30.4, DUSTWALLOW_MARSH, },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(16084, { ["rank"] = 3 }),	-- Expert First Aid - Under Wraps
						i(16112),	-- Manual: Heavy Silk Bandage
						i(16113),	-- Manual: Mageweave Bandage
					},
				}),
				n(6567, {	-- Ghok'kah <Tailoring Supplies>
					["coord"] = { 35.2, 30.8, DUSTWALLOW_MARSH, },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4355),	-- Pattern: Icy Cloak
					},
				}),
				n(4885, {	-- Gregor MacVince <Horse Breeder>
					["coord"] = { 65.2, 51.4, DUSTWALLOW_MARSH, },
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
				n(4897, {	-- Helenia Olden <Trade Supplies>
					["coord"] = { 66.4, 51.4, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if AFTER TBC
						i(21941, {	-- Design: Black Pearl Panther
							["isLimited"] = true,
						}),
						i(21943, {	-- Design: Truesilver Crab
							["isLimited"] = true,
						}),
						-- #endif
						i(5789),	-- Pattern: Murloc Scale Bracers
						i(12233),	-- Recipe: Mystery Stew
						i(12228),	-- Recipe: Roast Raptor
						i(12239),	-- Recipe: Dragonbreath Chili
					},
				}),
				n(4892, {	-- Jensen Farran <Bowyer>
					["coord"] = { 67.9, 49.9, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11305),	-- Dense Shortbow
					},
				}),
				n(4888, {	-- Marie Holdston <Weaponsmith>
					["coord"] = { 64.6, 50.0, DUSTWALLOW_MARSH, },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12248),	-- Daring Dirk
						i(12250),	-- Midnight Axe
					},
				}),
				n(12919, {	-- Nat Pagle
					["sourceQuest"] = 8227,	-- Nat's Measuring Tape
					["coord"] = { 58.6, 60.1, DUSTWALLOW_MARSH },
					["description"] = "He will only sell you the Mudskunk Lures once you have turned in Nat's Measuring Tape.",
					["groups"] = {
						i(19974),	-- Mudskunk Lure
					},
				}),
				n(4879, {	-- Ogg'marr <Butcher>
					["coord"] = { 36.6, 31.0, DUSTWALLOW_MARSH, },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12228),	-- Recipe: Roast Raptor
						i(12232),	-- Recipe: Carrion Surprise
						i(12239),	-- Recipe: Dragonbreath Chili
						i(20075),	-- Recipe: Heavy Crocolisk Stew
					},
				}),
				n(4890, {	-- Piter Verance <Weaponsmith & Armorer>
					["coord"] = { 67.4, 47.8, DUSTWALLOW_MARSH, },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4817, {	-- Blessed Claymore
							["isLimited"] = true,
						}),
						i(4818, {	-- Executioner's Sword
							["isLimited"] = true,
						}),
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
				n(9552, {	-- Zanara <Bowyer>
					["coord"] = { 35.6, 30.2, DUSTWALLOW_MARSH, },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11305),	-- Dense Shortbow
					},
				}),
				n(4884, {	-- Zulrg <Weaponsmith>
					["coord"] = { 36.2, 31.6, DUSTWALLOW_MARSH, },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12250),	-- Midnight Axe
						i(12251),	-- Big Stick
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(5959, {	-- Acidic Venom Sac
					["races"] = HORDE_ONLY,
					["crs"] = {
						4412,	-- Darkfang Creeper
						4411,	-- Darkfang Lurker
						4413,	-- Darkfang Spider
						4414,	-- Darkfang Venomspitter
						4415,	-- Giant Darkfang Spider
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, i(33085, {	-- Bloodfen Feather
					["crs"] = {
						4356,	-- Bloodfen Razormaw
						4357,	-- Bloodfen Lashtail
						23873,	-- Goreclaw the Ravenous
					},
				})),
				applyclassicphase(PHASE_FIVE, i(22094, {	-- Bloodkelp
					["crs"] = {
						4368,	-- Strashaz Myrmidon
						4366,	-- Strashaz Serpent Guard
						4371,	-- Strashaz Siren
						4370,	-- Strashaz Sorceress
						4364,	-- Strashaz Warrior
						16072,	-- Tidelord Rrurgaz
					},
				})),
				i(10822, {	-- Dark Whelpling
					["cr"] = 4324,	-- Searing Whelp
				}),
				i(4639, {	-- Enchanted Sea Kelp
					["cr"] = 4363,	-- Mirefin Oracle
				}),
				i(5883, {	-- Forked Mudrock Tongue
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4399,	-- Mudrock Borer
						4398,	-- Mudrock Burrower
						4400,	-- Mudrock Snapjaw
						4397,	-- Mudrock Spikeshell
						4396,	-- Mudrock Tortoise
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, i(33051, {	-- Grimtotem Battle Plan
					["cost"] = {{ "i", 33050, 4 }},	-- Grimtotem Note
				})),
				applyclassicphase(TBC_PHASE_ONE, i(33061, {	-- Grimtotem Key
					["crs"] = {
						23592,	-- Grimtotem Breaker
						23714,	-- Grimtotem Elder
						23593,	-- Grimtotem Spirit-Shifter
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, i(33050, {	-- Grimtotem Note
					["cr"] = 23714,	-- Grimtotem Elder
				})),
				i(5942, {	-- Jeweled Pendant
					["races"] = HORDE_ONLY,
					["crs"] = {
						14236,	-- Lord Angler
						4401,	-- Muckshell Clacker
						4403,	-- Muckshell Pincer
						4405,	-- Muckshell Razorclaw
						4404,	-- Muckshell Scrabbler
						4402,	-- Muckshell Snapclaw
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, i(33202, {	-- Marsh Frog Leg
					["cr"] = 23979,	-- Giant Marsh Frog
				})),
				applyclassicphase(TBC_PHASE_ONE, i(33103, {	-- Marsh Venom
					["crs"] = {
						4412,	-- Darkfang Creeper
						4348,	-- Noxious Shredder
					},
				})),
				i(5847, {	-- Mirefin Head
					["crs"] = {
						14230,	-- Burgle Eye
						4362,	-- Mirefin Coastrunner
						4361,	-- Mirefin Muckdweller
						4359,	-- Mirefin Murloc
						4363,	-- Mirefin Oracle
						4358,	-- Mirefin Puddlejumper
						4360,	-- Mirefin Warrior
					},
				}),
				i(5775, {	-- Pattern: Black Silk Pack
					["cr"] = 4834,	-- Theramore Infiltrator
				}),
				i(12718, {	-- Plans: Runic Breastplate
					["crs"] = {
						4368,	-- Strashaz Myrmidon
						16072,	-- Tidelord Rrurgaz
					},
				}),
				i(12714, {	-- Plans: Runic Plate Helm
					["cr"] = 4364,	-- Strashaz Warrior
				}),
				i(12706, {	-- Plans: Runic Plate Shoulders
					["cr"] = 4366,	-- Strashaz Serpent Guard
				}),
				i(20766, {	-- Slimy Bag
					["crs"] = {
						4393,	-- Acidic Swamp Ooze
						4392,	-- Corrosive Swamp Ooze
						4391,	-- Swamp Ooze
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, i(33114, {	-- Sealed Letter
					["cr"] = 23881,	-- Apothecary Cylla
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(TBC_PHASE_ONE, i(33115, {	-- Sealed Letter
					["cr"] = 23881,	-- Apothecary Cylla
					["races"] = HORDE_ONLY,
				})),
				i(5841, {	-- Searing Heart
					["races"] = HORDE_ONLY,
					["crs"] = {
						4323,	-- Searing Hatchling
						4324,	-- Searing Whelp
					},
				}),
				i(5840, {	-- Searing Tongue
					["races"] = HORDE_ONLY,
					["crs"] = {
						4323,	-- Searing Hatchling
						4324,	-- Searing Whelp
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, i(33126, {	-- Thresher Oil
					["cr"] = 4388,	-- Young Murk Thresher
					["races"] = ALLIANCE_ONLY,
				})),
				i(5884, {	-- Unpopped Darkmist Eye
					["crs"] = {
						4377,	-- Darkmist Lurker
						4378,	-- Darkmist Recluse
						4379,	-- Darkmist Silkspinner
						4376,	-- Darkmist Spider
						4380,	-- Darkmist Widow
					},
				}),
			}),
		},
	}),
}));