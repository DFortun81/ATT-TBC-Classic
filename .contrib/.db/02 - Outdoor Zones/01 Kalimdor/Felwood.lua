---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(KALIMDOR, {
	m(FELWOOD, {
		["lore"] = "Once a wooded paradise, Felwood bears a ten-thousand-year-old curse. The trees, land and creatures are twisted and evil, violent and wild. Cursed ancients and furbolg maul any who come close, and satyrs hold depraved court near tainted moonwells. The animals within are mad and brutal and have no fear of humanoids. The undead and demons that survived the Third War fl ed here as well, and hide in the deep tangles. Felwood is a chaos of battling creatures, and blood soaks the ground. The infamous Shadow Council, a group of orc warlocks loyal to the Burning Legion, hides somewhere within.\n\nAlliance heroes, particularly druids, make forays into the cursed wood in attempts to destroy some of the larger menaces, root out the Shadow Council, and perhaps, some day, restore the land to its former legacy.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(853, {	-- Explore Felwood
					-- #if BEFORE WRATH
					["description"] = "Explore Felwood, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["145:159:496:509"] = 2478,	-- Morlos'Aran
				["160:145:548:90"] = 1998,	-- Talonbranch Glade
				["165:155:332:465"] = 2480,	-- Jadefire Glen
				["175:135:408:533"] = 1761,	-- Deadwood Village
				["185:160:405:429"] = 2479,	-- Emerald Sanctuary
				["195:170:330:29"] = 2618,	-- Jadefire Run
				["215:215:420:54"] = 1767,	-- Irontree Woods
				["235:145:292:263"] = 1765,	-- Bloodvenom Falls
				["235:155:297:381"] = 2481,	-- Ruins of Constellas
				["235:200:307:123"] = 1766,	-- Shatter Scar Vale
				["240:145:483:0"] = 1762,	-- Felpaw Village
				["245:128:271:331"] = 1763,	-- Jaedenar
				--[[
				[1764] = 4,                              -- Bloodvenom River
				[1768] = 8,                              -- Irontree Cavern
				[1769] = 9,                              -- Timbermaw Hold
				[1770] = 10,                             -- Shadow Hold
				[1771] = 11,                             -- Shrine of the Deceiver
				[1997] = 12,                             -- Bloodvenom Post
				]]--
			})),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(48, {	-- Bloodvenom Post, Felwood
					["cr"] = 11900,	-- Brakkar <Wind Rider Master>
					["coord"] = { 34.4, 53.8, FELWOOD },
					["races"] = HORDE_ONLY,
				}),
				applyclassicphase(TBC_PHASE_ONE, fp(166, {	-- Emerald Sanctuary, Felwood
					["cr"] = 22931,	-- Gorrim <Emerald Circle Flight Master>
					["coord"] = { 51.5, 82.2, FELWOOD },
				})),
				fp(65, {	-- Talonbranch Glade, Felwood
					["cr"] = 12578,	-- Mishellena <Hippogryph Master>
					["coord"] = { 62.6, 24.2, FELWOOD },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(5242, {	-- A Final Blow
					["qg"] = 10922,	-- Greta Mosshoof
					["sourceQuest"] = 5165,	-- Dousing the Flames of Protection
					["coord"] = { 51.2, 82.2, FELWOOD },
					["cost"] = {
						{ "i", 13207, 1 },	-- Shadow Lord Fel'dan's Head
					},
					["lvl"] = 48,
					["groups"] = {
						{
							["itemID"] = 13207,	-- Shadow Lord Fel'dan's Head
							["questID"] = 5242,	-- A Final Blow
							["cr"] = 9517,	-- Shadow Lord Fel'dan
							["coord"] = { 38.8, 46.8, FELWOOD },
						},
						i(15707),	-- Brantwood Sash
						i(15708),	-- Blight Leather Gloves
						i(15709),	-- Gearforge Girdle
					},
				}),
				q(6162, {	-- A Husband's Last Battle
					["qg"] = 9620,	-- Dreka'Sur
					["coord"] = { 34.8, 52.6, FELWOOD },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15879, 1 },	-- Overlord Ror's Claw
					},
					["lvl"] = 46,
					["groups"] = {
						{
							["itemID"] = 15879,	-- Overlord Ror's Claw
							["questID"] = 6162,	-- A Husband's Last Battle
							["cr"] = 9464,	-- Overlord Ror
							["coord"] = { 48.6, 93.6, FELWOOD },
						},
					},
				}),
				q(5202, {	-- A Strange Red Key
					["provider"] = { "i", 13140 },	-- Blood Red Key
					["crs"] = {
						7118,	-- Jaedenar Darkweaver
						7114,	-- Jaedenar Enforcer
						9862,	-- Jaedenar Legionnaire
						7120,	-- Jaedenar Warlock
						14523,	-- Ulathek
						14522,	-- Ur'dan
					},
					["lvl"] = 49,
				}),
				q(8419, {	-- An Imp's Request
					["qgs"] = {
						3326,	-- Zevrost <Warlock Trainer>
						5172,	-- Briarthorn <Warlock Trainer>
						461,	-- Demisette Cloyce <Warlock Trainer>
						4563,	-- Kaal Soulreaper <Warlock Trainer>
					},
					["coords"] = {
						{ 48.4, 45.6, ORGRIMMAR },
						{ 50.2, 6.0, IRONFORGE },
						{ 28.4, 78.2, STORMWIND_CITY },
						{ 86.0, 15.6, UNDERCITY },
					},
					["altQuests"] = { 8420 },	-- Hot and Itchy
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 14256, 1 },	-- Felcloth
					},
					["lvl"] = 50,
				}),
				q(4261, {	-- Ancient Spirit
					["qg"] = 9598,	-- Arei
					["sourceQuest"] = 4442,	-- Purified!
					["coord"] = { 49.4, 14.4, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11445, 1 },	-- Flute of the Ancients
					},
					["lvl"] = 49,
					["groups"] = {
						i(11873),	-- Ethereal Mist Cape
						i(11874),	-- Clouddrift Mantle
					},
				}),
				q(4005, {	-- Aquementas
					["qg"] = 9116,	-- Eridan Bluewind <Emerald Circle>
					["sourceQuest"] = 4084,	-- Silver Heart
					["coord"] = { 51.2, 81.6, FELWOOD },
					["maps"] = { TANARIS, UNGORO_CRATER },
					["cost"] = {
						{ "i", 11522, 1 },	-- Silver Totem of Aquementas
					},
					["lvl"] = 47,
					["groups"] = {
						{
							["itemID"] = 11617,	-- Eridan's Supplies
							["description"] = "Once you take out all of the items, you can safely delete this item from your bags.",
							["groups"] = {
								{
									["itemID"] = 11169,	-- Book of Aquor
									["cr"] = 9453,	-- Aquementas
									["coord"] = { 70, 49, TANARIS },
									["groups"] = {
										{
											["itemID"] = 11522,	-- Silver Totem of Aquementas
											["questID"] = 4005,	-- Aquementas
										},
									},
								},
							},
						},
					},
				}),
				q(5159, {	-- Cleansed Water Returns to Felwood
					["qg"] = 5901,	-- Islen Waterseer
					["sourceQuest"] = 5158,	-- Seeking Spiritual Aid
					["coord"] = { 65.8, 43.8, THE_BARRENS },
					["cost"] = {
						{ "i", 12906, 1 },	-- Purified Moonwell Water
					},
					["lvl"] = 48,
				}),
				q(4101, {	-- Cleansing Felwood (A)
					["qg"] = 9528,	-- Arathandris Silversky
					["coord"] = { 54.2, 86.7, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11503, 15 },	-- Blood Amber
					},
					["lvl"] = 48,
				}),
				q(4102, {	-- Cleansing Felwood (H)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["coord"] = { 46.8, 83, FELWOOD },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11503, 15 },	-- Blood Amber
					},
					["lvl"] = 48,
				}),
				q(5157, {	-- Collection of the Corrupt Water
					["qg"] = 10922,	-- Greta Mosshoof
					["sourceQuest"] = 5155,	-- Forces of Jaedenar
					["coord"] = { 51.2, 82.2, FELWOOD },
					["cost"] = {
						{ "i", 12907, 1 },	-- Corrupt Moonwell Water
					},
					["lvl"] = 48,
					["groups"] = {
						{
							["itemID"] = 12922,	-- Empty Canteen
							["coord"] = { 35.2, 59.8, FELWOOD },
							["groups"] = {
								{
									["itemID"] = 12907,	-- Corrupt Moonwell Water
									["questID"] = 5157,	-- Collection of the Corrupt Water
								},
							},
						},
					},
				}),
				q(4119, {	-- Corrupted Night Dragon
					["provider"] = { "o", 164885 },	-- Corrupted Night Dragon
					["coord"] = { 40.7, 78.3, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 4 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11952),	-- Night Dragon's Breath
					},
				}),
				q(4447, {	-- Corrupted Night Dragon
					["provider"] = { "o", 173324 },	-- Corrupted Night Dragon
					["coord"] = { 50.6, 30.4, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 4 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11952),	-- Night Dragon's Breath
					},
				}),
				q(4448, {	-- Corrupted Night Dragon
					["provider"] = { "o", 174608 },	-- Corrupted Night Dragon
					["coord"] = { 42.5, 13.9, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 4 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11952),	-- Night Dragon's Breath
					},
				}),
				q(4462, {	-- Corrupted Night Dragon
					["provider"] = { "o", 174684 },	-- Corrupted Night Dragon
					["coord"] = { 35.1, 59, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 4 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11952),	-- Night Dragon's Breath
					},
				}),
				q(4506, {	-- Corrupted Sabers
					["qg"] = 9996,	-- Winna Hazzard
					["sourceQuest"] = 4504,	-- Well of Corruption
					["coord"] = { 34.2, 52.4, FELWOOD },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12565, 1 },	-- Winna's Kitten Carrier
					},
					["lvl"] = 49,
				}),
				q(2523, {	-- Corrupted Songflower
					["provider"] = { "o", 171942 },	-- Corrupted Songflower
					["coord"] = { 48.3, 75.6, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(2878, {	-- Corrupted Songflower
					["provider"] = { "o", 174594 },	-- Corrupted Songflower
					["coord"] = { 63.3, 22.6, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(3363, {	-- Corrupted Songflower
					["provider"] = { "o", 174595 },	-- Corrupted Songflower
					["coord"] = { 63.9, 6.1, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(4113, {	-- Corrupted Songflower
					["provider"] = { "o", 164886 },	-- Corrupted Songflower
					["coord"] = { 52.9, 87.8, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(4114, {	-- Corrupted Songflower
					["provider"] = { "o", 174596 },	-- Corrupted Songflower
					["coord"] = { 55.8, 10.5, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(4116, {	-- Corrupted Songflower
					["provider"] = { "o", 174597 },	-- Corrupted Songflower
					["coord"] = { 50.6, 13.9, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(4118, {	-- Corrupted Songflower
					["provider"] = { "o", 174598 },	-- Corrupted Songflower
					["coord"] = { 34.4, 52.2, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(4401, {	-- Corrupted Songflower
					["provider"] = { "o", 171939 },	-- Corrupted Songflower
					["coord"] = { 46, 85.2, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(4464, {	-- Corrupted Songflower
					["provider"] = { "o", 174712 },	-- Corrupted Songflower
					["coord"] = { 40.2, 56.6, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(4465, {	-- Corrupted Songflower
					["provider"] = { "o", 174713 },	-- Corrupted Songflower
					["coord"] = { 40.1, 44.4, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
				}),
				q(4117, {	-- Corrupted Whipper Root
					["provider"] = { "o", 164888 },	-- Corrupted Whipper Root
					["coord"] = { 40.2, 85.2, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 3 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11951),	-- Whipper Root Tuber
					},
				}),
				q(4443, {	-- Corrupted Whipper Root
					["provider"] = { "o", 173284 },	-- Corrupted Whipper Root
					["coord"] = { 50.6, 18.2, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 3 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11951),	-- Whipper Root Tuber
					},
				}),
				q(4444, {	-- Corrupted Whipper Root
					["provider"] = { "o", 174605 },	-- Corrupted Whipper Root
					["coord"] = { 49.4, 12.2, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 3 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11951),	-- Whipper Root Tuber
					},
				}),
				q(4445, {	-- Corrupted Whipper Root
					["provider"] = { "o", 174606 },	-- Corrupted Whipper Root
					["coord"] = { 40.7, 19.2, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 3 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11951),	-- Whipper Root Tuber
					},
				}),
				q(4446, {	-- Corrupted Whipper Root
					["provider"] = { "o", 174607 },	-- Corrupted Whipper Root
					["coord"] = { 43, 46.9, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 3 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11951),	-- Whipper Root Tuber
					},
				}),
				q(4461, {	-- Corrupted Whipper Root
					["provider"] = { "o", 174686 },	-- Corrupted Whipper Root
					["coord"] = { 34.1, 60.3, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 3 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11951),	-- Whipper Root Tuber
					},
				}),
				q(996, {	-- Corrupted Windblossom
					["provider"] = { "o", 174600 },	-- Corrupted Windblossom
					["coord"] = { 57.5, 20, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(998, {	-- Corrupted Windblossom
					["provider"] = { "o", 174599 },	-- Corrupted Windblossom
					["coord"] = { 55.8, 7, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(1514, {	-- Corrupted Windblossom
					["provider"] = { "o", 173327 },	-- Corrupted Windblossom
					["coord"] = { 55.2, 23.5, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4115, {	-- Corrupted Windblossom
					["provider"] = { "o", 164887 },	-- Corrupted Windblossom
					["coord"] = { 50, 80, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4221, {	-- Corrupted Windblossom
					["provider"] = { "o", 174604 },	-- Corrupted Windblossom
					["coord"] = { 39, 59.1, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4222, {	-- Corrupted Windblossom
					["provider"] = { "o", 174603 },	-- Corrupted Windblossom
					["coord"] = { 34.4, 48.8, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4343, {	-- Corrupted Windblossom
					["provider"] = { "o", 174602 },	-- Corrupted Windblossom
					["coord"] = { 38.8, 21.9, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4403, {	-- Corrupted Windblossom
					["provider"] = { "o", 174601 },	-- Corrupted Windblossom
					["coord"] = { 45.4, 18.3, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4466, {	-- Corrupted Windblossom
					["provider"] = { "o", 174708 },	-- Corrupted Windblossom
					["coord"] = { 36.5, 61.9, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4467, {	-- Corrupted Windblossom
					["provider"] = { "o", 174709 },	-- Corrupted Windblossom
					["coord"] = { 44.8, 41.7, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11516, 2 },	-- Cenarion Plant Salve
					},
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(8461, {	-- Deadwood of the North
					["qg"] = 15395,	-- Nafien
					["coord"] = { 64.8, 8.2, FELWOOD },
					["lvl"] = 45,
					["groups"] = {
						i(21317),	-- Helm of the Pathfinder
						i(21316),	-- Leggings of the Ursa
					},
				}),
				q(8470, {	-- Deadwood Ritual Totem
					["provider"] = { "i", 20741 },	-- Deadwood Ritual Totem
					["minReputation"] = { 576, NEUTRAL },	-- Timbermaw Hold
					["crs"] = {
						7157,	-- Deadwood Avenger
						7156,	-- Deadwood Den Watcher
						7158,	-- Deadwood Shaman
					},
					["lvl"] = 45,
				}),
				q(5165, {	-- Dousing the Flames of Protection
					["qg"] = 10922,	-- Greta Mosshoof
					["sourceQuest"] = 5159,	-- Cleansed Water Returns to Felwood
					["coord"] = { 51.2, 82.2, FELWOOD },
					["cost"] = {
						{ "i", 12906, 1 },	-- Purified Moonwell Water
					},
					["lvl"] = 48,
				}),
				q(8466, {	-- Feathers for Grazle
					["qg"] = 11554,	-- Grazle
					["sourceQuest"] = 8460,	-- Timbermaw Ally
					["coord"] = { 50.9, 85.0, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21377, 5 },	-- Deadwood Headdress Feather
					},
					["lvl"] = 45,
				}),
				q(8467, {	-- Feathers for Nafien
					["qg"] = 15395,	-- Nafien
					["sourceQuest"] = 8460,	-- Timbermaw Ally
					["coord"] = { 64.8, 8.2, FELWOOD },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21377, 5 },	-- Deadwood Headdress Feather
					},
					["lvl"] = 45,
				}),
				q(4441, {	-- Felbound Ancients
					["qg"] = 9116,	-- Eridan Bluewind
					["sourceQuest"] = 939,	-- Flute of Xavaric
					["coord"] = { 51.4, 81.5, FELWOOD },
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5646, 1 },	-- Vial of Blessed Water
					},
					["lvl"] = 49,
					["groups"] = {
						{
							["itemID"] = 11682,	-- Eridan's Vial
							["coord"] = { 39, 84, DARNASSUS },
							["groups"] = {
								{
									["itemID"] = 5646,	-- Vial of Blessed Water
									["questID"] = 4441,	-- Felbound Ancients
								},
							},
						},
					},
				}),
				q(7602, {	-- Flawless Fel Essence
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["sourceQuest"] = 7601,	-- What Niby Commands
					["coord"] = { 41.6, 44.8, FELWOOD },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { AZSHARA, BLASTED_LANDS },
					["classes"] = { WARLOCK },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Flawless Fel Essence (Azshara)
							["provider"] = { "i", 18624 },	-- Flawless Fel Essence (Azshara)
							["crs"] = {
								6202,	-- Legashi Hellcaller
								6201,	-- Legashi Rogue
								6200,	-- Legashi Satyr
							},
						}),
						objective(2, {	-- 0/1 Flawless Fel Essence (Jaedenar)
							["provider"] = { "i", 18622 },	-- Flawless Fel Essence (Jaedenar)
							["cr"] = 9862,	-- Jaedenar Legionnaire
						}),
						objective(3, {	-- 0/1 Flawless Fel Essence (Dark Portal)
							["provider"] = { "i", 18623 },	-- Flawless Fel Essence (Dark Portal)
							["cr"] = 6011,	-- Felguard Sentry
						}),
					},
				}),
				q(939, {	-- Flute of Xavaric
					["provider"] = { "i", 11668 },	-- Flute of Xavaric
					["sourceQuest"] = 4906,	-- Further Corruption
					["coord"] = { 39.6, 22.2, FELWOOD },
					["cr"] = 10648,	-- Xavaric
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11674, 5 },	-- Jadefire Felbind
					},
					["lvl"] = 49,
				}),
				q(5155, {	-- Forces of Jaedenar
					["qg"] = 10922,	-- Greta Mosshoof
					["coord"] = { 51.2, 82.2, FELWOOD },
					["lvl"] = 48,
				}),
				q(4906, {	-- Further Corruption
					["qg"] = 9116,	-- Eridan Bluewind
					["sourceQuest"] = 4421,	-- Corruption of the Jadefire
					["coord"] = { 51.4, 81.5, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						i(11875),	-- Breezecloud Bracers
					},
				}),
				q(4883, {	-- Guarding Secrets (2/2)
					["qg"] = 10306,	-- Trull Failbane
					["sourceQuest"] = 4882,	-- Guarding Secrets (1/2)
					["coord"] = { 34.6, 52.6, FELWOOD },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12558, 1 },	-- Blue-feathered Necklace
					},
					["lvl"] = 52,
					["groups"] = {
						i(15796),	-- Seaspray Bracers
						i(15797),	-- Shining Armplates
					},
				}),
				q(8420, {	-- Hot and Itchy
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["altQuests"] = { 8419 },	-- An Imp's Request
					["coord"] = { 41.6, 45.0, FELWOOD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 14256, 1 },	-- Felcloth
					},
					["lvl"] = 50,
				}),
				q(7603, {	-- Kroshius' Infernal Core
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["sourceQuest"] = 7602,	-- Flawless Fel Essence
					["coord"] = { 41.6, 45.0, FELWOOD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18625, 1 },	-- Kroshius' Infernal Core
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 18626,	-- Fel Fire
							["coord"] = { 45.4, 35.4, FELWOOD },
							["cr"] = 14467,	-- Kroshius
							["groups"] = {
								{
									["itemID"] = 18625,	-- Kroshius' Infernal Core
									["questID"] = 7603,	-- Kroshius' Infernal Core
								},
							},
						},
						recipe(1122),	-- Inferno
						i(18762),	-- Shard of the Green Flame
					},
				}),
				q(5085, {	-- Mystery Goo
					["provider"] = { "o", 176091 },	-- Deadwood Cauldron
					["sourceQuest"] = 5084,	-- Falling to Corruption
					["coord"] = { 60.2, 5.9, FELWOOD },
					["cost"] = {
						{ "i", 12813, 1 },	-- Flask of Mystery Goo
					},
					["lvl"] = 52,
				}),
				q(4442, {	-- Purified!
					["qg"] = 9116,	-- Eridan Bluewind <Emerald Circle>
					["sourceQuest"] = 4441,	-- Felbound Ancients
					["coord"] = { 51.2, 81.6, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						{
							["itemID"] = 11445,	-- Flute of the Ancients
							["description"] = "You need to save this flute for the 'Ancient Spirit' escort quest, then you can safely discard it.",
						},
					},
				}),
				q(5203, {	-- Rescue From Jaedenar
					["qg"] = 11016,	-- Captured Arko'narin
					["sourceQuest"] = 5202,	-- A Strange Red Key
					["coord"] = { 36.2, 55.4, FELWOOD },
					["lvl"] = 49,
				}),
				q(5204, {	-- Retribution of the Light
					["qg"] = 11019,	-- Jessir Moonbow
					["sourceQuest"] = 5203,	-- Rescue from Jaedenar
					["coord"] = { 51.3, 82.0, FELWOOD },
					["cr"] = 9518,	-- Rakaiah
					["lvl"] = 49,
				}),
				q(6031, {	-- Runecloth
					["qg"] = 11557,	-- Meilosh
					["coord"] = { 65.6, 2.8, FELWOOD },
					["minReputation"] = { 576, FRIENDLY },	-- Timbermaw Hold
					["cost"] = {
						{ "i", 14047, 30 },	-- Runecloth
					},
					["lvl"] = 40,
					["groups"] = {
						i(15822),	-- Shadowskin Spaulders
						i(15823),	-- Bricksteel Gauntlets
					},
				}),
				q(6032, {	-- Sacred Cloth
					["qg"] = 11557,	-- Meilosh
					["requireSkill"] = TAILORING,
					["minReputation"] = { 576, FRIENDLY },	-- Timbermaw Hold
					["coord"] = { 65.6, 2.8, FELWOOD },
					["cost"] = {
						{ "i", 14342, 2 },	-- Mooncloth
					},
					["lvl"] = 40,
					["groups"] = {
						recipe(19435),	-- Mooncloth Boots
					},
				}),
				q(5886, {	-- Salve via Disenchanting (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["requireSkill"] = ENCHANTING,
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11174, 1 },	-- Lesser Nether Essence
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4107, {	-- Salve via Disenchanting (2/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 5886,	-- Salve via Disenchanting (1/2)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["requireSkill"] = ENCHANTING,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11174, 1 },	-- Lesser Nether Essence
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5891, {	-- Salve via Disenchanting (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["coord"] = { 46.8, 83, FELWOOD },
					["requireSkill"] = ENCHANTING,
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11174, 1 },	-- Lesser Nether Essence
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4112, {	-- Salve via Disenchanting (2/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 4112,	-- Salve via Disenchanting (1/2)
					["coord"] = { 46.8, 83, FELWOOD },
					["requireSkill"] = ENCHANTING,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11174, 1 },	-- Lesser Nether Essence
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5884, {	-- Salve via Gathering (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["requireSkill"] = HERBALISM,
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11514, 4 },	-- Fel Creep
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4105, {	-- Salve via Gathering (2/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 5884,	-- Salve via Gathering (1/2)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["requireSkill"] = HERBALISM,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11514, 4 },	-- Fel Creep
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5889, {	-- Salve via Gathering (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["coord"] = { 46.8, 83, FELWOOD },
					["requireSkill"] = HERBALISM,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11514, 4 },	-- Fel Creep
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4110, {	-- Salve via Gathering (2/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 5889,	-- Salve via Gathering (1/2)
					["coord"] = { 46.8, 83, FELWOOD },
					["requireSkill"] = HERBALISM,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11514, 4 },	-- Fel Creep
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5882, {	-- Salve via Hunting (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11515, 6 },	-- Corrupted Soul Shard
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4103, {	-- Salve via Hunting (2/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 5882,	-- Salve via Hunting (1/2)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11515, 6 },	-- Corrupted Soul Shard
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5887, {	-- Salve via Hunting (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["coord"] = { 46.8, 83, FELWOOD },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11515, 6 },	-- Corrupted Soul Shard
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4108, {	-- Salve via Hunting (2/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 5887,	-- Salve via Hunting (1/2)
					["coord"] = { 46.8, 83, FELWOOD },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11515, 6 },	-- Corrupted Soul Shard
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5883, {	-- Salve via Mining (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["requireSkill"] = MINING,
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11513, 4 },	-- Tainted Vitriol
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4104, {	-- Salve via Mining (2/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 5883,	-- Salve via Mining (1/2)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["requireSkill"] = MINING,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11513, 4 },	-- Tainted Vitriol
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5888, {	-- Salve via Mining (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["coord"] = { 46.8, 83, FELWOOD },
					["requireSkill"] = MINING,
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11513, 4 },	-- Tainted Vitriol
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4109, {	-- Salve via Mining (2/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 5888,	-- Salve via Mining (1/2)
					["coord"] = { 46.8, 83, FELWOOD },
					["requireSkill"] = MINING,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11513, 4 },	-- Tainted Vitriol
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5885, {	-- Salve via Skinning (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["requireSkill"] = SKINNING,
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11512, 5 },	-- Patch of Tainted Skin
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4106, {	-- Salve via Skinning (2/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 5885,	-- Salve via Skinning (1/2)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["requireSkill"] = SKINNING,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11512, 5 },	-- Patch of Tainted Skin
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5890, {	-- Salve via Skinning (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["coord"] = { 46.8, 83, FELWOOD },
					["requireSkill"] = SKINNING,
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11512, 5 },	-- Patch of Tainted Skin
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4111, {	-- Salve via Skinning (2/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 5890,	-- Salve via Skinning (1/2)
					["coord"] = { 46.8, 83, FELWOOD },
					["requireSkill"] = SKINNING,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11512, 5 },	-- Patch of Tainted Skin
					},
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5158, {	-- Seeking Spiritual Aid
					["qg"] = 10922,	-- Greta Mosshoof
					["sourceQuest"] = 5157,	-- Collection of the Corrupt Water
					["coord"] = { 51.2, 82.2, FELWOOD },
					["cost"] = {
						{ "i", 12907, 1 },	-- Corrupt Moonwell Water
					},
					["lvl"] = 48,
				}),
				q(4084, {	-- Silver Heart
					["qg"] = 9116,	-- Eridan Bluewind <Emerald Circle>
					["sourceQuest"] = 3942,	-- Linken's Memory
					["coord"] = { 51.2, 81.6, FELWOOD },
					["cost"] = {
						{ "i", 11172, 10 },	-- Silvery Claws
						{ "i", 11173, 1 },	-- Irontree Heart
					},
					["lvl"] = 47,
				}),
				q(8462, {	-- Speak to Nafien
					["qg"] = 11554,	-- Grazle
					["sourceQuest"] = 8460,	-- Timbermaw Ally
					["coord"] = { 50.9, 85.0, FELWOOD },
					["lvl"] = 45,
				}),
				q(8465, {	-- Speak to Salfa
					["qg"] = 15395,	-- Nafien
					["sourceQuest"] = 8461,	-- Deadwood of the North
					["coord"] = { 64.8, 8.2, FELWOOD },
					["lvl"] = 45,
				}),
				q(8484, {	-- The Brokering of Peace (A)
					["qg"] = 11555,	-- Gorn One Eye
					["minReputation"] = { 576, EXALTED },	-- Timbermaw Hold
					["coord"] = { 65.2, 2.6, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 21155, 1 },	-- Timbermaw Offering of Peace
					},
					["lvl"] = 45,
				}),
				q(8485, {	-- The Brokering of Peace (H)
					["qg"] = 11555,	-- Gorn One Eye
					["minReputation"] = { 576, EXALTED },	-- Timbermaw Hold
					["coord"] = { 65.2, 2.6, FELWOOD },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 21155, 1 },	-- Timbermaw Offering of Peace
					},
					["lvl"] = 45,
				}),
				q(4421, {	-- The Corruption of the Jadefire
					["qg"] = 9116,	-- Eridan Bluewind
					["coord"] = { 51.4, 81.5, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
				}),
				q(5385, {	-- The Remains of Trey Lightforge
					["qg"] = 11020,	-- Remains of Trey Lightforge
					["sourceQuest"] = 5204,	-- Retribution of the Light
					["coord"] = { 38.4, 50.4, FELWOOD },
					["cost"] = {
						{ "i", 13562, 1 },	-- Remains of Trey Lightforge
					},
					["lvl"] = 49,
					["groups"] = {
						i(15706),	-- Hunt Tracker Blade
						i(15705),	-- Tidecrest Blade
					},
				}),
				q(8481, {	-- The Root of All Evil
					["qg"] = 11555,	-- Gorn One Eye
					["minReputation"] = { 576, EXALTED },	-- Timbermaw Hold
					["coord"] = { 65.2, 2.6, FELWOOD },
					["maps"] = { WINTERSPRING },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Essence of Xandivious
							["provider"] = { "i", 21145 },	-- Essence of Xandivious
							["coord"] = { 68.0, 37.6, WINTERSPRING },
							["cost"] = { { "i", 21144, 1 } },	-- Demon Summoning Torch
							["cr"] = 15623,	-- Xandivious
						}),
						i(21326),	-- Defender of the Timbermaw
					},
				}),
				q(8421, {	-- The Wrong Stuff
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["sourceQuests"] = {
						8419,	-- An Imp's Request
						8420,	-- Hot and Itchy
					},
					["coord"] = { 41.6, 45.0, FELWOOD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 20613, 1 },	-- Rotting Wood
						{ "i", 20614, 1 },	-- Bloodvenom Essence
					},
					["lvl"] = 50,
				}),
				q(8460, {	-- Timbermaw Ally
					["qg"] = 11554,	-- Grazle
					["altQuests"] = { 6131 },	-- Timbermaw Ally (old version, deprecated)
					["coord"] = { 50.9, 85.0, FELWOOD },
					["lvl"] = 45,
					["groups"] = {
						i(21311),	-- Earth Warder's Vest
						i(21312),	-- Belt of the Den Watcher
					},
				}),
				q(5249, {	-- To Winterspring!
					["qg"] = 10924,	-- Ivy Leafrunner
					["coord"] = { 50.8, 81.6, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 53,
				}),
				q(7624, {	-- Ulathek the Traitor
					["qg"] = 9516,	-- Lord Banehollow
					["sourceQuest"] = 7623,	-- Lord Banehollow
					["coord"] = { 36.0, 44.6, FELWOOD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18802, 1 },	-- Shadowy Potion
						{ "i", 18719, 1 },	-- The Traitor's Heart
					},
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 18719,	-- The Traitor's Heart
							["questID"] = 7624,	-- Ulathek the Traitor
							["cr"] = 14523,	-- Ulathek
							["coord"] = { 40.6, 48.4, FELWOOD },
						},
					},
				}),
				q(5156, {	-- Verifying the Corruption
					["qg"] = 10921,	-- Taronn Redfeather
					["coord"] = { 50.9, 81.6, FELWOOD },
					["lvl"] = 48,
				}),
				q(4505, {	-- Well of Corruption
					["qg"] = 9996,	-- Winna Hazzard
					["sourceQuest"] = 6605,	-- A Strange One
					["coord"] = { 34.2, 52.4, FELWOOD },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12567, 1 },	-- Filled Flasket
					},
					["lvl"] = 49,
					["groups"] = {
						{
							["itemID"] = 12566,	-- Hardened Flasket
							["coord"] = { 32, 66, FELWOOD },
							["groups"] = {
								{
									["itemID"] = 12567,	-- Filled Flasket
									["questID"] = 4505,	-- Well of Corruption
								},
							},
						},
					},
				}),
				q(7601, {	-- What Niby Commands
					["qg"] = 14469,	-- Niby the Almighty
					["coord"] = { 41.4, 44.8, FELWOOD },
					["classes"] = { WARLOCK },
					["lvl"] = 50,
				}),
				q(4521, {	-- Wild Guardians (1/3)
					["qg"] = 10306,	-- Trull Failbane
					["coord"] = { 34.6, 52.6, FELWOOD },
					["maps"] = { WINTERSPRING },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
				}),
				q(4741, {	-- Wild Guardians (2/3)
					["qg"] = 10306,	-- Trull Failbane
					["sourceQuest"] = 4521,	-- Wild Guardians (1/3)
					["coord"] = { 34.6, 52.6, FELWOOD },
					["maps"] = { WINTERSPRING },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
				}),
				q(4721, {	-- Wild Guardians (3/3)
					["qg"] = 10306,	-- Trull Failbane
					["sourceQuest"] = 4741,	-- Wild Guardians (2/3)
					["coord"] = { 34.6, 52.6, FELWOOD },
					["maps"] = { WINTERSPRING },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
				}),
				q(7625, {	-- Xorothian Stardust
					["qg"] = 9516,	-- Lord Banehollow
					["sourceQuest"] = 7624,	-- Ulathek the Traitor
					["coord"] = { 36.0, 44.6, FELWOOD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18802, 1 },	-- Shadowy Potion
						{ "i", 18687, 1 },	-- Xorothian Stardust
					},
					["lvl"] = 60,
				}),
			}),
			n(RARES, {
				n(14340, {	-- Alshirr Banebreath
					["coords"] = {
						{ 39.0, 83.0, FELWOOD },
						{ 40.2, 86.0, FELWOOD },
						{ 43.0, 88.0, FELWOOD },
					},
				}),
				n(14339, {	-- Death Howl
					["coords"] = {
						{ 48.2, 79.0, FELWOOD },
						{ 49.8, 77.2, FELWOOD },
						{ 56.8, 90.0, FELWOOD },
					},
				}),
				n(7104, {	-- Dessecus
					["coords"] = {
						{ 57.4, 22.4, FELWOOD },
						{ 58.0, 17.4, FELWOOD },
						{ 58.6, 19.6, FELWOOD },
					},
				}),
				n(7137, {	-- Immolatus
					["coords"] = {
						{ 41.8, 39.4, FELWOOD },
						{ 46.0, 39.2, FELWOOD },
						{ 44.6, 42.2, FELWOOD },
						{ 41.2, 42.6, FELWOOD },
					},
				}),
				n(14344, {	-- Mongress
					["coords"] = {
						{ 43.6, 77.6, FELWOOD },
						{ 46.8, 83.0, FELWOOD },
					},
				}),
				n(14343, {	-- Olm the Wise
					["coords"] = {
						{ 54.6, 26.6, FELWOOD },
						{ 57.2, 21.4, FELWOOD },
						{ 58.6, 18.6, FELWOOD },
						{ 56.6, 9.2, FELWOOD },
					},
				}),
				n(14342, {	-- Ragepaw
					["coords"] = {
						{ 47.6, 93.6, FELWOOD },
						{ 49.0, 92.8, FELWOOD },
						{ 48.4, 91.2, FELWOOD },
					},
				}),
				n(14345, {	-- The Ongar
					["coords"] = {
						{ 39.0, 48.4, FELWOOD },
						{ 42.8, 47.6, FELWOOD },
						{ 43.8, 49.6, FELWOOD },
					},
				}),
			}),
			prof(SKINNING, {
				i(11512, {	-- Patch of Tainted Skin
					["description"] = "In order for this to drop while Skinning, you must have the Cenarion Beacon in your bags.",
					["cost"] = {
						{ "i", 11511, 1 },	-- Cenarion Beacon
					},
					["crs"] = {
						8956,	-- Angerclaw Bear
						8957,	-- Angerclaw Grizzly
						8958,	-- Angerclaw Mauler
						8961,	-- Felpaw Ravager
						8960,	-- Felpaw Scavenger
						8959,	-- Felpaw Wolf
						7125,	-- Jaedenar Hound
						7126,	-- Jaedenar Hunter
					},
				}),
			}),
			n(VENDORS, {
				n(2806, {	-- Bale <General Goods>
					["coord"] = { 34.8, 53.2, FELWOOD },
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- #if AFTER TBC
						i(35564),	-- Recipe: Charred Bear Kabobs
						i(35566),	-- Recipe: Juicy Bear Burger
						-- #endif
						i(16110),	-- Recipe: Monster Omelet
					},
				}),
				n(11555, {	-- Gorn One Eye
					["coord"] = { 65.2, 2.6, FELWOOD },
					["groups"] = {
						i(16768),	-- Furbolg Medicine Pouch
						i(16769),	-- Furbolg Medicine Totem
					},
				}),
				n(11557, {	-- Meilosh
					["coord"] = { 65.6, 2.8, FELWOOD },
					["groups"] = {
						applyclassicphase(PHASE_FIVE, i(22392)),	-- Formula: Enchant 2H Weapon - Agility
						applyclassicphase(PHASE_THREE, i(19445)), 	-- Formula: Enchant Weapon - Agility
						applyclassicphase(PHASE_THREE, i(19218)), 	-- Pattern: Mantle of the Timbermaw
						applyclassicphase(PHASE_THREE, i(19326)), 	-- Pattern: Might of the Timbermaw
						applyclassicphase(PHASE_THREE, i(19327)), 	-- Pattern: Timbermaw Brawlers
						i(20253),	-- Pattern: Warbear Harness
						i(20254),	-- Pattern: Warbear Woolies
						applyclassicphase(PHASE_THREE, i(19215)), 	-- Pattern: Wisdom of the Timbermaw
						applyclassicphase(PHASE_THREE, i(19202)), 	-- Plans: Heavy Timbermaw Belt
						applyclassicphase(PHASE_THREE, i(19204)), 	-- Plans: Heavy Timbermaw Boots
						i(13484),	-- Recipe: Transmute Earth to Water
					},
				}),
				n(2803, {	-- Malygen <General Goods>
					["coord"] = { 62.2, 25.6, FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if AFTER TBC
						i(35564),	-- Recipe: Charred Bear Kabobs
						i(35566),	-- Recipe: Juicy Bear Burger
						-- #endif
						i(16110),	-- Recipe: Monster Omelet
					},
				}),
				n(14522, {	-- Ur'dan
					["sourceQuest"] = 7625, 	-- Xorothian Stardust
					["coord"] = { 36.2, 44.6, FELWOOD },
					["classes"] = { WARLOCK },
					["groups"] = {
						i(18687, {	-- Xorothian Stardust
							["cost"] = {
								{ "g", 1500000 },
							},
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(11503, {	-- Blood Amber
					["allianceQuestID"] = 4101,	-- Cleansing Felwood
					["hordeQuestID"] = 4102,	-- Cleansing Felwood
					["crs"] = {
						7104,	-- Dessecus
						7100,	-- Warpwood Moss Flayer
						7101,	-- Warpwood Shredder
					},
				}),
				i(20614, {	-- Bloodvenom Essence
					["questID"] = 8421,	-- The Wrong Stuff
					["classes"] = { WARLOCK },
					["cr"] = 7092,	-- Tainted Ooze
				}),
				i(11511, {	-- Cenarion Beacon
					["description"] = "You must keep this in your bags for the Fel Creep, Patch of Tainted Skin, Tainted Vitriol, and Corrupted Soul Shards to drop from the various means of gathering.",
					["sourceQuests"] = {
						4101,	-- Cleansing Felwood (A)
						4102,	-- Cleansing Felwood (H)
					},
				}),
				i(11515, {	-- Corrupted Soul Shard
					["description"] = "In order for this to drop by killing mobs, you must have the Cenarion Beacon in your bags.",
					["cost"] = {
						{ "i", 11511, 1 },	-- Cenarion Beacon
					},
				}),
				i(21377, {	-- Deadwood Headdress Feather
					["crs"] = {
						9462,	-- Chieftain Bloodmaw
						7157,	-- Deadwood Avenger
						7156,	-- Deadwood Den Watcher
						7154,	-- Deadwood Gardener
						7155,	-- Deadwood Pathfinder
						7158,	-- Deadwood Shaman
						7153,	-- Deadwood Warrior
						9464,	-- Overlord Ror
						14342,	-- Ragepaw
					},
				}),
				i(11514, {	-- Fel Creep
					["description"] = "In order for this to drop while Herbing, you must have the Cenarion Beacon in your bags.",
					["cost"] = {
						{ "i", 11511, 1 },	-- Cenarion Beacon
					},
				}),
				i(12230, {	-- Felwood Slime Sample
					["questID"] = 4293,	-- A Sample of Slime...
					["races"] = HORDE_ONLY,
					["crs"] = {
						7086,	-- Cursed Ooze
						7092,	-- Tainted Ooze
						14345,	-- The Ongar
					},
				}),
				i(11674, {	-- Jadefire Felbind
					["questID"] = 939,	-- Flute of Xavaric
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						14340,	-- Alshirr Banebreath
						7108,	-- Jadefire Betrayer
						7109,	-- Jadefire Felsworn
						7111,	-- Jadefire Hellcaller
						7106,	-- Jadefire Rogue
						7105,	-- Jadefire Satyr
						7110,	-- Jadefire Shadowstalker
						7107,	-- Jadefire Trickster
					},
				}),
				i(11173, {	-- Irontree Heart
					["questID"] = 4084,	-- Silver Heart
					["crs"] = {
						7139,	-- Irontree Stomper
						7138,	-- Irontree Wanderer
					},
				}),
				i(20768, {	-- Oozing Bag
					["crs"] = {
						7092,	-- Tainted Ooze
						14345,	-- The Ongar
						7093,	-- Vile Ooze
					},
					["groups"] = {
						i(20769),	-- Disgusting Oozeling
					},
				}),
				i(15752, {	-- Pattern: Living Leggings
					["cr"] = 7158,	-- Deadwood Shaman
				}),
				i(15739, {	-- Pattern: Runic Leather Bracers
					["cr"] = 7112,	-- Jaedenar Cultist
				}),
				un(2, i(15754, {	-- Pattern: Warbear Woolies
					["crs"] = {
						7158,	-- Deadwood Shaman
						7156,	-- Deadwood Den Watcher
					},
				})),
				i(15744, {	-- Pattern: Wicked Leather Headband
					["cr"] = 7107,	-- Jadefire Trickster
				}),
				i(13491, {	-- Recipe: Elixir of the Mongoose
					["cr"] = 7106,	-- Jadefire Rogue
				}),
				i(20613, {	-- Rotting Wood
					["questID"] = 8421,	-- The Wrong Stuff
					["classes"] = { WARLOCK },
					["crs"] = {
						7139,	-- Irontree Stomper
						7138,	-- Irontree Wanderer
						7149,	-- Withered Protector
					},
				}),
				i(11172, {	-- Silvery Claws
					["questID"] = 4084,	-- Silver Heart
					["crs"] = {
						8956,	-- Angerclaw Bear
						8957,	-- Angerclaw Grizzly
						8958,	-- Angerclaw Mauler
						14339,	-- Death Howl
						8961,	-- Felpaw Ravager
						8960,	-- Felpaw Scavenger
						8959,	-- Felpaw Wolf
						14344,	-- Mongress
					},
				}),
				i(11513, {	-- Tainted Vitriol
					["description"] = "In order for this to drop while Mining, you must have the Cenarion Beacon in your bags.",
					["cost"] = {
						{ "i", 11511, 1 },	-- Cenarion Beacon
					},
				}),
				i(12822, {	-- Toxic Horror Droplet
					["questID"] = 5086,	-- Toxic Horrors
					["cr"] = 7132,	-- Toxic Horror
				}),
			}),
		},
	}),
}));