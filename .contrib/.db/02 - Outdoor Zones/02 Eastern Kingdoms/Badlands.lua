---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(BADLANDS, {
		-- #if AFTER CATA
		["lore"] = "Badlands is a scorched zone and the home of the Earthen, Dark Iron Dwarves, and Goblins in Fuselight-by-the-Sea. Formerly a short zone before Cataclysm, it now has two notable chains: The Day Deathwing Died, and the sad tale of the dragon Rhea.",
		-- #else
		["lore"] = "The Badlands is a region in Khaz Modan accessed via the Searing Gorge to the west and Loch Modan to the north.\n\nThe Badlands are a cracked desert of dry earth, scattered boulders, and winding canyons. Dark Iron dwarves clash with ogres and drakes, while Horde orcs man a fortress to keep watch on their renegade brethren in the eastern lands. Ironforge prospectors search this desolate land for Titan artifacts, inspired by the recently unearthed Uldaman — an immense ruin that held the first clues to the dwarves’ lofty origins. Stonevault troggs, released after millennia of slumber, slaughtered the explorers and viciously defend their stolen city.",
		-- #endif
		-- #if AFTER WRATH
		["icon"] = "Interface\\Icons\\achievement_zone_badlands_01",
		-- #endif
		-- #if NOT ANYCLASSIC
		["maps"] = { 16 },	-- Uldaman
		-- #endif
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(4900, {	-- Badlands Quests
					["timeline"] = { "added 4.0.3" },
					["groups"] = {
						crit(1, {	-- Rhea
							["sourceQuest"] = 27769,	-- Rhea Revealed
						}),
						crit(2, {	-- The Fate of a Dragonflight
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 27930,	-- Devastation
						}),
						crit(3, {	-- The Titans' Knowledge (A)
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 27794,	-- Return to Blam (A)
						}),
						crit(3, {	-- The Titans' Knowledge (H)
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 27888,	-- Return to Blam (H)
						}),
						crit(4, {	-- The Day that Deathwing Came
							["sourceQuest"] = 27715,	-- The Day that Deathwing Came: What Really Happened
						}),
					},
				}),
				removeclassicphase(ach(765, {	-- Explore Badlands
					-- #if BEFORE WRATH
					["description"] = "Explore Badlands, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
				ach(5444, {	-- Ready, Set, Goat!
					["timeline"] = { "added 4.0.3" },
					["cr"] = 46393,	-- Billy Goat
				}),
			}),
			-- #if AFTER MOP
			petbattle(filter(BATTLE_PETS, {
				p(406, {	-- Beetle
					["crs"] = { 61319 },
				}),
				p(398, {	-- Black Rat
					["crs"] = { 61257 },
				}),
				p(430, {	-- Gold Beetle
					["crs"] = { 61438 },
				}),
				p(438, {	-- King Snake
					["crs"] = { 61443 },
				}),
				p(431, {	-- Rattlesnake
					["crs"] = { 61439 },
				}),
				p(433, {	-- Spiky Lizard
					["crs"] = { 61441 },
				}),
				p(432, {	-- Stripe-Tailed Scorpid
					["crs"] = { 61440 },
				}),
			})),
			-- #endif
			-- #if ANYCLASSIC
			n(EXPLORATION, {
				exploration(345, "265:270:345:389"),	-- Agmond's End
				exploration(338, "195:200:325:148"),	-- Angor Fortress
				-- #if AFTER TBC
				exploration(337, "256:256:17:310"),		-- Apocryphan's Rest [TBC]
				-- #else
				exploration(337, "255:205:17:310"),		-- Apocryphan's Rest [Classic]
				-- #endif
				exploration(342, "255:280:501:341"),	-- Camp Boff
				-- #if AFTER TBC
				exploration(344, "256:256:12:428"),		-- Camp Cagg [TBC]
				-- #else
				exploration(344, "255:220:12:428"),		-- Camp Cagg [Classic]
				-- #endif
				exploration(341, "220:220:551:48"),		-- Camp Kosh
				exploration(1898, "245:205:498:209"),	-- Dustwind Gulch
				exploration(346, "200:195:445:120"),	-- Hammertoe's Digsite
				-- #if AFTER TBC
				exploration(340, "256:256:0:148"),		-- Kargath [TBC]
				-- #else
				exploration(340, "240:255:0:148"),		-- Kargath [Classic]
				-- #endif
				exploration(339, "370:455:611:110"),	-- Lethlor Ravine
				-- #if AFTER TBC
				exploration(1879, "256:256:148:384"),	-- Mirage Flats [TBC]
				-- #else
				exploration(1879, "285:240:148:384"),	-- Mirage Flats [Classic]
				-- #endif
				exploration(1878, "270:275:159:199"),	-- The Dustbowl
				exploration(1897, "245:205:389:7"),		-- The Maker's Terrace
				exploration(1877, "230:230:349:256"),	-- Valley of Fangs
				--[[
				exploration(343, ""),	-- Camp Wurg
				exploration(347, ""),	-- Dustbelch Grotto
				exploration(1517, ""),	-- Uldaman
				]]--
			}),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(632, {	-- Bloodwatcher Point, Badlands
					["coord"] = { 52.4, 50.6, BADLANDS },
					["timeline"] = { "added 4.0.3.13277" },
					["cr"] = 44408,	-- Selara <Flight Master>
					["races"] = HORDE_ONLY,
				}),
				fp(634, {	-- Dragon's Mouth, Badlands
					["coord"] = { 21.6, 57.6, BADLANDS },
					["timeline"] = { "added 4.0.3.13277" },
					["cr"] = 44410,	-- Jake Badlands <Flight Master>
					["races"] = ALLIANCE_ONLY,
				}),
				fp(633, {	-- Dustwind Dig, Badlands
					["coord"] = { 48.8, 36.2, BADLANDS },
					["timeline"] = { "added 4.0.3.13277" },
					["cr"] = 44409,	-- Nancy Skybrew <Flight Master>
					["races"] = ALLIANCE_ONLY,
				}),
				fp(635, {	-- Fuselight, Badlands
					["coord"] = { 64.2, 35.2, BADLANDS },
					["timeline"] = { "added 4.0.3.13277" },
					["cr"] = 44407,	-- Mixi Sweetride <Flight Master>
				}),
				fp(21, {	-- Kargath / New Kargath [CATA+], Badlands
					["cr"] = 2861,	-- Gorrik <Wind Rider Master>
					-- #if AFTER CATA
					["coord"] = { 17.2, 40.2, BADLANDS },
					-- #else
					["coord"] = { 4.0, 44.8, BADLANDS },
					-- #endif
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(719, {	-- A Dwarf and His Tools
					["qg"] = 2910,	-- Prospector Ryedol <Explorers' League>
					["coord"] = { 53.4, 43.2, BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Ryedol's Lucky Pick
							["provider"] = { "i", 4616 },	-- Ryedol's Lucky Pick
							["crs"] = {
								2742,	-- Shadowforge Chanter
								2744,	-- Shadowforge Commander
								2740,	-- Shadowforge Darkweaver
								2739,	-- Shadowforge Tunneler
								2743,	-- Shadowforge Warrior
							},
						}),
						i(4978),	-- Ryedol's Hammer
					},
				}),
				q(720, {	-- A Sign of Hope
					["provider"] = { "o", 2868 },	-- Crumpled Map
					["coord"] = { 53.0, 33.9, BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				}),
				q(721, {	-- A Sign of Hope
					["sourceQuest"] = 720,	-- A Sign of Hope
					["qg"] = 2910,	-- Prospector Ryedol <Explorers' League>
					["coord"] = { 53.4, 43.4, BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				}),
				{
					["questID"] = 722,	-- Amulet of Secrets
					["sourceQuest"] = 721,	-- A Sign of Hope
					["qg"] = 2909,	-- Hammertoe Grez
					["coord"] = { 37.94, 10.53, BADLANDS },
					["maps"] = { ULDAMAN, LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						{
							["itemID"] = 4635,	-- Hammertoe's Amulet
							["questID"] = 722,	-- Amulet of Secrets
							["qg"] = 2932,	-- Magregan Deepshadow
							["coord"] = { 38.0, 92.6, LOCH_MODAN },
							["races"] = ALLIANCE_ONLY,
						},
					},
				},
				{
					["questID"] = 762,	-- An Ambassador of Evil
					["sourceQuest"] = 726,	-- Passing Word of a Threat
					["qg"] = 2916,	-- Historian Karnik
					["cost"] = {
						{ "i", 4621, 1 },	-- Ambassador Infernus' Bracer
					},
					["coord"] = { 77.5, 11.8, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						{
							["itemID"] = 4621,	-- Ambassador Infernus' Bracer
							["questID"] = 762,	-- An Ambassador of Evil
							["qg"] = 2745,	-- Ambassador Infernus
							["coord"] = { 42.1, 28.9, BADLANDS },
							["races"] = ALLIANCE_ONLY,
						},
						i(4987),	-- Dwarf Captain's Sword
					},
				},
				q(2258, {	-- Badlands Reagent Run
					["qg"] = 6868,	-- Jarkal Mossmeld
					["coord"] = { 2.6, 46, BADLANDS },
					["timeline"] = { "removed 4.0.3" },
					["races"] = HORDE_ONLY,
					["lvl"] = 36,
					["groups"] = {
						objective(1, {	-- 0/5 Buzzard Gizzard
							["provider"] = { "i", 7847 },	-- Buzzard Gizzard
							["crs"] = {
								2830,	-- Buzzard
								2831,	-- Giant Buzzard
								2829,	-- Starving Buzzard
							},
						}),
						objective(2, {	-- 0/10 Crag Coyote Fang
							["provider"] = { "i", 7846 },	-- Crag Coyote Fang
							["crs"] = {
								2727,	-- Crag Coyote
								2729,	-- Elder Crag Coyote
								2728,	-- Feral Crag Coyote
								2730,	-- Rabid Crag Coyote
							},
						}),
						objective(3, {	-- 0/5 Rock Elemental Shard
							["provider"] = { "i", 7848 },	-- Rock Elemental Shard
							["crs"] = {
								2745,	-- Ambassador Infernus
								2791,	-- Enraged Rock Elemental
								2919,	-- Fam'retor Guardian
								2736,	-- Greater Rock Elemental
								2735,	-- Lesser Rock Elemental
								92,		-- Rock Elemental
								2752,	-- Rumbler
								8278,	-- Smoldar
							},
						}),
					},
				}),
				q(703, {	-- Barbecued Buzzard Wings
					["qg"] = 2817,	-- Rigglefuzz
					["coord"] = { 42.39, 52.93, BADLANDS },
					["cost"] = {
						{ "i", 3404, 4 },	-- Buzzard Wing
					},
					["lvl"] = 33,
					["groups"] = {
						i(4457),	-- Barbecued Buzzard Wing
						i(4609),	-- Recipe: Barbecued Buzzard Wing
					},
				}),
				q(782, {	-- Broken Alliances
					["qg"] = 1068,	-- Gorn
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Sign of the Earth
							["provider"] = { "i", 4640 },	-- Sign of the Earth
							["cr"] = 2944,	-- Boss Tho'grun
						}),
					},
				}),
				q(793, {	-- Broken Alliances
					["qg"] = 1068,	-- Gorn
					["sourceQuest"] = 782,	-- Broken Alliances
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4615, 1 },	-- Blacklash's Bindings
						{ "i", 4645, 1 },	-- Chains of Hematus
					},
					["lvl"] = 40,
					["groups"] = {
						i(11193),	-- Blazewind Breastplate
						i(11194),	-- Prismscale Hauberk
						i(11195),	-- Warforged Chestplate
						i(11196),	-- Mindburst Medallion
					},
				}),
				q(713, {	-- Coolant Heads Prevail
					["qg"] = 2921,	-- Lotwil Veriatus
					["coord"] = { 26.0, 44.9, BADLANDS },
					["lvl"] = 35,
				}),
				q(1419, {	-- Coyote Thieves
					["qg"] = 5394,	-- Neeka Bloodscar
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/30 Coyote Jawbone
							["provider"] = { "i", 6166 },	-- Coyote Jawbone
							["crs"] = {
								2727,	-- Crag Coyote
								2729,	-- Elder Crag Coyote
								2728,	-- Feral Crag Coyote
								2730,	-- Rabid Crag Coyote
							},
						}),
					},
				}),
				q(3821, {	-- Dreadmaul Rock
					["qg"] = 9082,	-- Thal'trak Proudtusk
					["coord"] = { 3.4, 48, BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
				}),
				q(706, {	-- Fiery Blaze Enchantments
					["qg"] = 2860,	-- Sigrun Ironhew
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- Black Drake's Heart
							["provider"] = { "i", 4612 },	-- Black Drake's Heart
							["crs"] = {
								2726,	-- Scorched Guardian
								2725,	-- Scalding Whelp
							},
						}),
						i(5421),	-- Fiery Blaze Enchantment
					},
				}),
				q(737, {	-- Forbidden Knowledge
					["allianceQuestData"] = {
						["providers"] = {
							{ "n", 2786 },	-- Gerrig Bonegrip
							{ "i", 4647 },	-- Yagyin's Digest
						},
						["sourceQuest"] = 735,	-- The Star, the Hand and the Heart [A]
						["coord"] = { 50.8, 5.6, IRONFORGE },
					},
					["hordeQuestData"] = {
						["providers"] = {
							{ "n", 2934 },	-- Keeper Bel'dugur
							{ "i", 4647 },	-- Yagyin's Digest
						},
						["sourceQuest"] = 736,	-- The Star, the Hand and the Heart [H]
						["coord"] = { 53.7, 54.5, UNDERCITY },
					},
					["lvl"] = 30,
					["groups"] = {
						i(4984),	-- Skull of Impending Doom
					},
				}),
				q(714, {	-- Gyro... What?
					["qg"] = 2921,	-- Lotwil Veriatus
					["coord"] = { 26.0, 44.9, BADLANDS },
					["cost"] = {
						{ "i", 4389, 1 },	-- Gyrochronatom
					},
					["lvl"] = 35,
				}),
				q(1108, {	-- Indurium
					["qg"] = 4618,	-- Martek the Exiled
					["sourceQuest"] = 1106,	-- Martek the Exiled
					["coord"] = { 42.22, 52.69, BADLANDS },
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/10 Indurium Flake
							["provider"] = { "i", 5797 },	-- Indurium Flake
							["crs"] = {
								6733,	-- Stonevault Basher
								2893,	-- Stonevault Bonesnapper
								2892,	-- Stonevault Seer
								2894,	-- Stonevault Shaman
							},
						}),
					},
				}),
				q(715, {	-- Liquid Stone
					["qg"] = 2920,	-- Lucien Tosselwrench
					["coord"] = { 25.8, 44.2, BADLANDS },
					["cost"] = {
						{ "i", 929, 1 },	-- Healing Potion
						{ "i", 3823, 1 },	-- Lesser Invisibility Potion
					},
					["lvl"] = 35,
					["groups"] = {
						i(4624),	-- Recipe: Lesser Stoneshield Potion
						i(4623),	-- Lesser Stoneshield Potion
					},
				}),
				q(718, {	-- Mirages
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2860,	-- Sigrun Ironhew
					["coord"] = { 53.8, 43.3, BADLANDS },
				}),
				q(739, {	-- Murdaloc
					["provider"] = { "o", 2875 },	-- Battered Dwarven Skeleton
					["sourceQuest"] = 738,	-- Find Agmond
					["coord"] = { 50.89, 62.4, BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(4983),	-- Rock Pulverizer
					},
				}),
				q(1137, {	-- News for Fizzle
					["qg"] = 4618,	-- Martek the Exiled
					["sourceQuest"] = 1108,	-- Indurium
					["coord"] = { 42.22, 52.69, BADLANDS },
					["maps"] = { THOUSAND_NEEDLES },
					["lvl"] = 28,
					["groups"] = {
						i(6729),	-- Fizzle's Zippy Lighter
						i(6732),	-- Gnomish Mechanic's Gloves
					},
				}),
				q(725, {	-- Passing Word of a Threat
					["qg"] = 2916,	-- Historian Karnik
					["sourceQuest"] = 724,	-- Prospect of Faith
					["coord"] = { 77.5, 11.8, IRONFORGE },
					["cost"] = { { "i", 4622, 1 } },	-- Sealed Note to Advisor Belgrum
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				}),
				q(726, {	-- Passing Word of a Threat
					["sourceQuest"] = 725,	-- Passing Word of a Threat
					["qg"] = 2918,	-- Advisor Belgrum
					["coord"] = { 77.3, 9.7, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				}),
				q(705, {	-- Pearl Diving
					["qg"] = 2817,	-- Rigglefuzz
					["coord"] = { 42.39, 52.93, BADLANDS },
					["maps"] = { STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 4611, 9 },	-- Blue Pearl
					},
					["lvl"] = 30,
					["groups"] = {
						i(4086),	-- Flash Rifle
						i(5248),	-- Flash Wand
						i(4852),	-- Flash Bomb
					},
				}),
				q(2418, {	-- Power Stones
					["qg"] = 2817,	-- Rigglefuzz
					["coord"] = { 42.39, 52.93, BADLANDS },
					["maps"] = { ULDAMAN },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/8 Dentrium Power Stone
							["crs"] = {
								4844,	-- Shadowforge Surveyor
								4845,	-- Shadowforge Ruffian
								4846,	-- Shadowforge Digger
								4847,	-- Shadowforge Relic Hunter
								4848,	-- Shadowforge Darkcaster
								4849,	-- Shadowforge Archaeologist
								7030,	-- Shadowforge Geologist
								7290,	-- Shadowforge Sharpshooter
								7091,	-- Shadowforge Ambusher
							},
						}),
						objective(2, {	-- 0/8 An'Alleum Power Stone
							["crs"] = {
								4844,	-- Shadowforge Surveyor
								4845,	-- Shadowforge Ruffian
								4846,	-- Shadowforge Digger
								4847,	-- Shadowforge Relic Hunter
								4848,	-- Shadowforge Darkcaster
								4849,	-- Shadowforge Archaeologist
								7030,	-- Shadowforge Geologist
								7290,	-- Shadowforge Sharpshooter
								7091,	-- Shadowforge Ambusher
							},
						}),
						i(9522),	-- Energized Stone Circle
						i(10358),	-- Duracin Bracers
						i(10359),	-- Everlast Boots
					},
				}),
				q(723, {	-- Prospect of Faith
					["sourceQuest"] = 722,	-- Amulet of Secrets
					["qg"] = 2909,	-- Hammertoe Grez
					["coord"] = { 37.94, 10.53, BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				}),
				q(724, {	-- Prospect of Faith
					["sourceQuest"] = 723,	-- Prospect of Faith
					["qg"] = 2909,	-- Prospector Ryedol
					["coord"] = { 53.4, 43.2, BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
				}),
				{
					["questID"] = 1360,	-- Reclaimed Treasures
					["qg"] = 6294,	-- Krom Stoutarm
					["coord"] = { 74.2, 9.4, IRONFORGE },
					["maps"] = { LOCH_MODAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						{
							["itemID"] = 8027,	-- Krom Stoutarm's Treasure
							["questID"] = 1360,	-- Reclaimed Treasures
							["provider"] = { "o", 124389 },	-- Krom Stoutarm's Chest
							["coord"] = { 35.2, 97.4, LOCH_MODAN },
						},
					},
				},
				{
					["questID"] = 2342,	-- Reclaimed Treasures
					["qg"] = 5651,	-- Patrick Garrett
					["coord"] = { 62.3, 48.6, UNDERCITY },
					["maps"] = { LOCH_MODAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						{
							["itemID"] = 8026,	-- Garrett Family Treasure
							["questID"] = 2342,	-- Reclaimed Treasures
							["provider"] = { "o", 124388 },	-- Garrett Family Chest
							["coord"] = { 33.9, 93.0, LOCH_MODAN },
						},
					},
				},
				q(1420, {	-- Report to Helgrum
					["qg"] = 5394,	-- Neeka Bloodscar
					["sourceQuest"] = 1418,	-- Neeka Bloodscar
					["coord"] = { 6.5, 47.2, BADLANDS },
					["maps"] = { SWAMP_OF_SORROWS },
					["cost"] = {
						{ "i", 6167, 1 },	-- Neeka's Report
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(733, {	-- Scrounging
					["qg"] = 2860,	-- Sigrun Ironhew
					["sourceQuest"] = 718,	-- Mirages
					["coord"] = { 53.8, 43.3, BADLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/7 Scrap Metal
							["provider"] = { "i", 4630 },	-- Scrap Metal
							["crs"] = {
								2715,	-- Dustbelcher Brute
								2719,	-- Dustbelcher Lord
								2717,	-- Dustbelcher Mauler
								2907,	-- Dustbelcher Mystic
								2701,	-- Dustbelcher Ogre
								2720,	-- Dustbelcher Ogre Mage
								2718,	-- Dustbelcher Shaman
								2906,	-- Dustbelcher Warrior
								2716,	-- Dustbelcher Wyrmhunter
							},
						}),
						i(4652),	-- Salbac Shield
						i(4653),	-- Ironheel Boots
					},
				}),
				{
					["provider"] = { "o", 2933 },	-- Seal of the Earth
					["allianceQuestData"] = q(779),	-- Seal of the Earth [A]
					["hordeQuestData"] = q(795),	-- Seal of the Earth [H]
					["description"] = "This quest is repeatable but can only be completed while \"Broken Alliances\" (H) or \"Tremors of the Earth\" (A) is in your quest log.",
					["altQuests"] =	{
						793,	-- Broken Alliances
						717,	-- Tremors of the Earth
					},
					["cost"] = {
						{ "i", 4843, 1 },	-- Amethyst Runestone
						{ "i", 4845, 1 },	-- Diamond Runestone
						{ "i", 4844, 1 },	-- Opal Runestone
					},
					["repeatable"] = true,
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 4843,	-- Amethyst Runestone
							["coord"] = { 81.27, 64.29, BADLANDS },
						},
						{
							["itemID"] = 4845,	-- Diamond Runestone
							["coord"] = { 83.5, 32.9, BADLANDS },
						},
						{
							["itemID"] = 4844,	-- Opal Runestone
							["coord"] = { 72.38, 66.94, BADLANDS },
						},
						{
							["itemID"] = 4615,	-- Blacklash's Bindings
							["coord"] = { 82.6, 48.8, BADLANDS },
							["cr"] = 2757,	-- Blacklash
						},
						{
							["itemID"] = 4645,	-- Chains of Hematus
							["coord"] = { 81.4, 50.6, BADLANDS },
							["cr"] = 2759,	-- Hematus
						},
					},
				},
				q(709, {	-- Solution to Doom
					["qg"] = 2785,	-- Theldurin the Lost
					["coord"] = { 51.4, 76.9, BADLANDS },
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4631,	-- Tablet of Ryun'eh
							["questID"] = 709,	-- Solution to Doom
							["provider"] = { "o", 126260 },	-- Ancient Chest
							["coord"] = { 39.3, 18.8, BADLANDS },
						},
						i(4746),	-- Doomsayer's Robe
					},
				}),
				q(716, {	-- Stone Is Better than Cloth
					["qg"] = 2920,	-- Lucien Tosselwrench
					["sourceQuests"] = {
						714,	-- Gyro... What?
						712,	-- Study of the Elements: Rock
					},
					["coord"] = { 25.8, 44.4, BADLANDS },
					["cost"] = {
						{ "i", 2868, 1 },	-- Patterned Bronze Bracers
					},
					["lvl"] = 35,
					["groups"] = {
						i(4979),	-- Enchanted Stonecloth Bracers
					},
				}),
				q(712, {	-- Study of the Elements: Rock
					["qg"] = 2921,	-- Lotwil Veriatus
					["sourceQuest"] = 711,	-- Study of the Elements: Rock
					["coord"] = { 25.8, 45, BADLANDS },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/5 Bracers of Rock Binding
							["provider"] = { "i", 4628 },	-- Bracers of Rock Binding
							["cr"] = 2736,	-- Greater Rock Elemental
						}),
					},
				}),
				q(711, {	-- Study of the Elements: Rock
					["qg"] = 2921,	-- Lotwil Veriatus
					["sourceQuest"] = 710,	-- Study of the Elements: Rock
					["coord"] = { 25.8, 45, BADLANDS },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/3 Large Stone Slab
							["provider"] = { "i", 4627 },	-- Large Stone Slab
							["cr"] = 92,	-- Rock Elemental
						}),
					},
				}),
				q(710, {	-- Study of the Elements: Rock
					["qg"] = 2921,	-- Lotwil Veriatus
					["coord"] = { 25.8, 45, BADLANDS },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/10 Small Stone Shard
							["provider"] = { "i", 4626 },	-- Small Stone Shard
							["cr"] = 2735,	-- Lesser Rock Elemental
						}),
					},
				}),
				un(NEVER_IMPLEMENTED, q(708, {	-- The Black Box
					["provider"] = { "i", 4613 },	-- Corroded Black Box
					["races"] = ALLIANCE_ONLY,
					["cr"] = 2931,	-- Zaricotl
					["lvl"] = 30,
				})),
				q(692, {	-- The Lost Fragments
					["qg"] = 2785,	-- Theldurin the Lost
					["sourceQuest"] = 687,	-- Theldurin the Lost
					["coord"] = { 51.4, 76.9, BADLANDS },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Torn Scroll Fragment
							["provider"] = { "i", 4518 },	-- Torn Scroll Fragment
							["cr"] = 2791,	-- Enraged Rock Elemental
						}),
						objective(2, {	-- 0/1 Crumpled Scroll Fragment
							["provider"] = { "i", 4519 },	-- Crumpled Scroll Fragment
							["cr"] = 2791,	-- Enraged Rock Elemental
						}),
						objective(3, {	-- 0/1 Singed Scroll Fragment
							["provider"] = { "i", 4520 },	-- Singed Scroll Fragment
							["cr"] = 2791,	-- Enraged Rock Elemental
						}),
					},
				}),
				{	-- The Star, the Hand and the Heart
					["allianceQuestData"] = q(735, {	-- The Star, the Hand and the Heart [A]
						["providers"] = {
							{ "n", 2786 },	-- Gerrig Bonegrip
							{ "i", 4649 },	-- Bonegrip's Note
						},
						["sourceQuest"] = 727,	-- To Ironforge for Yagyin's Digest
						["coord"] = { 50.8, 5.6, IRONFORGE },
					}),
					["hordeQuestData"] = q(736, {	-- The Star, the Hand and the Heart [H]
						["providers"] = {
							{ "n", 2934 },	-- Keeper Bel'dugur
							{ "i", 4650 },	-- Bel'dugur's Note
						},
						["sourceQuest"] = 728,	-- To the Undercity for Yagyin's Digest
						["coord"] = { 53.7, 54.5, UNDERCITY },
					}),
					["maps"] = { ALTERAC_MOUNTAINS, DUSTWALLOW_MARSH, STRANGLETHORN_VALE },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Star of Xil'yeh
							["provider"] = { "i", 4646 },	-- Star of Xil'yeh
							["coord"] = { 39.6, 51.8, ALTERAC_MOUNTAINS },
							["cr"] = 2417,	-- Grel'borg the Miser
						}),
						objective(2, {	-- 0/1 Hand of Dagun
							["itemID"] = 4641,	-- Hand of Dagun
							["coord"] = { 60.4, 12.2, DUSTWALLOW_MARSH },
							["cost"] = { { "i", 4639, 1 } },	-- Enchanted Sea Kelp
							["cr"] = 2937,	-- Dagun the Ravenous
						}),
						objective(3, {	-- 0/1 The Legacy Heart
							["provider"] = { "i", 4644 },	-- The Legacy Heart
							["coord"] = { 47.6, 44.2, STRANGLETHORN_VALE },
							["cr"] = 1060,	-- Mogh the Undying <Skullsplitter Clan Witchdoctor>
						}),
					},
				},
				q(777, {	-- This Is Going to Be Hard
					["qg"] = 2920,	-- Lucien Tosselwrench
					["sourceQuest"] = 734,	-- This Is Going to Be Hard
					["coord"] = { 25.8, 44.4, BADLANDS },
					["cost"] = {
						{ "i", 4846, 1 },	-- Cog #5
					},
					["lvl"] = 35,
				}),
				q(734, {	-- This Is Going to Be Hard
					["qg"] = 2921,	-- Lotwil Veriatus
					["coord"] = { 25.8, 45, BADLANDS },
					["lvl"] = 35,
				}),
				q(778, {	-- This Is Going to Be Hard
					["qg"] = 2921,	-- Lotwil Veriatus
					["sourceQuest"] = 777,	-- This Is Going to Be Hard
					["coord"] = { 25.8, 45, BADLANDS },
					["cost"] = {
						{ "i", 4847, 1 }	-- Lotwil's Shackles of Elemental Binding
					},
					["lvl"] = 35,
					["groups"] = {
						{
							["itemID"] = 4847,	-- Lotwil's Shackles of Elemental Binding
							["questID"] = 778,	-- This Is Going to Be Hard
							["cr"] = 2919,	-- Fam'retor Guardian
							["coord"] = { 26.0, 46.6, BADLANDS },
						},
						i(2820),	-- Nifty Stopwatch
					},
				}),
				q(727, {	-- To Ironforge for Yagyin's Digest
					["qg"] = 2785,	-- Theldurin the Lost
					["sourceQuest"] = 709,	-- Solution to Doom
					["coord"] = { 51.4, 76.9, BADLANDS },
					["cost"] = { { "i", 4648, 1 } },	-- Sigil of the Hammer
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(728, {	-- To the Undercity for Yagyin's Digest
					["sourceQuest"] = 709,	-- Solution to Doom
					["qg"] = 2785,	-- Theldurin the Lost
					["coord"] = { 51.4, 76.9, BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(717, {	-- Tremors of the Earth
					["qg"] = 2888,	-- Garek
					["sourceQuest"] = 732,	-- Tremors of the Earth
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4615, 1 },	-- Blacklash's Bindings
						{ "i", 4645, 1 },	-- Chains of Hematus
					},
					["lvl"] = 40,
					["groups"] = {
						
						i(11193),	-- Blazewind Breastplate
						i(11194),	-- Prismscale Hauberk
						i(11195),	-- Warforged Chestplate
						i(11196),	-- Mindburst Medallion
					},
				}),
				q(732, {	-- Tremors of the Earth
					["qg"] = 2888,	-- Garek
					["sourceQuest"] = 718,	-- Mirages
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Sign of the Earth
							["provider"] = { "i", 4640 },	-- Sign of the Earth
							["cr"] = 2944,	-- Boss Tho'grun
						}),
					},
				}),
				q(2202, {	-- Uldaman Reagent Run
					["sourceQuest"] = 2258,	-- Badlands Reagent Run
					["qg"] = 6868,	-- Jarkal Mossmeld
					["cost"] = {
						{ "i", 8047, 12 },	-- Magenta Fungus Cap
					},
					["coord"] = { 2.6, 46, BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
			}),
			n(RARES, {
				n(14224, {	-- 7:XT <Long Distance Recovery Unit>
					-- #if AFTER CATA
					["coord"] = { 78.6, 31.6, BADLANDS },
					-- #else
					["coords"] = {
						{ 24.0, 52.6, BADLANDS },
						{ 12.8, 67.0, BADLANDS },
						{ 19.4, 80.6, BADLANDS },
						{ 29.0, 68.6, BADLANDS },
						{ 55.4, 53.2, BADLANDS },
						{ 58.4, 67.6, BADLANDS },
						{ 55.4, 83.8, BADLANDS },
					},
					["races"] = ALLIANCE_ONLY,
					-- #endif
				}),
				n(2754, {	-- Anathemus
					-- #if AFTER CATA
					["coord"] = { 8.8, 67.0, BADLANDS },
					-- #else
					["coords"] = {
						{ 48.0, 47.4, BADLANDS },
						{ 58.0, 57.0, BADLANDS },
						{ 52.0, 75.4, BADLANDS },
						{ 37.6, 71.4, BADLANDS },
						{ 17.0, 82.2, BADLANDS },
						{ 11.8, 72.6, BADLANDS },
						{ 25.6, 52.6, BADLANDS },
						{ 35.4, 58.0, BADLANDS },
						{ 43.0, 54.2, BADLANDS },
					},
					-- #endif
				}),
				n(2753, {	-- Barnabus
					-- #if AFTER CATA
					["coord"] = { 40.8, 58.8, BADLANDS },
					-- #else
					["coords"] = {
						{ 57.2, 57.0, BADLANDS },
						{ 54.0, 68.6, BADLANDS },
						{ 46.2, 74.2, BADLANDS },
						{ 38.2, 69.4, BADLANDS },
					},
					-- #endif
				}),
				-- #if AFTER CATA
				n(2749, {	-- Barricade [CATA+] / Siege Golem
					["coords"] = {
						{ 9.60, 48.8, BADLANDS },
						{ 27.2, 37.4, BADLANDS },
					},
				}),
				-- #endif
				n(51000, {	-- Blackshell the Impenetrable
					["coord"] = { 72.2, 27.4, BADLANDS },
					["timeline"] = { "added 5.2.0.16650" },
				}),
				n(2850, {	-- Broken Tooth
					-- #if AFTER CATA
					["coord"] = { 22.6, 60.6, BADLANDS },
					-- #else
					["coords"] = {
						{ 54.0, 16.6, BADLANDS },
						{ 45.4, 36.8, BADLANDS },
						{ 62.0, 32.8, BADLANDS },
					},
					-- #endif
				}),
				n(50728, {	-- Deathstrike
					["coord"] = { 70.2, 53.8, BADLANDS },
					["timeline"] = { "added 5.1.0.16309" },
				}),
				n(50726, {	-- Kalixx
					["coord"] = { 32.0, 35.6, BADLANDS },
					["timeline"] = { "added 5.2.0.16408" },
				}),
				n(50731, {	-- Needlefang
					["coord"] = { 50.8, 72.6, BADLANDS },
					["timeline"] = { "added 5.2.0.16650" },
				}),
				n(2752, {	-- Rumbler
					-- #if AFTER CATA
					["coord"] = { 16.0, 29.4, BADLANDS },
					-- #else
					["coords"] = {
						{ 3.4, 78.8, BADLANDS },
						{ 15.6, 89.0, BADLANDS },
					},
					-- #endif
				}),
				n(51007, {	-- Serkett
					["coord"] = { 26.8, 38.0, BADLANDS },
					["timeline"] = { "added 5.2.0.16650" },
				}),
				n(2744, {	-- Shadowforge Commander
					-- #if AFTER CATA
					["coord"] = { 39.6, 24.6, BADLANDS },
					-- #else
					["coord"] = { 41.2, 26.2, BADLANDS },
					-- #endif
				}),
				n(50838, {	-- Tabbs
					["coord"] = { 58.6, 60.6, BADLANDS },
					["timeline"] = { "added 5.1.0.16309" },
				}),
				n(51021, {	-- Vorticus
					["coord"] = { 23.2, 37.6, BADLANDS },
					["timeline"] = { "added 5.1.0.16231" },
				}),
				-- #if BEFORE CATA
				n(2749, {	-- Siege Golem / Barricade [CATA+]
					["coords"] = {
						{ 5.6, 59.8, BADLANDS },
						{ 13.4, 65.4, BADLANDS },
						{ 19.0, 60.0, BADLANDS },
						{ 30.0, 61.0, BADLANDS },
						{ 35.6, 43.6, BADLANDS },
						{ 43.0, 39.0, BADLANDS },
					},
				}),
				-- #endif
				n(2751, {	-- War Golem
					-- #if AFTER CATA
					["coord"] = { 49.0, 25.4, BADLANDS },
					-- #else
					["coords"] = {
						{ 47.8, 13.2, BADLANDS },
						{ 52.0, 28.2, BADLANDS },
						{ 45.6, 33.2, BADLANDS },
					},
					-- #endif
				}),
				n(2931, {	-- Zaricotl
					-- #if AFTER CATA
					["coord"] = { 56.6, 44.0, BADLANDS },
					-- #else
					["coords"] = {
						{ 3.6, 44.2, BADLANDS },
						{ 34.6, 53.8, BADLANDS },
						{ 37.2, 68.0, BADLANDS },
						{ 56.0, 57.4, BADLANDS },
						{ 55.8, 64.6, BADLANDS },
					},
					-- #endif
				}),
				n(51018, {	-- Zormus
					["coord"] = { 51.8, 34.2, BADLANDS },
					["timeline"] = { "added 5.2.0.16650" },
				}),
			}),
			n(VENDORS, {
				n(49918, {	-- Buckslappy <Engineering Supply Specialist>
					["coord"] = { 91.0, 38.4, BADLANDS },
					["timeline"] = { "added 4.0.3.13277" },
					["groups"] = {
						i(18649, {	-- Schematic: Blue Firework
							["isLimited"] = true,
						}),
						i(18650, {	-- Schematic: EZ-Thro Dynamite II
							["isLimited"] = true,
						}),
						i(18648, {	-- Schematic: Green Firework
							["isLimited"] = true,
						}),
						i(18647, {	-- Schematic: Red Firework
							["isLimited"] = true,
						}),
					},
				}),
				n(48060, {	-- "Chef" Overheat <Cooking Supplies>
					["coord"] = { 65.0, 38.8, BADLANDS },
					["timeline"] = { "added 4.0.3.13277" },
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight
						i(21099),	-- Recipe: Smoked Sagefish
						i(16767, {	-- Recipe: Undermine Clam Chowder
							["isLimited"] = true,
						}),
					},
				}),
				n(9179, {	-- Jazzrik <Blacksmithing Supplies>
					["coord"] = { 42.4, 52.5, BADLANDS },
					["timeline"] = { "removed 4.0.3" },
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(10858),	-- Plans: Solid Iron Maul
					},
					-- #endif
				}),
			}),
			n(ZONE_DROPS, {
				i(9393, {	-- Beacon of Hope
					["crs"] = {
						4846,	-- Shadowforge Digger
						4845,	-- Shadowforge Ruffian
						4844,	-- Shadowforge Surveyor
					},
				}),
				i(2621, {	-- Cowl of Necromancy
					["timeline"] = { "removed 4.0.3" },
					["cr"] = 2740,	-- Shadowforge Darkweaver
				}),
				i(10822, {	-- Dark Whelpling (PET!)
					-- #if AFTER CATA
					["crs"] = {
						46916,	-- Nyxondra's Broodling
						46914,	-- Raging Whelp
						2725,	-- Scalding Whelp
					},
					-- #else
					["cr"] = 2725,	-- Scalding Whelp
					-- #endif
				}),
				i(9386, {	-- Excavator's Brand
					["crs"] = {
						4846,	-- Shadowforge Digger
						4845,	-- Shadowforge Ruffian
						4844,	-- Shadowforge Surveyor
					},
				}),
				i(1521, {	-- Lumbering Ogre Axe
					["timeline"] = { "removed 4.0.3" },
					["cr"] = 2719,	-- Dustbelcher Lord
				}),
				-- #if BEFORE 4.0.3
				i(1993, {	-- Ogremind Ring
					["cr"] = 2907,	-- Dustbelcher Mystic
				}),
				-- #endif
				i(9406, {	-- Spirewind Fetter
					["crs"] = {
						4846,	-- Shadowforge Digger
						4845,	-- Shadowforge Ruffian
						4844,	-- Shadowforge Surveyor
					},
				}),
				i(9384, {	-- Stonevault Shiv
					["crs"] = {
						4846,	-- Shadowforge Digger
						4845,	-- Shadowforge Ruffian
						4844,	-- Shadowforge Surveyor
					},
				}),
				i(9391, {	-- The Shoveler
					["crs"] = {
						4846,	-- Shadowforge Digger
						4845,	-- Shadowforge Ruffian
						4844,	-- Shadowforge Surveyor
					},
				}),
				i(2624, {	-- Thinking Cap
					["timeline"] = { "removed 4.0.3", "added 8.0.0" },
					["cr"] = 2718,	-- Dustbelcher Shaman
				}),
				i(9428, {	-- Unearthed Bands
					["crs"] = {
						4846,	-- Shadowforge Digger
						4845,	-- Shadowforge Ruffian
						4844,	-- Shadowforge Surveyor
					},
				}),
			}),
		},
	}),
}));