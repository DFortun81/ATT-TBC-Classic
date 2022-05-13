---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(HILLSBRAD_FOOTHILLS, {
		["lore"] = "The Hillsbrad Foothills (sometimes referred to as simply Hillsbrad) is a mid-level zone most suitable for players around level 25. Located in the Southern end of the North Island of (Eastern Kingdoms), the hills are home to the towns of Southshore and Hillsbrad Fields (Alliance), and Tarren Mill (Horde). Some notable locations, such as Durnholde Keep and Azurelode Mine can also be found here. Since this area lies outside of Thoradin's Wall, it is considered as a crossroads between Alliance and Horde players, which makes combat between the two factions likely.\n\nHillsbrad is relatively safe and stable. Its hills are green and pastoral, its meadows fertile and its soil rich. Humans loyal to the Alliance control Hillsbrad from the town of Southshore, though the Syndicate, murlocs and Forsaken threaten their serenity.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(772, {	-- Explore Hillsbrad Foothills
					-- #if BEFORE WRATH
					["description"] = "Explore Hillsbrad Foothills, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["125:100:109:482"] = 896,	-- Purgation Isle
				["165:200:175:275"] = 288,	-- Azurelode Mine
				["205:155:414:154"] = 1056,	-- Darrow Hill
				["215:240:541:236"] = 289,	-- Nethander Stead
				["220:310:509:0"] = 272,	-- Tarren Mill
				["230:320:524:339"] = 294,	-- Eastern Strand
				["235:270:418:201"] = 271,	-- Southshore
				["240:275:637:294"] = 290,	-- Dun Garok
				["285:155:208:368"] = 295,	-- Western Strand
				["288:225:2:192"] = 285,	-- Southpoint Tower
				["305:275:198:155"] = 286,	-- Hillsbrad Fields
				["384:365:605:75"] = 275,	-- Durnholde Keep
				--[[
				[287] = 6,                               -- Hillsbrad
				[1057] = 14,                             -- Thoradin's Wall
				[2397] = 15,                             -- The Great Sea
				]]--
			})),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(14, {	-- Southshore, Hillsbrad
					["cr"] = 2432,	-- Darla Harris <Gryphon Master>
					["coord"] = { 49.4, 52.4, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(13, {	-- Tarren Mill, Hillsbrad
					["cr"] = 2389,	-- Zarise <Bat Handler>
					["coord"] = { 60.2, 18.6, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(565, {	-- Bartolo's Yeti Fur Cloak
					["qg"] = 2438,	-- Bartolo Ginsetti
					["coord"] = { 49.4, 55.5, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2997, 1 },	-- Bolt of Woolen Cloth
						{ "i", 2321, 1 },	-- Fine Thread
						{ "i", 3719, 1 },	-- Hillman's Cloak
						{ "i", 3720, 10 },	-- Yeti Fur
					},
					["lvl"] = 29,
					["groups"] = {
						i(2805),	-- Yeti Fur Cloak
					},
				}),
				q(527, {	-- Battle of Hillsbrad
					["qg"] = 2215,	-- High Executor Darthalia
					["coord"] = { 62.32, 20.33, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(528, {	-- Battle of Hillsbrad
					["qg"] = 2215,	-- High Executor Darthalia
					["sourceQuest"] = 527,	-- Battle of Hillsbrad
					["coord"] = { 62.32, 20.33, HILLSBRAD_FOOTHILLS },
					["lvl"] = 19,
					["races"] = HORDE_ONLY,
				}),
				q(529, {	-- Battle of Hillsbrad
					["qg"] = 2215,	-- High Executor Darthalia
					["sourceQuest"] = 528,	-- Battle of Hillsbrad
					["coord"] = { 62.32, 20.33, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(532, {	-- Battle of Hillsbrad
					["qg"] = 2215,	-- High Executor Darthalia
					["sourceQuest"] = 529,	-- Battle of Hillsbrad
					["coord"] = { 62.32, 20.33, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(539, {	-- Battle of Hillsbrad
					["qg"] = 2215,	-- High Executor Darthalia
					["sourceQuest"] = 532,	-- Battle of Hillsbrad
					["coord"] = { 62.32, 20.33, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(541, {	-- Battle of Hillsbrad
					["qg"] = 2215,	-- High Executor Darthalia
					["sourceQuest"] = 539,	-- Battle of Hillsbrad
					["coord"] = { 62.32, 20.33, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(550, {	-- Battle of Hillsbrad
					["qg"] = 2215,	-- High Executor Darthalia
					["coord"] = { 62.32, 20.33, HILLSBRAD_FOOTHILLS },
					["sourceQuest"] = 541,	-- Battle of Hillsbrad
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						i(6282),	-- Sacred Burial Trousers
						i(3761),	-- Deadskull Shield
						i(3822),	-- Runic Darkblade
						i(3760),	-- Band of the Undercity
					},
				}),
				q(506, {	-- Blackmoore's Legacy
					["qg"] = 2316,	-- Gol'dir
					["sourceQuest"] = 503,	-- Gol'dir
					["coord"] = { 59.96, 43.74, ALTERAC_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(557, {	-- Bracers of Binding
					["qg"] = 2437,	-- Keeper Bel'varil
					["sourceQuest"] = 556,	-- Stone Tokens
					["coord"] = { 61.50, 20.91, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(564, {	-- Costly Menace
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2382,	-- Darren Malvew
					["groups"] = {
						i(3753),	-- Shepherd's Girdle
						i(3754),	-- Shepherd's Gloves
						i(3736),	-- Recipe: Tasty Lion Steak
						i(3728),	-- Tasty Lion Steak
					},
					["coord"] = { 52.4, 56.0, HILLSBRAD_FOOTHILLS },
				}),
				q(545, {	-- Dalaran Patrols
					["qg"] = 2410,	-- Magus Wordeen Voidglare
					["sourceQuest"] = 544,	-- Prison Break In
					["coord"] = { 61.60, 20.85, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(567, {	-- Dangerous!
					["provider"] = { "o", 2008 },	-- Dangerous!
					["coord"] = { 62.56, 19.69, HILLSBRAD_FOOTHILLS },
					["lvl"] = 19,
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(3742),	-- Bow of Plunder
						i(3743),	-- Sentry Buckler
						i(5250),	-- Charred Wand
						i(3732),	-- Hooded Cowl
					},
				}),
				q(536, {	-- Down the Coast
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2228,	-- Lieutenant Farren Orinelle
					["coord"] = { 51.4, 58.4, HILLSBRAD_FOOTHILLS },
				}),
				q(509, {	-- Elixir of Agony
					["qg"] = 2216,	-- Apothecary Lydon
					["sourceQuest"] = 502,	-- Elixir of Pain
					["coord"] = { 61.45, 19.05, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3502, 6 },	-- Mudsnout Blossoms
					},
					["lvl"] = 24,
					["groups"] = {
						{
							["itemID"] = 3502,	-- Mudsnout Blossoms
							["questID"] = 509,	-- Elixir of Agony
							["coord"] = { 64.2, 62.5, HILLSBRAD_FOOTHILLS },
						},
						i(2459),	-- Swiftness Potion
					},
				}),
				q(513, {	-- Elixir of Agony
					["qg"] = 2216,	-- Apothecary Lydon
					["sourceQuest"] = 509,	-- Elixir of Agony
					["coord"] = { 61.45, 19.05, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
				}),
				q(515, {	-- Elixir of Agony
					["qg"] = 2055,	-- Master Apothecary Faranell
					["sourceQuest"] = 513,	-- Elixir of Agony
					["coord"] = { 48.89, 69.21, UNDERCITY },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["cost"] = {
						{ "i", 3508, 1 },	-- Mudsnout Mixture
						{ "i", 3388, 1 },	-- Strong Troll's Blood Potion
						{ "i", 3509, 5 },	-- Daggerspine Scale
						{ "i", 3510, 5 },	-- Torn Fin Eye
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						i(3749),	-- High Apothecary Cloak
						i(3747),	-- Meditative Sash
					},
				}),
				q(517, {	-- Elixir of Agony
					["qg"] = 2216,	-- Apothecary Lydon
					["sourceQuest"] = 515,	-- Elixir of Agony
					["coord"] = { 61.45, 19.05, HILLSBRAD_FOOTHILLS },
					["cost"] = {
						{ "i", 3517, 1 },	-- Keg of Shindigger Stout
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						{
							["itemID"] = 3517,	-- Keg of Shindigger Stout
							["questID"] = 517,	-- Elixir of Agony
							["coord"] = { 72.7, 80.0, HILLSBRAD_FOOTHILLS },
						},
					},
				}),
				q(524, {	-- Elixir of Agony
					["qg"] = 2216,	-- Apothecary Lydon
					["sourceQuest"] = 517,	-- Elixir of Agony
					["coord"] = { 61.45, 19.05, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
				}),
				q(501, {	-- Elixir of Pain
					["qg"] = 2216,	-- Apothecary Lydon
					["sourceQuest"] = 499,	-- Elixir of Suffering
					["coord"] = { 61.45, 19.05, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3496, 10 },	-- Mountain Lion Blood
					},
					["lvl"] = 21,
					["groups"] = {
						i(2230),	-- Gloves of Brawn
						i(3741),	-- Stomping Boots
						i(6482),	-- Firewalker Boots
						i(3735),	-- Recipe: Hot Lion Chops
					},
				}),
				q(502, {	-- Elixir of Pain
					["qg"] = 2216,	-- Apothecary Lydon
					["sourceQuest"] = 501,	-- Elixir of Pain
					["coord"] = { 61.45, 19.05, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 21,
				}),
				q(496, {	-- Elixir of Suffering
					["qg"] = 2216,	-- Apothecary Lydon
					["coord"] = { 61.45, 19.05, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3476, 10 },	-- Gray Bear Tongue
						{ "i", 3477, 1 },	-- Creeper Ichor
					},
					["lvl"] = 19,
				}),
				q(499, {	-- Elixir of Suffering
					["qg"] = 2216,	-- Apothecary Lydon
					["sourceQuest"] = 496,	-- Elixir of Suffering
					["coord"] = { 61.45, 19.05, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(560, {	-- Farren's Proof (2)
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2228,	-- Lieutenant Farren Orinelle
					["sourceQuest"] = 559,	-- Farren's Proof (1)
					["coord"] = { 51.4, 58.4, HILLSBRAD_FOOTHILLS },
				}),
				q(561, {	-- Farren's Proof (3)
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2263,	-- Marshal Redpath
					["sourceQuest"] = 560,	-- Farren's Proof (2)
					["coord"] = { 49.5, 58.6, HILLSBRAD_FOOTHILLS },
				}),
				q(559, {	-- Farren's Proof (1)
					["qg"] = 2228,	-- Lieutenant Farren Orinelle
					["sourceQuest"] = 536,	-- Down the Coast
					["coord"] = { 51.4, 58.4, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3716, 10 },	-- Murloc Head
					},
					["lvl"] = 25,
				}),
				q(503, {	-- Gol'dir
					["qg"] = 2229,	-- Krusk
					["sourceQuest"] = 533,	-- Infiltration
					["coord"] = { 63.24, 20.68, HILLSBRAD_FOOTHILLS },
					["maps"] = { ALTERAC_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						objective(1, {	-- 0/1 Rusted Iron Key
							["provider"] = { "i", 3704 },	-- Rusted Iron Key
							["coord"] = { 61.8, 40.6, ALTERAC_MOUNTAINS },
							["cr"] = 2431,	-- Jailor Borhuin
						}),
					},
				}),
				q(552, {	-- Helcular's Revenge
					["qg"] = 2429,	-- Novice Thaivand
					["coord"] = { 63.87, 19.66, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3708, 1 },	-- Helcular's Rod
					},
					["lvl"] = 29,
				}),
				q(553, {	-- Helcular's Revenge
					["qg"] = 2429,	-- Novice Thaivand
					["sourceQuest"] = 552,	-- Helcular's Revenge
					["coord"] = { 63.87, 19.66, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(2480, {	-- Hinott's Assistance
					["lvl"] = 20,
					["qg"] = 2391,	-- Serge Hinott
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { ROGUE },
					["sourceQuest"] = 2479,	-- Hinott's Assistance
				}),
				q(547, {	-- Humbert's Sword
					["qg"] = 2419,	-- Deathguard Humbert
					["coord"] = { 62.74, 20.21, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3693, 1 },	-- Humbert's Sword
					},
					["lvl"] = 26,
					["groups"] = {
						i(3750),	-- Ribbed Breastplate
						i(3751),	-- Mercenary Leggings
					},
				}),
				q(533, {	-- Infiltration
					["qg"] = 2229,	-- Krusk
					["sourceQuest"] = 498,	-- The Rescue,
					["coord"] = { 63.24, 20.68, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(507, {	-- Lord Aliden Perenolde
					["qg"] = 2229,	-- Krusk
					["sourceQuest"] = 506,	-- Blackmoore's Legacy
					["coord"] = { 63.24, 20.68, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				applyclassicphase(TBC_PHASE_ONE, q(9435, {	-- Missing Crystals
					["qg"] = 17218,	-- Huraan
					["coord"] = { 51.0, 58.7, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Shipment of Rare Crystals
							["provider"] = { "i", 23646 },	-- Shipment of Rare Crystals
							["coord"] = { 55.6, 35.2, HILLSBRAD_FOOTHILLS },
						}),
					},
				})),
				q(540, {	-- Preserving Knowledge
					["qg"] = 2277,	-- Loremaster Dibbs
					["sourceQuest"] = 538,	-- Southshore
					["coord"] = { 50.6, 57.1, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3658, 5 },	-- Recovered Tome
						{ "i", 3659, 1 },	-- Worn Leather Book
					},
					["lvl"] = 20,
				}),
				q(544, {	-- Prison Break In
					["qg"] = 2410,	-- Magus Wordeen Voidglare
					["coord"] = { 61.60, 20.85, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3688, 1 },	-- Bloodstone Oval
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 3688,	-- Bloodstone Oval
							["questID"] = 544,	-- Prison Break In
							["cr"] = 2414,	-- Kegan Darkmar
							["coord"] = { 18.0, 83.6, ALTERAC_MOUNTAINS },
						},
					},
				}),
				q(563, {	-- Reassignment
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2228,	-- Lieutenant Farren Orinelle
					["sourceQuest"] = 562,	-- Stormwind Ho!
					["coord"] = { 51.4, 58.4, HILLSBRAD_FOOTHILLS },
					["cost"] = {
						{ "i", 3721, 1 },	-- Farren's Report
					},
				}),
				q(542, {	-- Return to Milton
					["qg"] = 2277,	-- Loremaster Dibbs
					["sourceQuest"] = 540,	-- Preserving Knowledge
					["coord"] = { 50.6, 57.1, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(538, {	-- Southshore
					["qg"] = 1440,	-- Milton Sheaf <Librarian>
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 74.2, 7.5, STORMWIND_CITY },
					["sourceQuest"] = 337,	-- An Old History Book
				}),
				q(546, {	-- Souvenirs of Death
					["qg"] = 2418,	-- Deathguard Samsa
					["coord"] = { 62.12, 19.72, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3692, 30 },	-- Hillsbrad Human Skull
					},
					["lvl"] = 20,
					["groups"] = {
						i(3739),	-- Skull Ring
					},
				}),
				q(556, {	-- Stone Tokens
					["qg"] = 2437,	-- Keeper Bel'varil
					["coord"] = { 61.50, 20.91, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3714, 10 },	-- Worn Stone Token
					},
					["lvl"] = 30,
				}),
				q(562, {	-- Stormwind Ho!
					["qg"] = 2228,	-- Lieutenant Farren Orinelle
					["sourceQuest"] = 561,	-- Farren's Proof (3)
					["coord"] = { 51.4, 58.4, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						i(3755),	-- Fish Gutter
					},
				}),
				q(508, {	-- Taretha's Gift
					["qg"] = 2317,	-- Elysa
					["coord"] = { 39.30, 14.30, ALTERAC_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						i(3764),	-- Mantis Boots
						i(3765),	-- Brigand's Pauldrons
					},
				}),
				q(495, {	-- The Crown of Will
					["qg"] = 2227,	-- Sharlindra
					["coord"] = { 57.60, 93.84, UNDERCITY },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 34,
				}),
				q(518, {	-- The Crown of Will
					["qg"] = 2278,	-- Melisara
					["sourceQuest"] = 495,	-- The Crown of Will
					["coord"] = { 62.61, 20.64, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 34,
				}),
				q(519, {	-- The Crown of Will
					["qg"] = 2278,	-- Melisara
					["sourceQuest"] = 518,	-- The Crown of Will
					["coord"] = { 62.61, 20.64, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3552, 1 },	-- Glommus's Head
						{ "i", 3551, 1 },	-- Muckrake's Head
						{ "i", 3550, 1 },	-- Targ's Head
					},
					["lvl"] = 34,
					["groups"] = {
						{
							["itemID"] = 3552,	-- Glommus's Head
							["questID"] = 519,	-- The Crown of Will
							["cr"] = 2422,	-- Glommus
							["coord"] = { 39.4, 41.8, ALTERAC_MOUNTAINS },
						},
						{
							["itemID"] = 3551,	-- Muckrake's Head
							["questID"] = 519,	-- The Crown of Will
							["cr"] = 2421,	-- Muckrake
							["coord"] = { 38.8, 47.2, ALTERAC_MOUNTAINS },
						},
						{
							["itemID"] = 3550,	-- Targ's Head
							["questID"] = 519,	-- The Crown of Will
							["cr"] = 2420,	-- Targ
							["coord"] = { 39.6, 53.0, ALTERAC_MOUNTAINS },
						},
					},
				}),
				q(520, {	-- The Crown of Will
					["qg"] = 2278,	-- Melisara
					["sourceQuest"] = 519,	-- The Crown of Will
					["coord"] = { 62.61, 20.64, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3554, 1 },	-- Crown of Will
						{ "i", 3553, 1 },	-- Mug'thol's Head
					},
					["lvl"] = 34,
					["groups"] = {
						{
							["itemID"] = 3553,	-- Mug'thol's Head
							["questID"] = 520,	-- The Crown of Will
							["cr"] = 2257,	-- Mug'thol
							["coord"] = { 35.8, 54.0, ALTERAC_MOUNTAINS },
						},
					},
				}),
				q(521, {	-- The Crown of Will
					["qg"] = 2278,	-- Melisara
					["sourceQuest"] = 520,	-- The Crown of Will
					["coord"] = { 62.61, 20.64, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3554, 1 },	-- Crown of Will
					},
					["lvl"] = 34,
					["groups"] = {
						i(4430),	-- Ethereal Talisman
					},
				}),
				q(676, {	-- The Hammer May Fall
					["qg"] = 2770,	-- Tallow
					["coord"] = { 61.86, 19.58, HILLSBRAD_FOOTHILLS },
					["maps"] = { ARATHI_HIGHLANDS },
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(498, {	-- The Rescue
					["qg"] = 2229,	-- Krusk
					["coord"] = { 63.24, 20.68, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3499, 1 },	-- Burnished Gold Key
						{ "i", 3467, 1 },	-- Dull Iron Key
					},
					["lvl"] = 17,
					["groups"] = {
						{
							["itemID"] = 3499,	-- Burnished Gold Key
							["questID"] = 498,	-- The Rescue
							["cr"] = 2428,	-- Jailor Marlgen
							["coord"] = { 79.6, 40.6, HILLSBRAD_FOOTHILLS },
						},
						{
							["itemID"] = 3467,	-- Dull Iron Key
							["questID"] = 498,	-- The Rescue
							["cr"] = 2427,	-- Jailor Eston
							["coords"] = {
								{ 75.6, 42.6, HILLSBRAD_FOOTHILLS },
								{ 79.6, 42.0, HILLSBRAD_FOOTHILLS },
							},
						},
						i(3752),	-- Grunt Vest
						i(3733),	-- Orcish War Chain
						i(3734),	-- Recipe: Big Bear Steak
					},
				}),
				q(494, {	-- Time To Strike
					["qg"] = 2214,	-- Deathstalker Lesh
					["coord"] = { 20.79, 47.41, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(2934, {	-- Undamaged Venom Sac
					["qg"] = 2216,	-- Apothecary Lydon <Royal Apothecary Society>
					["sourceQuest"] = 2933,	-- Venom Bottles
					["coord"] = { 61.4, 19.2, HILLSBRAD_FOOTHILLS },
					["maps"] = { THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9322, 1 },	-- Undamaged Venom Sac
					},
					["lvl"] = 40,
				}),
				q(2938, {	-- Venom to the Undercity
					["qg"] = 2216,	-- Apothecary Lydon <Royal Apothecary Society>
					["sourceQuest"] = 2934,	-- Undamaged Venom Sac
					["coord"] = { 61.4, 19.2, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						i(9649),	-- Royal Highmark Vestments
						i(9650),	-- Honorguard Chestpiece
						i(10686),	-- Aegis of Battle
					},
				}),
				q(566, {	-- WANTED: Baron Vardus
					["provider"] = { "o", 1763 },	-- WANTED
					["sourceQuest"] = 549,	-- WANTED: Syndicate Personnel
					["coord"] = { 62.61, 20.76, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3626, 1 },	-- Head of Baron Vardus
					},
					["lvl"] = 35,
					["groups"] = {
						{
							["itemID"] = 3626,	-- Head of Baron Vardus
							["questID"] = 566,	-- WANTED: Baron Vardus
							["cr"] = 2306,	-- Baron Vardus
							["coord"] = { 56.0, 26.2, ALTERAC_MOUNTAINS },
						},
						i(2231),	-- Inferno Robe
					},
				}),
				q(549, {	-- WANTED: Syndicate Personnel
					["provider"] = { "o", 1763 },	-- WANTED
					["coord"] = { 62.61, 20.76, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				}),
			}),
			n(RARES, {
				n(14280, {  -- Big Samras
					["coords"] = {
						{ 72.6, 29.0, HILLSBRAD_FOOTHILLS },
						{ 75.8, 31.6, HILLSBRAD_FOOTHILLS },
						{ 86.6, 39.6, HILLSBRAD_FOOTHILLS },
						{ 85.0, 47.6, HILLSBRAD_FOOTHILLS },
					},
				}),
				n(2304, {  -- Captain Ironhill
					["coord"] = { 73.2, 80.8, HILLSBRAD_FOOTHILLS },
				}),
				n(14279, {  -- Creepthess
					["coords"] = {
						{ 25.8, 54.6, HILLSBRAD_FOOTHILLS },
						{ 28.4, 63.4, HILLSBRAD_FOOTHILLS },
						{ 35.2, 60.4, HILLSBRAD_FOOTHILLS },
						{ 39.2, 51.6, HILLSBRAD_FOOTHILLS },
					},
				}),
				n(14277, {  -- Lady Zephris
					["coords"] = {
						{ 58.2, 70.4, HILLSBRAD_FOOTHILLS },
						{ 60.6, 75.2, HILLSBRAD_FOOTHILLS },
						{ 65.6, 77.8, HILLSBRAD_FOOTHILLS },
						{ 65.8, 80.2, HILLSBRAD_FOOTHILLS },
						{ 67.8, 87.6, HILLSBRAD_FOOTHILLS },
					},
				}),
				n(14278, {  -- Ro'Bark
					["coords"] = {
						{ 61.8, 60.6, HILLSBRAD_FOOTHILLS },
						{ 66.2, 58.8, HILLSBRAD_FOOTHILLS },
						{ 66.2, 64.8, HILLSBRAD_FOOTHILLS },
						{ 63.2, 63.4, HILLSBRAD_FOOTHILLS },
					},
				}),
				n(14276, {  -- Scargil
					["coords"] = {
						{ 23.6, 64.4, HILLSBRAD_FOOTHILLS },
						{ 26.0, 65.4, HILLSBRAD_FOOTHILLS },
						{ 26.2, 73.0, HILLSBRAD_FOOTHILLS },
						{ 31.4, 72.2, HILLSBRAD_FOOTHILLS },
					},
				}),
				n(14275, {  -- Tamra Stormpike
					["races"] = HORDE_ONLY,
					["coords"] = {
						{ 65.0, 66.2, HILLSBRAD_FOOTHILLS },
						{ 68.6, 77.8, HILLSBRAD_FOOTHILLS },
						{ 71.2, 75.4, HILLSBRAD_FOOTHILLS },
						{ 73.6, 81.0, HILLSBRAD_FOOTHILLS },
					},
				}),
			}),
			n(VENDORS, {
				n(2393, {	-- Christoph Jeffcoat <Tradesman>
					["coord"] = { 62.2, 19.0, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(20971, {	-- Design: Heavy Iron Knuckles
							["isLimited"] = true,
						}),
						i(5788),	-- Pattern: Thick Murloc Armor
						i(6054),	-- Recipe: Shadow Protection Potion
					},
				}),
				n(2397, {	-- Derak Nightfall <Cook>
					["coord"] = { 63.0, 19.6, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6330),	-- Recipe: Bristle Whisker Catfish
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
				n(2698, {	-- George Candarte <Leatherworking Supplies>
					["coord"] = { 92.0, 38.6, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(7613),	-- Pattern: Green Leather Armor
					},
				}),
				n(3536, {	-- Kris Legace <Freewheeling Tradeswoman>
					["coord"] = { 80.0, 39.0, HILLSBRAD_FOOTHILLS },
					["groups"] = {
						i(4794),	-- Wolf Bracers
						i(4795),	-- Bear Bracers
						i(4796),	-- Owl Bracers
						i(4830),	-- Saber Leggings
						i(4831),	-- Stalking Pants
						i(4832),	-- Mystic Sarong
					},
				}),
				n(2383, {	-- Lindea Rabonne <Tackle and Bait>
					["coord"] = { 50.6, 61.0, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6330),	-- Recipe: Bristle Whisker Catfish
						i(6369),	-- Recipe: Rockscale Cod
						i(17062),	-- Recipe: Mithril Head Trout
					},
				}),
				n(2394, {	-- Mallen Swain <Tailoring Supplies>
					["coord"] = { 62.0, 21.0, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6274),	-- Pattern: Blue Overalls
						i(6401),	-- Pattern: Dark Silk Shirt
					},
				}),
				n(2357, {	-- Merideth Carlson <Horse Breeder>
					["coord"] = { 52.2, 55.4, HILLSBRAD_FOOTHILLS },
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
				n(2381, {	-- Micha Yance <Trade Goods>
					["coord"] = { 49.0, 55.2, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(20973, {	-- Design: Blazing Citrine Ring
							["isLimited"] = true,
						}),
						i(20971, {	-- Design: Heavy Iron Knuckles
							["isLimited"] = true,
						}),
						i(11163),	-- Formula: Enchant Bracer - Lesser Deflection
						i(4355),	-- Pattern: Icy Cloak
						i(5788),	-- Pattern: Thick Murloc Armor
						i(21219),	-- Recipe: Sagefish Deligh
						i(21099),	-- Recipe: Smoked Sagefish
					},
				}),
				n(2380, {	-- Nandar Branson <Alchemy Supplies>
					["coord"] = { 50.9, 57.1, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6055),	-- Recipe: Fire Protection Potion
					},
				}),
				n(3539, {	-- Ott <Weaponsmith>
					["coord"] = { 60.4, 26.0, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4818),	-- Executioner's Sword
						i(4817),	-- Blessed Claymore
						i(4824),	-- Blurred Axe
						i(4825),	-- Callous Axe
						i(4826),	-- Marauder Axe
						i(12247),	-- Broad Bladed Knife
						i(12249),	-- Merciless Axe
					},
				}),
				n(3543, {	-- Robert Aebischer <Superior Armorsmith>
					["coord"] = { 51.2, 57.0, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4797),	-- Fiery Cloak
						i(4798),	-- Heavy Runed Cloak
						i(4799),	-- Antiquated Cloak
						i(4800),	-- Mighty Chain Pants
						i(4816),	-- Legionnaire's Leggings
						i(4833),	-- Glorious Shoulders
						i(4835),	-- Elite Shoulders
					},
				}),
				n(3537, {	-- Zixil <Merchant Supreme>
					["coords"] = {
						{ 60.8, 19.8, HILLSBRAD_FOOTHILLS },
						{ 55.6, 34.6, HILLSBRAD_FOOTHILLS },
						{ 50.4, 50.8, HILLSBRAD_FOOTHILLS },
					},
					["groups"] = {
						i(4827),	-- Wizard's Belt
						i(4828),	-- Nightwind Belt
						i(4829),	-- Dreamer's Belt
						i(4836),	-- Fireproof Orb
						i(4837),	-- Strength of Will
						i(4838),	-- Orb of Power
						i(5772),	-- Pattern: Red Woolen Bag
						i(6377),	-- Formula: Enchant Boots - Minor Agility
						i(7362),	-- Pattern: Earthen Leather Shoulders
						i(7561),	-- Schematic: Goblin Jumper Cables
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(3668, {	-- Assassin's Contract
					["questID"] = 522,	-- Assassin's Contract
					["cr"] = 2434,	-- Shadowy Assassin
					["races"] = ALLIANCE_ONLY,
				}),
				i(3477, {	-- Creeper Ichor
					["questID"] = 496,	-- Elixir of Suffering
					["races"] = HORDE_ONLY,
					["crs"] = {
						14279,	-- Creepthess
						2348,	-- Elder Moss Creeper
						2350,	-- Forest Moss Creeper
						2349,	-- Giant Moss Creeper
					},
				}),
				i(3509, {	-- Daggerspine Scale
					["questID"] = 515,	-- Elixir of Agony
					["races"] = HORDE_ONLY,
					["crs"] = {
						2370,	-- Daggerspine Screamer
						2369,	-- Daggerspine Shorehunter
						2368,	-- Daggerspine Shorestalker
						2371,	-- Daggerspine Siren
						14277,	-- Lady Zephris
					},
				}),
				i(3204, {	-- Deepwood Bracers
					["cr"] = 2372,	-- Mudsnout Gnoll
				}),
				i(3336, {	-- Flesh Piercer
					["crs"] = {
						2370,	-- Daggerspine Screamer
						2368,	-- Daggerspine Shorestalker
					},
				}),
				i(11152, {	-- Formula: Enchant Gloves - Fishing
					["crs"] = {
						14276,	-- Scargil
						2375,	-- Torn Fin Coastrunner
						2374,	-- Torn Fin Muckdweller
						2376,	-- Torn Fin Oracle
						2377,	-- Torn Fin Tidehunter
					},
				}),
				i(3476, {	-- Gray Bear Tongue
					["questID"] = 496,	-- Elixir of Suffering
					["races"] = HORDE_ONLY,
					["crs"] = {
						14280,	-- Big Samras
						2356,	-- Elder Gray Bear
						2351,	-- Gray Bear
						2354,	-- Vicious Gray Bear
					},
				}),
				i(3429, {	-- Guardsman Belt
					["crs"] = {
						2427,	-- Jailor Eston
						2428,	-- Jailor Marlgen
					},
				}),
				i(3708, {	-- Helcular's Rod
					["questID"] = 552,	-- Helcular's Revenge
					["races"] = HORDE_ONLY,
					["crs"] = {
						2248,	-- Cave Yeti
						2249,	-- Ferocious Yeti
					},
				}),
				i(3692, {	-- Hillsbrad Human Skull
					["questID"] = 546,	-- Souvenirs of Death
					["races"] = HORDE_ONLY,
					["crs"] = {
						2404,	-- Blacksmith Verringtan
						2449,	-- Citizen Wilkes
						2448,	-- Clerk Horrace Whitesteed
						2403,	-- Farmer Getz
						2451,	-- Farmer Kalaba
						232,	-- Farmer Ray
						2305,	-- Foreman Bonds
						2265,	-- Hillsbrad Apprentice Blacksmith
						2387,	-- Hillsbrad Councilman
						2266,	-- Hillsbrad Farmer
						2360,	-- Hillsbrad Farmhand
						2268,	-- Hillsbrad Footman
						2503,	-- Hillsbrad Foreman
						2269,	-- Hillsbrad Miner
						2267,	-- Hillsbrad Peasant
						2270,	-- Hillsbrad Sentry
						2264,	-- Hillsbrad Tailor
						2427,	-- Jailor Eston
						2428,	-- Jailor Marlgen
						2335,	-- Magistrate Burnside
						2450,	-- Miner Hackett
						2260,	-- Syndicate Rogue
						2244,	-- Syndicate Shadow Mage
						2261,	-- Syndicate Watchman
					},
				}),
				i(3053, {	-- Humbert's Chestpiece
					["crs"] = {
						2344,	-- Dun Garok Mountaineer
						14275,	-- Tamra Stormpike
					},
				}),
				i(4724, {	-- Humbert's Helm
					["cr"] = 2345,	-- Dun Garok Rifleman
				}),
				i(4723, {	-- Humbert's Pants
					["cr"] = 2346,	-- Dun Garok Priest
				}),
				i(3693, {	-- Humbert's Sword
					["questID"] = 547,	-- Humbert's Sword
					["races"] = HORDE_ONLY,
					["crs"] = {
						2344,	-- Dun Garok Mountaineer
						2346,	-- Dun Garok Priest
						2345,	-- Dun Garok Rifleman
						14275,	-- Tamra Stormpike
					},
				}),
				i(3496, {	-- Mountain Lion Blood
					["questID"] = 501,	-- Elixir of Pain
					["races"] = HORDE_ONLY,
					["crs"] = {
						2385,	-- Feral Mountain Lion
						2407,	-- Hulking Mountain Lion
						2406,	-- Mountain Lion
						2384,	-- Starving Mountain Lion
					},
				}),
				i(3716, {	-- Murloc Head
					["questID"] = 559,	-- Farren's Proof
					["description"] = "Running joke is that since all adventurers take from the Murlocs is their heads, that's why the drop rate is so low - bunch of headless murlocs running around.",
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						14276,	-- Scargil
						2375,	-- Torn Fin Coastrunner
						2374,	-- Torn Fin Muckdweller
						2376,	-- Torn Fin Oracle
						2377,	-- Torn Fin Tidehunter
					},
				}),
				i(5775, {	-- Pattern: Black Silk Pack
					["cr"] = 2434,	-- Shadowy Assassin
				}),
				i(5772, {	-- Pattern: Red Woolen Bag
					["cr"] = 2264,	-- Hillsbrad Tailor
				}),
				i(1485, {	-- Pitchfork
					["crs"] = {
						2403,	-- Farmer Getz
						2451,	-- Farmer Kalaba
						232,	-- Farmer Ray
						2266,	-- Hillsbrad Farmer
					},
				}),
				applyclassicphase(PHASE_FIVE, i(22229, {	-- Soul Ashes of the Banished
					["crs"] = {
						7071,	-- Cursed Paladin
						7072,	-- Cursed Justicar
						7075,	-- Writhing Mage
					},
				})),
				i(3510, {	-- Torn Fin Eye
					["questID"] = 515,	-- Elixir of Agony
					["races"] = HORDE_ONLY,
					["crs"] = {
						14276,	-- Scargil
						2375,	-- Torn Fin Coastrunner
						2374,	-- Torn Fin Muckdweller
						2376,	-- Torn Fin Oracle
						2377,	-- Torn Fin Tidehunter
					},
				}),
				i(5620, {	-- Vial of Innocent Blood
					["questID"] = 1066,	-- Blood of Innocents
					["races"] = HORDE_ONLY,
					["cr"] = 2244,	-- Syndicate Shadow Mage
				}),
				i(3720, {	-- Yeti Fur
					["questID"] = 565,	-- Bartolo's Yeti Fur Cloak
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						2248,	-- Cave Yeti
						2249,	-- Ferocious Yeti
					},
				}),
			}),
		},
	}),
}));