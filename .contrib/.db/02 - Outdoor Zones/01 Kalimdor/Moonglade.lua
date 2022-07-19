---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(KALIMDOR, {
	m(MOONGLADE, {
		["lore"] = "A large concentration of night elves lives in this enchanted land of perpetual summer twilight. Many live in the city of Nighthaven; the others choose a more solitary existence in the woods.\n\nThe Moonglade contains the Barrow Dens, a series of holy underground passages that held the druids as they slept through the millennia. Sapphire moonwells are scattered throughout the forest and shine pale light up into the canopy. Many forest creatures live in the Moonglade, and crazed furbolg and satyrs have also found their way in.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(855, {	-- Explore Moonglade
					-- #if BEFORE WRATH
					["description"] = "Explore Moonglade, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["555:510:244:89"] = 656,	-- Lake Elune'ara
				--[[
				[2361] = 2,                              -- Nighthaven
				[2362] = 3,                              -- Shrine of Remulos
				[2363] = 4,                              -- Stormrage Barrow Dens
				]]--
			})),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(49, {	-- Moonglade
					["cr"] = 10897,	-- Sindrayl <Hippogryph Master>
					["coord"] = { 48.0, 67.2, MOONGLADE },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(69, {	-- Moonglade
					["cr"] = 12740,	-- Faustron <Wind Rider Master>
					["coord"] = { 32.2, 66.6, MOONGLADE },
					["races"] = HORDE_ONLY,
				}),
				fp(63, {	-- Nighthaven, Moonglade
					["cr"] = 11800,	-- Silva Fil'naveth <Darnassus Flight Master>
					["coord"] = { 44.2, 45.2, MOONGLADE },
					["classes"] = { DRUID },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(62, {	-- Nighthaven, Moonglade
					["cr"] = 11798,	-- Bunthen Plainswind <Thunder Bluff Flight Master>
					["coord"] = { 44.4, 45.6, MOONGLADE },
					["classes"] = { DRUID },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(26, {	-- A Lesson to Learn
					["qg"] = 4217,	-- Mathrengyl Bearwalker <Druid Trainer>
					["coord"] = { 35.2, 8, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 16,
				}),
				q(27, {	-- A Lesson to Learn
					["qg"] = 3033,	-- Turak Runetotem <Druid Trainer>
					["coord"] = { 76.4, 27.6, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 16,
				}),
				q(5527, {	-- A Reliquary of Purity
					["qg"] = 11801,	-- Rabine Saturna
					["coord"] = { 51.7, 45.1, MOONGLADE },
					["maps"] = { DIRE_MAUL, SILITHUS },
					["cost"] = {
						{ "i", 22201, 1 },	-- Reliquary of Purity
					},
					["lvl"] = 56,
					["groups"] = {
						{
							["provider"] = { "o", 179565 },	-- Dusty Reliquary
							["itemID"] = 22201,	-- Reliquary of Purity
							["questID"] = 5527,	-- A Reliquary of Purity
							["coord"] = { 63.2, 55.4, SILITHUS },
						},
					},
				}),
				q(5061, {	-- Aquatic Form
					["qg"] = 11802,	-- Dendrite Starblaze
					["sourceQuest"] = 272,	-- Trial of the Sea Lion
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 15885, 1 },	-- Pendant of the Sea Lion
					},
					["lvl"] = 16,
					["groups"] = {
						recipe(1066),	-- Aquatic Form
						i(16608),	-- Aquarius Belt
					},
				}),
				q(31, {	-- Aquatic Form
					["qg"] = 11802,	-- Dendrite Starblaze
					["sourceQuest"] = 30,	-- Trial of the Sea Lion
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 15885, 1 },	-- Pendant of the Sea Lion
					},
					["lvl"] = 16,
					["groups"] = {
						recipe(1066),	-- Aquatic Form
						i(16608),	-- Aquarius Belt
					},
				}),
				q(5931, {	-- Back to Darnassus
					["qg"] = 11802,  -- Dendrite Starblaze
					["sourceQuest"] = 5929,  -- Great Bear Spirit
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 10,
				}),
				q(5932, {	-- Back to Thunder Bluff
					["qg"] = 11802,  -- Dendrite Starblaze
					["sourceQuest"] = 5930,  -- Great Bear Spirit
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 10,
				}),
				q(6001, {	-- Body and Heart
					["qg"] = 4217,	-- Mathrengyl Bearwalker <Druid Trainer>
					["sourceQuest"] = 5931,	-- Back to Darnassus
					["coord"] = { 35.2, 8, DARNASSUS },
					["maps"] = { DARKSHORE },
					["cost"] = {
						{ "i", 15208, 1 },	-- Cenarion Moondust
					},
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 10,
					["groups"] = {
						i(15208, {	-- Cenarion Moondust
							["coord"] = { 43, 45, DARKSHORE },
						}),
						{
							["recipeID"] = 5487,	-- Bear Form // Dire Bear Form
							["OnUpdate"] = [[function(t)
								if _.IsSpellKnown(9634) then
									t.collected = 2;
								end
							end]],
						},
						recipe(6795),	-- Growl
						{
							["recipeID"] = 6807,	-- Maul (Rank 1)
							["rank"] = 1,
						},
					},
				}),
				q(6002, {	-- Body and Heart
					["qg"] = 3033,	-- Turak Runetotem <Druid Trainer>
					["sourceQuest"] = 5932,	-- Back to Thunder Bluff
					["coord"] = { 76.4, 27.6, THUNDER_BLUFF },
					["maps"] = { THE_BARRENS },
					["cost"] = {
						{ "i", 15710, 1 },	-- Cenarion Lunardust
					},
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 15710,	-- Cenarion Lunardust
							["coord"] = { 42, 60, THE_BARRENS },
						},
						{
							["recipeID"] = 5487,	-- Bear Form // Dire Bear Form
							["OnUpdate"] = [[function(t)
								if _.IsSpellKnown(9634) then
									t.collected = 2;
								end
							end]],
						},
						recipe(6795),	-- Growl
						{
							["recipeID"] = 6807,	-- Maul (Rank 1)
							["rank"] = 1,
						},
					},
				}),
				q(5929, {	-- Great Bear Spirit
					["qg"] = 11802,	-- Dendrite Starblaze
					["sourceQuest"] = 5921,	-- Moonglade
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 10,
				}),
				q(5930, {	-- Great Bear Spirit
					["qg"] = 11802,	-- Dendrite Starblaze
					["sourceQuest"] = 5922,	-- Moonglade
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 10,
				}),
				q(5923, {	-- Heeding the Call
					["qg"] = 4218,	-- Denatharion <Druid Trainer>
					["coord"] = { 34.8, 7.8, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(5924, {	-- Heeding the Call
					["qg"] = 5505,	-- Theridran <Druid Trainer>
					["coord"] = { 21.4, 51.4, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(5925, {	-- Heeding the Call
					["qg"] = 3602,	-- Kal <Druid Trainer>
					["coord"] = { 56, 61.6, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(5926, {	-- Heeding the Call
					["qg"] = 6746,	-- Innkeeper Pala <Innkeeper>
					["coord"] = { 45.8, 64.4, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(5927, {	-- Heeding the Call
					["qg"] = 3060,	-- Gart Mistrunner <Druid Trainer>
					["coord"] = { 45.1, 75.9, MULGORE },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(5928, {	-- Heeding the Call
					["qg"] = 3064,	-- Gennia Runetotem <Druid Trainer>
					["coord"] = { 48.4, 59.6, MULGORE },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(6121, {	-- Lessons Anew
					["qg"] = 4217,	-- Mathrengyl Bearwalker <Druid Trainer>
					["sourceQuests"] = {
						5923,	-- Heeding the Call
						5924,   -- Heeding the Call
						5925,   -- Heeding the Call
					},
					["coord"] = { 35.2, 8.0, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 14,
				}),
				q(6126, {	-- Lessons Anew
					["qg"] = 3033,	-- Turak Runetotem <Druid Trainer>
					["sourceQuests"] = {
						5926,	-- Heeding the Call
						5927,   -- Heeding the Call
						5928,   -- Heeding the Call
					},
					["coord"] = { 76.4, 27.6, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 14,
				}),
				q(5921, {	-- Moonglade
					["qg"] = 4217,  -- Mathrengyl Bearwalker <Druid Trainer>
					["sourceQuests"] = {
						5923,	-- Heeding the Call
						5924,   -- Heeding the Call
						5925,   -- Heeding the Call
					},
					["coord"] = { 35.2, 8.0, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
				}),
				q(5922, {	-- Moonglade
					["qg"] = 3033,  -- Turak Runetotem <Druid Trainer>
					["sourceQuests"] = {
						5926,	-- Heeding the Call
						5927,   -- Heeding the Call
						5928,   -- Heeding the Call
					},
					["coord"] = { 76.4, 27.6, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
				}),
				applyclassicphase(TBC_PHASE_TWO_SWIFTFLIGHTFORM, q(10965, {	-- No Mere Dream
					["qg"] = 22834,	-- Clintar Dreamwalker
					["sourceQuest"] = 10964,	-- Waking the Sleeper
					["coord"] = { 75.5, 67.0, MOONGLADE },
					["timeline"] = { "removed 4.0.1" },
					["classes"] = { DRUID },
					["lvl"] = 70,
				})),
				applyclassicphase(TBC_PHASE_TWO_SWIFTFLIGHTFORM, q(10955, {	-- Morthis Whisperwing
					["qg"] = 12042,	-- Loganaar <Druid Trainer>
					["coord"] = { 52.5, 40.6, MOONGLADE },
					["timeline"] = { "removed 4.0.1" },
					["classes"] = { DRUID },
					["lvl"] = 70,
				})),
				q(6125, {	-- Power over Poison
					["qg"] = 11802,	-- Dendrite Starblaze
					["sourceQuest"] = 6124,	-- Curing the Sick
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 14,
					["groups"] = {
						recipe(8946),	-- Cure Poison
					},
				}),
				q(6130, {	-- Power over Poison
					["qg"] = 11802,	-- Dendrite Starblaze
					["sourceQuest"] = 6129,	-- Curing the Sick
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 14,
					["groups"] = {
						recipe(8946),	-- Cure Poison
					},
				}),
				q(6762, {	-- Rabine Saturna
					["qg"] = 4217,  -- Mathrengyl Bearwalker <Druid Trainer>
					["sourceQuest"] = 6761,	-- The New Frontier
					["coord"] = { 35.2, 8.0, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 54,
				}),
				q(1123, {	-- Rabine Saturna
					["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
					["sourceQuests"] = {
						1000,	-- The New Frontier [Thunder Bluff]
						1004,   -- The New Frontier [Undercity]
						1018,   -- The New Frontier [Orgrimmar]
					},
					["coord"] = { 78.4, 28.4, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				applyclassicphase(TBC_PHASE_TWO_SWIFTFLIGHTFORM, q(10978, {	-- Return to Morthis Whisperwing
					["qg"] = 22837,	-- Dreamwarden Lurosa
					["sourceQuest"] = 10965,	-- No Mere Dream
					["coord"] = { 72.5, 63.3, MOONGLADE },
					["timeline"] = { "removed 4.0.1" },
					["maps"] = { ZANGARMARSH },
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 32074, 1 },	-- Relics of Aviana (Provided)
					},
					["lvl"] = 70,
				})),
				q(5526, {	-- Shards of the Felvine
					["qg"] = 11801,	-- Rabine Saturna
					["sourceQuest"] = 5527,	-- A Reliquary of Purity
					["coord"] = { 51.7, 45.1, MOONGLADE },
					["maps"] = { DIRE_MAUL },
					["cost"] = {
						{ "i", 18540, 1 },	-- Sealed Reliquary of Purity
					},
					["lvl"] = 56,
					["groups"] = {
						{
							["itemID"] = 18539,	-- Reliquary of Purity
							["coord"] = { 63.2, 55.4, SILITHUS },
							["cost"] = {
								{ "i", 18501, 1 },	-- Felvine Shard
							},
							["groups"] = {
								{
									["itemID"] = 18540,	-- Sealed Reliquary of Purity
									["questID"] = 5526,	-- Shards of the Felvine
									
								},
							},
						},
						i(18535),	-- Milli's Shield
						i(18536),	-- Milli's Lexicon
					},
				}),
				q(1015, {	-- The New Frontier [Stormwind City]
					["qg"] = 2198,	-- Crier Goodman
					["coord"] = { 54.8, 62.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["altQuests"] = {
						1019,   -- The New Frontier [Ironforge]
						1047,   -- The New Frontier [Darnassus]
					},
					["lvl"] = 54,
				}),
				q(1019, {	-- The New Frontier [Ironforge]
					["qg"] = 10877,	-- Courier Hammerfall
					["coord"] = { 31.6, 67, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["altQuests"] = {
						1015,	-- The New Frontier [Stormwind City]
						1047,   -- The New Frontier [Darnassus]
					},
					["lvl"] = 54,
				}),
				q(1047, {	-- The New Frontier (1/2) [Darnassus]
					["qg"] = 10878,	-- Herald Moonstalker
					["coord"] = { 36.4, 39.8, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["altQuests"] = {
						1015,	-- The New Frontier [Stormwind City]
						1019,   -- The New Frontier [Ironforge]
					},
					["lvl"] = 54,
				}),
				q(6761, {	-- The New Frontier (2/2) [Darnassus]
					["qg"] = 3516,	-- Arch Druid Fandral Staghelm
					["coord"] = { 34.8, 8.8, DARNASSUS },
					["sourceQuests"] = {
						1015,	-- The New Frontier [Stormwind City]
						1019,   -- The New Frontier [Ironforge]
						1047,   -- The New Frontier (1/2) [Darnassus]
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 54,
				}),
				q(1000, {	-- The New Frontier [Thunder Bluff]
					["qg"] = 10881,	-- Bluff Runner Windstrider
					["coord"] = { 41.4, 54.2, THUNDER_BLUFF },
					["sourceQuests"] = {
						1018,	-- The New Frontier [Orgrimmar]
						1004,   -- The New Frontier [Undercity]
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				q(1004, {	-- The New Frontier [Undercity]
					["qg"] = 10879,	-- Harbinger Balthazad
					["coord"] = { 68.8, 48.4, UNDERCITY },
					["sourceQuests"] = {
						1018,	-- The New Frontier [Orgrimmar]
						1000,   -- The New Frontier [Thunder Bluff]
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				q(1018, {	-- The New Frontier [Orgrimmar]
					["qg"] = 10880,	-- Warcaller Gorlach
					["coord"] = { 46.6, 64.6, ORGRIMMAR },
					["sourceQuests"] = {
						1000,   -- The New Frontier [Thunder Bluff]
						1004,   -- The New Frontier [Undercity]
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				q(6122, {	-- The Principal Source
					["qg"] = 11802,	-- Dendrite Starblaze
					["sourceQuest"] = 6121,	-- Lessons Anew
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["maps"] = { DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 15845, 1 },	-- Filled Cliffspring Falls Sampler
					},
					["lvl"] = 14,
					["groups"] = {
						{
							["itemID"] = 15844,	-- Empty Cliffspring Falls Sampler
							["coord"] = { 54.9 , 33.3, DARKSHORE },
							["groups"] = {
								{
									["itemID"] = 15845,	-- Filled Cliffspring Falls Sampler
									["questID"] = 6122,	-- The Principal Source
								},
							},
						},
					},
				}),
				q(6127, {	-- The Principal Source
					["qg"] = 11802,	-- Dendrite Starblaze
					["sourceQuest"] = 6121,	-- Lessons Anew
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["maps"] = { THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 15843, 1 },	-- Filled Dreadmist Falls Sampler
					},
					["lvl"] = 14,
					["groups"] = {
						{
							["itemID"] = 15842,	-- Empty Dreadmist Falls Sampler
							["coord"] = { 47, 18, THE_BARRENS },
							["groups"] = {
								{
									["itemID"] = 15843,	-- Filled Dreadmist Falls Sampler
									["questID"] = 6127,	-- The Principal Source
								},
							},
						},
					},
				}),
				q(29, {	-- Trial of the Lake
					["qg"] = 11802,	-- Dendrite Starblaze
					["sourceQuest"] = 26,	-- A Lesson to Learn
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 15877, 1 },	-- Shrine Bauble
					},
					["lvl"] = 16,
					["groups"] = {
						{
							["itemID"] = 15877,	-- Shrine Bauble
							["questID"] = 29,	-- Trial of the Lake
							["coords"] = {
								{ 54.1, 50.1, MOONGLADE },
								{ 36.4, 40.2, MOONGLADE },
							},
						},
					},
				}),
				q(28, {	-- Trial of the Lake
					["qg"] = 11802,	-- Dendrite Starblaze
					["sourceQuest"] = 27,	-- A Lesson to Learn
					["coord"] = { 56.2, 30.4, MOONGLADE },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 15877, 1 },	-- Shrine Bauble
					},
					["lvl"] = 16,
					["groups"] = {
						{
							["itemID"] = 15877,	-- Shrine Bauble
							["questID"] = 28,	-- Trial of the Lake
							["coords"] = {
								{ 54.1, 50.1, MOONGLADE },
								{ 36.4, 40.2, MOONGLADE },
							},
						},
					},
				}),
				q(272, {	-- Trial of the Sea Lion
					["qg"] = 11799,	-- Tajarri
					["sourceQuest"] = 29,	-- Trial of the Lake
					["coord"] = { 36.4, 40.2, MOONGLADE },
					["maps"] = { DARKSHORE, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 15885, 1 },	-- Pendant of the Sea Lion
					},
					["lvl"] = 16,
					["groups"] = {
						{
							["itemID"] = 15882,	-- Half Pendant of Aquatic Endurance
							["questID"] = 272,	-- Trial of the Sea Lion
							["coord"] = { 17.9, 33.0, WESTFALL },
						},
						{
							["itemID"] = 15883,	-- Half Pendant of Aquatic Agility
							["coord"] = { 48.9, 11.3, DARKSHORE },
							["cost"] = {
								{ "i", 15882, 1 },	-- Half Pendant of Aquatic Endurance
							},
							["groups"] = {
								{
									["itemID"] = 15885,	-- Pendant of the Sea Lion
									["questID"] = 272,	-- Trial of the Sea Lion
								},
							},
						},
					},
				}),
				q(30, {	-- Trial of the Sea Lion
					["qg"] = 11799,	-- Tajarri
					["sourceQuest"] = 28,	-- Trial of the Lake
					["coord"] = { 36.4, 40.2, MOONGLADE },
					["maps"] = { THE_BARRENS, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 15885, 1 },	-- Pendant of the Sea Lion
					},
					["lvl"] = 16,
					["groups"] = {
						{
							["itemID"] = 15882,	-- Half Pendant of Aquatic Endurance
							["questID"] = 30,	-- Trial of the Sea Lion
							["coord"] = { 29.6, 29.5, SILVERPINE_FOREST },
						},
						{
							["itemID"] = 15883,	-- Half Pendant of Aquatic Agility
							["coord"] = { 56.7, 8.3, THE_BARRENS },
							["cost"] = {
								{ "i", 15882, 1 },	-- Half Pendant of Aquatic Endurance
							},
							["groups"] = {
								{
									["itemID"] = 15885,	-- Pendant of the Sea Lion
									["questID"] = 30,	-- Trial of the Sea Lion
								},
							},
						},
					},
				}),
				q(6845, {	-- Uncovering Past Secrets
					["qg"] = 11939,	-- Umber
					["sourceQuest"] = 6844,	-- Umber, Archivist
					["coord"] = { 44.88, 35.6, MOONGLADE },
					["lvl"] = 54,
					["groups"] = {
						i(18400),	-- Ring of Living Stone
						i(18402),	-- Glowing Crystal Ring
					},
				}),
				q(1185, {	-- Under the Chitin Was...
					["qg"] = 11939,	-- Umber
					["sourceQuest"] = 6845,	-- Uncovering Past Secrets
					["coord"] = { 44.88, 35.6, MOONGLADE },
					["lvl"] = 54,
				}),
				q(1124, {	-- Wasteland
					["qg"] = 11801,	-- Rabine Saturna
					["sourceQuests"] = {
						1123,	-- Rabine Saturna
						6762,	-- Rabine Saturna
					},
					["coord"] = { 51.7, 45.1, MOONGLADE },
					["cost"] = {
						{ "i", 17355, 1 },	-- Rabine's Letter
					},
					["lvl"] = 54,
				}),
			}),
			n(VENDORS, {
				n(7940, {	-- Darnall <Tailoring Supplies>
					["coord"] = { 51.6, 33.2, MOONGLADE },
					["groups"] = {
						i(14469),	-- Pattern: Runecloth Robe
						i(14472),	-- Pattern: Runecloth Cloak
						i(14488),	-- Pattern: Runecloth Boots
					},
				}),
				n(12023, {	-- Kharedon <Light Armor Merchant>
					["coord"] = { 56.6, 29.8, MOONGLADE },
					["groups"] = {
						i(12254),	-- Well Oiled Cloak
					},
				}),
				n(12022, {	-- Lorelae Wintersong <Trade Supplies>
					["coord"] = { 48.2, 40.1, MOONGLADE },
					["groups"] = {
						i(16243),	-- Formula: Runed Arcanite Rod
						i(16224),	-- Formula: Enchant Cloak - Superior Defense
						i(14483),	-- Pattern: Felcloth Pants
					},
				}),
				n(12029, {	-- Narianna <Bowyer>
					["coord"] = { 53.2, 42.6, MOONGLADE },
					["groups"] = {
						i(11308),	-- Sylvan Shortbow
					},
				}),
			}),
		},
	}),
}));