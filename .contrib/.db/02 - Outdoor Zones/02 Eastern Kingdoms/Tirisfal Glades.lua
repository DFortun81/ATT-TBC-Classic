---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(TIRISFAL_GLADES, {
		["lore"] = "On the northern coast of Lordaeron lies the eerie Tirisfal Glades. The unofficial kingdom to the Forsaken, servants of the Banshee Queen Sylvanas Windrunner, the wooded hills are seeped through with the curse of the Lich King's plague. The sky over Tirisfal is eternally gloomy and tinted a blighted green, and the trees and other flora desperately cling to their last shreds of life.\n\nAlthough tainted and melancholy, Tirisfal still very much has its own unique, haunting beauty, particularly in such areas as the stony North Coast, the village of Brill, and the deep atmosphere of the ruined Agamand Mills.\n\nTirisfal Glades is home not only to the Forsaken, but to their enemies as well. The Scarlet Crusade has several outposts here, including the seat of their religious faith, the Scarlet Monastery. The minions of the Scourge are also ever present, tainting the derelict farmsteads and dilapidated mills with their foul presence.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(768, {	-- Explore Tirisfal Glades
					-- #if BEFORE WRATH
					["description"] = "Explore Tirisfal Glades, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, {
				exploration(157, "256:210:335:139"),	-- Agamand Mills
				exploration(165, "216:179:630:326"),	-- Balnir Farmstead
				exploration(162, "201:288:587:139"),	-- Brightwater Lake
				-- #if AFTER TBC
				exploration(159, "128:256:537:299"),	-- Brill [TBC]
				-- #else
				exploration(159, "128:158:537:299"),	-- Brill [Classic]
				-- #endif
				exploration(166, "150:128:474:327"),	-- Cold Hearth Manor
				exploration(167, "173:128:694:289"),	-- Crusader Outpost
				exploration(154, "245:205:227:328"),	-- Deathknell
				exploration(164, "174:220:497:145"),	-- Garren's Haunt
				exploration(811, "243:199:363:349"),	-- Nightmare Vale
				exploration(459, "175:247:689:104"),	-- Scarlet Watch Post
				exploration(156, "256:156:239:250"),	-- Solliden Farmstead
				exploration(810, "186:128:395:277"),	-- Stillwater Pond
				exploration(152, "230:205:698:362"),	-- The Bulwark
				exploration(812, "237:214:757:205"),	-- Venomweb Vale
				exploration(160, "211:189:746:125"),	-- Whispering Gardens
				exploration(1497, "315:235:463:361"),	-- Undercity
				--[[
				exploration(158, ""),	-- Agamand Family Crypt
				exploration(153, ""),	-- Ruins of Lordaeron
				exploration(155, ""),	-- Night Web's Hollow
				exploration(161, ""),	-- Terrace of Repose
				exploration(163, ""),	-- Gunther's Retreat
				exploration(168, ""),	-- The North Coast
				exploration(169, ""),	-- Whispering Shore
				exploration(173, ""),	-- Faol's Rest
				exploration(2117, ""),	-- Shadow Grave
				exploration(2118, ""),	-- Brill Town Hall
				exploration(2119, ""),	-- Gallows' End Tavern
				exploration(2399, ""),	-- The Great Sea
				]]--
			}),
			-- #endif
			n(QUESTS, {
				q(361, {	-- A Letter Undelivered
					["provider"] = { "i", 2839 },	-- A Letter to Yvette
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2837, 1 },	-- Thurman's Letter
					},
					["lvl"] = 4,
				}),
				q(367, {	-- A New Plague (1/4)
					["qg"] = 1518,	-- Apothecary Johaan
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2858, 5 },	-- Darkhound Blood
					},
					["lvl"] = 6,
					["groups"] = {
						i(3382),	-- Weak Troll's Blood Potion
					},
				}),
				q(368, {	-- A New Plague (2/4)
					["qg"] = 1518,	-- Apothecary Johaan
					["sourceQuest"] = 367,	-- A New Plague (1/4)
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2859, 5 },	-- Vile Fin Scale
					},
					["lvl"] = 6,
					["groups"] = {
						i(3434),	-- Slumber Sand
					},
				}),
				q(369, {	-- A New Plague (3/4)
					["qg"] = 1518,	-- Apothecary Johaan
					["sourceQuest"] = 368,	-- A New Plague (2/4)
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2872, 4 },	-- Vicious Night Web Spider Venom
					},
					["lvl"] = 6,
					["groups"] = {
						i(3442),	-- Apprentice Sash
					},
				}),
				q(492, {	-- A New Plague (4/4)
					["qg"] = 1518,	-- Apothecary Johaan
					["sourceQuest"] = 369,	-- A New Plague (3/4)
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3460, 1 },	-- Johaan's Special Drink
					},
					["lvl"] = 6,
				}),
				q(404, {	-- A Putrid Task
					["qg"] = 1496,	-- Deathguard Dillinger
					["coord"] = { 58.21, 51.45, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2855, 7 },	-- Putrid Claw
					},
					["lvl"] = 4,
				}),
				q(590, {	-- A Rogue's Deal
					["qg"] = 6784,	-- Calvin Montague
					["coord"] = { 38.2, 56.6, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 7628, 1 },	-- Nondescript Letter
					},
				}),
				q(8, {	-- A Rogue's Deal
					["qg"] = 6784,	-- Calvin Montague
					["coord"] = { 38.2, 56.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4604),	-- Forest Mushroom Cap
						i(159),	-- Refreshing Spring Water
					},
				}),
				q(1821, {	-- Agamand Heirlooms
					["qg"] = 1500,	-- Coleman Farthing
					["sourceQuest"] = 1820,	-- Speak with Coleman
					["coord"] = { 61.73, 52.30, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(371, {	-- At War With The Scarlet Crusade
					["qg"] = 1515,	-- Executor Zygand
					["coord"] = { 60.6, 51.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
				}),
				q(370, {	-- At War With The Scarlet Crusade
					["qg"] = 1515,	-- Executor Zygand
					["coord"] = { 60.6, 51.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
				}),
				q(372, {	-- At War With The Scarlet Crusade
					["qg"] = 1515,	-- Executor Zygand
					["coord"] = { 60.6, 51.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						i(3445),	-- Ceremonial Knife
						i(3071),	-- Striking Hatchet
					},
				}),
				q(427, {	-- At War With The Scarlet Crusade
					["qg"] = 1515,	-- Executor Zygand
					["coord"] = { 60.6, 51.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
				}),
				q(431, {	-- Candles of Beckoning
					["provider"] = { "o", 1586 },	-- Crate of Candles
					["coord"] = { 68.1, 42, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 5,
					["groups"] = {
						{
							["itemID"] = 3080,	-- Candle of Beckoning
							["questID"] = 409,	-- Proving Allegiance
						},
					},
				}),
				q(354, {	-- Deaths in the Family
					["qg"] = 1500,	-- Coleman Farthing
					["coord"] = { 61.73, 52.30, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2829, 1 },	-- Gregor's Remains
						{ "i", 2828, 1 },	-- Nissa's Remains
						{ "i", 2830, 1 },	-- Thurman's Remains
					},
					["lvl"] = 7,
					["groups"] = {
						{
							["itemID"] = 2829,	-- Gregor's Remains
							["questID"] = 354,	-- Deaths in the Family
							["cr"] = 1654, 	-- Gregor Agamand
							["coord"] = { 46.8, 29.6, TIRISFAL_GLADES },
						},
						{
							["itemID"] = 2828,	-- Nissa's Remains
							["questID"] = 354,	-- Deaths in the Family
							["cr"] = 1655, 	-- Nissa Agamand
							["coord"] = { 49.6, 36.2, TIRISFAL_GLADES },
						},
						{
							["itemID"] = 2830,	-- Thurman's Remains
							["questID"] = 354,	-- Deaths in the Family
							["cr"] = 1656, 	-- Thurman Agamand
							["coord"] = { 44.0, 33.4, TIRISFAL_GLADES },
						},
					},
				}),
				q(445, {	-- Delivery to Silverpine Forest
					["qg"] = 1518,	-- Apothecary Johaan
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5482, {	-- Doom Weed
					["qg"] = 10665,	-- Junior Apothecary Holland
					["sourceQuest"] = 5481,	-- Gordo's Task
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13702, 10 },	-- Doom Weed
					},
					["lvl"] = 5,
				}),
				q(3096, {	-- Encrypted Scroll
					["qg"] = 1569,	-- Shadow Priest Sarvis
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
				}),
				q(365, {	-- Fields of Grief (1/2)
					["qg"] = 1519,	-- Deathguard Simmer
					["coord"] = { 40.9, 54.2, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2846, 10 },	-- Tirisfal Pumpkin
					},
					["lvl"] = 4,
				}),
				q(407, {	-- Fields of Grief (2/2)
					["qg"] = 1518,	-- Apothecary Johaan
					["sourceQuest"] = 365,	-- Fields of Grief (1/2)
					["coord"] = { 59.5, 52.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3035, 1 },	-- Laced Pumpkin
					},
					["lvl"] = 4,
				}),
				q(359, {	-- Forsaken Duties
					["qg"] = 1499,	-- Magistrate Sevren
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
				}),
				q(5650, {	-- Garments of Darkness
					["qg"] = 2129,	-- Dark Cleric Beryl <Priest Trainer>
					["coord"] = { 61.6, 52.2, TIRISFAL_GLADES },
					["races"] = { UNDEAD },
					["classes"] = { PRIEST },
					["lvl"] = 5,
					["groups"] = {
						i(16607),	-- Acolyte's Sacrificial Robes
					},
				}),
				q(3098, {	-- Glyphic Scroll
					["qg"] = 1569,	-- Shadow Priest Sarvis
					["races"] = { UNDEAD },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 9574, 1 },	-- Glyphic Scroll
					},
				}),
				q(5481, {	-- Gordo's Task
					["qg"] = 10666,	-- Gordo
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 12737, 3 },	-- Gloom Weed
					},
					["lvl"] = 5,
				}),
				q(358, {	-- Graverobbers
					["qg"] = 1499,	-- Magistrate Sevren
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2834, 8 },	-- Embalming Ichor
					},
					["lvl"] = 4,
					["groups"] = {
						i(6063),	-- Cold Steel Gauntlets
						i(3439),	-- Zombie Skin Boots
					},
				}),
				q(1478, {	-- Halgar's Summons
					["qg"] = 5724,	-- Ageron Kargal
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["altQuests"] = {
						1506,	-- Gan'rul's Summons
					},
					["lvl"] = 10,
				}),
				q(1822, {	-- Heirloom Weapon
					["qg"] = 1500,	-- Coleman Farthing
					["sourceQuest"] = 1821,	-- Agamand Heirlooms
					["coord"] = { 61.73, 52.30, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
					["groups"] = {
						i(7115),	-- Heirloom Axe
						i(7117),	-- Heirloom Hammer
						i(7116),	-- Heirloom Dagger
						i(7118),	-- Heirloom Sword
					},
				}),
				q(5651, {	-- In Favor of Darkness
					["qg"] = 2123,	-- Dark Cleric Duesten <Priest Trainer>
					["coord"] = { 31.1, 66.0, TIRISFAL_GLADES },
					["races"] = { UNDEAD },
					["classes"] = { PRIEST },
					["lvl"] = 5,
				}),
				q(6395, {	-- Marla's Last Wish
					["qg"] = 1661,	-- Novice Elreth
					["sourceQuest"] = 376,	-- The Damned
					["coord"] = { 30.9, 66.1, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16333, 1 },	-- Samuel's Remains
					},
					["lvl"] = 3,
					["groups"] = {
						{
							["itemID"] = 16333,	-- Samuel's Remains
							["questID"] = 6395,	-- Marla's Last Wish
							["cr"] = 1919,	-- Samuel Fipps
							["coord"] = { 36.6, 61.6, TIRISFAL_GLADES },
						},
					},
				}),
				q(1885, {	-- Mennet Carkad
					["qg"] = 2130,	-- Marion Call
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
				}),
				q(380, {	-- Night Web's Hollow
					["qg"] = 1570,	-- Executor Arren
					["sourceQuest"] = 376,	-- The Damned
					["coord"] = { 32.2, 66.0, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 2,
					["groups"] = {
						i(3270),	-- Flax Vest
						i(3273),	-- Rugged Mail Vest
						i(3272),	-- Zombie Skin Leggings
					},
				}),
				q(1470, {	-- Piercing the Veil
					["qg"] = 5667,	-- Venya Marthand
					["coord"] = { 31.0, 66.4, TIRISFAL_GLADES },
					["races"] = { UNDEAD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 6281, 3 },	-- Rattlecage Skull
					},
					["groups"] = {
						recipe(688),	-- Summon Imp
					},
				}),
				q(374, {	-- Proof of Demise
					["qg"] = 1652,	-- Deathguard Burgess
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2875, 10 },	-- Scarlet Insignia Ring
					},
					["lvl"] = 5,
					["groups"] = {
						i(3435),	-- Zombie Skin Bracers
						i(3437),	-- Clasped Belt
						i(12299),	-- Netted Gloves
					},
				}),
				q(10590, {	-- Prove Your Hatred
					["qg"] = 17099,	-- Mehlar Dawnblade
					["sourceQuest"] = 9601,	-- To The Bulwark
					["coord"] = { 83.2, 71.2, TIRISFAL_GLADES },
					["timeline"] = { "added 2.0.1", "removed 4.0.3" },
					["cost"] = { { "i", 12840, 20 } },	-- Minion's Scourgestone
					["maps"] = { UNDERCITY },
					["classes"] = { PALADIN },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(409, {	-- Proving Allegiance
					["qg"] = 1497,	-- Gunther Arcanus
					["sourceQuest"] = 366,	-- Return the Book
					["coord"] = { 68.2, 42, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3080, 1 },	-- Candle of Beckoning
					},
					["lvl"] = 5,
				}),
				q(3901, {	-- Rattling the Rattlecages
					["qg"] = 1569,	-- Shadow Priest Sarvis
					["sourceQuest"] = 364,	-- The Mindless Ones
					["coord"] = { 30.8, 66.2, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(3274),	-- Flax Boots
						i(11851),	-- Scavenger Tunic
						i(11852),	-- Roamer's Leggings
					},
				}),
				q(356, {	-- Rear Guard Patrol
					["qg"] = 1495,	-- Deathguard Linnea
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
				}),
				q(366, {	-- Return the Book
					["qg"] = 1498,	-- Bethor Iceshard
					["sourceQuest"] = 357,	-- The Lich's Identity
					["coord"] = { 84.2, 17.4, UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3016, 1 },	-- Gunther's Spellbook
					},
					["lvl"] = 5,
				}),
				q(360, {	-- Return to the Magistrate
					["qg"] = 1495,	-- Deathguard Linnea
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
				}),
				q(363, {	-- Rude Awakening
					["qg"] = 1568,	-- Undertaker Mordo
					["coord"] = { 30.2, 71.6, TIRISFAL_GLADES },
					["races"] = { UNDEAD },
					["isBreadcrumb"] = true
				}),
				q(3902, {	-- Scavenging Deathknell
					["qg"] = 1740,	-- Deathguard Saltain
					["sourceQuest"] = 376,	-- The Damned
					["coord"] = { 31.6, 65.6, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 11127, 6 },	-- Scavenged Goods
					},
					["lvl"] = 2,
					["groups"] = {
						i(11848),	-- Flax Belt
						i(11849),	-- Rustmetal Bracers
						i(11850),	-- Short Duskbat Cape
					},
				}),
				q(1881, {	-- Speak with Anastasia
					["qg"] = 2128,	-- Cain Firesong <Mage Trainer>
					["coord"] = { 61.8, 52.4, TIRISFAL_GLADES },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["altQuests"] = {
						1883,	-- Speak with Un'thuwa
					},
					["lvl"] = 10,
					["isBreadcrumb"] = true
				}),
				q(1820, {	-- Speak with Coleman
					["qg"] = 1496,	-- Deathguard Dillinger
					["sourceQuest"] = 1819,	-- Ulag the Cleaver
					["coord"] = { 58.21, 51.45, TIRISFAL_GLADES },
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(1818, {	-- Speak with Dillinger
					["qg"] = 2131,	-- Austil de Mon
					["altQuests"] = { 1502 },	-- Thun'grim Firegaze
					["coord"] = { 61.84, 52.53, TIRISFAL_GLADES },
					["description"] = "This quest becomes unavailable after completing \"Path of Defense\" in the Barrens.",
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(355, {	-- Speak with Sevren
					["qg"] = 1500,	-- Coleman Farthing
					["coord"] = { 61.73, 52.30, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 7,
				}),
				q(3099, {	-- Tainted Scroll
					["qg"] = 1569,	-- Shadow Priest Sarvis
					["sourceQuest"] = 364,	-- The Mindless Ones
					["coord"] = { 30.8, 66.2, TIRISFAL_GLADES },
					["races"] = { UNDEAD },
					["classes"] = { WARLOCK },
				}),
				q(375, {	-- The Chill of Death
					["qg"] = 1521,	-- Gretchen Dedmar
					["coord"] = { 61.9, 52.7, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2876, 5 },	-- Duskbat Pelt
						{ "i", 2320, 1 },	-- Coarse Thread
					},
					["lvl"] = 7,
					["groups"] = {
						i(3833),	-- Adept's Cloak
						i(5939),	-- Sewing Gloves
					},
				}),
				q(376, {	-- The Damned
					["qg"] = 1661,	-- Novice Elreth
					["coord"] = { 30.9, 66.1, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3264, 6 },	-- Duskbat Wing
						{ "i", 3265, 6 },	-- Scavenger Paw
					},
					["lvl"] = 2,
					["groups"] = {
						i(6060),	-- Flax Bracers
						i(2173),	-- Old Leather Belt
					},
				}),
				q(1886, {	-- The Deathstalkers (1/4)
					["qg"] = 6467,	-- Mennet Carkad
					["sourceQuest"] = 1885,	-- Mennet Carkad
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
				}),
				q(1898, {	-- The Deathstalkers (2/4)
					["qg"] = 6467,	-- Mennet Carkad
					["sourceQuest"] = 1886,	-- The Deathstalkers (1/4)
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
				}),
				q(1899, {	-- The Deathstalkers (3/4)
					["qg"] = 6522,	-- Andron Gant
					["sourceQuest"] = 1898,	-- The Deathstalkers (2/4)
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
				}),
				q(1978, {	-- The Deathstalkers (4/4)
					["qg"] = 6467,	-- Mennet Carkad
					["sourceQuest"] = 1899,	-- The Deathstalkers (3/4)
					["races"] = { UNDEAD },
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
						i(7298),	-- Blade of Cunning
					},
				}),
				q(410, {	-- The Dormant Shade
					["provider"] = { "o", 1557 },	-- Lillith's Dinner Table
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 5,
				}),
				q(408, {	-- The Family Crypt
					["qg"] = 1499,	-- Magistrate Sevren
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3082, 1 },	-- Dargol's Skull
					},
					["lvl"] = 7,
					["groups"] = {
						{
							["itemID"] = 3082,	-- Dargol's Skull
							["questID"] = 408,	-- The Family Crypt
							["cr"] = 1658,	-- Captain Dargol
							["coord"] = { 52.6, 26.4, TIRISFAL_GLADES },
						},
						i(3446),	-- Darkwood Staff
						i(3440),	-- Bonecracker
					},
				}),
				q(362, {	-- The Haunted Mills
					["qg"] = 1500,	-- Coleman Farthing
					["coord"] = { 61.73, 52.30, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2831, 1 },	-- Devlin's Remains
					},
					["lvl"] = 7,
					["groups"] = {
						{
							["itemID"] = 2831,	-- Devlin's Remains
							["questID"] = 362,	-- The Haunted Mills
							["cr"] = 1657,	-- Devlin Agamand
							["coord"] = { 47.6, 40.2, TIRISFAL_GLADES },
						},
					},
				}),
				q(357, {	-- The Lich's Identity
					["qg"] = 1498,	-- Bethor Iceshard
					["sourceQuest"] = 405,	-- The Prodigal Lich
					["coord"] = { 84.2, 17.4, UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2833, 1 },	-- The Lich's Spellbook
					},
					["lvl"] = 5,
				}),
				q(426, {	-- The Mills Overrun
					["qg"] = 1496,	-- Deathguard Dillinger
					["sourceQuest"] = 404,	-- A Putrid Task
					["coord"] = { 58.21, 51.45, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3163, 3 },	-- Blackened Skull
						{ "i", 3162, 5 },	-- Notched Rib
					},
					["lvl"] = 6,
					["groups"] = {
						i(3447),	-- Cryptwalker Boots
						i(3834),	-- Sturdy Cloth Trousers
					},
				}),
				q(364, {	-- The Mindless Ones
					["qg"] = 1569,	-- Shadow Priest Sarvis
					["sourceQuest"] = 363,	-- Rude Awakening
					["coord"] = { 30.8, 66.2, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(3275),	-- Flax Gloves
						i(11847),	-- Battered Cloak
					},
				}),
				q(405, {	-- The Prodigal Lich
					["qg"] = 1499,	-- Magistrate Sevren
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3017, 1 },	-- Sevren's Orders
					},
					["lvl"] = 5,
				}),
				q(411, {	-- The Prodigal Lich Returns
					["qg"] = 1497,	-- Gunther Arcanus
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						i(5940),	-- Bone Buckler
					},
				}),
				q(382, {	-- The Red Messenger
					["qg"] = 1570,	-- Executor Arren
					["sourceQuest"] = 381,	-- The Scarlet Crusade
					["coord"] = { 32.2, 66.0, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2885, 1 },	-- Scarlet Crusade Documents
					},
					["lvl"] = 2,
					["groups"] = {
						{
							["itemID"] = 2885,	-- Scarlet Crusade Documents
							["questID"] = 382,	-- The Red Messenger
							["cr"] = 1667,	-- Meven Korgal
							["coord"] = { 36.6, 68.6, TIRISFAL_GLADES },
						},
						i(3277),	-- Executor Staff
						i(3276),	-- Deathguard Buckler
					},
				}),
				q(381, {	-- The Scarlet Crusade
					["qg"] = 1570,	-- Executor Arren
					["sourceQuest"] = 380,	-- Night Web's Hollow
					["coord"] = { 32.2, 66.0, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3266, 12 },	-- Scarlet Armband
					},
					["lvl"] = 2,
					["groups"] = {
						i(3268),	-- Forsaken Dagger
						i(3269),	-- Forsaken Maul
						i(3267),	-- Forsaken Shortsword
						i(5779),	-- Forsaken Bastard Sword
					},
				}),
				q(1819, {	-- Ulag the Cleaver
					["qg"] = 1496,	-- Deathguard Dillinger
					["sourceQuest"] = 1818,	-- Speak with Dillinger
					["altQuests"] = { 1502 },	-- Thun'grim Firegaze
					["coord"] = { 58.21, 51.45, TIRISFAL_GLADES },
					["description"] = "Completing this quest prevents you from accepting \"Veteran Uzzek\" and \"Path of Defense\" in the Barrens.\n\nThis quest becomes unavailable after completing \"Path of Defense\" in the Barrens.",
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(383, {	-- Vital Intelligence
					["qg"] = 1570,	-- Executor Arren
					["sourceQuest"] = 382,	-- The Red Messenger
					["coord"] = { 32.2, 66.0, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 2885, 1 },	-- Scarlet Crusade Documents
					},
					["lvl"] = 2,
				}),
				q(398, {	-- Wanted: Maggot Eye
					["provider"] = { "o", 711 },	-- Wanted!
					["coord"] = { 60.7, 51.5, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3635, 1 },	-- Maggot Eye's Paw
					},
					["lvl"] = 6,
					["groups"] = {
						{
							["itemID"] = 3635,	-- Maggot Eye's Paw
							["questID"] = 398,	-- Wanted: Maggot Eye
							["cr"] = 1753,	-- Maggot Eye
							["coord"] = { 58.6, 31.6, TIRISFAL_GLADES },
						},
						i(5941),	-- Brass Scale Pants
						i(3444),	-- Tiller's Vest
					},
				}),
				q(10592, {	-- Wisdom of the Banshee Queen
					["providers"] = {
						{ "n", 17099 },	-- Mehlar Dawnblade
						{ "i", 30700 },	-- Scourgestone Fragments
					},
					["sourceQuest"] = 10590,	-- Prove Your Hatred
					["coord"] = { 83.2, 71.2, TIRISFAL_GLADES },
					["timeline"] = { "added 2.0.1", "removed 4.0.3" },
					["maps"] = { UNDERCITY },
					["classes"] = { PALADIN },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
			}),
			n(RARES, {
				n(10356, {	-- Bayne
					["coords"] = {
						{ 40.8, 43.2, TIRISFAL_GLADES },
						{ 57.6, 41.6, TIRISFAL_GLADES },
						{ 42.0, 52.6, TIRISFAL_GLADES },
						{ 45.0, 54.0, TIRISFAL_GLADES },
						{ 50.0, 50.8, TIRISFAL_GLADES },
						{ 51.4, 52.2, TIRISFAL_GLADES },
					},
				}),
				n(1911, {	-- Deeb
					["coord"] = { 58.8, 27.2, TIRISFAL_GLADES },
					["groups"] = {
						i(4303),	-- Cranial Thumper
					},
				}),
				n(1936, {	-- Farmer Solliden
					["coord"] = { 38.0, 51.8, TIRISFAL_GLADES },
					["groups"] = {
						i(4261),	-- Solliden's Trousers
						i(2091),	-- Magic Dust
					},
				}),
				n(10358, {	-- Fellicent's Shade
					["coords"] = {
						{ 74.6, 63.8, TIRISFAL_GLADES },
						{ 77.8, 63.2, TIRISFAL_GLADES },
						{ 76.4, 57.4, TIRISFAL_GLADES },
						{ 74.6, 59.6, TIRISFAL_GLADES },
						{ 74.8, 60.6, TIRISFAL_GLADES },
					},
				}),
				n(1531, {	-- Lost Soul
					["coords"] = {
						{ 48.6, 36.2, TIRISFAL_GLADES },
						{ 53.6, 48.6, TIRISFAL_GLADES },
					},
					["groups"] = {
						i(3322),	-- Wispy Cloak
					},
				}),
				n(1910, {	-- Muad
					["coord"] = { 35.2, 43.4, TIRISFAL_GLADES },
					["groups"] = {
						i(4302),	-- Small Green Dagger
					},
				}),
				n(10357, {	-- Ressan the Needler
					["coords"] = {
						{ 43.6, 67.0, TIRISFAL_GLADES },
						{ 47.0, 65.0, TIRISFAL_GLADES },
						{ 50.2, 64.4, TIRISFAL_GLADES },
						{ 52.4, 63.8, TIRISFAL_GLADES },
						{ 55.6, 60.0, TIRISFAL_GLADES },
						{ 56.2, 63.6, TIRISFAL_GLADES },
					},
				}),
				n(10359, {	-- Sri'skulk
					["coords"] = {
						{ 83.0, 55.8, TIRISFAL_GLADES },
						{ 85.2, 49.4, TIRISFAL_GLADES },
						{ 89.4, 40.2, TIRISFAL_GLADES },
						{ 90.2, 47.6, TIRISFAL_GLADES },
						{ 88.8, 53.6, TIRISFAL_GLADES },
					},
				}),
				n(1533, {	-- Tormented Spirit
					["coord"] = { 46.0, 35.4, TIRISFAL_GLADES },
					["groups"] = {
						i(3323),	-- Ghostly Bracers
					},
				}),
			}),
			n(VENDORS, {
				n(2118, {	-- Abigail Shiel <Trade Supplies>
					["coord"] = { 61.0, 52.4, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12226),	-- Recipe: Crispy Bat Wing
					},
				}),
				n(11057, {	-- Apothecary Dithers
					["coord"] = { 83.2, 69.2, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(13320),	-- Arcane Quickener
						i(13370),	-- Vitreous Focuser
					},
				}),
				n(10856, {	-- Argent Quartermaster Hasana <The Argent Dawn>
					["coord"] = { 83.2, 68.2, TIRISFAL_GLADES },
					["groups"] = {
						{
							["itemID"] = 22014,	-- Hallowed Brazier
							["minReputation"] = { 529, HONORED },	-- Argent Dawn
							["cost"] = {
								{ "g", 1500000 },	-- 150g
							},
						},
						i(18182, {	-- Chromatic Mantle of the Dawn
							["sourceQuests"] = {
								5517,	-- Chromatic Mantle of the Dawn
								5521,	-- Chromatic Mantle of the Dawn
								5524,	-- Chromatic Mantle of the Dawn
							},
						}),
						i(18171, {	-- Arcane Mantle of the Dawn
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18169, {	-- Flame Mantle of the Dawn
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18170, {	-- Frost Mantle of the Dawn
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18172, {	-- Nature Mantle of the Dawn
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18173, {	-- Shadow Mantle of the Dawn
							["sourceQuests"] = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(19447), 	-- Formula: Enchant Bracer - Healing
						i(19446), 	-- Formula: Enchant Bracer - Mana Regeneration
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
				n(3550, {	-- Martine Tramblay <Fishing Supplies>
					["coord"] = { 65.8, 59.6, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6326),	-- Recipe: Slitherskin Mackere
					},
				}),
				n(12943, {	-- Werg Thickblade <Leatherworking Supplies>
					["coord"] = { 83.2, 69.6, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(15725),	-- Pattern: Wicked Leather Gauntlets
						i(15741),	-- Pattern: Stormshroud Pants
					},
				}),
				n(4731, {	-- Zachariah Post <Undead Horse Merchant>
					["coord"] = { 59.8, 52.6, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(13331),	-- Red Skeletal Horse
						i(13332),	-- Blue Skeletal Horse
						i(13333),	-- Brown Skeletal Horse
						i(13334),	-- Green Skeletal Warhorse
						i(18791),	-- Purple Skeletal Warhorse
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(2839, {	-- A Letter to Yvette
					["questID"] = 361,	-- A Letter Undelivered
					["races"] = HORDE_ONLY,
					["crs"] = {
						1523,	-- Cracked Skull Soldier
						1522,	-- Darkeye Bonecaster
						1520,	-- Rattlecage Soldier
					},
				}),
				i(3163, {	-- Blackened Skull
					["questID"] = 426,	-- The Mills Overrun
					["races"] = HORDE_ONLY,
					["cr"] = 1522,	-- Darkeye Bonecaster
				}),
				i(3330, {	-- Dargol's Hauberk
					["cr"] = 1658,	-- Captain Dargol
				}),
				i(2858, {	-- Darkhound Blood
					["questID"] = 367,	-- A New Plague (1/4)
					["races"] = HORDE_ONLY,
					["crs"] = {
						1548,	-- Cursed Darkhound
						1547,	-- Decrepit Darkhound
					},
				}),
				i(3295, {	-- Deadman Blade
					["cr"] = 1919,	-- Samuel Fipps
				}),
				i(3293, {	-- Deadman Cleaver
					["cr"] = 1917,	-- Daniel Ulfman
				}),
				i(3294, {	-- Deadman Club
					["cr"] = 1918,	-- Karrel Grayves
				}),
				i(3296, {	-- Deadman Dagger
					["cr"] = 1916,	-- Stephen Bhartec
				}),
				i(13702, {	-- Doom Weed
					["questID"] = 5482,	-- Doom Weed
					["races"] = HORDE_ONLY,
				}),
				i(2876, {	-- Duskbat Pelt
					["questID"] = 375,	-- The Chill of Death
					["races"] = HORDE_ONLY,
					["crs"] = {
						1553,	-- Greater Duskbat
						1554,	-- Vampiric Duskbat
					},
				}),
				i(3264, {	-- Duskbat Wing
					["questID"] = 376,	-- The Damned
					["races"] = HORDE_ONLY,
					["crs"] = {
						1512,	-- Duskbat
						1553,	-- Greater Duskbat
						1513,	-- Mangy Duskbat
					},
				}),
				i(2834, {	-- Embalming Ichor
					["questID"] = 358,	-- Graverobbers
					["races"] = HORDE_ONLY,
					["crs"] = {
						1674,	-- Rot Hide Gnoll
						1941,	-- Rot Hide Graverobber
						1675,	-- Rot Hide Mongrel
					},
				}),
				i(3335, {	-- Farmer's Broom
					["cr"] = 1935,	-- Tirisfal Farmhand
				}),
				i(3334, {	-- Farmer's Shovel
					["crs"] = {
						1936,	-- Farmer Solliden
						1656,	-- Thurman Agamand
						1934,	-- Tirisfal Farmer
					},
				}),
				i(12737, {	-- Gloom Weed
					["questID"] = 5481,	-- Gordo's Task
					["races"] = HORDE_ONLY,
				}),
				i(3321, {	-- Gray Fur Booties
					["cr"] = 1549,	-- Ravenous Darkhound
				}),
				i(3331, {	-- Melrache's Cape
					["cr"] = 1665,	-- Captain Melrache
				}),
				i(3162, {	-- Notched Rib
					["questID"] = 426,	-- The Mills Overrun
					["races"] = HORDE_ONLY,
					["crs"] = {
						1523,	-- Cracked Skull Soldier
						1520,	-- Rattlecage Soldier
					},
				}),
				i(3332, {	-- Perrine's Boots
					["cr"] = 1662,	-- Captain Perrine
				}),
				i(2855, {	-- Putrid Claw
					["questID"] = 404,	-- A Putrid Task
					["races"] = HORDE_ONLY,
					["crs"] = {
						1526,	-- Ravaged Corpse
						1525,	-- Rotting Dead
					},
				}),
				i(3262, {	-- Putrid Wooden Hammer
					["cr"] = 1890,	-- Rattlecage Skeleton
				}),
				i(6281, {	-- Rattlecage Skull
					["questID"] = 1470,	-- Piercing the Veil
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
					["cr"] = 1890,	-- Rattlecage Skeleton
				}),
				i(3265, {	-- Scavenger Paw
					["questID"] = 376,	-- The Damned
					["races"] = HORDE_ONLY,
					["crs"] = {
						1509,	-- Ragged Scavenger
						1508,	-- Young Scavenger
					},
				}),
				i(3266, {	-- Scarlet Armband
					["questID"] = 381,	-- The Scarlet Crusade
					["races"] = HORDE_ONLY,
					["crs"] = {
						1507,	-- Scarlet Initiate
						1506,	-- Scarlet Convert
						1667,	-- Meven Korgal
					},
				}),
				i(2875, {	-- Scarlet Insignia Ring
					["questID"] = 374,	-- Proof of Demise
					["races"] = HORDE_ONLY,
					["crs"] = {
						1665,	-- Captain Melrache
						1662,	-- Captain Perrine
						1664,	-- Captain Vachon
						1660,	-- Scarlet Bodyguard
						1538,	-- Scarlet Friar
						1536,	-- Scarlet Missionary
						1539,	-- Scarlet Neophyte
						1540,	-- Scarlet Vanguard
						1535,	-- Scarlet Warrior
						1537,	-- Scarlet Zealot
					},
				}),
				i(3260, {	-- Scarlet Initiate Robes
					["cr"] = 1507,	-- Scarlet Initiate
				}),
				i(11127, {	-- Scavenged Goods
					["questID"] = 3902,	-- Scavenging Deathknell
					["races"] = HORDE_ONLY,
				}),
				i(3319, {	-- Short Sabre
					["cr"] = 1529,	-- Bleeding Horror
				}),
				i(3328, {	-- Spider Web Robe
					["cr"] = 1555,	-- Vicious Night Web Spider
				}),
				i(3329, {	-- Spiked Wooden Plank
					["cr"] = 1753,	-- Maggot Eye
				}),
				i(4263, {	-- Standard Issue Shield
					["cr"] = 1660,	-- Scarlet Bodyguard
				}),
				i(2754, {	-- Tarnished Bastard Sword
					["cr"] = 1506,	-- Scarlet Convert
				}),
				i(2846, {	-- Tirisfal Pumpkin
					["questID"] = 365,	-- Fields of Grief (1/2)
					["races"] = HORDE_ONLY,
				}),
				i(2872, {	-- Vicious Night Web Spider Venom
					["questID"] = 369,	-- A New Plague (3/4)
					["cr"] = 1555,	-- Vicious Night Web Spider
					["races"] = HORDE_ONLY,
				}),
				i(3325, {	-- Vile Fin Battle Axe
					["cr"] = 1545,	-- Vile Fin Muckdweller
				}),
				i(3327, {	-- Vile Fin Oracle Staff
					["cr"] = 1544,	-- Vile Fin Minor Oracle
				}),
				i(2859, {	-- Vile Fin Scale
					["questID"] = 368,	-- A New Plague (2/4)
					["races"] = HORDE_ONLY,
					["crs"] = {
						1544,	-- Vile Fin Minor Oracle
						1545,	-- Vile Fin Muckdweller
						1543,	-- Vile Fin Puddlejumper
					},
				}),
				i(3261, {	-- Webbed Cloak
					["cr"] = 1688,	-- Night Web Matriarch
				}),
				i(3263, {	-- Webbed Pants
					["cr"] = 1505,	-- Night Web Spider
				}),
			}),
		},
	}),
}));