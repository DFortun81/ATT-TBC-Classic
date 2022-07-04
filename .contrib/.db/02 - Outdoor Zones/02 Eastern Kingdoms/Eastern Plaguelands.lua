---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(EASTERN_PLAGUELANDS, {
		["lore"] = "The Eastern Plaguelands is the more heavily devastated half of the Plaguelands, the remnants of the Kingdom of Lordaeron. They are located east of the Western Plaguelands and north of the Hinterlands.\n\nThe Scourge's rule here is supreme. Their southern capital of Stratholme is here, under the command of the lich, Kel'Thuzad. The ground is brown, ugly, and sick, the trees corrupted into giant mushrooms and the air polluted with orange mist. Undead, necromancers, and Damned cultists prowl the land. The Scarlet Crusade boasts a large army and battles fervently and vainly against the Scourge; outsiders are also unwelcome. Amani forest trolls strike from the north, attempting to reclaim their ancestral empire.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(771, {	-- Explore Eastern Plaguelands
					-- #if BEFORE WRATH
					["description"] = "Explore Eastern Plaguelands, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
				removeclassicphase(ach(946, {	-- The Argent Dawn
					-- #if BEFORE 3.0.1
					["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnTooltip]],
					["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REP_OnUpdate(t, 529); end]],
					["description"] = "Raise your reputation with the Argent Dawn to Exalted.",
					-- #endif
					["maps"] = { WESTERN_PLAGUELANDS },
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["165:160:537:367"] = 2264,	-- Corin's Crossing
				["175:245:716:299"] = 2268,	-- Light's Hope Chapel
				["180:160:592:241"] = 2271,	-- Eastwall Tower
				["185:150:172:477"] = 2261,	-- The Undercroft
				["190:205:620:128"] = 2272,	-- Northdale
				["190:205:79:98"] = 2627,	-- Terrordale
				["195:275:620:291"] = 2622,	-- Pestilent Scar
				["200:205:156:360"] = 2260,	-- The Marris Stead
				["205:165:291:401"] = 2263,	-- Crown Guard Tower
				["205:165:614:30"] = 2273,	-- Zul'Mashar
				["205:250:409:345"] = 2623,	-- The Infectis Scar
				["210:179:309:489"] = 2262,	-- Darrowshire
				["210:210:271:261"] = 2258,	-- The Fungal Vale
				["220:360:7:231"] = 2619,	-- Thondroril River
				["225:215:722:166"] = 2270,	-- The Noxious Glade
				["230:150:422:36"] = 2276,	-- Quel'Lithien Lodge
				["230:235:442:199"] = 2624,	-- Blackwood Lake
				["240:195:457:109"] = 2275,	-- Northpass Tower
				["240:200:194:9"] = 2279,	-- Stratholme
				["245:170:717:471"] = 2266,	-- Tyr's Hand
				["250:175:537:463"] = 2621,	-- Lake Mereldar
				["360:270:169:83"] = 2277,	-- Plaguewood
				--[[
				[1019] = 1,                              -- The Green Belt
				[2265] = 9,                              -- Scarlet Base Camp
				[2267] = 11,                             -- The Scarlet Basilica
				[2269] = 13,                             -- Browman Mill
				[2274] = 18,                             -- Mazra'Alor
				[2278] = 22,                             -- Scourgehold
				[2299] = 24,                             -- Darrowmere Lake
				[2625] = 30,                             -- Eastwall Gate
				[2626] = 31,                             -- Terrorweb Tunnel
				]]--
			})),
			-- #endif
			n(FACTIONS, {
				faction(529, {	-- Argent Dawn
					["icon"] = icon("INV_Misc_Token_ArgentDawn3"),
					["maps"] = { WESTERN_PLAGUELANDS },
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(67, {	-- Light's Hope Chapel, Eastern Plaguelands
					["cr"] = 12617,	-- Khaelyn Steelwing <Gryphon Master>
					["coord"] = { 81.6, 59.2, EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(68, {	-- Light's Hope Chapel, Eastern Plaguelands
					["cr"] = 12636,	-- Georgia <Bat Handler>
					["coord"] = { 80.2, 57.0, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(5503, {	-- Argent Dawn Commission
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["lvl"] = 50,
					["groups"] = {
						i(12846),	-- Argent Dawn Commission
					},
				}),
				q(6164, {	-- Augustus' Receipt Book
					["qg"] = 12384,	-- Augustus the Touched
					["coord"] = { 14.4, 33.6, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 15884, 1 },	-- Augustus' Receipt Book
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 15884,	-- Augustus' Receipt Book
							["questID"] = 6164,	-- Augustus' Receipt Book
							["coord"] = { 17.5, 31.2, EASTERN_PLAGUELANDS },
						},
					},
				}),
				q(5152, {	-- Auntie Marlene
					["qg"] = 10926,	-- Pamela Redpath
					["sourceQuest"] = 5149,	-- Pamela's Doll
					["coord"] = { 36.4, 90.8, EASTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				applyclassicphase(PHASE_SIX, q(9131, {	-- Binding the Dreadnaught
					["qg"] = 16112,	-- Korfax, Champion of the Light
					["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 22528, 30 },	-- Dark Iron Scraps
					},
					["lvl"] = 55,
					["groups"] = {
						i(22523),	-- Insignia of the Dawn
					},
				})),
				q(5543, {	-- Blood Tinged Skies
					["qg"] = 1855,	-- Tirion Fordring
					["coord"] = { 7.6, 43.6, EASTERN_PLAGUELANDS },
					["lvl"] = 52,
				}),
				applyclassicphase(PHASE_SIX, q(9665, {	-- Bolstering Our Defenses
					["qg"] = 17072,	-- Emmisary Gormok
					["coord"] = { 80.0, 57.4, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- Capture Crown Guard Tower
							["coord"] = { 39.7, 75.4, EASTERN_PLAGUELANDS },
						}),
						objective(2, {	-- Capture Eastwall Tower
							["coord"] = { 67.4, 48.0, EASTERN_PLAGUELANDS },
						}),
						objective(3, {	-- Capture Northpass Tower
							["coord"] = { 56.6, 24.4, EASTERN_PLAGUELANDS },
						}),
						objective(4, {	-- Capture Plaguewood Tower
							["coord"] = { 22.0, 32.0, EASTERN_PLAGUELANDS },
						}),
					},
				})),
				applyclassicphase(PHASE_SIX, q(9127, {	-- Bone Fragments
					["qg"] = 16131,	-- Rohan the Assassin
					["sourceQuest"] = 9126,	-- Bonescythe Digs
					["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22526, 30 },	-- Bone Fragments
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
					},
				})),
				applyclassicphase(PHASE_SIX, q(9126, {	-- Bonescythe Digs
					["qg"] = 16131,	-- Rohan the Assassin
					["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 22526, 30 },	-- Bone Fragments
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
					},
				})),
				q(5544, {	-- Carrion Grubbage
					["qg"] = 1855,	-- Tirion Fordring
					["coord"] = { 7.6, 43.6, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13853, 15 },	-- Slab of Carrion Worm Meat
					},
					["lvl"] = 52,
				}),
				q(5517, {	-- Chromatic Mantle of the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["sourceQuest"] = 5513,	-- Mantles of the Dawn
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, EXALTED },	-- Argent Dawn
					["altQuests"] = {
						5517,	-- Chromatic Mantle of the Dawn
						5521,	-- Chromatic Mantle of the Dawn
						5524,	-- Chromatic Mantle of the Dawn
					},
					["cost"] = {
						{ "i", 12844, 25 },	-- Argent Dawn Valor Token
					},
					["lvl"] = 55,
					["groups"] = {
						i(18182),	-- Chromatic Mantle of the Dawn
					},
				}),
				applyclassicphase(PHASE_SIX, q(9129, {	-- Core of Elements
					["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
					["sourceQuest"] = 9128,	-- The Elemental Equation
					["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22527, 30 },	-- Core of Elements
					},
					["lvl"] = 55,
					["groups"] = {
						i(22523),	-- Insignia of the Dawn
					},
				})),
				q(5508, {	-- Corruptor's Scourgestones
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12843, 1 },	-- Corruptor's Scourgestone
					},
					["lvl"] = 50,
					["groups"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				applyclassicphase(PHASE_SIX, q(9142, {	-- Craftsman's Writ
					["qg"] = 16212,	-- Dispatch Commander Metz <The Argent Dawn>
					["sourceQuest"] = 9141,	-- They Call Me "The Rooster"
					["coord"] = { 81.1, 57.5, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12844, 1 },	-- Argent Dawn Valor Token
					},
					["lvl"] = 55,
					["groups"] = {
						i(22568, {	-- Sealed Craftsman's Writ
							i(22609),	-- Craftsman's Writ - Brightcloth Pants
							i(22600),	-- Craftsman's Writ - Dense Weightstone
							i(22621),	-- Craftsman's Writ - Flask of Petrification
							i(22615),	-- Craftsman's Writ - Gnomish Battle Chicken
							i(22613),	-- Craftsman's Writ - Goblin Sapper Charge
							i(22620),	-- Craftsman's Writ - Greater Arcane Protection Potion
							i(22603),	-- Craftsman's Writ - Huge Thorium Battleaxe
							i(22601),	-- Craftsman's Writ - Imperial Plate Chest
							i(22624),	-- Craftsman's Writ - Lightning Eel
							i(22618),	-- Craftsman's Writ - Major Healing Potion
							i(22617),	-- Craftsman's Writ - Major Mana Potion
							i(22623),	-- Craftsman's Writ - Plated Armorfish
							i(22604),	-- Craftsman's Writ - Radiant Circlet
							i(22606),	-- Craftsman's Writ - Rugged Armor Kit
							i(22611),	-- Craftsman's Writ - Runecloth Bag
							i(22610),	-- Craftsman's Writ - Runecloth Boots
							i(22612),	-- Craftsman's Writ - Runecloth Robe
							i(22608),	-- Craftsman's Writ - Runic Leather Pants
							i(22622),	-- Craftsman's Writ - Stonescale Eel
							i(22614),	-- Craftsman's Writ - Thorium Grenade
							i(22616),	-- Craftsman's Writ - Thorium Tube
							i(22602),	-- Craftsman's Writ - Volcanic Hammer
							i(22607),	-- Craftsman's Writ - Wicked Leather Belt
							i(22605),	-- Craftsman's Writ - Wicked Leather Headband
						}),
					},
				})),
				applyclassicphase(PHASE_SIX, q(9188, {	-- Craftsman's Writ - Brightcloth Pants
					["provider"] = { "i", 22609 },	-- Craftsman's Writ - Brightcloth Pants
					["repeatable"] = true,
					["cost"] = {
						{ "i", 14104, 6 },	-- Brightcloth Pants
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9178, {	-- Craftsman's Writ - Dense Weightstone
					["provider"] = { "i", 22600 },	-- Craftsman's Writ - Dense Weightstone
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12643, 120 },	-- Dense Weightstone
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9203, {	-- Craftsman's Writ - Flask of Petrification
					["provider"] = { "i", 22621 },	-- Craftsman's Writ - Flask of Petrification
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13506, 1 },	-- Flask of Petrification
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9197, {	-- Craftsman's Writ - Gnomish Battle Chicken
					["provider"] = { "i", 22615 },	-- Craftsman's Writ - Gnomish Battle Chicken
					["repeatable"] = true,
					["cost"] = {
						{ "i", 10725, 4 },	-- Gnomish Battle Chicken
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9195, {	-- Craftsman's Writ - Goblin Sapper Charge
					["provider"] = { "i", 22613 },	-- Craftsman's Writ - Goblin Sapper Charge
					["repeatable"] = true,
					["cost"] = {
						{ "i", 10646, 20 },	-- Goblin Sapper Charge
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9201, {	-- Craftsman's Writ - Greater Arcane Protection Potion
					["provider"] = { "i", 22620 },	-- Craftsman's Writ - Greater Arcane Protection Potion
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13461, 15 },	-- Greater Arcane Protection Potion
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9182, {	-- Craftsman's Writ - Huge Thorium Battleaxe
					["provider"] = { "i", 22603 },	-- Craftsman's Writ - Huge Thorium Battleaxe
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12775, 3 },	-- Huge Thorium Battleaxe
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9179, {	-- Craftsman's Writ - Imperial Plate Chest
					["provider"] = { "i", 22601 },	-- Craftsman's Writ - Imperial Plate Chest
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12422, 3 },	-- Imperial Plate Chest
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9206, {	-- Craftsman's Writ - Lightning Eel
					["provider"] = { "i", 22624 },	-- Craftsman's Writ - Lightning Eel
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13757, 30 },	-- Lightning Eel
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9202, {	-- Craftsman's Writ - Major Healing Potion
					["provider"] = { "i", 22618 },	-- Craftsman's Writ - Major Healing Potion
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13446, 20 },	-- Major Healing Potion
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9200, {	-- Craftsman's Writ - Major Mana Potion
					["provider"] = { "i", 22617 },	-- Craftsman's Writ - Major Mana Potion
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13444, 10 },	-- Major Mana Potion
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9205, {	-- Craftsman's Writ - Plated Armorfish
					["provider"] = { "i", 22623 },	-- Craftsman's Writ - Plated Armorfish
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13890, 30 },	-- Plated Armorfish
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9183, {	-- Craftsman's Writ - Radiant Circlet
					["provider"] = { "i", 22604 },	-- Craftsman's Writ - Radiant Circlet
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12417, 3 },	-- Radiant Circlet
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9185, {	-- Craftsman's Writ - Rugged Armor Kit
					["provider"] = { "i", 22606 },	-- Craftsman's Writ - Rugged Armor Kit
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15564, 25 },	-- Rugged Armor Kit
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9191, {	-- Craftsman's Writ - Runecloth Bag
					["provider"] = { "i", 22611 },	-- Craftsman's Writ - Runecloth Bag
					["repeatable"] = true,
					["cost"] = {
						{ "i", 14046, 8 },	-- Runecloth Bag
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9190, {	-- Craftsman's Writ - Runecloth Boots
					["provider"] = { "i", 22610 },	-- Craftsman's Writ - Runecloth Boots
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13864, 8 },	-- Runecloth Boots
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9194, {	-- Craftsman's Writ - Runecloth Robe
					["provider"] = { "i", 22612 },	-- Craftsman's Writ - Runecloth Robe
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13858, 8 },	-- Runecloth Robe
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9187, {	-- Craftsman's Writ - Runic Leather Pants
					["provider"] = { "i", 22608 },	-- Craftsman's Writ - Runic Leather Pants
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15095, 4 },	-- Runic Leather Pants
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9204, {	-- Craftsman's Writ - Stonescale Eel
					["provider"] = { "i", 22622 },	-- Craftsman's Writ - Stonescale Eel
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13422, 40 },	-- Stonescale Eel
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9196, {	-- Craftsman's Writ - Thorium Grenade
					["provider"] = { "i", 22614 },	-- Craftsman's Writ - Thorium Grenade
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15993, 20 },	-- Thorium Grenade
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9198, {	-- Craftsman's Writ - Thorium Tube
					["provider"] = { "i", 22616 },	-- Craftsman's Writ - Thorium Tube
					["repeatable"] = true,
					["cost"] = {
						{ "i", 16000, 14 },	-- Thorium Tube
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9181, {	-- Craftsman's Writ - Volcanic Hammer
					["provider"] = { "i", 22602 },	-- Craftsman's Writ - Volcanic Hammer
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12792, 3 },	-- Volcanic Hammer
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9186, {	-- Craftsman's Writ - Wicked Leather Belt
					["provider"] = { "i", 22607 },	-- Craftsman's Writ - Wicked Leather Belt
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15088, 9 },	-- Wicked Leather Belt
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9184, {	-- Craftsman's Writ - Wicked Leather Headband
					["provider"] = { "i", 22605 },	-- Craftsman's Writ - Wicked Leather Headband
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15086, 10 },	-- Wicked Leather Headband
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9125, {	-- Crypt Fiend Parts
					["qg"] = 16132,	-- Huntsman Leopold
					["sourceQuest"] = 9124,	-- Cryptstalker Armor Doesn't Make Itself...
					["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22525, 30 },	-- Crypt Fiend Parts
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
					},
				})),
				applyclassicphase(PHASE_SIX, q(9124, {	-- Cryptstalker Armor Doesn't Make Itself...
					["qg"] = 16132,	-- Huntsman Leopold
					["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 22525, 30 },	-- Crypt Fiend Parts
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
					},
				})),
				applyclassicphase(PHASE_SIX, q(9132, {	-- Dark Iron Scraps
					["qg"] = 16112,	-- Korfax, Champion of the Light
					["sourceQuest"] = 9131,	-- Binding the Dreadnaught
					["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22528, 30 },	-- Dark Iron Scraps
					},
					["lvl"] = 55,
					["groups"] = {
						i(22523),	-- Insignia of the Dawn
					},
				})),
				q(5211, {	-- Defenders of Darrowshire
					["qg"] = 11063,	-- Carlin Redpath
					["sourceQuest"] = 5241,	-- Uncle Carlin
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(5542, {	-- Demon Dogs
					["qg"] = 1855,	-- Tirion Fordring
					["coord"] = { 7.6, 43.6, EASTERN_PLAGUELANDS },
					["lvl"] = 52,
				}),
				q(6135, {	-- Duskwing, Oh How I Hate Thee...
					["qg"] = 11878,	-- Nathanos Blightcaller
					["sourceQuest"] = 6133,	-- The Ranger Lord's Behest
					["coord"] = { 26.6, 74.8, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cr"] = 11897,	-- Duskwing
					["cost"] = {
						{ "i", 15850, 1 },	-- Patch of Duskwing's Fur
					},
					["lvl"] = 56,
					["groups"] = {
						i(16994),	-- Duskwing Gloves
						i(16995),	-- Duskwing Mantle
					},
				}),
				applyclassicphase(PHASE_SIX, q(9228, {	-- Epic Armaments of Battle - Exalted Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, EXALTED },	-- Argent Dawn
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 27 },	-- Insignia of the Crusade
						{ "i", 22523, 27 },	-- Insignia of the Dawn
					},
					["lvl"] = 55,
					["groups"] = {
						i(22657),	-- Amulet of the Dawn
						i(22667),	-- Bracers of Hope
						i(22668),	-- Bracers of Subterfuge
						i(22659),	-- Medallion of the Dawn
						i(22678),	-- Talisman of Ascendance
						i(22656),	-- The Purifier
					},
				})),
				applyclassicphase(PHASE_SIX, q(9222, {	-- Epic Armaments of Battle - Friend of the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, FRIENDLY },	-- Argent Dawn
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 110 },	-- Insignia of the Crusade
						{ "i", 22523, 110 },	-- Insignia of the Dawn
					},
					["lvl"] = 55,
					["groups"] = {
						i(22657),	-- Amulet of the Dawn
						i(22667),	-- Bracers of Hope
						i(22668),	-- Bracers of Subterfuge
						i(22659),	-- Medallion of the Dawn
						i(22678),	-- Talisman of Ascendance
						i(22656),	-- The Purifier
					},
				})),
				applyclassicphase(PHASE_SIX, q(9224, {	-- Epic Armaments of Battle - Honored Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, HONORED },	-- Argent Dawn
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 75 },	-- Insignia of the Crusade
						{ "i", 22523, 75 },	-- Insignia of the Dawn
					},
					["lvl"] = 55,
					["groups"] = {
						i(22657),	-- Amulet of the Dawn
						i(22667),	-- Bracers of Hope
						i(22668),	-- Bracers of Subterfuge
						i(22659),	-- Medallion of the Dawn
						i(22678),	-- Talisman of Ascendance
						i(22656),	-- The Purifier
					},
				})),
				applyclassicphase(PHASE_SIX, q(9225, {	-- Epic Armaments of Battle - Revered Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, REVERED },	-- Argent Dawn
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 45 },	-- Insignia of the Crusade
						{ "i", 22523, 45 },	-- Insignia of the Dawn
					},
					["lvl"] = 55,
					["groups"] = {
						i(22657),	-- Amulet of the Dawn
						i(22667),	-- Bracers of Hope
						i(22668),	-- Bracers of Subterfuge
						i(22659),	-- Medallion of the Dawn
						i(22678),	-- Talisman of Ascendance
						i(22656),	-- The Purifier
					},
				})),
				applyclassicphase(PHASE_SIX, q(9664, {	-- Establishing New Outposts
					["qg"] = 17069,	-- Emissary Whitebeard
					["coord"] = { 81.3, 59.4, EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- Capture Crown Guard Tower
							["coord"] = { 39.7, 75.4, EASTERN_PLAGUELANDS },
						}),
						objective(2, {	-- Capture Eastwall Tower
							["coord"] = { 67.4, 48.0, EASTERN_PLAGUELANDS },
						}),
						objective(3, {	-- Capture Northpass Tower
							["coord"] = { 56.6, 24.4, EASTERN_PLAGUELANDS },
						}),
						objective(4, {	-- Capture Plaguewood Tower
							["coord"] = { 22.0, 32.0, EASTERN_PLAGUELANDS },
						}),
					},
				})),
				q(5246, {	-- Fragments of the Past (1/2)
					["qg"] = 10304,	-- Aurora Skycaller
					["sourceQuest"] = 5245,	-- Troubled Spirits of Kel'Theril
					["coord"] = { 53.4, 22, EASTERN_PLAGUELANDS },
					["maps"] = { AZSHARA },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13313, 1 },	-- Sacred Highborne Writings
					},
					["lvl"] = 53,
					["groups"] = {
						{
							["itemID"] = 13313,	-- Sacred Highborne Writings
							["questID"] = 5246,	-- Fragments of the Past (1/2)
							["coord"] = { 41.4, 52.5, AZSHARA }
						},
					},
				}),
				q(5247, {	-- Fragments of the Past (2/2)
					["qg"] = 10304,	-- Aurora Skycaller
					["sourceQuest"] = 5246,	-- Fragments of the Past (1/2)
					["coord"] = { 53.4, 22, EASTERN_PLAGUELANDS },
					["maps"] = { DIRE_MAUL, FERALAS, UNGORO_CRATER },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12655, 1 },	-- Enchanted Thorium Bar
						{ "i", 11562, 5 },	-- Crystal Restore
						{ "i", 16973, 1 },	-- Vial of Dire Water
					},
					["lvl"] = 53,
					["groups"] = {
						{
							["itemID"] = 16974,	-- Empty Water Vial
							["coord"] = { 42.70, 68.63, FERALAS },
							["groups"] = {
								{
									["itemID"] = 16973,	-- Vial of Dire Water
									["questID"] = 5247,	-- Fragments of the Past (2/2)
								},
							},
						},
					},
				}),
				q(6024, {	-- Hameya's Plea
					["provider"] = { "o", 177667 },	-- Torn Scroll
					["coord"] = { 27.3, 85.3, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 15767, 1 },	-- Hameya's Key
					},
					["lvl"] = 54,
					["groups"] = {
						{
							["itemID"] = 15767,	-- Hameya's Key
							["questID"] = 6024,	-- Hameya's Plea
							["cr"] = 12248,	-- Infiltrator Hameya
							["coord"] = { 70.6, 18.8, EASTERN_PLAGUELANDS },
						},
						i(15814),	-- Hameya's Slayer
						i(15815),	-- Hameya's Cloak
					},
				}),
				q(5168, {	-- Heroes of Darrowshire
					["qg"] = 11063,	-- Carlin Redpath
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12954, 1 },	-- Davil's Libram
						{ "i", 12955, 1 },	-- Redpath's Shield
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 12954,	-- Davil's Libram
							["questID"] = 5168,	-- Heroes of Darrowshire
							["coord"] = { 42.4, 18.9, WESTERN_PLAGUELANDS },
						},
						{
							["itemID"] = 12955,	-- Redpath's Shield
							["questID"] = 5168,	-- Heroes of Darrowshire
							["coord"] = { 63.7, 57.2, WESTERN_PLAGUELANDS },
						},
					},
				}),
				q(5942, {	-- Hidden Treasures
					["qg"] = 10926,	-- Pamela Redpath
					["sourceQuest"] = 5721,	-- The Battle of Darrowshire
					["coord"] = { 36.4, 90.8, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 15328, 1 },	-- Joseph's Key
					},
					["lvl"] = 50,
					["groups"] = {
						i(15855),  -- Ring of Protection
						i(15856),  -- Archlight Talisman
						i(15857),  -- Magebane Scion
					},
				}),
				q(5509, {	-- Invader's Scourgestones
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12841, 10 },	-- Invader's Scourgestones
					},
					["lvl"] = 50,
					["groups"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(5513, {	-- Mantles of the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["minReputation"] = { 529, REVERED },	-- Argent Dawn
					["cost"] = {
						{ "i", 12844, 10 },	-- Argent Dawn Valor Token
					},
					["lvl"] = 55,
				}),
				q(5206, {	-- Marauders of Darrowshire
					["qg"] = 11063,	-- Carlin Redpath
					["sourceQuests"] = {
						5181,	-- Villains of Darrowshire
						5168,	-- Heroes of Darrowshire
						5154,	-- The Annals of Darrowshire
					},
					["cost"] = {
						{ "i", 13155, 5 },	-- Resonating Skull
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 13156,	-- Mystic Crystal
							["cost"] = {
								{ "i", 13157, 1 },	-- Fetid Skull
							},
							["groups"] = {
								{
									["itemID"] = 13155,	-- Resonating Skull
									["questID"] = 5206,	-- Marauders of Darrowshire
									["cr"] = 8529,	-- Scourge Champion
								},
							},
						},
					},
				}),
				q(5510, {	-- Minion's Scourgestones
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12840, 20 },	-- Minion's Scourgestone
					},
					["lvl"] = 50,
					["groups"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(6146, {	-- Nathanos' Ruse
					["qg"] = 11878,	-- Nathanos Blightcaller
					["sourceQuest"] = 6145,	-- The Crimson Courier
					["coord"] = { 26.6, 74.8, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15876, 1 },	-- Nathanos' Chest
						{ "i", 15875, 1 },	-- Rotten Apple
						{ "i", 13852, 1 },	-- The Grand Crusader's Command
					},
					["lvl"] = 56,
				}),
				q(5149, {	-- Pamela's Doll
					["qg"] = 10926,	-- Pamela Redpath
					["sourceQuests"] = {
						5142,	-- Little Pamela
						5601,	-- Sister Pamela
					},
					["coord"] = { 36.4, 90.8, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12886, 1 },	-- Pamela's Doll's Head
						{ "i", 12887, 1 },	-- Pamela's Doll's Left Side
						{ "i", 12888, 1 },	-- Pamela's Doll's Right Side
						{ "i", 12885, 1 },	-- Pamela's Doll
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 12886,	-- Pamela's Doll's Head
							["questID"] = 5149,	-- Pamela's Doll
							["coords"] = {
								{ 39.6, 90.1, EASTERN_PLAGUELANDS },
								{ 38.1, 92.5, EASTERN_PLAGUELANDS },
								{ 39.6, 92.5, EASTERN_PLAGUELANDS },
							},
						},
						{
							["itemID"] = 12887,	-- Pamela's Doll's Left Side
							["questID"] = 5149,	-- Pamela's Doll
							["coords"] = {
								{ 38.2, 92.1, EASTERN_PLAGUELANDS },
								{ 29.6, 90.2, EASTERN_PLAGUELANDS },
								{ 39.6, 92.7, EASTERN_PLAGUELANDS },
							},
						},
						{
							["itemID"] = 12888,	-- Pamela's Doll's Right Side
							["questID"] = 5149,	-- Pamela's Doll
							["coords"] = {
								{ 38.6, 92.7, EASTERN_PLAGUELANDS },
								{ 39.5, 92.5, EASTERN_PLAGUELANDS },
								{ 39.6, 90.0, EASTERN_PLAGUELANDS },
							},
						},
					},
				}),
				q(5941, {	-- Return to Chromie
					["qg"] = 11063,	-- Carlin Redpath
					["sourceQuest"] = 5206,	-- Marauders of Darrowshire
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 15314, 1 },	-- Bundle of Relics
					},
					["lvl"] = 50,
				}),
				q(6147, {	-- Return to Nathanos
					["qg"] = 11898,	-- Crusader Lord Valdelmar
					["sourceQuest"] = 6146,	-- Nathanos' Ruse
					["coord"] = { 88.2, 86.2, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 56,
				}),
				applyclassicphase(PHASE_SIX, q(9136, {	-- Savage Flora
					["qg"] = 16135,	-- Rayne
					["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 22529, 30 },	-- Savage Frond
					},
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9137, {	-- Savage Fronds
					["qg"] = 16135,	-- Rayne
					["sourceQuest"] = 9136,	-- Savage Flora
					["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22529, 30 },	-- Savage Frond
					},
					["lvl"] = 55,
					["groups"] = {
						i(22523),	-- Insignia of the Dawn
						i(22524),	-- Insignia of the Crusade
					},
				})),
				applyclassicphase(PHASE_SIX, q(9227, {	-- Superior Armaments of Battle - Exalted Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["minReputation"] = { 529, EXALTED },	-- Argent Dawn
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 6 },	-- Insignia of the Crusade
						{ "i", 22523, 6 },	-- Insignia of the Dawn
					},
					["lvl"] = 55,
					["groups"] = {
						i(22681),	-- Band of Piety
						i(22680),	-- Band of Resolution
						i(22688),	-- Verimonde's Last Resort
						i(22679),	-- Supply Bag
						i(22690),	-- Leggings of the Plague Hunter
						i(22689),	-- Sanctified Leather Helm
					},
				})),
				applyclassicphase(PHASE_SIX, q(9221, {	-- Superior Armaments of Battle - Friend of the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["minReputation"] = { 529, FRIENDLY },	-- Argent Dawn
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 30 },	-- Insignia of the Crusade
						{ "i", 22523, 30 },	-- Insignia of the Dawn
					},
					["lvl"] = 55,
					["groups"] = {
						i(22681),	-- Band of Piety
						i(22680),	-- Band of Resolution
						i(22688),	-- Verimonde's Last Resort
						i(22679),	-- Supply Bag
						i(22690),	-- Leggings of the Plague Hunter
						i(22689),	-- Sanctified Leather Helm
					},
				})),
				applyclassicphase(PHASE_SIX, q(9223, {	-- Superior Armaments of Battle - Honored Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["minReputation"] = { 529, HONORED },	-- Argent Dawn
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 20 },	-- Insignia of the Crusade
						{ "i", 22523, 20 },	-- Insignia of the Dawn
					},
					["lvl"] = 55,
					["groups"] = {
						i(22681),	-- Band of Piety
						i(22680),	-- Band of Resolution
						i(22688),	-- Verimonde's Last Resort
						i(22679),	-- Supply Bag
						i(22690),	-- Leggings of the Plague Hunter
						i(22689),	-- Sanctified Leather Helm
					},
				})),
				applyclassicphase(PHASE_SIX, q(9226, {	-- Superior Armaments of Battle - Revered Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["minReputation"] = { 529, REVERED },	-- Argent Dawn
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 7 },	-- Insignia of the Crusade
						{ "i", 22523, 7 },	-- Insignia of the Dawn
					},
					["lvl"] = 55,
					["groups"] = {
						i(22681),	-- Band of Piety
						i(22680),	-- Band of Resolution
						i(22688),	-- Verimonde's Last Resort
						i(22679),	-- Supply Bag
						i(22690),	-- Leggings of the Plague Hunter
						i(22689),	-- Sanctified Leather Helm
					},
				})),
				q(6026, {	-- That's Asking A Lot
					["qg"] = 11033,	-- Smokey LaRue
					["coord"] = { 80.6, 58.0, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 10562, 8 },	-- Hi-Explosive Bomb
						{ "i", 10560, 8 },	-- Unstable Trigger
						{ "i", 12359, 2 },	-- Thorium Bar
						{ "i", 11128, 1 },	-- Golden Rod
					},
					["lvl"] = 54,
				}),
				q(7622, {	-- The Balance of Light and Shadow
					["qg"] = 14494,	-- Eris Havenfire
					["coord"] = { 20.8, 18.4, EASTERN_PLAGUELANDS },
					["classes"] = { PRIEST },
					["lvl"] = 60,
					["groups"] = {
						i(18659, {	-- Splinter of Nordrassil
							["cost"] = {
								{ "i", 18646, 1 },	-- The Eye of Divinity
								{ "i", 18665, 1 },	-- The Eye of Shadow
							},
							["groups"] = {
								i(18609),	-- Anathema
								i(18608),	-- Benediction
							},
						}),
					},
				}),
				q(5721, {	-- The Battle of Darrowshire
					["qg"] = 10667,	-- Chromie
					["sourceQuest"] = 5941,	-- Return to Chromie
					["coord"] = { 39.4, 66.8, WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 15209, 1 },	-- Relic Bundle
					},
					["lvl"] = 55,
					["groups"] = {
						i(15723),	-- Tea with Sugar
					},
				}),
				q(6144, {	-- The Call to Command
					["qg"] = 11878,	-- Nathanos Blightcaller
					["coord"] = { 26.6, 74.8, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 56,
				}),
				q(6136, {	-- The Corpulent One
					["qg"] = 11878,	-- Nathanos Blightcaller
					["coord"] = { 26.6, 74.8, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cr"] = 11896,	-- Borelgore
					["lvl"] = 56,
					["groups"] = {
						i(17002),	-- Ichor Spitter
						i(17003),	-- Skullstone Hammer
						i(17004),	-- Sarah's Guide
					},
				}),
				q(6145, {	-- The Crimson Courier
					["qg"] = 2425,	-- Varimathras
					["sourceQuest"] = 6144,	-- The Call to Command
					["coord"] = { 56.2, 92.6, UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15868, 1 },	-- The Grand Crusader's Command
					},
					["lvl"] = 56,
					["groups"] = {
						{
							["itemID"] = 15868,	-- The Grand Crusader's Command
							["questID"] = 6145,	-- The Crimson Courier
							["cr"] = 12337,	-- Crimson Courier
						},
					},
				}),
				applyclassicphase(PHASE_SIX, q(9128, {	-- The Elemental Equation
					["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
					["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 22527, 30 },	-- Core of Elements
					},
					["groups"] = {
						i(22523),	-- Insignia of the Dawn
					},
				})),
				applyclassicphase(PHASE_SIX, q(9211, {	-- The Ice Guard
					["qg"] = 16133,	-- Mataus the Wrathcaster
					["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 10 },	-- Insignia of the Crusade
						{ "g", 300000 },	-- 30g
					},
					["lvl"] = 60,
					["groups"] = {
						i(22636),	-- Ice Guard
					},
				})),
				q(6133, {	-- The Ranger Lord's Behest
					["qg"] = 11878,	-- Nathanos Blightcaller
					["coord"] = { 26.6, 74.8, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15847, 1 },	-- Quel'Thalas Registry
					},
					["lvl"] = 54,
					["groups"] = {
						{
							["itemID"] = 15847,	-- Quel'Thalas Registry
							["questID"] = 6133,	-- The Ranger Lord's Behest
							["coord"] = { 52.1, 18.5, EASTERN_PLAGUELANDS },
						},
					},
				}),
				q(6148, {	-- The Scarlet Oracle, Demetria
					["qg"] = 11878,	-- Nathanos Blightcaller
					["sourceQuest"] = 6147,	-- Return to Nathanos
					["coord"] = { 26.6, 74.8, EASTERN_PLAGUELANDS },
					["cr"] = 12339,	-- Demetria <The Scarlet Oracle>
					["races"] = HORDE_ONLY,
					["lvl"] = 56,
					["groups"] = {
						i(16996),	-- Gorewood Bow
						i(16997),	-- Stormrager
						i(16998),	-- Sacred Protector
					},
				}),
				applyclassicphase(PHASE_SIX, q(9213, {	-- The Shadow Guard
					["qg"] = 16133,	-- Mataus the Wrathcaster
					["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22524, 10 },	-- Insignia of the Crusade
						{ "g", 300000 },	-- 30g
					},
					["lvl"] = 60,
					["groups"] = {
						i(22638),	-- Shadow Guard
					},
				})),
				applyclassicphase(PHASE_SIX, q(9141, {	-- They Call Me "The Rooster"
					["qg"] = 16212,	-- Dispatch Commander Metz <The Argent Dawn>
					["coord"] = { 81.1, 57.5, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12844, 1 },	-- Argent Dawn Valor Token
					},
					["lvl"] = 55,
					["groups"] = {
						i(22568),	-- Sealed Craftsman's Writ
					},
				})),
				q(6022, {	-- To Kill With Purpose
					["qg"] = 11878,	-- Nathanos Blightcaller
					["coord"] = { 26.6, 74.8, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15448, 1 },	-- Coagulated Rot
					},
					["lvl"] = 54,
					["groups"] = {
						i(15454, {	-- Mortar and Pestle
							["cost"] = {
								{ "i", 15447, 7 },	-- Living Rot
							},
							["groups"] = {
								{
									["itemID"] = 15448,	-- Coagulated Rot
									["questID"] = 6022,	-- To Kill With Purpose
								},
							},
						}),
					},
				}),
				q(5248, {	-- Tormented By the Past
					["qg"] = 10304,	-- Aurora Skycaller
					["sourceQuest"] = 5247,	-- Fragments of the Past
					["coord"] = { 53.4, 22, EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13347, 1 },	-- Crystal of Zin-Malor (Provided)
					},
					["lvl"] = 53,
				}),
				q(6042, {	-- Un-Life's Little Annoyances
					["qg"] = 11878,	-- Nathanos Blightcaller
					["coord"] = { 26.6, 74.8, EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				q(5241, {	-- Uncle Carlin
					["qg"] = 10926,	-- Pamela Redpath
					["sourceQuest"] = 5149,	-- Pamela's Doll
					["coord"] = { 36.4, 90.8, EASTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(5181, {	-- Villains of Darrowshire
					["qg"] = 11063,	-- Carlin Redpath
					["sourceQuest"] = 5210,	-- Brother Carlin
					["coord"] = { 81.4, 59.8, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12957, 1 },	-- Shattered Sword of Marduk
						{ "i", 12956, 1 },	-- Skull of Horgus
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 12957,	-- Shattered Sword of Marduk
							["questID"] = 5181,	-- Villains of Darrowshire
							["coord"] = { 53.9, 65.8, EASTERN_PLAGUELANDS },
						},
						{
							["itemID"] = 12956,	-- Skull of Horgus
							["questID"] = 5181,	-- Villains of Darrowshire
							["coord"] = { 51.1, 49.9, EASTERN_PLAGUELANDS },
						},
					},
				}),
				q(6041, {	-- When Smokey Sings, I Get Violent
					["qg"] = 11033,	-- Smokey LaRue
					["sourceQuest"] = 6026,	-- That's Asking A Lot
					["coord"] = { 80.6, 58.0, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 15736, 1 },	-- Smokey's Special Compound
					},
					["lvl"] = 54,
					["groups"] = {
						i(16992),	-- Smokey's Explosive Launcher
						i(16993),	-- Smokey's Fireshooter
						i(5951),	-- Moist Towelette
						i(17523),	-- Smokey's Drape
					},
				}),
				applyclassicphase(PHASE_SIX, q(9165, {	-- Writ of Safe Passage
					["qg"] = 16226,	-- Guard Didier <Brotherhood of the Light>
					["description"] = "Twice per day, Guard Didier starts a caravan westward. Simply protect him and the mules, but if any of them die, it's over. After the caravan arrives at its destination, he will offer this quest.",
					["repeatable"] = true,
					["cost"] = {
						{ "i", 22593, 1 },	-- Writ of Safe Passage
					},
					["lvl"] = 55,
					["groups"] = {
						i(22523),	-- Insignia of the Dawn
						i(22524),	-- Insignia of the Crusade
					},
				})),
				q(6021, {	-- Zaeldarr the Outcast
					["qg"] = 11038,	-- Caretaker Alen
					["coord"] = { 79.4, 63.8, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 15785, 1 },	-- Zaeldarr's Head
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 15785,	-- Zaeldarr's Head
							["questID"] = 6021,	-- Zaeldarr the Outcast
							["cr"] = 12250,	-- Zaeldarr the Outcast
							["coord"] = { 27.6, 85.2, EASTERN_PLAGUELANDS },
						},
					},
				}),
			}),
			n(RARES, {
				i(12843, {	-- Corruptor's Scourgestone
					["description"] = "Can drop from any Undead rare mob or boss in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				n(10827, {  -- Deathspeaker Selendre <Cult of the Damned>
					["coords"] = {
						{ 41.4, 49.2, EASTERN_PLAGUELANDS },
						{ 82.8, 40.0, EASTERN_PLAGUELANDS },
						{ 85.8, 46.2, EASTERN_PLAGUELANDS },
					},
				}),
				n(10817, {  -- Duggan Wildhammer
					["races"] = HORDE_ONLY,
					["coords"] = {
						{ 49.4, 63.2, EASTERN_PLAGUELANDS },
						{ 41.8, 69.8, EASTERN_PLAGUELANDS },
						{ 32.8, 83.0, EASTERN_PLAGUELANDS },
						{ 25.8, 88.6, EASTERN_PLAGUELANDS },
						{ 19.8, 64.4, EASTERN_PLAGUELANDS },
						{ 15.8, 79.2, EASTERN_PLAGUELANDS },
					},
				}),
				n(10825, {  -- Gish the Unmoving
					["coords"] = {
						{ 51.6, 43.8, EASTERN_PLAGUELANDS },
						{ 53.6, 44.6, EASTERN_PLAGUELANDS },
						{ 54.8, 50.6, EASTERN_PLAGUELANDS },
						{ 57.0, 53.8, EASTERN_PLAGUELANDS },
						{ 63.0, 55.6, EASTERN_PLAGUELANDS },
						{ 67.0, 57.0, EASTERN_PLAGUELANDS },
						{ 72.6, 56.8, EASTERN_PLAGUELANDS },
					},
				}),
				n(10821, {  -- Hed'mush the Rotting
					["coords"] = {
						{ 55.6, 25.4, EASTERN_PLAGUELANDS },
						{ 67.4, 50.2, EASTERN_PLAGUELANDS },
						{ 39.0, 74.6, EASTERN_PLAGUELANDS },
					},
				}),
				n(10828, {  -- High General Abbendis
					["coords"] = {
						{ 80.6, 85.6, EASTERN_PLAGUELANDS },
						{ 88.4, 86.6, EASTERN_PLAGUELANDS },
					},
				}),
				n(10826, {  -- Lord Darkscythe
					["coords"] = {
						{ 26.0, 33.4, EASTERN_PLAGUELANDS },
						{ 35.0, 24.8, EASTERN_PLAGUELANDS },
						{ 39.2, 27.0, EASTERN_PLAGUELANDS },
						{ 43.6, 28.8, EASTERN_PLAGUELANDS },
						{ 40.0, 36.4, EASTERN_PLAGUELANDS },
					},
					["groups"] = {
						i(16039),	-- Ta'Kierthan Songblade
					},
				}),
				n(10824, {  -- Ranger Lord Hawkspear
					["coord"] = { 53.4, 16.0, EASTERN_PLAGUELANDS },
				}),
				n(10822, {  -- Warlord Thresh'jin
					["coords"] = {
						{ 65.6, 21.8, EASTERN_PLAGUELANDS },
						{ 68.8, 20.8, EASTERN_PLAGUELANDS },
						{ 70.8, 19.8, EASTERN_PLAGUELANDS },
						{ 72.4, 13.0, EASTERN_PLAGUELANDS },
					},
				}),
				n(10823, {  -- Zul'Brin Warpbranch
					["coords"] = {
						{ 68.2, 21.2, EASTERN_PLAGUELANDS },
						{ 69.4, 16.4, EASTERN_PLAGUELANDS },
						{ 72.6, 18.8, EASTERN_PLAGUELANDS },
						{ 72.6, 13.4, EASTERN_PLAGUELANDS },
					},
				}),
			}),
			n(VENDORS, {
				n(12941, {	-- Jase Farlane <Trade Supplies>
					["coord"] = { 80.6, 57.6, EASTERN_PLAGUELANDS },
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, i(21954)),	-- Design: Ring of Bitter Shadows
						i(15756),	-- Pattern: Runic Leather Headband
					},
				}),
				n(11536, {	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, EASTERN_PLAGUELANDS },
					["groups"] = {
						i(22014, {	-- Hallowed Brazier
							["timeline"] = { "removed 4.0.3" },
							["minReputation"] = { 529, HONORED },	-- Argent Dawn
							["cost"] = { { "g", 1500000 } },	-- 150g
						}),
						i(18182, {	-- Chromatic Mantle of the Dawn
							["description"] = "You must have first completed 'Chromatic Mantle of the Dawn' in order to purchase this.",
							["sourceQuests"] = {
								5517,	-- Chromatic Mantle of the Dawn
								5521,	-- Chromatic Mantle of the Dawn
								5524,	-- Chromatic Mantle of the Dawn
							},
						}),
						i(18171, {	-- Arcane Mantle of the Dawn
							["description"] = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18169, {	-- Flame Mantle of the Dawn
							["description"] = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18170, {	-- Frost Mantle of the Dawn
							["description"] = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18172, {	-- Nature Mantle of the Dawn
							["description"] = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18173, {	-- Shadow Mantle of the Dawn
							["description"] = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(19447), 	-- Formula: Enchant Bracer - Healing Power (RECIPE!)
						i(19446), 	-- Formula: Enchant Bracer - Argent Versatility / CLASSIC: Formula: Enchant Bracer - Mana Regeneration (RECIPE!)
						i(19442), 	-- Formula: Powerful Anti-Venom
						i(19216), 	-- Pattern: Argent Boots
						i(19217), 	-- Pattern: Argent Shoulders
						i(19328), 	-- Pattern: Dawn Treaders
						i(19329), 	-- Pattern: Golden Mantle of the Dawn
						i(19203), 	-- Plans: Girdle of the Dawn
						i(19205), 	-- Plans: Gloves of the Dawn
						i(13482),	-- Recipe: Transmute Air to Fire
					},
				}),
			}),
			n(ZONE_DROPS, {
				applyclassicphase(PHASE_SIX, i(22526)),	-- Bone Fragments
				i(12841, {	-- Invader's Scourgestone
					["description"] = "Can drop from any Undead mobs in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(12840, {	-- Minion's Scourgestone
					["description"] = "Can drop from weak Undead mobs in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(12938, {	-- Blood of Heroes
					["description"] = "This item can be found sporatically on the ground in the Plaguelands.",
					["cr"] = 10996,	-- Fallen Hero
					["coords"] = {
						-- Plaguewood
						{ 34.5, 25.8, EASTERN_PLAGUELANDS },
						{ 38.8, 26.7, EASTERN_PLAGUELANDS },
						{ 33.6, 32.6, EASTERN_PLAGUELANDS },
						{ 38.5, 31.1, EASTERN_PLAGUELANDS },
						{ 36.7, 38.1, EASTERN_PLAGUELANDS },
						{ 38.9, 36.1, EASTERN_PLAGUELANDS },
						{ 44.9, 32.9, EASTERN_PLAGUELANDS },
						{ 49.1, 35.5, EASTERN_PLAGUELANDS },
						
						-- Blackwood Lake
						{ 47.5, 40.8, EASTERN_PLAGUELANDS },
						{ 50.3, 45.5, EASTERN_PLAGUELANDS },
						{ 53.5, 50.7, EASTERN_PLAGUELANDS },
						
						-- Light's Hope
						{ 66.1, 53.1, EASTERN_PLAGUELANDS },
						{ 73.8, 51.1, EASTERN_PLAGUELANDS },
						{ 76.2, 50.7, EASTERN_PLAGUELANDS },
						{ 75.6, 55.3, EASTERN_PLAGUELANDS },
						{ 74.7, 58.7, EASTERN_PLAGUELANDS },
						{ 78.5, 57.5, EASTERN_PLAGUELANDS },
						{ 80.5, 59.6, EASTERN_PLAGUELANDS },
						{ 78.7, 67.3, EASTERN_PLAGUELANDS },
						
						-- Tirion's House
						{ 7.1, 50.7, EASTERN_PLAGUELANDS },
						{ 8.1, 54.4, EASTERN_PLAGUELANDS },
						{ 14.2, 64.7, EASTERN_PLAGUELANDS },
						{ 20.0, 60.9, EASTERN_PLAGUELANDS },
						{ 20.5, 66.9, EASTERN_PLAGUELANDS },
						
						-- Crypt
						{ 22.1, 85.0, EASTERN_PLAGUELANDS },
						{ 24.3, 88.2, EASTERN_PLAGUELANDS },
						{ 28.8, 85.9, EASTERN_PLAGUELANDS },
						
						-- Nathanos's House
						{ 31.5, 73.9, EASTERN_PLAGUELANDS },
						{ 27.3, 64.0, EASTERN_PLAGUELANDS },
						{ 30.9, 65.5, EASTERN_PLAGUELANDS },
						{ 26.7, 69.5, EASTERN_PLAGUELANDS },
						{ 26.3, 70.5, EASTERN_PLAGUELANDS },
						{ 26.0, 74.7, EASTERN_PLAGUELANDS },
						{ 27.1, 75.5, EASTERN_PLAGUELANDS },
						{ 32.0, 71.0, EASTERN_PLAGUELANDS },
						{ 34.3, 67.8, EASTERN_PLAGUELANDS },
						{ 29.2, 78.8, EASTERN_PLAGUELANDS },
						{ 37.1, 65.7, EASTERN_PLAGUELANDS },
						{ 37.6, 68.5, EASTERN_PLAGUELANDS },
						{ 36.9, 70.6, EASTERN_PLAGUELANDS },
						{ 35.9, 75.8, EASTERN_PLAGUELANDS },
						{ 24.5, 76.9, EASTERN_PLAGUELANDS },
						{ 34.0, 80.2, EASTERN_PLAGUELANDS },
						
						-- Mushroom Kingdom
						{ 40.0, 49.9, EASTERN_PLAGUELANDS },
						{ 38.5, 54.0, EASTERN_PLAGUELANDS },
						
						-- The Infectis Scar
						{ 41.5, 65.7, EASTERN_PLAGUELANDS },
						{ 46.3, 64.0, EASTERN_PLAGUELANDS },
						{ 55.5, 58.7, EASTERN_PLAGUELANDS },
						{ 41.5, 79.7, EASTERN_PLAGUELANDS },
						{ 42.5, 75.7, EASTERN_PLAGUELANDS },
						{ 48.9, 67.2, EASTERN_PLAGUELANDS },
						{ 46.2, 70.8, EASTERN_PLAGUELANDS },
						{ 46.5, 74.8, EASTERN_PLAGUELANDS },
						{ 47.9, 80.0, EASTERN_PLAGUELANDS },
						{ 50.5, 77.3, EASTERN_PLAGUELANDS },
						{ 51.8, 70.3, EASTERN_PLAGUELANDS },
						{ 56.2, 63.9, EASTERN_PLAGUELANDS },
						{ 59.3, 62.2, EASTERN_PLAGUELANDS },
						{ 58.5, 64.9, EASTERN_PLAGUELANDS },
						{ 59.9, 67.5, EASTERN_PLAGUELANDS },
						{ 57.5, 72.0, EASTERN_PLAGUELANDS },
						{ 61.8, 70.2, EASTERN_PLAGUELANDS },
						{ 63.6, 67.7, EASTERN_PLAGUELANDS },
						{ 67.6, 66.8, EASTERN_PLAGUELANDS },
						
						-- Lake Mereldar
						{ 56.5, 76.1, EASTERN_PLAGUELANDS },
						{ 57.8, 76.2, EASTERN_PLAGUELANDS },
						{ 59.5, 76.0, EASTERN_PLAGUELANDS },
						{ 59.2, 80.8, EASTERN_PLAGUELANDS },
						{ 57.1, 81.9, EASTERN_PLAGUELANDS },
						{ 59.2, 80.8, EASTERN_PLAGUELANDS },
						{ 64.7, 81.0, EASTERN_PLAGUELANDS },
						
						-- Tyr's Hand
						{ 68.2, 70.6, EASTERN_PLAGUELANDS },
						{ 70.7, 69.5, EASTERN_PLAGUELANDS },
						{ 73.4, 69.8, EASTERN_PLAGUELANDS },
						{ 76.6, 72.5, EASTERN_PLAGUELANDS },
						{ 69.0, 71.5, EASTERN_PLAGUELANDS },
						{ 68.3, 74.6, EASTERN_PLAGUELANDS },
						{ 68.6, 78.5, EASTERN_PLAGUELANDS },
						{ 68.8, 80.6, EASTERN_PLAGUELANDS },
						{ 69.0, 83.5, EASTERN_PLAGUELANDS },
						{ 70.6, 80.8, EASTERN_PLAGUELANDS },
						{ 71.1, 75.3, EASTERN_PLAGUELANDS },
						{ 73.6, 76.9, EASTERN_PLAGUELANDS },
						{ 72.3, 78.5, EASTERN_PLAGUELANDS },
						{ 76.1, 78.2, EASTERN_PLAGUELANDS },
						{ 73.3, 82.2, EASTERN_PLAGUELANDS },
						{ 74.1, 83.8, EASTERN_PLAGUELANDS },
						{ 74.8, 83.5, EASTERN_PLAGUELANDS },
					},
				}),
				applyclassicphase(PHASE_FIVE, i(22228, {	-- Brilliant Sword of Zealotry
					["cr"] = 9448,	-- Scarlet Praetorian
				})),
				i(16242, {	-- Formula: Enchant Chest - Major Mana
					["cr"] = 9452,	-- Scarlet Enchanter
				}),
				i(16222, {	-- Formula: Enchant Shield - Superior Spirit
					["cr"] = 9447,	-- Scarlet Warder
				}),
				i(18512, {	-- Larval Acid
					["crs"] = {
						8605,	-- Carrion Devourer
						8603,	-- Carrion Grub
					},
				}),
				i(15447, {	-- Living Rot
					["questID"] = 6022,	-- To Kill With Purpose
					["description"] = "PROTIP: Do NOT loot these until you have a couple of mobs killed nearby. The timer starts the second you pick it up.",
					["races"] = HORDE_ONLY,
					["crs"] = {
						8526,	-- Dark Caster
						8531,	-- Gibbering Ghoul
						8541,	-- Hate Shrieker
						8525,	-- Scourge Warder
						8543,	-- Stitched Horror
						8538,	-- Unseen Servant
						12262,	-- Ziggurat Protector
					},
				}),
				i(20768, {	-- Oozing Bag
					["crs"] = {
						8606,	-- Living Decay
						8607,	-- Rotting Sludge
					},
					["groups"] = {
						i(20769),	-- Disgusting Oozeling
					},
				}),
				i(14477, {	-- Pattern: Ghostweave Gloves
					["cr"] = 8538,	-- Unseen Servant
				}),
				i(14480, {	-- Pattern: Ghostweave Vest
					["cr"] = 8538,	-- Unseen Servant
				}),
				i(14485, {	-- Pattern: Wizardweave Leggings
					["cr"] = 8551,	-- Dark Summoner
				}),
				i(14500, {	-- Pattern: Wizardweave Robe
					["cr"] = 8526,	-- Dark Caster
				}),
				i(14505, {	-- Pattern: Wizardweave Turban
					["cr"] = 8526,	-- Dark Caster
				}),
				i(13479, {	-- Recipe: Elixir of the Sages
					["crs"] = {
						9451,	-- Scarlet Archmage
						9449,	-- Scarlet Cleric
						9450,	-- Scarlet Curate
						9452,	-- Scarlet Enchanter
					},
				}),
				i(13499, {	-- Recipe: Greater Shadow Protection Potion
					["crs"] = {
						8546,	-- Dark Adept
						8550,	-- Shadowmage
					},
				}),
				i(12811, {	-- Righteous Orb
					["description"] = "Can drop from any Scarlet Crusade member in Stratholme in addition to the Scarlet Oracle and the Crimson Elite in the Plaguelands.",
					["cr"] = 12339,	-- Demetria <The Scarlet Oracle>
				}),
				i(16056, {	-- Schematic: Flawless Arcanite Rifle
					["cr"] = 8561,	-- Mossflayer Shadowhunter
				}),
				i(13853, {	-- Slab of Carrion Worm Meat
					["questID"] = 5544,	-- Carrion Grubbage
					["crs"] = {
						8605,	-- Carrion Devourer
						8603,	-- Carrion Grub
					},
				}),
			}),
		},
	}),
}));