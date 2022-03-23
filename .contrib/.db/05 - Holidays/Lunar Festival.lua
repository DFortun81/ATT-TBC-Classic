--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
root("Holidays", applyholiday(LOVE_IS_IN_THE_AIR, {
	-- #if ANYCLASSIC
	["npcID"] = -47,
	-- #else
	["holidayID"] = 235468,
	-- #endif
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(913, {	-- To Honor One's Elders
				-- Meta Achievement should symlink the contained Achievements from Source
				["sym"] = {
					{"select","achievementID",
						-- #if AFTER CATA
						6006,				-- Elders of Cataclysm
						-- #endif
						912,				-- Elders of Eastern Kingdoms
						911,				-- Elders of Kalimdor
						910,				-- Elders of the Dungeons
						914,				-- Elders of the Horde
						915,				-- Elders of the Alliance
						1396,				-- Elders of Northrend
						609,				-- 50 Coins of Ancestry
						626,				-- Lunar Festival Finery
						1281,				-- The Rocket's Red Glare
						1552,				-- Frenzied Firecracker
						937,				-- Elune's Blessing
					},
				},
				["groups"] = {
					title(43),				-- Elder
				},
			}),
			ach(6006, {	-- Elders of Cataclysm
				crit(1),	-- Elder Stonebrand in the Temple of the Earth
				crit(2),	-- Elder Menkhaf in Uldum
				crit(3),	-- Elder Sekhemi in Uldum
				crit(4),	-- Elder Firebeard in Twilight Highlands
				crit(5),	-- Elder Darkfeather in Twilight Highlands
				crit(6),	-- Elder Windsong in Hyjal
				crit(7),	-- Elder Evershade in Nordrassil
				crit(8),	-- Elder Moonlance in Vashj'ir
				crit(9),	-- Elder Deepforge in Deepholm
			}),
			ach(912, {	-- Elders of Eastern Kingdoms
				crit(1),	-- Elder Goldwell in Kharanos
				crit(2),	-- Elder Bellowrage in Blasted Lands
				crit(3),	-- Elder Stormbrow in Goldshire
				crit(4),	-- Elder Meadowrun in Western Plaguelands
				crit(5),	-- Elder Starglade in Zul'Gurub
				crit(6),	-- Elder Winterhoof in Booty Bay
				crit(7),	-- Elder Silvervein in Thelsamar
				crit(8),	-- Elder Skychaser in Sentinel Hill
				crit(9),	-- Elder Rumblerock in Burning Steppes
				crit(10),	-- Elder Dawnstrider in Flame Crest
				crit(11),	-- Elder Highpeak in The Hinterlands
				crit(12),	-- Elder Ironband in Searing Gorge
				crit(13),	-- Elder Graveborn in Brill
				crit(14),	-- Elder Obsidian in The Sepulcher
				crit(15),	-- Elder Windrun in Eastern Plaguelands
				crit(16),	-- Elder Snowcrown in Light's Hope Chapel
				crit(17),	-- Elder Moonstrike in Scholomance
			}),
			ach(911, {	-- Elders of Kalimdor
				crit(1),	-- Elder Runetotem in Razor Hill
				crit(2),	-- Elder Skygleam in Azshara
				crit(3),	-- Elder Moonwarden in The Crossroads
				crit(4),	-- Elder High Mountain in Vendetta Point
				crit(5),	-- Elder Windtotem in Ratchet
				crit(6),	-- Elder Bladeleaf in Dolanaar
				crit(7),	-- Elder Starweave in Lor'danel
				crit(8),	-- Elder Bloodhoof in Bloodhoof Village
				crit(9),	-- Elder Riversong in Astranaar
				crit(10),	-- Elder Grimtotem in Feralas
				crit(11),	-- Elder Mistwalker in Dire Maul
				crit(12),	-- Elder Nightwind in Felwood
				crit(13),	-- Elder Skyseer in Freewind Post
				crit(14),	-- Elder Morningdew in Fizzle and Pozzik's Speedbarge
				crit(15),	-- Elder Ragetotem in Tanaris
				crit(16),	-- Elder Dreamseer in Gadgetzan
				crit(17),	-- Elder Thunderhorn in Un'Goro
				crit(18),	-- Elder Brightspear in Winterspring
				crit(19),	-- Elder Stonespire in Everlook
				crit(20),	-- Elder Primestone in Silithus
				crit(21),	-- Elder Bladesing in Cenarion Hold
			}),
			ach(910, {	-- Elders of the Dungeons
				crit(1),	-- Elder Wildmane in Zul'Farrak
				crit(2),	-- Elder Starsong in the Sunken Temple
				crit(3),	-- Elder Splitrock in Maraudon
				crit(4),	-- Elder Stonefort in Blackrock Spire
				crit(5),	-- Elder Morndeep in Blackrock Depths
				crit(6),	-- Elder Farwhisper in Stratholme
				crit(7),	-- Elder Jarten in Utgarde Keep
				crit(8),	-- Elder Igasho in The Nexus
				crit(9),	-- Elder Nurgen in Azjol-Nerub
				crit(10),	-- Elder Kilias in Drak'Tharon Keep
				crit(11),	-- Elder Ohanzee in Gundrak
				crit(12),	-- Elder Yurauk in the Halls of Stone
				crit(13),	-- Elder Chogan'gada in Utgarde Pinnacle
			}),
			ach(914, {	-- Elders of the Horde
				crit(1),	-- Elder Darkhorn in Orgrimmar
				crit(2),	-- Elder Wheathoof in Thunder Bluff
				crit(3),	-- Elder Darkcore in Undercity
			}),
			ach(915, {	-- Elders of the Alliance
				crit(1),	-- Elder Bladeswift in Darnassus
				crit(2),	-- Elder Bronzebeard in Ironforge
				crit(3),	-- Elder Hammershout in Stormwind
			}),
			ach(1396, {	-- Elders of Northrend
				crit(1),	-- Elder Sardis in Valiance Keep
				crit(2),	-- Elder Beldak in Westfall Brigade
				crit(3),	-- Elder Morthie in Star's Rest
				crit(4),	-- Elder Fargal in Frosthold
				crit(5),	-- Elder Arp in D.E.H.T.A
				crit(6),	-- Elder Northal in Transitus Shield
				crit(7),	-- Elder Sandrene in Lakeside Landing
				crit(8),	-- Elder Wanikaya in Rainspeaker Rapids
				crit(9),	-- Elder Lunaro in Ruins of Tethys
				crit(10),	-- Elder Bluewolf in Wintergrasp
				crit(11),	-- Elder Tauros in Zim'Torga
				crit(12),	-- Elder Thoim in Moa'ki Harbor
				crit(13),	-- Elder Graymane in K3
				crit(14),	-- Elder Stonebeard in Bouldercrag's Refuge
				crit(15),	-- Elder Pamuya in Warsong Hold
				crit(16),	-- Elder Whurain in Camp Oneqwah
				crit(17),	-- Elder Skywarden in Agmar's Hammer
				crit(18),	-- Elder Muraco in Camp Tunka'lo
			}),
			ach(609, {	-- 50 Coins of Ancestry
				ach(608, {	-- 25 Coins of Ancestry
					ach(607, {	-- 10 Coins of Ancestry
						ach(606, {	-- 5 Coins of Ancestry
							ach(605),	-- A Coin of Ancestry
						}),
					}),
				}),
			}),
			ach(626),	-- Lunar Festival Finery
			ach(1281),	-- The Rocket's Red Glare
			ach(1552),	-- Frenzied Firecracker
			ach(937),	-- Elune's Blessing
		}),
		n(MAILBOX, {
			i(21746, {	-- Lucky Red Envelope
				i(21744),	-- Lucky Rocket Cluster
				i(21745), 	-- Elder's Moonstone
			}),
		}),
		n(QUESTS, {
			q(8647, {	-- Bellowrage the Elder
				["qg"] = 15563,	-- Elder Bellowrage
				["coord"] = { 58.8, 51.7, BLASTED_LANDS },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8715, {	-- Bladeleaf the Elder
				["qg"] = 15595,  -- Elder Bladeleaf
				["coord"] = { 56.9, 60.5, TELDRASSIL },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8719, {	-- Bladesing the Elder
				["qg"] = 15599,	-- Elder Bladesing
				["coord"] = { 49.0, 37.7, SILITHUS },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8718, {	-- Bladeswift the Elder
				["qg"] = 15598,  -- Elder Bladeswift
				["coord"] = { 33.5, 14.3, DARNASSUS },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8673, {	-- Bloodhoof the Elder
				["qg"] = 15575 ,	-- Elder Bloodhoof
				["coord"] = { 48.4, 53.2, MULGORE },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8726, {	-- Brightspear the Elder
				["qg"] = 15606,  -- Elder Brightspear
				["coord"] = { 55.6, 43.7, WINTERSPRING },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8866, {	-- Bronzebeard the Elder
				["qg"] = 15871,	-- Elder Bronzebeard
				["coord"] = { 29.1, 17.0, IRONFORGE },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8882, {	-- Cluster Launcher
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["cost"] = { { "i", 21100, 5 } },	-- Coin of Ancestry
				["repeatable"] = true,
				["lvl"] = 55,
				["groups"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21737),	-- Schematic: Cluster Launcher
				},
			}),
			q(8880, {	-- Cluster Rockets
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["cost"] = { { "i", 21100, 5 } },	-- Coin of Ancestry
				["repeatable"] = true,
				["lvl"] = 45,
				["groups"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21741, {	-- Cluster Rocket Recipes
						i(21730),	-- Schematic: Blue Rocket Cluster
						i(21731),	-- Schematic: Green Rocket Cluster
						i(21732),	-- Schematic: Red Rocket Cluster
					}),
				},
			}),
			q(8648, {	-- Darkcore the Elder
				["qg"] = 15564,	-- Elder Darkcore
				["coord"] = { 66.6, 38.2, UNDERCITY },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8677, {	-- Darkhorn the Elder
				["qg"] = 15579,  -- Elder Darkhorn
				["coord"] = { 40.9, 33.9, ORGRIMMAR },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8683, {	-- Dawnstrider the Elder
				["qg"] = 15585,	-- Elder Dawnstrider
				["coord"] = { 64.5, 24.1, BURNING_STEPPES },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8684, {	-- Dreamseer the Elder
				["qg"] = 15586,	-- Elder Dreamseer
				["coord"] = { 51.5, 27.8, TANARIS },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8868, {	-- Elune's Blessing
				["qg"] = 15864,  -- Valadar Starsong
				["coord"] = { 53.7, 35.2, MOONGLADE },
				["isYearly"] = true,
				["lvl"] = 40,
				["groups"] = {
					i(21540),	-- Elune's Lantern
					i(21640),	-- Lunar Festival Fireworks Pack
				},
			}),
			q(8862, {	-- Elune's Candle
				["qg"] = 15864,  -- Valadar Starsong
				["coord"] = { 53.7, 35.2, MOONGLADE },
				["cost"] = { { "i", 21100, 5 } },	-- Coin of Ancestry
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21713),	-- Elune's Candle
				},
			}),
			q(8727, {	-- Farwhisper the Elder
				["qg"] = 15607,	-- Elder Farwhisper
				["description"] = "Located inside of Stratholme in Festival Lane. Fastest route to him is from the Service Entrance and then head towards The Unforgiven on Live side.",
				["maps"] = { STRATHOLME },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8863, {	-- Festival Dumplings
				["qg"] = 15864,  -- Valadar Starsong
				["coord"] = { 53.7, 35.2, MOONGLADE },
				["cost"] = { { "i", 21100, 1 } },	-- Coin of Ancestry
				["isYearly"] = true,
				["groups"] = {
					i(21537),	-- Festival Dumplings
				},
			}),
			q(8864, {	-- Festive Lunar Dresses
				["qg"] = 15864,  -- Valadar Starsong
				["coord"] = { 53.7, 35.2, MOONGLADE },
				["cost"] = { { "i", 21100, 5 } },	-- Coin of Ancestry
				["repeatable"] = true,
				["groups"] = {
					i(21157),	-- Festive Green Dress
					i(21538),	-- Festive Pink Dress
					i(21539),	-- Festive Purple Dress
					i(21640),	-- Lunar Festival Fireworks Pack
				},
			}),
			q(8865, {	-- Festive Lunar Pant Suits
				["qg"] = 15864,  -- Valadar Starsong
				["coord"] = { 53.7, 35.2, MOONGLADE },
				["cost"] = { { "i", 21100, 5 } },	-- Coin of Ancestry
				["isYearly"] = true,
				["groups"] = {
					i(21541),	-- Festive Black Pant Suit
					i(21544),	-- Festive Blue Pant Suit
					i(21543),	-- Festive Teal Pant Suit
					i(21640),	-- Lunar Festival Fireworks Pack
				},
			}),
			q(8878, {	-- Festive Recipes
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["cost"] = { { "i", 21100, 5 } },	-- Coin of Ancestry
				["repeatable"] = true,
				["lvl"] = 50,
				["groups"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21722),	-- Pattern: Festival Dress
					i(21723),	-- Pattern: Festival Suit
				},
			}),
			q(8877, {	-- Firework Launcher
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["cost"] = { { "i", 21100, 5 } },	-- Coin of Ancestry
				["repeatable"] = true,
				["lvl"] = 45,
				["groups"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21738),	-- Schematic: Firework Launcher
				},
			}),
			q(8652, {	-- Graveborn the Elder
				["qg"] = 15568,	-- Elder Graveborn
				["coord"] = { 61.9, 53.8, TIRISFAL_GLADES },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8679, {	-- Grimtotem the Elder
				["qg"] = 15581,	-- Elder Grimtotem
				["coord"] = { 76.7, 37.9, FERALAS },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8653, {	-- Goldwell the Elder
				["qg"] = 15569,	-- Elder Goldwell
				["coord"] = { 46.8, 51.6, DUN_MOROGH },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8646, {	-- Hammershout the Elder
				["qg"] = 15562,  -- Elder Hammershout
				["coord"] = { 21.40, 53.87, STORMWIND_CITY },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8686, {	-- High Mountain the Elder
				["qg"] = 15588,  -- Elder High Mountain
				["coord"] = { 45.0, 58.0, THE_BARRENS },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8643, {	-- Highpeak the Elder
				["qg"] = 15559,	-- Elder Highpeak
				["coord"] = { 50.0, 48.0, THE_HINTERLANDS },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8651, {	-- Ironband the Elder
				["qg"] = 15567,	-- Elder Ironband
				["coord"] = { 21.3, 79.0, SEARING_GORGE },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8881, {	-- Large Cluster Rockets
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["cost"] = { { "i", 21100, 5 } },	-- Coin of Ancestry
				["repeatable"] = true,
				["lvl"] = 55,
				["groups"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21743, {	-- Large Cluster Rocket Recipes
						i(21733),	-- Schematic: Large Blue Rocket Cluster
						i(21734),	-- Schematic: Large Green Rocket Cluster
						i(21735),	-- Schematic: Large Red Rocket Cluster
					}),
				},
			}),
			q(8879, {	-- Large Rockets
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["cost"] = { { "i", 21100, 5 } },	-- Coin of Ancestry
				["repeatable"] = true,
				["lvl"] = 35,
				["groups"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21742, {	-- Large Rocket Recipes
						i(21727),	-- Schematic: Large Blue Rocket
						i(21728),	-- Schematic: Large Green Rocket
						i(21729),	-- Schematic: Large Red Rocket
					}),
				},
			}),
			q(8867, {	-- Lunar Fireworks
				["qg"] = 15895,  -- Lunar Festival Harbinger
				["isYearly"] = true,
			}),
			q(8722, {	-- Meadowrun the Elder
				["qg"] = 15602,	-- Elder Meadowrun
				["coord"] = { 66.0, 47.8, WESTERN_PLAGUELANDS },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8685, {	-- Mistwalker the Elder
				["qg"] = 15587,	-- Elder Mistwalker
				["coord"] = { 62.5, 31.0, FERALAS },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8714, {	-- Moonstrike the Elder
				["qg"] = 15594,	-- Elder Moonstrike
				["coord"] = { 69, 73, WESTERN_PLAGUELANDS },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8717, {	-- Moonwarden the Elder
				["qg"] = 15597,  -- Elder Moonwarden
				["coord"] = { 51.2, 31.2, THE_BARRENS },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8619, {	-- Morndeep the Elder
				["qg"] = 15549,	-- Elder Morndeep
				["description"] = "Located inside Blackrock Depths at the Ring of Law.",
				["maps"] = { BLACKROCK_DEPTHS },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8724,	{	-- Morningdew the Elder
				["qg"] = 15604 ,	-- Elder Morningdew
				["coord"] = { 79.2, 77.1, THOUSAND_NEEDLES },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8723, {	-- Nightwind the Elder
				["qg"] = 15603,	-- Elder Nightwind
				["coord"] = { 37.7, 53.0, FELWOOD },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8645, {	-- Obsidian the Elder
				["qg"] = 15561,	-- Elder Obsidian
				["coord"] = { 44.9, 41.1, SILVERPINE_FOREST },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8654, {	-- Primestone the Elder
				["qg"] = 15570,	-- Elder Primestone
				["coord"] = { 23.1, 11.8, SILITHUS },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8678,	{	-- Proudhorn the Elder
				["qg"] = 15580,	-- Elder Proudhorn
				["coord"] = { 73.0, 23.4, THUNDER_BLUFF },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8671, {	-- Ragetotem the Elder
				["qg"] = 15573,	-- Elder Ragetotem
				["coord"] = { 36.3, 80.5, TANARIS },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8725, {	-- Riversong the Elder
				["qg"] = 15605,	-- Elder Riversong
				["coord"] = { 35.53, 48.91, ASHENVALE },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8636, {	-- Rumblerock the Elder
				["qg"] = 15557,	-- Elder Rumblerock
				["coord"] = { 82.2, 46.5, BURNING_STEPPES },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8670, {	-- Runetotem the Elder
				["qg"] = 15572,  -- Elder Runetotem
				["coord"] = { 53.1, 44.2, DUROTAR },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8642, {	-- Silvervein the Elder
				["qg"] = 15558,	-- Elder Silvervein
				["coord"] = { 33.3, 46.5, LOCH_MODAN },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8675, {	-- Skychaser the Elder
				["qg"] = 15577,	-- Elder Skychaser
				["coord"] = { 56.7, 47.1, WESTFALL },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8720, {	-- Skygleam the Elder
				["qg"] = 15600,  -- Elder Skygleam
				["coord"] = { 72.4, 85.4, AZSHARA },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8682,	{	-- Skyseer the Elder
				["qg"] = 15584,	-- Elder Skyseer
				["coord"] = { 45.4, 50.1, THOUSAND_NEEDLES },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8876, {	-- Small Rockets
				["qg"] = 15909,  -- Fariel Starsong <Coin of Ancestry Collector>
				["coord"] = { 53.8, 35.3, MOONGLADE },
				["cost"] = { { "i", 21100, 5 } },	-- Coin of Ancestry
				["repeatable"] = true,
				["lvl"] = 25,
				["groups"] = {
					i(21640),	-- Lunar Festival Fireworks Pack
					i(21740, {	-- Small Rocket Recipes
						i(21724),	-- Schematic: Small Blue Rocket
						i(21725),	-- Schematic: Small Green Rocket
						i(21726),	-- Schematic: Small Red Rocket
					}),
				},
			}),
			q(8650, {	-- Snowcrown the Elder
				["qg"] = 15566,	-- Elder Snowcrown
				["coord"] = { 81.5, 60.5, EASTERN_PLAGUELANDS },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8635, {	-- Splitrock the Elder
				["qg"] = 15556,	-- Elder Splitrock
				["description"] = "Inside of Maraudon. Located in the passage way across the water where Rotgrip can be found as if you were headed to Tinkerer from the water near Princess.",
				["maps"] = { MARAUDON },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8716, {	-- Starglade the Elder
				["qg"] = 15596,	-- Elder Starglade
				["coord"] = { 53.11, 18.46, STRANGLETHORN_VALE },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8713, {	-- Starsong the Elder
				["qg"] = 15593,	-- Elder Starsong
				["description"] = "Inside of Sunken Temple. From the entrance, take a left up the spiral staircase. You will need to fight and kill the first dragon pack. Continue down the hallway and hang left into the room with all the dragonkin and then again into the alcove.",
				["maps"] = { SUNKEN_TEMPLE },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8721, {	-- Starweave the Elder
				["qg"] = 15601,	-- Elder Starweave
				["coord"] = { 36.8, 46.7, DARKSHORE },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8644, {	-- Stonefort the Elder
				["qg"] = 15560,	-- Elder Stonefort
				["description"] = "Located in Lower Blackrock Spire in Hordemar City. He can be found on the left as you cross the first wooden bridge.",
				["maps"] = { BLACKROCK_SPIRE },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8672, {	-- Stonespire the Elder
				["qg"] = 15574,  -- Elder Stonespire
				["coord"] = { 61.4, 37.8, WINTERSPRING },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8649, {	-- Stormbrow the Elder
				["qg"] = 15565,	-- Elder Stormbrow
				["coord"] = { 39.8, 63.8, ELWYNN_FOREST },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8870, {	-- The Lunar Festival
				["qg"] = 15892,  -- Lunar Festival Emissary
				["coord"] = { 30.9, 61.6, IRONFORGE },
				["altQuests"] = {
					8871,  -- The Lunar Festival
					8872,  -- The Lunar Festival
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(8871, {	-- The Lunar Festival
				["qg"] = 15892,  -- Lunar Festival Emissary
				["coord"] = { 54.3, 66.3, STORMWIND_CITY },
				["altQuests"] = {
					8870,  -- The Lunar Festival
					8872,  -- The Lunar Festival
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(8872, {	-- The Lunar Festival
				["qg"] = 15892,  -- Lunar Festival Emissary
				["coord"] = { 42.2, 44.0, DARNASSUS },
				["altQuests"] = {
					8870,  -- The Lunar Festival
					8871,  -- The Lunar Festival
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(8873, {	-- The Lunar Festival
				["qg"] = 15892,  -- Lunar Festival Emissary
				["altQuests"] = {
					8874,  -- The Lunar Festival
					8875,  -- The Lunar Festival
				},
				["maps"] = { ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(8874, {	-- The Lunar Festival
				["qg"] = 15892,  -- Lunar Festival Emissary
				["altQuests"] = {
					8873,  -- The Lunar Festival
					8875,  -- The Lunar Festival
				},
				["maps"] = { UNDERCITY },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(8875, {	-- The Lunar Festival
				["qg"] = 15892,  -- Lunar Festival Emissary
				["altQuests"] = {
					8873,  -- The Lunar Festival
					8874,  -- The Lunar Festival
				},
				["maps"] = { THUNDER_BLUFF },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(8681, {	-- Thunderhorn the Elder
				["qg"] = 15583,	-- Elder Thunderhorn
				["coord"] = { 50.4, 76.2, UNGORO_CRATER },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8883, {	-- Valadar Starsong
				["qg"] = 15895,  -- Lunar Festival Harbinger
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(8676, {	-- Wildmane the Elder
				["qg"] = 15578,	-- Elder Wildmane
				["description"] = "Inside of Zul'Farrak. Located by the pool where Gahz'rilla is summoned.",
				["maps"] = { ZULFARRAK },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8688, {	-- Windrun the Elder
				["qg"] = 15592,	-- Elder Windrun
				["coord"] = { 39.7, 75.4, EASTERN_PLAGUELANDS },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8680, {	-- Windtotem the Elder
				["qg"] = 15582,  -- Elder Windtotem
				["coord"] = { 62.5, 37.2, THE_BARRENS },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
			q(8674, {	-- Winterhoof the Elder
				["qg"] = 15576,	-- Elder Winterhoof
				["coord"] = { 27.6, 74.2, STRANGLETHORN_VALE },
				["isYearly"] = true,
				["groups"] = {
					i(21100),	-- Coin of Ancestry
				},
			}),
		}),
	},
}));