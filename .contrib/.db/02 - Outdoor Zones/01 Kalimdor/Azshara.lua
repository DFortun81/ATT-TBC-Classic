---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(KALIMDOR, {
	m(AZSHARA, {
		["lore"] = "A shattered stretch of coastline on Kalimdor's northeast, Azshara was once the greatest night elf metropolis. The city fell millennia ago in the War of the Ancients, but a few ragged buildings perch on the cliffs overlooking similar ruins among the coral. The Horde has established a small outpost, Grim Ulang, in the area, but naga are a constant danger.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(852, {	-- Explore Azshara
					-- #if BEFORE WRATH
					["description"] = "Explore Azshara, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["120:155:818:107"] = 1229,	-- Tower of Eldara
				["145:215:422:95"] = 1225,	-- Ursolan
				["160:210:404:194"] = 1228,	-- The Shattered Strand
				["190:200:681:153"] = 1226,	-- Temple of Arkkoran
				["200:150:77:331"] = 1236,	-- Haldarr Encampment
				["215:175:84:229"] = 1237,	-- Valormok
				["220:255:191:369"] = 1233,	-- Forlorn Ridge
				["225:180:35:422"] = 1235,	-- Shadowsong Shrine
				["235:140:478:44"] = 1219,	-- Legash Encampment
				["235:270:250:106"] = 1216,	-- Timbermaw Hold
				["240:125:552:499"] = 1232,	-- Ravencrest Monument
				["240:155:499:119"] = 1220,	-- Thalassian Base Camp
				["245:185:644:40"] = 2497,	-- Bitter Reaches
				["265:280:238:221"] = 1221,	-- Ruins of Eldarath
				["270:300:479:201"] = 1227,	-- Bay of Storms
				["315:200:296:429"] = 1234,	-- Lake Mennar
				["370:220:389:353"] = 1231,	-- Southridge Beach
				["395:128:396:540"] = 1256,	-- The Ruined Reaches
				["570:170:366:0"] = 1230,	-- Jagged Reef
				--[[
				[878] = 1,                               -- Southfury River
				[1217] = 3,                              -- Vanndir Encampment
				[1218] = 4,                              -- TESTAzshara
				[1222] = 8,                              -- Hetaera's Clutch
				[1223] = 9,                              -- Temple of Zin-Malor
				[1224] = 10,                             -- Bear's Head
				[2321] = 25,                             -- The Great Sea
				[3137] = 27,                             -- Talrendis Point
				[3138] = 28,                             -- Rethress Sanctum
				[3140] = 29,                             -- Scalebeard's Cave
				]]--
			})),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(64, {	-- Talrendis Point, Azshara
					["cr"] = 12577,	-- Jarrodenus <Hippogryph Master>
					["coord"] = { 11.8, 77.6, AZSHARA },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(44, {	-- Valormok, Azshara
					["cr"] = 8610,	-- Kroum <Wind Rider Master>
					["coord"] = { 22.0, 49.6, AZSHARA },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(3382, {	-- A Crew Under Fire
					["qg"] = 8380,	-- Captain Vanessa Beltis
					["coord"] = { 53.0, 87.8, AZSHARA },
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(5536, {	-- A Land Filled with Hatred
					["qg"] = 11548,	-- Loth'atu
					["coord"] = { 11.4, 78.2, AZSHARA },
					["lvl"] = 45,
				}),
				un(REMOVED_FROM_GAME, q(3381, {	-- A Meeting with the Master
					["qg"] = 8399,	-- Nyrill <Xylem's Apprentice>
					["coord"] = { 26.4, 46.2, AZSHARA },
					["repeatable"] = true,
					["lvl"] = 45,
				})),
				q(3564, {	-- Andron's Payment to Jediga
					["qg"] = 6522,	-- Andron Gant
					["sourceQuest"] = 3542,	-- Delivery to Andron Gant
					["coord"] = { 54.6, 75.6, UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10679, 1 },	-- Andron's Note
					},
					["lvl"] = 45,
				}),
				q(3602, {	-- Azsharite
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 3511,	-- The Name of the Beast
					["coord"] = { 60.8, 66.4, AZSHARA },
					["cost"] = {
						{ "i", 10714, 20 },	-- Crystallized Azsharite
					},
					["lvl"] = 45,
					["groups"] = {
						{
							["itemID"] = 10834,	-- Felhound Tracker Kit
							["groups"] = {
								{
									["itemID"] = 10831,	-- Fel Orb
									["questID"] = 3602,	-- Azsharite
								},
								{
									["itemID"] = 10832,	-- Fel Tracker Owner's Manual
									["questID"] = 3602,	-- Azsharite
								},
							},
						},
						i(10839),	-- Crystallized Note
						i(10840),	-- Crystallized Note
					},
				}),
				q(3504, {	-- Betrayed (1/4)
					["qg"] = 4485,	-- Belgrom Rockmaul
					["coord"] = { 75, 34.2, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10643, 1 },	-- Sealed Letter to Ag'tor
					},
					["lvl"] = 44,
				}),
				q(3505, {	-- Betrayed (2/4)
					["qg"] = 8576,	-- Ag'tor Bloodfist
					["sourceQuest"] = 3504,	-- Betrayed (1/4)
					["coord"] = { 22.2, 51.4, AZSHARA },
					["races"] = HORDE_ONLY,
					["lvl"] = 44,
				}),
				q(3506, {	-- Betrayed (3/4)
					["provider"] = { "o", 151286 },	-- Kaldorei Tome of Summoning
					["sourceQuest"] = 3505,	-- Betrayed (2/4)
					["coord"] = { 59.5, 31.3, AZSHARA },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10597, 1 },	-- Head of Magus Rimtori
					},
					["lvl"] = 44,
					["groups"] = {
						{
							["itemID"] = 10597,	-- Head of Magus Rimtori
							["questID"] = 3506,	-- Betrayed (3/4)
							["cr"] = 8578,	-- Magus Rimtori
							["coord"] = { 59.6, 31.4, AZSHARA },
						},
					},
				}),
				q(3507, {	-- Betrayed (4/4)
					["qg"] = 8576,	-- Ag'tor Bloodfist
					["sourceQuest"] = 3506,	-- Betrayed (3/4)
					["coord"] = { 22.2, 51.4, AZSHARA },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10597, 1 },	-- Head of Magus Rimtori
					},
					["lvl"] = 44,
					["groups"] = {
						i(10709),	-- Pyrestone Orb
						i(11120),	-- Belgrom's Hammer
					},
				}),
				q(3508, {	-- Breaking the Ward
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 3141,	-- Loramus
					["coord"] = { 60.8, 66.4, AZSHARA },
					["lvl"] = 45,
				}),
				q(8153, {	-- Courser Antlers
					["qg"] = 8405,	-- Ogtinc
					["sourceQuest"] = 8151,	-- The Hunter's Charm
					["coord"] = { 42.2, 42.6, AZSHARA },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 20017, 2 },	-- Perfect Courser Antler
					},
					["lvl"] = 50,
				}),
				q(3542, {	-- Delivery to Andron Gant
					["qg"] = 8587,	-- Jediga
					["sourceQuest"] = 3517,	-- Stealing Knowledge
					["coord"] = { 22.4, 51.4, AZSHARA },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10540, 1 },	-- Tablet of Markri
					},
					["lvl"] = 45,
				}),
				q(3561, {	-- Delivery to Archmage Xylem
					["qg"] = 8587,	-- Jediga
					["sourceQuest"] = 3517,	-- Stealing Knowledge
					["coord"] = { 22.4, 51.4, AZSHARA },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10541, 1 },	-- Tablet of Sael'hai
					},
					["lvl"] = 45,
				}),
				q(3541, {	-- Delivery to Jes'rimon
					["qg"] = 8587,	-- Jediga
					["sourceQuest"] = 3517,	-- Stealing Knowledge
					["coord"] = { 22.4, 51.4, AZSHARA },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10539, 1 },	-- Tablet of Jin'yael
					},
					["lvl"] = 45,
				}),
				q(3518, {	-- Delivery to Magatha
					["qg"] = 8587,	-- Jediga
					["sourceQuest"] = 3517,	-- Stealing Knowledge
					["coord"] = { 22.4, 51.4, AZSHARA },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10538, 1 },	-- Tablet of Beth'Amara
					},
					["lvl"] = 45,
				}),
				q(9364, {	-- Fragmented Magic
					["qg"] = 8379,		-- Archmage Xylem
					["sourceQuest"] = 9362,	-- Warlord Krellian
					["coord"] = { 29.6, 40.6, AZSHARA },
					["classes"] = { MAGE },
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 4142,	-- Tome of Polymorph: Pig
							["recipeID"] = 28272,	-- Polymorph (Pig)
							["classes"] = { MAGE },
						},
					},
				}),
				q(3563, {	-- Jes'rimon's Payment to Jediga
					["qg"] = 8659,	-- Jes'rimon
					["sourceQuest"] = 3541,	-- Delivery to Jes'rimon
					["coord"] = { 55.6, 34, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10680, 1 },	-- Jes'rimon's Note
					},
					["lvl"] = 45,
				}),
				q(3601, {	-- Kim'jael Indeed!
					["qg"] = 8420,	-- Kim'jael
					["coord"] = { 53.4, 21.8, AZSHARA },
					["cost"] = {
						{ "i", 10717, 1 },	-- Kim'Jael's Compass
						{ "i", 10715, 1 },	-- Kim'Jael's Scope
						{ "i", 10722, 1 },	-- Kim'Jael's Stuffed Chicken
						{ "i", 10718, 1 },	-- Kim'Jael's Wizzlegoober
					},
					["lvl"] = 47,
					["groups"] = {
						i(10830),	-- M73 Frag Grenade
					},
				}),
				q(5534, {	-- Kim'jael's "Missing" Equipment
					["qg"] = 8420,	-- Kim'jael
					["coord"] = { 53.4, 21.8, AZSHARA },
					["cost"] = {
						{ "i", 13815, 1 },	-- Some Rune
					},
					["lvl"] = 47,
				}),
				q(3141, {	-- Loramus
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 2744,	-- The Demon Hunter
					["coord"] = { 60.8, 66.4, AZSHARA },
					["lvl"] = 45,
				}),
				q(3562, {	-- Magatha's Payment to Jediga
					["qg"] = 4046,	-- Magatha Grimtotem
					["sourceQuest"] = 3518,	-- Delivery to Magatha
					["coord"] = { 70.2, 30.8, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10678, 1 },	-- Magatha's Note
					},
					["lvl"] = 45,
				}),
				q(8250, {	-- Magecraft
					["qgs"] = {
						7312,	-- Dink <Mage Trainer> [IRONFORGE]
						7311,	-- Uthel'nay <Mage Trainer> [ORGRIMMAR]
						331,	-- Maginor Dumas <Master Mage> [STORMWIND_CITY]
						3047,	-- Archmage Shymm <Mage Trainer> [THUNDER_BLUFF]
						4567,	-- Pierce Shackleton <Mage Trainer>	[UNDERCITY]
					},
					["coords"] = {
						{ 26.8, 8.6, IRONFORGE },
						{ 39.0, 86.0, ORGRIMMAR },
						{ 38.2, 81.4, STORMWIND_CITY },
						{ 22.6, 14.8, THUNDER_BLUFF },
						{ 85.6, 14.0, UNDERCITY },
					},
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(8251, {	-- Magic Dust
					["qg"] = 8379,	-- Archmage Xylem
					["sourceQuest"] = 8250,	-- Magecraft
					["coord"] = { 29.6, 40.6, AZSHARA },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 20028, 10 },	-- Glittering Dust
					},
					["lvl"] = 50,
				}),
				q(3503, {	-- Meeting with the Master
					["qg"] = 8395,	-- Sanath Lim-yo
					["coord"] = { 28.0, 50.0, AZSHARA },
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(8255, {	-- Of Coursers We Know
					["qg"] = 8405,	-- Ogtinc
					["sourceQuest"] = 8254,	-- Cenarion Aid
					["coord"] = { 42.2, 42.6, AZSHARA },
					["classes"] = { PRIEST },
					["cost"] = {
						{ "i", 20027, 4 },	-- Healthy Courser Gland
					},
					["lvl"] = 50,
				}),
				q(3421, {	-- Return Trip
					["qg"] = 8399,	-- Nyrill <Xylem's Apprentice>
					["coord"] = { 26.4, 46.2, AZSHARA },
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(5535, {	-- Spiritual Unrest
					["qg"] = 11548,	-- Loth'atu
					["coord"] = { 11.4, 78.2, AZSHARA },
					["lvl"] = 45,
				}),
				q(3517, {	-- Stealing Knowledge
					["qg"] = 8587,	-- Jediga
					["coord"] = { 22.4, 51.4, AZSHARA },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10538, 1 },	-- Tablet of Beth'Amara
						{ "i", 10539, 1 },	-- Tablet of Jin'yael
						{ "i", 10540, 1 },	-- Tablet of Markri
						{ "i", 10541, 1 },	-- Tablet of Sael'hai
					},
					["lvl"] = 45,
				}),
				q(3621, {	-- The Formation of Felbane
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 3602,	-- Azsharite
					["coord"] = { 60.8, 66.4, AZSHARA },
					["cost"] = {
						{ "i", 10738, 1 },	-- Shipment to Galvan
					},
					["lvl"] = 45,
				}),
				q(8151, {	-- The Hunter's Charm
					["qgs"] = {
						4205,	-- Dorion <Hunter Trainer>
						5116,	-- Olmin Burningbeard <Hunter Trainer>
						3352,	-- Ormak Grimshot <Hunter Trainer>
						3406,	-- Xor'juul <Hunter Trainer>
						5516,	-- Ulfir Ironbeard <Hunter Trainer>
						3038,	-- Kary Thunderhorn <Hunter Trainer>
					},
					["coords"] = {
						{ 42.2, 7.6, DARNASSUS },
						{ 70.6, 83.8, IRONFORGE },
						{ 66.2, 18.6, ORGRIMMAR },
						{ 62.0, 15.0, STORMWIND_CITY },
						{ 58.4, 88.0, THUNDER_BLUFF },
					},
					["classes"] = { HUNTER },
					["lvl"] = 50,
				}),
				q(8256, {	-- The Ichor of Undeath
					["qg"] = 8405,	-- Ogtinc
					["sourceQuest"] = 8255,	-- Of Coursers We Know
					["coord"] = { 42.2, 42.6, AZSHARA },
					["classes"] = { PRIEST },
					["cost"] = {
						{ "i", 7972, 1 },	-- Ichor of Undeath
					},
					["lvl"] = 50,
				}),
				q(3509, {	-- The Name of the Beast
					["qg"] = 7783,	-- Loramus Thalipedes
					["sourceQuest"] = 3508,	-- Breaking the Ward
					["coord"] = { 60.8, 66.4, AZSHARA },
					["lvl"] = 45,
				}),
				q(3510, {	-- The Name of the Beast
					["qg"] = 6134,	-- Lord Arkkoroc
					["sourceQuest"] = 3509,	-- The Name of the Beast
					["coord"] = { 77.2, 42.8, AZSHARA },
					["cost"] = {
						{ "i", 10599, 1 },	-- Hetaera's Beaten Head
						{ "i", 10598, 1 },	-- Hetaera's Bloodied Head
						{ "i", 10600, 1 },	-- Hetaera's Bruised Head
					},
					["lvl"] = 45,
					["groups"] = {
						n(6140, {	-- Hetaera
							["coords"] = {
								{ 56.6, 44.6, AZSHARA },
								{ 59.4, 40.6, AZSHARA },
							},
							["groups"] = {
								{
									["itemID"] = 10599,	-- Hetaera's Beaten Head
									["questID"] = 3510,	-- The Name of the Beast
								},
								{
									["itemID"] = 10598,	-- Hetaera's Bloodied Head
									["questID"] = 3510,	-- The Name of the Beast
								},
								{
									["itemID"] = 10600,	-- Hetaera's Bruised Head
									["questID"] = 3510,	-- The Name of the Beast
								},
							},
						}),
					},
				}),
				q(3511, {	-- The Name of the Beast
					["qg"] = 6134,	-- Lord Arkkoroc
					["sourceQuest"] = 3510,	-- The Name of the Beast
					["coord"] = { 77.2, 42.8, AZSHARA },
					["cost"] = {
						{ "i", 10610, 1 },	-- Hetaera's Blood
					},
					["lvl"] = 45,
				}),
				q(8252, {	-- The Siren's Coral
					["qg"] = 8379,	-- Archmage Xylem
					["sourceQuest"] = 8251,	-- Magic Dust
					["coord"] = { 29.6, 40.6, AZSHARA },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 20029, 6 },	-- Enchanted Coral
					},
					["lvl"] = 50,
				}),
				q(3565, {	-- Xylem's Payment to Jediga
					["qg"] = 8379,	-- Archmage Xylem
					["sourceQuest"] = 3561,	-- Delivery to Archmage Xylem
					["coord"] = { 29.2, 40.2, AZSHARA },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 10681, 1 },	-- Xylem's Note
					},
					["lvl"] = 45,
				}),
				q(9362, {	-- Warlord Krellian
					["qg"] = 8379,		-- Archmage Xylem
					["coord"] = { 29.6, 40.6, AZSHARA },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 23250, 1 },	-- Prismatic Shell
					},
					["lvl"] = 60,
					["groups"] = {
						{
							["itemID"] = 23250,	-- Prismatic Shell
							["questID"] = 9362,	-- Warlord Krellian
							["cr"] = 8408,	-- Warlord Krellian
							["coord"] = { 41.6, 52.8, AZSHARA },
						},
					},
				}),
				q(8231, {	-- Wavethrashing
					["qg"] = 8405,	-- Ogtinc
					["sourceQuest"] = 8153,	-- Courser Antlers
					["coord"] = { 42.2, 42.6, AZSHARA },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 20087, 6 },	-- Wavethrasher Scales
					},
					["lvl"] = 50,
				}),
			}),
			n(RARES, {
				n(6648, {	-- Antilos
					["coords"] = {
						{ 16.8, 51.8, AZSHARA },
						{ 18.0, 56.6, AZSHARA },
						{ 17.0, 64.0, AZSHARA },
						{ 48.0, 19.2, AZSHARA },
						{ 49.0, 26.0, AZSHARA },
						{ 51.0, 29.6, AZSHARA },
						{ 52.2, 36.8, AZSHARA },
						{ 54.0, 25.8, AZSHARA },
						{ 56.6, 19.4, AZSHARA },
					},
				}),
				n(14464, { 	-- Avalanchion
					["description"] = "This is only available during an Elemental Invasion.",
					["coords"] = {
						{ 72.6, 20.0, AZSHARA },
						{ 77.2, 16.6, AZSHARA },
						{ 82.6, 21.0, AZSHARA },
						{ 77.0, 24.2, AZSHARA },
						{ 80.0, 24.2, AZSHARA },
					},
					["groups"] = {
						i(18673),	-- Avalanchion's Stony Hide
						i(18674),	-- Hardened Stone Band
						applyclassicphase(PHASE_THREE, i(19268)),	-- Ace of Elementals
					},
				}),
				n(6651, {	-- Gatekeeper Rageroar
					["coord"] = { 38.4, 32.6, AZSHARA },
				}),
				n(6650, {	-- General Fangferror
					["coord"] = { 41.6, 51.8, AZSHARA },
					["groups"] = {
						i(17054),	-- Joonho's Mercy
					},
				}),
				n(6649, {	-- Lady Sesspira
					["coords"] = {
						{ 40.6, 45.6, AZSHARA },
						{ 37.2, 49.0, AZSHARA },
						{ 37.6, 51.8, AZSHARA },
						{ 34.0, 58.6, AZSHARA },
						{ 39.6, 55.6, AZSHARA },
					},
				}),
				n(6647, {	-- Magister Hawkhelm
					["coords"] = {
						{ 56.8, 28.6, AZSHARA },
						{ 59.4, 31.4, AZSHARA },
					},
				}),
				n(6652, {	-- Master Feardred
					["coords"] = {
						{ 61.8, 25.6, AZSHARA },
						{ 65.8, 17.6, AZSHARA },
					},
				}),
				n(6646, {	-- Monnos the Elder
					["coords"] = {
						{ 82.0, 18.6, AZSHARA },
						{ 78.6, 17.4, AZSHARA },
						{ 76.2, 18.0, AZSHARA },
						{ 72.8, 19.2, AZSHARA },
						{ 76.8, 23.4, AZSHARA },
						{ 59.8, 78.4, AZSHARA },
						{ 55.6, 80.2, AZSHARA },
						{ 59.8, 80.6, AZSHARA },
						{ 56.4, 87.8, AZSHARA },
						{ 59.6, 89.0, AZSHARA },
					},
				}),
				n(13896, {	-- Scalebeard
					["coords"] = {
						{ 55.0, 49.8, AZSHARA },
						{ 52.0, 45.6, AZSHARA },
						{ 52.2, 49.6, AZSHARA },
					},
				}),
				n(8660, {	-- The Evalcharr
					["coords"] = {
						{ 17.6, 54.0, AZSHARA },
						{ 18.8, 66.0, AZSHARA },
						{ 23.4, 55.0, AZSHARA },
					},
				}),
				n(6118, {	-- Varo'then's Ghost
					["coords"] = {
						{ 13.4, 74.8, AZSHARA },
						{ 16.6, 72.8, AZSHARA },
						{ 17.2, 66.2, AZSHARA },
						{ 19.0, 68.0, AZSHARA },
					},
				}),
			}),
			n(VENDORS, {
				n(12957, {	-- Blimo Gadgetspring <Trade Supplier>
					["coord"] = { 45.2, 90.8, AZSHARA },
					["groups"] = {
						i(15729),	-- Pattern: Chimeric Gloves
						i(15751),	-- Pattern: Blue Dragonscale Breastplate
					},
				}),
				n(14301, {	-- Brinna Valanaar <Bowyer>
					["coord"] = { 12.0, 78.4, AZSHARA },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11305),	-- Dense Shortbow
					},
				}),
				n(8678, {	-- Jubie Gadgetspring <Engineering Supplier>
					["coord"] = { 45.2, 90.8, AZSHARA },
					["groups"] = {
						i(10607),	-- Schematic: Deepdive Helmet
					},
				}),
			}),
			n(ZONE_DROPS, {
				-- #if BEFORE CATA
				-- Originally a zone drop of Azshara, was moved to Winterspring after.
				applyclassicphase(TBC_PHASE_ONE, i(34535, {	-- Azure Whelpling
					["crs"] = {
						193,	-- Blue Dragonspawn
						6130,	-- Blue Scalebane
						6129,	-- Draconic Magelord
						6131,	-- Draconic Mageweaver
					},
				})),
				-- #endif
				i(20029, {	-- Enchanted Coral
					["questID"] = 8252,	-- The Siren's Coral
					["classes"] = { MAGE },
					["cr"] = 6195,	-- Spitelash Siren
				}),
				i(20023, {	-- Encoded Fragment
					["questID"] = 8235,	-- Encoded Fragments
					["classes"] = { ROGUE },
					["crs"] = {
						8766,	-- Forest Ooze
						8660,	-- The Evalcharr
					},
				}),
				i(16219, {	-- Formula: Enchant Gloves - Greater Agility
					["cr"] = 6201,	-- Legashi Rogue
				}),
				i(11405, {	-- Giant Silver Vein
					["questID"] = 4201,	-- The Love Potion
					["crs"] = {
						6146,	-- Cliff Breaker
						6147,	-- Cliff Thunderer
						6148,	-- Cliff Walker
					},
				}),
				i(20028, {	-- Glittering Dust
					["questID"] = 8251,	-- Magic Dust
					["classes"] = { MAGE },
					["crs"] = {
						6199,	-- Blood Elf Reclaimer
						6198,	-- Blood Elf Surveyor
					},
				}),
				i(20027, {	-- Healthy Courser Gland
					["questID"] = 8255,	-- Of Coursers We Know
					["classes"] = { PRIEST },
					["cr"] = 8761,	-- Mosshoof Courser
				}),
				i(15763, {	-- Pattern: Blue Dragonscale Shoulders
					["cr"] = 6146,	-- Cliff Breaker
				}),
				i(14473, {	-- Pattern: Ghostweave Belt
					["cr"] = 7864,	-- Lingering Highborne
				}),
				i(14477, {	-- Pattern: Ghostweave Gloves
					["cr"] = 7864,	-- Lingering Highborne
				}),
				i(15753, {	-- Pattern: Stormshroud Armor
					["cr"] = 6138,	-- Arkkoran Oracle
				}),
				i(15764, {	-- Pattern: Stormshroud Shoulders
					["cr"] = 6144,	-- Son of Arkkoroc
				}),
				i(15728, {	-- Pattern: Wicked Leather Bracers
					["cr"] = 6201,	-- Legashi Rogue
				}),
				i(20017, {	-- Perfect Courser Antler
					["questID"] = 8153,	-- Courser Antlers
					["classes"] = { HUNTER },
					["cr"] = 8761,	-- Mosshoof Courser
				}),
				i(13491, {	-- Recipe: Elixir of the Mongoose
					["cr"] = 6201,	-- Legashi Rogue
				}),
				i(16045, {	-- Schematic: Spellpower Goggles Xtreme Plus
					["cr"] = 6195,	-- Spitelash Siren
				}),
				i(13815, {	-- Some Rune
					["questID"] = 5534,	-- Kim'jael's "Missing" Equipment
					["crs"] = {
						7885,	-- Spitelash Battlemaster
						7886,	-- Spitelash Enchantress
						6196,	-- Spitelash Myrmidon
						6195,	-- Spitelash Siren
					},
				}),
				i(10450, {	-- Undamaged Hippogryph Feather
					["crs"] = {
						6648,	-- Antilos
						6380,	-- Thunderhead Consort
						6375,	-- Thunderhead Hippogryph
						6379,	-- Thunderhead Patriarch
						6378,	-- Thunderhead Skystormer
						6377,	-- Thunderhead Stagwing
					},
				}),
				i(20087, {	-- Wavethrasher Scales
					["questID"] = 8231,	-- Wavethrashing
					["classes"] = { HUNTER },
					["crs"] = {
						6349,	-- Great Wavethrasher
						6348,	-- Wavethrasher
						6347,	-- Young Wavethrasher
					},
				}),
			}),
		},
	}),
}));