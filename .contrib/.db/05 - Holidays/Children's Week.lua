--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays = { applyholiday(CHILDRENS_WEEK, {
	-- #if ANYCLASSIC
	["npcID"] = -52,
	-- #else
	["holidayID"] = 235445,
	-- #endif
	["groups"] = {
		-- #if AFTER WRATH
		n(ACHIEVEMENTS, {
			ach(1793, {	-- For the Children
				title(104),	-- Matron [Female Characters]
				title(105),	-- Patron [Male Characters]
				ach(1792),	-- Aw, Isn't It Cute?
				ach(1788, {	-- Bad Example
					{	-- Dalaran Brownie
						["achievementID"] = 1788,	-- Bad Example
						["criteriaID"] = 6,			-- Dalaran Brownie
						["cost"] = { { "i", 42431, 1 } },	-- Dalaran Brownie
						["crs"] = {
							29548,	-- Aimee
							92936,	-- Aimee
						},
						["coords"] = {
							{ 51.21, 29.05, 125 },	-- Aimee [Dalaran: Northrend]
							{ 50.85, 29.09, LEGION_DALARAN },	-- Aimee
						},
						["maps"] = {
							125,	-- Dalaran: Northrend
							LEGION_DALARAN,
						},
					},
					{	-- Dalaran Doughnut
						["achievementID"] = 1788,	-- Bad Example
						["criteriaID"] = 7,			-- Dalaran Doughnut
						["cost"] = { { "i", 42430, 1 } },	-- Dalaran Doughnut
						["crs"] = {
							29548,	-- Aimee
							92936,	-- Aimee
						},
						["coords"] = {
							{ 51.21, 29.05, 125 },	-- Aimee [Dalaran: Northrend]
							{ 50.85, 29.09, LEGION_DALARAN },	-- Aimee
						},
						["maps"] = {
							125,	-- Dalaran: Northrend
							LEGION_DALARAN,
						},
					},
					{	-- Delicious Chocolate Cake
						["achievementID"] = 1788,	-- Bad Example
						["criteriaID"] = 4,			-- Delicious Chocolate Cake
						["cost"] = { { "i", 33924, 1 } },	-- Delicious Chocolate Cake
					},
					{	-- Lovely Cake Slice
						["achievementID"] = 1788,	-- Bad Example
						["criteriaID"] = 5,			-- Lovely Cake Slice
						["cost"] = { { "i", 42438, 1 } },	-- Lovely Cake
						["crs"] = {
							29548,	-- Aimee
							64099,	-- Pink Peony
						},
						["coords"] = {
							{ 51.21, 29.05, 125 },	-- Aimee [Dalaran: Northrend]
							{ 46.88, 34.02, 393 },	-- Pink Peony [Shrine of Seven Stars]
						},
						["maps"] = {
							125,	-- Dalaran: Northrend
							393,	-- Shrine of Seven Stars
						},
					},
					{	-- Red Velvet Cupcake
						["achievementID"] = 1788,	-- Bad Example
						["criteriaID"] = 3,			-- Red Velvet Cupcake
						["cost"] = { { "i", 42429, 1 } },	-- Red Velvet Cupcake
						["crs"] = {
							29548,	-- Aimee
							64099,	-- Pink Peony
						},
						["coords"] = {
							{ 51.21, 29.05, 125 },	-- Aimee [Dalaran: Northrend]
							{ 46.88, 34.02, 393 },	-- Pink Peony [Shrine of Seven Stars]
						},
						["maps"] = {
							125,	-- Dalaran: Northrend
							393,	-- Shrine of Seven Stars
						},
					},
					{	-- Tasty Cupcake
						["achievementID"] = 1788,	-- Bad Example
						["criteriaID"] = 2,			-- Tasty Cupcake
						["cost"] = { { "i", 43490, 1 } },	-- Tasty Cupcake
					},
					{	-- Tigule's Strawberry Ice Cream
						["achievementID"] = 1788,	-- Bad Example
						["criteriaID"] = 1,			-- Tigule's Strawberry Ice Cream
						["cost"] = { { "i", 7228, 1 } },	-- Tigule's Strawberry Ice Cream
						["crs"] = {
							14480,	-- Alowicious Czervik
							47383,	-- Brivelthwerp
							18914,	-- Caregiver Isel
							14481,	-- Emmithue Smails
							49893,	-- Lisa McKeever
							18913,	-- Matron Tikkit
							24934,	-- Snack-O-Matic IV
						},
						["coords"] = {
							{ 53.32, 79.27, ORGRIMMAR },	-- Alowicious Czervik
							{ 69.87, 85.18, THOUSAND_NEEDLES },	-- Brivelthwerp
							{ 54.22, 76.11, NAGRAND },	-- Caregiver Isel
							{ 56.73, 34.51, NAGRAND },	-- Matron Tikkit
							{ 53.66, 53.01, ORGRIMMAR },	-- Snack-O-Matic IV
						},
						["maps"] = {
							THOUSAND_NEEDLES,
							STORMWIND_CITY,
							ORGRIMMAR,
							86,		-- Orgrimmar
							NAGRAND,
						},
					},
				}),
				ach(1789),	-- Daily Chores
				ach(1790, {	-- Hail To The King, Baby
					["maps"] = {
						136,	-- Lower Pinnacle, Utgarde Pinnacle
						137,	-- Upper Pinnacle, Utgarde Pinnacle
					},
				}),
				ach(1791),	-- Home Alone
				ach(1786, {	-- School of Hard Knocks
					{	-- Assault a flag in Arathi Basin
						["achievementID"] = 1786,	-- School of Hard Knocks
						["criteriaID"] = 3,			-- Assault a flag in Arathi Basin
						["maps"] = {
							93,		-- Arathi Basin
							837,	-- Arathi Basin
							844,	-- Arathi Basin
							1383,	-- Arathi Basin
							1366,	-- Arathi Basin
						},
					},
					{	-- Assault a tower in Alterac Valley
						["achievementID"] = 1786,	-- School of Hard Knocks
						["criteriaID"] = 2,			-- Assault a tower in Alterac Valley
						["maps"] = {
							91,	-- Alterac Valley
						},
					},
					{	-- Capture the flag in Eye of the Storm
						["achievementID"] = 1786,	-- School of Hard Knocks
						["criteriaID"] = 1,			-- Capture the flag in Eye of the Storm
						["maps"] = {
							112,	-- Eye of the Storm
						},
					},
					{	-- Return a fallen flag in Warsong Gulch
						["achievementID"] = 1786,	-- School of Hard Knocks
						["criteriaID"] = 4,			-- Return a fallen flag in Warsong Gulch
						["maps"] = {
							92,		-- Warsong Gulch
							859,	-- Warsong Gulch
							1339,	-- Warsong Gulch
						},
					},
				}),
			}),
			ach(275, {	-- Veteran Nanny
				["cr"] = 22819,	-- Orphan Matron Mercy
				["maps"] = { SHATTRATH_CITY },
				["coord"] = { 75.09, 47.86, SHATTRATH_CITY },
				["groups"] = {
					{	-- Egbert
						["achievementID"] = 275,	-- Veteran Nanny
						["criteriaID"] = 3,			-- Egbert
						["cost"] = {
							{ "i", 32616, 1 },	-- Egbert's Egg
						},
					},
					{	-- Peanut
						["achievementID"] = 275,	-- Veteran Nanny
						["criteriaID"] = 1,			-- Peanut
						["cost"] = {
							{ "i", 32622, 1 },	-- Elekk Training Collar
						},
					},
					{	-- Willy
						["achievementID"] = 275,	-- Veteran Nanny
						["criteriaID"] = 2,			-- Willy
						["cost"] = {
							{ "i", 32617, 1 },	-- Sleepy Willy
						},
					},
				},
			}),
		}),
		-- #endif
		n(QUESTS, {
			--Note!! Each "set" of questlines will always be linked to the main city for that expansion so that there is a reminder to finish the questline if you haven't already.
			q(10952, {	-- A Trip to the Dark Portal [Alliance - Draenei]
				["qg"] = 22818,	-- Draenei Orphan
				["sourceQuest"] = 10943,	-- Children's Week
				["coord"] = { 88.56, 50.23, HELLFIRE_PENINSULA },
				["maps"] = {
					HELLFIRE_PENINSULA,
					SHATTRATH_CITY,
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(10951, {	-- A Trip to the Dark Portal [Horde - Blood Elf]
				["qg"] = 22817,	-- Blood Elf Orphan
				["sourceQuest"] = 10942,	-- Children's Week
				["coord"] = { 88.56, 50.23, HELLFIRE_PENINSULA },
				["maps"] = {
					HELLFIRE_PENINSULA,
					SHATTRATH_CITY,
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(13937, {	-- A Trip To The Wonderworks [Neutral - Oracles]
				["qg"] = 33533,			-- Oracle Orphan
				["crs"] = {
					29478,	-- Jeppetto Joybuzz
					96483,	-- Jeppetto Joybuzz
				},
				["sourceQuests"] = {
					13956,	-- Meeting a Great One
					13954,	-- The Dragon Queen
				},
				["coords"] = {
					{ 44.86, 45.57, 125 },	-- Jepetto Joybuzz
					{ 43.61, 45.13, 625 },	-- Jepetto Joybuzz
				},
				["maps"] = {
					125,	-- Dalaran [Northrend]
					625,	-- Dalaran [Broken Isles]
				},
				["isYearly"] = true,
			}),
			q(13938, {	-- A Trip To The Wonderworks [Neutral - Wolvar]
				["qg"] = 33532,			-- Wolvar Orphan
				["crs"] = {
					29478,	-- Jeppetto Joybuzz
					96483,	-- Jeppetto Joybuzz
				},
				["sourceQuests"] = {
					13955,	-- The Dragon Queen
					13957,	-- The Mighty Hemet Nesingwary
				},
				["coords"] = {
					{ 44.86, 45.57, 125 },	-- Jepetto Joybuzz
					{ 43.61, 45.13, 625 },	-- Jepetto Joybuzz
				},
				["maps"] = {
					125,	-- Dalaran [Northrend]
					625,	-- Dalaran [Broken Isles]
				},
				["isYearly"] = true,
			}),
			{	-- A Warden of the Alliance [Alliance - Human - FINAL]
				["questID"] = 171,	-- A Warden of the Alliance
				["qg"] = 14305,		-- Human Orphan
				["crs"] = {
					51988,			-- Orphan Matron Nightingale
				},
				["sourceQuests"] = {
					29117,	-- Let's Go Fly a Kite
					29119,	-- You Scream, I Scream...
				},
				["coords"] = {
					{ 56.31, 53.99, STORMWIND_CITY },	-- Orphan Matron Nightingale
					{ 56.31, 68.45, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 56.67, 66.57, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 56.75, 70.04, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 57.19, 71.63, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 57.57, 65.42, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 57.63, 73.23, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 58.07, 74.83, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 58.44, 64.31, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 58.51, 76.42, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 59.12, 77.98, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 59.44, 63.31, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 60.44, 62.44, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 61.21, 61.78, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 62.31, 61.34, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 63.44, 61.05, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 64.62, 61.54, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 65.63, 62.99, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 66.61, 64.43, STORMWIND_CITY },	-- Craggle Wobbletop Path
				},
				["maps"] = { STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					{	-- Piglet's Collar
						["itemID"] = 23007,		-- Piglet's Collar
					},
					{	-- Rat Cage
						["itemID"] = 23015,		-- Rat Cage
					},
					{	-- Snail Shell
						["itemID"] = 66073,		-- Snail Shell
					},
					{	-- Turtle Box
						["itemID"] = 23002,		-- Turtle Box
					},
					{	-- Pet Care Package
						["itemID"] = 116202,	-- Pet Care Package
						["groups"] = {
							{	-- "Dapper Gentleman" Costume
								["itemID"] = 103786,	-- "Dapper Gentleman" Costume
							},
							{	-- "Dread Pirate" Costume
								["itemID"] = 103795,	-- "Dread Pirate" Costume
							},

							{	-- "Little Princess" Costume
								["itemID"] = 103789,	-- "Little Princess" Costume
							},

							{	-- Big Pink Bow
								["itemID"] = 103797,	-- Big Pink Bow
							},

							{	-- Flawless Battle-Stone
								["itemID"] = 92741,	-- Flawless Battle-Stone
							},

							{	-- Lesser Pet Treat
								["itemID"] = 98112,	-- Lesser Pet Treat
							},

							{	-- Magical Mini-Treat
								["itemID"] = 89906,	-- Magical Mini-Treat
							},

							{	-- Magical Pet Biscuit
								["itemID"] = 71153,	-- Magical Pet Biscuit
							},

							{	-- Pet Treat
								["itemID"] = 98114,	-- Pet Treat
							},
						},
					},
					{	-- Curmudgeon's Payoff
						["itemID"] = 23022,		-- Curmudgeon's Payoff
						["description"] = "Contains 5 gold.",
					},
				},
				["isYearly"] = true,
			},
			{	-- A Warden of the Horde [Horde - Orc - FINAL]
				["questID"] = 5502,	-- A Warden of the Horde
				["provider"] = { "n", 14444 },	-- Orcish Orphan
				["crs"] = {
					51989,		-- Orphan Matron Battlewall
				},
				["sourceQuests"] = {
					29190,	-- Let's Go Fly a Kite
					29191,	-- You Scream, I Scream...
				},
				["coord"] = { 57.93, 57.63, ORGRIMMAR },	-- Orphan Matron Battlewail
				["maps"] = {
					ORGRIMMAR,
					86,	-- Orgrimmar: The Drag
				},
				["races"] = HORDE_ONLY,
				["groups"] = {
					{	-- Piglet's Collar
						["itemID"] = 23007,		-- Piglet's Collar
					},
					{	-- Rat Cage
						["itemID"] = 23015,		-- Rat Cage
					},
					{	-- Snail Shell
						["itemID"] = 66073,		-- Snail Shell
					},
					{	-- Turtle Box
						["itemID"] = 23002,		-- Turtle Box
					},
					{	-- Pet Care Package
						["itemID"] = 116202,	-- Pet Care Package
						["groups"] = {
							{	-- "Dapper Gentleman" Costume
								["itemID"] = 103786,	-- "Dapper Gentleman" Costume
							},
							{	-- "Dread Pirate" Costume
								["itemID"] = 103795,	-- "Dread Pirate" Costume
							},

							{	-- "Little Princess" Costume
								["itemID"] = 103789,	-- "Little Princess" Costume
							},

							{	-- Big Pink Bow
								["itemID"] = 103797,	-- Big Pink Bow
							},

							{	-- Flawless Battle-Stone
								["itemID"] = 92741,	-- Flawless Battle-Stone
							},

							{	-- Lesser Pet Treat
								["itemID"] = 98112,	-- Lesser Pet Treat
							},

							{	-- Magical Mini-Treat
								["itemID"] = 89906,	-- Magical Mini-Treat
							},

							{	-- Magical Pet Biscuit
								["itemID"] = 71153,	-- Magical Pet Biscuit
							},

							{	-- Pet Treat
								["itemID"] = 98114,	-- Pet Treat
							},
						},
					},
					{	-- Curmudgeon's Payoff
						["itemID"] = 23022,		-- Curmudgeon's Payoff
						["description"] = "Contains 5 gold.",
					},
				},
				["isYearly"] = true,
			},
			{	-- Auchindoun and the Ring of Observance [Alliance - Draenei]
				["questID"] = 10950,	-- Auchindoun and the Ring of Observance
				["provider"] = { "n", 22818 },			-- Draenei Orphan
				["sourceQuest"] = 10943,	-- Children's Week
				["isYearly"] = true,
				["coords"] = {
					{ 44.17, 58.84, TEROKKAR_FOREST },	-- Path to Ring
					{ 40.76, 60.39, TEROKKAR_FOREST },	-- Tunnel Exit
					{ 43.11, 63.94, TEROKKAR_FOREST },	-- Tunnel Exit
					{ 39.57, 64.41, TEROKKAR_FOREST },	-- Dornaa taken to Ring of Observance
				},
				["maps"] = {
					TEROKKAR_FOREST,
					SHATTRATH_CITY,
				},
				["races"] = ALLIANCE_ONLY,
			},
			{	-- Back to the Orphanage [Alliance - Draenei - FINAL]
				["questID"] = 10966,	-- Back to the Orphanage
				["qg"] = 22818,			-- Draenei Orphan
				["crs"] = {
					22819,			-- Orphan Matron Mercy
				},
				["sourceQuest"] = 10968,	-- Call on the Farseer
				["coords"] = {
					{ 75.08, 47.87, SHATTRATH_CITY },
				},
				["maps"] = { SHATTRATH_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					{	-- Elekk Training Collar
						["itemID"] = 32622,		-- Elekk Training Collar
					},
					{	-- Egbert's Egg
						["itemID"] = 32616,		-- Egbert's Egg
					},
					{	-- Legs
						["itemID"] = 69648,		-- Legs
					},
					{	-- Sleepy Willy
						["itemID"] = 32617,		-- Sleepy Willy
					},
					{	-- Pet Care Package
						["itemID"] = 116202,	-- Pet Care Package
						["groups"] = {
							{	-- "Dapper Gentleman" Costume
								["itemID"] = 103786,	-- "Dapper Gentleman" Costume
							},
							{	-- "Dread Pirate" Costume
								["itemID"] = 103795,	-- "Dread Pirate" Costume
							},

							{	-- "Little Princess" Costume
								["itemID"] = 103789,	-- "Little Princess" Costume
							},

							{	-- Big Pink Bow
								["itemID"] = 103797,	-- Big Pink Bow
							},

							{	-- Flawless Battle-Stone
								["itemID"] = 92741,	-- Flawless Battle-Stone
							},

							{	-- Lesser Pet Treat
								["itemID"] = 98112,	-- Lesser Pet Treat
							},

							{	-- Magical Mini-Treat
								["itemID"] = 89906,	-- Magical Mini-Treat
							},

							{	-- Magical Pet Biscuit
								["itemID"] = 71153,	-- Magical Pet Biscuit
							},

							{	-- Pet Treat
								["itemID"] = 98114,	-- Pet Treat
							},
						},
					},
				},
				["isYearly"] = true,
			},
			{	-- Back to the Orphanage [Horde - Blood Elf - FINAL]
				["questID"] = 10967,	-- Back to the Orphanage
				["qg"] = 22817,			-- Blood Elf Orphan
				["crs"] = {
					22819,			-- Orphan Matron Mercy
				},
				["description"] = "If you are missing this quest resummon your Blood Elf child to pick it up.",
				["sourceQuests"] = {
					11975,	-- Now, When I Grow Up...
					10963,	-- Time to Visit the Caverns
				},
				["coord"] = { 75.08, 47.87, SHATTRATH_CITY },
				["maps"] = { SHATTRATH_CITY },
				["races"] = HORDE_ONLY,
				["groups"] = {
					{	-- Elekk Training Collar
						["itemID"] = 32622,		-- Elekk Training Collar
					},
					{	-- Egbert's Egg
						["itemID"] = 32616,		-- Egbert's Egg
					},
					{	-- Legs
						["itemID"] = 69648,		-- Legs
					},
					{	-- Sleepy Willy
						["itemID"] = 32617,		-- Sleepy Willy
					},
					{	-- Pet Care Package
						["itemID"] = 116202,	-- Pet Care Package
						["groups"] = {
							{	-- "Dapper Gentleman" Costume
								["itemID"] = 103786,	-- "Dapper Gentleman" Costume
							},
							{	-- "Dread Pirate" Costume
								["itemID"] = 103795,	-- "Dread Pirate" Costume
							},

							{	-- "Little Princess" Costume
								["itemID"] = 103789,	-- "Little Princess" Costume
							},

							{	-- Big Pink Bow
								["itemID"] = 103797,	-- Big Pink Bow
							},

							{	-- Flawless Battle-Stone
								["itemID"] = 92741,	-- Flawless Battle-Stone
							},

							{	-- Lesser Pet Treat
								["itemID"] = 98112,	-- Lesser Pet Treat
							},

							{	-- Magical Mini-Treat
								["itemID"] = 89906,	-- Magical Mini-Treat
							},

							{	-- Magical Pet Biscuit
								["itemID"] = 71153,	-- Magical Pet Biscuit
							},

							{	-- Pet Treat
								["itemID"] = 98114,	-- Pet Treat
							},
						},
					},
				},
				["isYearly"] = true,
			},
			{	-- Back To The Orphanage [Neutral - Oracles - FINAL]
				["questID"] = 28879,	-- Back to the Orphanage
				["provider"] = { "n", 33533 },			-- Oracle Orphan
				["crs"] = {
					34365,			-- Orphan Matron Aria
				},
				["description"] = "If you are missing this quest resummon your Oracle child to pick it up.",
				["sourceQuests"] = {
					13937,	-- A Trip To The Wonderworks
				},
				["coord"] = { 49.37, 63.26, 125 },	-- Orphan Matron Aria
				["maps"] = { 125 },	-- Dalaran (Northrend)
				["groups"] = {
					{	-- Curious Oracle Hatchling
						["itemID"] = 46545,	-- Curious Oracle Hatchling
					},
					{	-- Pet Care Package
						["itemID"] = 116202,	-- Pet Care Package
						["groups"] = {
							{	-- "Dapper Gentleman" Costume
								["itemID"] = 103786,	-- "Dapper Gentleman" Costume
							},
							{	-- "Dread Pirate" Costume
								["itemID"] = 103795,	-- "Dread Pirate" Costume
							},

							{	-- "Little Princess" Costume
								["itemID"] = 103789,	-- "Little Princess" Costume
							},

							{	-- Big Pink Bow
								["itemID"] = 103797,	-- Big Pink Bow
							},

							{	-- Flawless Battle-Stone
								["itemID"] = 92741,	-- Flawless Battle-Stone
							},

							{	-- Lesser Pet Treat
								["itemID"] = 98112,	-- Lesser Pet Treat
							},

							{	-- Magical Mini-Treat
								["itemID"] = 89906,	-- Magical Mini-Treat
							},

							{	-- Magical Pet Biscuit
								["itemID"] = 71153,	-- Magical Pet Biscuit
							},

							{	-- Pet Treat
								["itemID"] = 98114,	-- Pet Treat
							},
						},
					},
					{	-- Curmudgeon's Payoff
						["itemID"] = 23022,		-- Curmudgeon's Payoff
						["description"] = "Contains 5 gold.",
					},
				},
				["isYearly"] = true,
			},
			{	-- Back To The Orphanage [Neutral - Wolvar - FINAL]
				["questID"] = 28880,	-- Back To The Orphanage
				["provider"] = { "n", 33532 },			-- Wolvar Orphan
				["crs"] = {
					34365,			-- Orphan Matron Aria
				},
				["sourceQuest"] = 13938,	-- A Trip To The Wonderworks
				["coord"] = { 49.37, 63.26, 125 },	-- Orphan Matron Aria
				["maps"] = {
					125,	-- Dalaran (Northrend)
				},
				["groups"] = {
					{	-- Curious Wolvar Pup
						["itemID"] = 46544,	-- Curious Wolvar Pup
					},
					{	-- Pet Care Package
						["itemID"] = 116202,	-- Pet Care Package
						["groups"] = {
							{	-- "Dapper Gentleman" Costume
								["itemID"] = 103786,	-- "Dapper Gentleman" Costume
							},
							{	-- "Dread Pirate" Costume
								["itemID"] = 103795,	-- "Dread Pirate" Costume
							},

							{	-- "Little Princess" Costume
								["itemID"] = 103789,	-- "Little Princess" Costume
							},

							{	-- Big Pink Bow
								["itemID"] = 103797,	-- Big Pink Bow
							},

							{	-- Flawless Battle-Stone
								["itemID"] = 92741,	-- Flawless Battle-Stone
							},

							{	-- Lesser Pet Treat
								["itemID"] = 98112,	-- Lesser Pet Treat
							},

							{	-- Magical Mini-Treat
								["itemID"] = 89906,	-- Magical Mini-Treat
							},

							{	-- Magical Pet Biscuit
								["itemID"] = 71153,	-- Magical Pet Biscuit
							},

							{	-- Pet Treat
								["itemID"] = 98114,	-- Pet Treat
							},
						},
					},
					{	-- Curmudgeon's Payoff
						["itemID"] = 23022,		-- Curmudgeon's Payoff
						["description"] = "Contains 5 gold.",
					},
				},
				["isYearly"] = true,
			},
			{	-- Bird Friends [Alliance - Kul Tiran]
				["questID"] = 53863,	-- Bird Friends
				["provider"] = { "n", 145394 },		-- Liam
				["description"] = "If you are missing this quest resummon your Kul Tiran child to pick it up.",
				["sourceQuests"] = {
					53859,	-- The Mountain Folk
					53862,	-- The Squid Shrine
					53861,	-- Yo Ho, Yo Ho!
				},
				["coords"] = {
					{ 36.25, 51.08, 896 },	-- Birdfeather's Statue
				},
				["maps"] = {
					896,	-- Drustvar
					1161,	-- Boralus
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			},
			{	-- Call on the Farseer [Alliance - Draenei]
				["questID"] = 10968,	-- Call on the Farseer
				["provider"] = { "n", 22818 },			-- Draenei Orphan
				["description"] = "If you are missing this quest resummon your Draenei child to pick it up.",
				["sourceQuests"] = {
					10956,	-- The Seat of the Naaru
					10962,	-- Time to Visit the Caverns
				},
				["coords"] = {
					{ 27.10, 29.86, THE_EXODAR },	-- Path to Farseer Nobundo
					{ 30.67, 27.87, THE_EXODAR },	-- Visit Farseer Nobundo
					{ 31.30, 27.65, THE_EXODAR },	-- Speak to Farseer Nobundo
				},
				["maps"] = {
					THE_EXODAR,
					SHATTRATH_CITY,
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			},
			{	-- Children's Week [Alliance - Draenei - START]
				["questID"] = 10943,	-- Children's Week [Alliance - Draenei Orphan]
				["provider"] = { "n", 22819 },			-- Orphan Matron Mercy
				["coords"] = {
					{ 75.08, 47.87, SHATTRATH_CITY },
				},
				["maps"] = { SHATTRATH_CITY },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			},
			{	-- Children's Week [Alliance - Human - START]
				["questID"] = 1468,		-- Children's Week
				["provider"] = { "n", 51988 },			-- Orphan Matron Nightingale
				["description"] = "If you are missing this quest resummon your Human child to pick it up.",
				["maps"] = { STORMWIND_CITY },
				["coords"] = {
					{ 56.31, 53.99, STORMWIND_CITY },	-- Orphan Matron Nightingale
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			},
			{	-- Children's Week [Alliance - Kul Tiran - START]
				["questID"] = 53811,	-- Children's Week
				["provider"] = { "n", 145291 },		-- Oprhan Matron Westerson
				["maps"] = {
					1161,	-- Boralus
				},
				["coords"] = {
					{ 47.77, 39.37, 1161 },	-- Path to Oprhan Matron Westerson
					{ 48.01, 40.28, 1161 },	-- Orphan Matron Westerson
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			},
			{	-- Children's Week [Horde - Blood Elf - START]
				["questID"] = 10942,	-- Children's Week [Horde - Blood Elf Orphan]
				["provider"] = { "n", 22819 },			-- Orphan Matron Mercy
				["description"] = "If you are missing this quest resummon your Blood Elf child to pick it up.",
				["coords"] = {
					{ 75.08, 47.87, SHATTRATH_CITY },
				},
				["maps"] = { SHATTRATH_CITY },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			},
			{	-- Children's Week [Horde - Orc - START]
				["questID"] = 172,	-- Children's Week [Horde]
				["u"] = 20,			-- Children's Week Filter
				["provider"] = { "n", 51989 },		-- Orphan Matron Battlewall
				["description"] = "If you are missing this quest resummon your Orc child to pick it up.",
				["coord"] = { 57.93, 57.63, ORGRIMMAR },	-- Orphan Matron Battlewail
				["maps"] = {
					ORGRIMMAR,
					86,	-- Orgrimmar: The Drag
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			},
			{	-- Children's Week [Horde - Zandalari - START]
				["questID"] = 131346,	-- Children's Week
				["provider"] = { "n", 131346 },		-- Caretaker Padae
				["maps"] = {
					1163,	-- The Great Seal [Dazar'alor]
					1164,	-- Hall of Chroniclers [Dazar'alor]
					DAZARALOR,
				},
				["coords"] = {
					{ 53.46, 84.91, DAZARALOR },	-- Entrance to Hall of Castes
					{ 54.64, 84.61, DAZARALOR },	-- Caretaker Padae
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			},
			{	-- Cruisin' the Chasm [Alliance - Human]
				["questID"] = 29093,	-- Cruisin' the Chasm
				["provider"] = { "n", 14305 },			-- Human Orphan
				["description"] = "If you are missing this quest resummon your Human child to pick it up.",
				["sourceQuests"] = {
					1468,	-- Children's Week
				},
				["coords"] = {
					{ 57.71, 53.27, WESTFALL },	-- Rental Chopper
					{ 57.78, 53.06, WESTFALL },	-- Rental Chopper
				},
				["maps"] = {
					WESTFALL,
					STORMWIND_CITY,
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			},
			{	-- Hch'uu and the Mushroom People [Horde - Blood Elf]
				["questID"] = 10945,	-- Hch'uu and the Mushroom People
				["provider"] = { "n", 22817 },			-- Blood Elf Orphan
				["description"] = "If you are missing this quest resummon your Blood Elf child to pick it up.",
				["sourceQuests"] = {
					10942,	-- Children's Week
				},
				["coords"] = {
					{ 19.43, 51.31, ZANGARMARSH },	-- Salandria taken to Sporeggar
					{ 19.28, 51.34, ZANGARMARSH },	-- Speak to Hch'uu
				},
				["maps"] = {
					ZANGARMARSH,
					SHATTRATH_CITY,
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			},
			{	-- Home Of The Bear-Men [Neutral - Wolvar]
				["questID"] = 13930,	-- Home Of The Bear-Men
				["provider"] = { "n", 33532 },			-- Wolvar Orphan
				["description"] = "If you are missing this quest resummon your Wolvar child to pick it up.",
				["sourceQuests"] = {
					13927,	-- Little Orphan Kekek Of The Wolvar
				},
				["coords"] = {
					{ 52.93, 44.93, 116 },	-- Path to Grizzlemaw
					{ 51.69, 40.74, 116 },	-- Kekek taken to Grizzlemaw
					{ 50.71, 42.75, 116 },	-- Kekek taken to Grizzlemaw
				},
				["maps"] = {
					116,	-- Grizzly Hills
					125,	-- Dalaran (Northrend)
				},
				["isYearly"] = true,
			},
			{	-- Hunting For Gold [Horde - Zandalari]
				["questID"] = 53969,	-- Hunting for Gold
				["provider"] = { "n", 131346 },		-- Caretaker Padae
				["description"] = "If you are missing this quest resummon your Zandalari child to pick it up.",
				["sourceQuests"] = {
					53966,	-- Loa of Winds
					53967,	-- The Frogmarsh
					53968,	-- The Shifting Pack
				},
				["maps"] = {
					864,	-- Vol'dun
					1163,	-- The Great Seal [Dazar'alor]
					1164,	-- Hall of Chroniclers [Dazar'alor]
					DAZARALOR,
				},
				["coords"] = {
					{ 28.91, 88.76, 864 },	-- The Golden Isle
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			},
			{	-- Jheel is at Aeris Landing! [Alliance - Draenei]
				["questID"] = 10954,	-- Jheel is at Aeris Landing!
				["provider"] = { "n", 22818 },			-- Draenei Orphan
				["description"] = "If you are missing this quest resummon your Draenei child to pick it up.",
				["sourceQuests"] = {
					10943,	-- Children's Week
				},
				["coords"] = {
					{ 31.44, 57.46, NAGRAND },	-- Dornaa taken to Aeris Landing
					{ 31.49, 57.61, NAGRAND },	-- Speak to Jheel
				},
				["maps"] = {
					NAGRAND,
					SHATTRATH_CITY,
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			},
			{	-- Let's Go Fly a Kite [Alliance - Human]
				["questID"] = 29117,	-- Let's Go Fly a Kite
				["provider"] = { "n", 14305 },			-- Human Orphan
				["description"] = "If you are missing this quest resummon your Human child to pick it up.",
				["sourceQuests"] = {
					29093,	-- Cruisin' the Chasm
					54130,	-- Our New Friends
					29106,	-- The Biggest Diamond Ever!
				},
				["coords"] = {
					{ 56.31, 68.45, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 56.67, 66.57, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 56.75, 70.04, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 57.19, 71.63, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 57.57, 65.42, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 57.63, 73.23, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 58.07, 74.83, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 58.44, 64.31, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 58.51, 76.42, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 59.12, 77.98, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 59.44, 63.31, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 60.44, 62.44, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 61.21, 61.78, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 62.31, 61.34, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 63.44, 61.05, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 64.62, 61.54, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 65.63, 62.99, STORMWIND_CITY },	-- Craggle Wobbletop Path
					{ 66.61, 64.43, STORMWIND_CITY },	-- Craggle Wobbletop Path
				},
				["maps"] = { STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			},
			{	-- Let's Go Fly a Kite [Horde - Orc]
				["questID"] = 29190,	-- Let's Go Fly a Kite
				["provider"] = { "n", 14444 },			-- Orcish Orphan
				["description"] = "If you are missing this quest resummon your Orc child to pick it up.",
				["sourceQuests"] = {
					29146,	-- Ridin' the Rocketway
					29167,	-- The Banshee Queen
					29176,	-- The Fallen Chieftain
				},
				["coords"] = {
					{ 57.13, 51.12, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 57.24, 52.54, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 57.87, 54.21, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.08, 51.11, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.29, 62.41, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.34, 62.93, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.48, 55.55, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.67, 62.27, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.78, 53.61, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.79, 50.93, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.81, 57.61, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.85, 58.67, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.86, 60.16, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 59.32, 51.86, ORGRIMMAR },	-- Blax Bottlerocket Path
				},
				["maps"] = {
					ORGRIMMAR,	-- Orgrimmar
					86,	-- Orgrimmar: The Drag
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			},
			{	-- Loa of Winds [Horde - Zandalari]
				["questID"] = 53966,	-- Loa of Winds
				["provider"] = { "n", 131346 },		-- Caretaker Padae
				["sourceQuests"] = {
					131346,	-- Children's Week
				},
				["maps"] = {
					862,	-- Zuldazar
					1163,	-- The Great Seal [Dazar'alor]
					1164,	-- Hall of Chroniclers [Dazar'alor]
					DAZARALOR,
				},
				["coords"] = {
					{ 65.77, 45.01, 865 },	-- Path Starts to Pteroor Rise
					{ 70.54, 49.11, 865 },	-- Pterror Rise
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			},
			{	-- Little Orphan Kekek Of The Wolvar [Neutral - Wolvar - START]
				["questID"] = 13927,	-- Little Orphan Kekek Of The Wolvar
				["provider"] = { "n", 34365 },			-- Orphan Matron Aria
				["coords"] = {
					{ 49.37, 63.26, 125 },	-- Orphan Matron Aria
				},
				["maps"] = {
					125,	-- Dalaran (Northrend)
				},
				["isYearly"] = true,
			},
			{	-- Little Orphan Roo Of The Oracles [Neutral - Oracles - START]
				["questID"] = 13926,	-- Little Orphan Roo Of The Oracles
				["provider"] = { "n", 34365 },			-- Orphan Matron Aria
				["isYearly"] = true,
				["coords"] = {
					{ 49.37, 63.26, 125 },	-- Orphan Matron Aria
				},
				["maps"] = {
					125,	-- Dalaran (Northrend)
				},
			},
			{	-- Malfurion Has Returned! [Alliance - Human] REMOVED
				["questID"] = 29107,	-- Malfurion Has Returned!
				["u"] = REMOVED_FROM_GAME,				-- Unobtainable	Note!! Looks like quest was removed in BFA due to Teladrassil burning!!
				["provider"] = { "n", 14305 },			-- Human Orphan
				["sourceQuests"] = {
					1468,	-- Children's Week
				},
				["maps"] = {
					STORMWIND_CITY,
					DARNASSUS,
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			},
			{	-- Meeting a Great One [Neutral - Oracles]
				["questID"] = 13956,	-- Meeting a Great One
				["provider"] = { "n", 33533 },			-- Oracle Orphan
				["sourceQuests"] = {
					13951,	-- Playmates!
					13929,	-- The Biggest Tree Ever!
					13934,	-- The Bronze Dragonshrine
				},
				["coords"] = {
					{ 40.01, 82.05, 119 },	-- Waygate Entrance
					{ 40.66, 84.18, 119 },	-- Waygate Entrance
					{ 47.56, 09.17, UNGORO_CRATER },	-- The Etymidian
				},
				["maps"] = {
					UNGORO_CRATER,
					119,	-- Sholazar Basin
					125,	-- Dalaran (Northrend)
				},
				["isYearly"] = true,
			},
			{	-- Now, When I Grow Up... [Horde - Blood Elf]
				["questID"] = 11975,	-- Now, When I Grow Up...
				["provider"] = { "n", 22817 },			-- Blood Elf Orphan
				["sourceQuests"] = {
					10951,	-- A Trip to the Dark Portal
					10945,	-- Hch'uu and the Mushroom People
					10953,	-- Visit the Throne of the Elements
				},
				["coords"] = {
					{ 76.61, 81.23, SILVERMOON_CITY },
				},
				["maps"] = {
					SILVERMOON_CITY,
					SHATTRATH_CITY,
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			},
			{	-- Our New Friends [Alliance - Human]
				["questID"] = 54130,	-- Our New Friends
				["provider"] = { "n", 14305 },			-- Human Orphan
				["sourceQuests"] = {
					1468,	-- Children's Week
				},
				["coords"] = {
					{ 53.28, 15.25, STORMWIND_CITY },	-- Stormwind Embassy
				},
				["maps"] = { STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			},
			{	-- Playmates! [Neutral - Oracles]
				["questID"] = 13950,	-- Playmates!
				["provider"] = { "n", 33533 },			-- Oracle Orphan
				["sourceQuests"] = {
					13926,	-- Little Orphan Roo Of The Oracles
				},
				["coords"] = {
					{ 43.87, 12.06, 114 },	-- Path starts
					{ 42.06, 11.26, 114 },	-- Path branches
					{ 42.68, 12.61, 114 },	-- Roo visits Winterfin
				},
				["maps"] = {
					114,	-- Borean Tundra
					125,	-- Dalaran (Northrend)
				},
				["isYearly"] = true,
			},
			{	-- Playmates! [Neutral - Wolvar]
				["questID"] = 13951,	-- Playmates!
				["provider"] = { "n", 33532 },			-- Wolvar Orphan
				["sourceQuests"] = {
					13927,	-- Little Orphan Kekek Of The Wolvar
				},
				["coords"] = {
					{ 46.38, 67.79, 115 },	-- Kekek taken to Snowfall Glade
				},
				["maps"] = {
					115,	-- Dragonblight
					125,	-- Dalaran (Northrend)
				},
				["isYearly"] = true,
			},
			{	-- Return to the Hall of Castes [Horde - Zandalari - FINAL]
				["questID"] = 53971,	-- Return to the Hall of Castes
				["provider"] = { "n", 131346 },		-- Caretaker Padae
				["crs"] = {
					131346,		-- Caretaker Padae
				},
				["sourceQuests"] = {
					53969,	-- Hunting for Gold
					53970,	-- The Sethrak Queen
				},
				["maps"] = {
					1163,	-- The Great Seal [Dazar'alor]
					1164,	-- Hall of Chroniclers [Dazar'alor]
					DAZARALOR,
				},
				["coords"] = {
					{ 53.46, 84.91, DAZARALOR },	-- Entrance to Hall of Castes
					{ 54.64, 84.61, DAZARALOR },	-- Caretaker Padae
				},
				["races"] = HORDE_ONLY,
				["groups"] = {
					{	-- Beakbert
						["itemID"] = 167010,	-- Beakbert
					},
					{	-- Enchanted Saurolisk Scale
						["itemID"] = 167009,	-- Enchanted Saurolisk Scale
					},
					{	-- Sandy Hermit Crab Shell
						["itemID"] = 167008,	-- Sandy Hermit Crab Shell
					},
					{	-- Slimy Pouch
						["itemID"] = 167011,	-- Slimy Pouch
					},
					{	-- Pet Care Package
						["itemID"] = 116202,	-- Pet Care Package
						["groups"] = {
							{	-- "Dapper Gentleman" Costume
								["itemID"] = 103786,	-- "Dapper Gentleman" Costume
							},
							{	-- "Dread Pirate" Costume
								["itemID"] = 103795,	-- "Dread Pirate" Costume
							},

							{	-- "Little Princess" Costume
								["itemID"] = 103789,	-- "Little Princess" Costume
							},

							{	-- Big Pink Bow
								["itemID"] = 103797,	-- Big Pink Bow
							},

							{	-- Flawless Battle-Stone
								["itemID"] = 92741,	-- Flawless Battle-Stone
							},

							{	-- Lesser Pet Treat
								["itemID"] = 98112,	-- Lesser Pet Treat
							},

							{	-- Magical Mini-Treat
								["itemID"] = 89906,	-- Magical Mini-Treat
							},

							{	-- Magical Pet Biscuit
								["itemID"] = 71153,	-- Magical Pet Biscuit
							},

							{	-- Pet Treat
								["itemID"] = 98114,	-- Pet Treat
							},
						},
					},
					{	-- Curmudgeon's Payoff
						["itemID"] = 23022,		-- Curmudgeon's Payoff
						["description"] = "Contains 5 gold.",
					},
				},
				["isYearly"] = true,
			},
			{	-- Return to the Orphanage [Alliance - Kul Tiran - FINAL]
				["questID"] = 53865,	-- Return to the Orphanage
				["provider"] = { "n", 145394 },		-- Liam
				["crs"] = {
					145291,		-- Oprhan Matron Westerson
				},
				["sourceQuests"] = {
					53863,	-- Bird Friends
					53864,	-- Shapeshifters
				},
				["coords"] = {
					{ 47.77, 39.37, 1161 },	-- Path to Oprhan Matron Westerson
					{ 48.01, 40.28, 1161 },	-- Orphan Matron Westerson
				},
				["maps"] = {
					1161,	-- Boralus
				},
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					{	-- Beakbert
						["itemID"] = 167010,	-- Beakbert
					},
					{	-- Enchanted Saurolisk Scale
						["itemID"] = 167009,	-- Enchanted Saurolisk Scale
					},
					{	-- Sandy Hermit Crab Shell
						["itemID"] = 167008,	-- Sandy Hermit Crab Shell
					},
					{	-- Slimy Pouch
						["itemID"] = 167011,	-- Slimy Pouch
					},
					{	-- Pet Care Package
						["itemID"] = 116202,	-- Pet Care Package
						["groups"] = {
							{	-- "Dapper Gentleman" Costume
								["itemID"] = 103786,	-- "Dapper Gentleman" Costume
							},
							{	-- "Dread Pirate" Costume
								["itemID"] = 103795,	-- "Dread Pirate" Costume
							},

							{	-- "Little Princess" Costume
								["itemID"] = 103789,	-- "Little Princess" Costume
							},

							{	-- Big Pink Bow
								["itemID"] = 103797,	-- Big Pink Bow
							},

							{	-- Flawless Battle-Stone
								["itemID"] = 92741,	-- Flawless Battle-Stone
							},

							{	-- Lesser Pet Treat
								["itemID"] = 98112,	-- Lesser Pet Treat
							},

							{	-- Magical Mini-Treat
								["itemID"] = 89906,	-- Magical Mini-Treat
							},

							{	-- Magical Pet Biscuit
								["itemID"] = 71153,	-- Magical Pet Biscuit
							},

							{	-- Pet Treat
								["itemID"] = 98114,	-- Pet Treat
							},
						},
					},
					{	-- Curmudgeon's Payoff
						["itemID"] = 23022,		-- Curmudgeon's Payoff
						["description"] = "Contains 5 gold.",
					},
				},
				["isYearly"] = true,
			},
			{	-- Ridin' the Rocketway [Horde - Orc]
				["questID"] = 29146,	-- Ridin' the Rocketway
				["provider"] = { "n", 14444 },			-- Orcish Orphan
				["sourceQuests"] = {
					172,	-- Children's Week
				},
				["coord"] = { 50.71, 73.94, AZSHARA },	-- Redhound Two-Seater
				["maps"] = {
					AZSHARA,
					ORGRIMMAR,
					86,	-- Orgrimmar: The Drag
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			},
			{	-- Shapeshifters [Alliance - Kul Tiran]
				["questID"] = 53864,	-- Shapeshifters
				["provider"] = { "n", 145394 },		-- Liam
				["sourceQuests"] = {
					53859,	-- The Mountain Folk
					53862,	-- The Squid Shrine
					53861,	-- Yo Ho, Yo Ho!
				},
				["coords"] = {
					{ 45.94, 39.06, 896 },	-- Path to Ulfar's Den Starts
					{ 46.32, 43.86, 896 },	-- Continue the path to Ulfar's Den
					{ 46.32, 44.53, 896 },	-- Ulfar's Den
				},
				["maps"] = {
					896,	-- Drustvar
					1161,	-- Boralus
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			},
			{	-- Strong New Allies [Horde - Orc]
				["questID"] = 54146,	-- Strong New Allies
				["provider"] = { "n", 14444 },			-- Orcish Orphan
				["sourceQuests"] = {
					172,	-- Children's Week
				},
				["coord"] = { 39.68, 78.68, ORGRIMMAR },	-- Orgimmar Embassy
				["maps"] = {
					ORGRIMMAR,	-- Orgrimmar
					86,	-- Orgrimmar: The Drag
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			},
			{	-- The Banshee Queen [Horde - Orc] REMOVED
				["questID"] = 29167,	-- The Banshee Queen
				["u"] = REMOVED_FROM_GAME,				-- Unobtainable	Note!! Looks like quest was removed in BFA due to Teladrassil burning!!
				["provider"] = { "n", 14444 },			-- Orcish Orphan
				["sourceQuests"] = {
					172,	-- Children's Week
				},
				["maps"] = {
					ORGRIMMAR,
					86,	-- Orgrimmar: The Drag
					UNDERCITY,
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			},
			{	-- The Biggest Diamond Ever! [Alliance - Human]
				["questID"] = 29106,	-- The Biggest Diamond Ever!
				["provider"] = { "n", 14305 },			-- Human Orphan
				["sourceQuests"] = {
					1468,	-- Children's Week
				},
				["coords"] = {
					{ 44.61, 49.40, IRONFORGE },	-- The High Seat [Leads to tunnel]
					{ 44.76, 52.25, IRONFORGE },	-- Path to Old Ironforge
					{ 37.43, 54.32, 1361 },	-- Magni [Old Ironforge]
				},
				["maps"] = {
					STORMWIND_CITY,
					IRONFORGE,
					1361,	-- Old Ironforge
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			},
			{	-- The Biggest Tree Ever! [Neutral - Oracles]
				["questID"] = 13929,	-- The Biggest Tree Ever!
				["provider"] = { "n", 33533 },			-- Oracle Orphan
				["sourceQuests"] = {
					13926,	-- Little Orphan Roo Of The Oracles
				},
				["isYearly"] = true,
				["coords"] = {
					{ 52.93, 44.93, 116 },	-- Path to Grizzlemaw
					{ 51.69, 40.74, 116 },	-- Roo taken to Grizzlemaw
					{ 50.71, 42.75, 116 },	-- Roo taken to Grizzlemaw
				},
				["maps"] = {
					116,	-- Grizzly Hills
					125,	-- Dalaran (Northrend)
				},
			},
			{	-- The Bronze Dragonshrine [Neutral - Oracles]
				["questID"] = 13933,	-- The Bronze Dragonshrine
				["provider"] = { "n", 33533 },			-- Oracle Orphan
				["sourceQuests"] = {
					13926,	-- Little Orphan Roo Of The Oracles
				},
				["coords"] = {
					{ 69.66, 46.25, 115 },	-- Path Starts
					{ 71.25, 40.81, 115 },	-- Roo taken to Bronze Dragonshrine
				},
				["maps"] = {
					115,	-- Dragonblight
					125,	-- Dalaran (Northrend)
				},
				["isYearly"] = true,
			},
			{	-- The Bronze Dragonshrine [Neutral - Wolvar]
				["questID"] = 13934,	-- The Bronze Dragonshrine
				["provider"] = { "n", 33532 },			-- Wolvar Orphan
				["sourceQuests"] = {
					13927,	-- Little Orphan Kekek Of The Wolvar
				},
				["coords"] = {
					{ 69.66, 46.25, 115 },	-- Path Starts
					{ 71.25, 40.81, 115 },	-- Roo taken to Bronze Dragonshrine
				},
				["maps"] = {
					115,	-- Dragonblight
					125,	-- Dalaran (Northrend)
				},
				["isYearly"] = true,
			},
			{	-- The Dragon Queen [Neutral - Oracles]
				["questID"] = 13954,	-- The Dragon Queen
				["provider"] = { "n", 33533 },			-- Oracle Orphan
				["sourceQuests"] = {
					13951,	-- Playmates!
					13929,	-- The Biggest Tree Ever!
					13934,	-- The Bronze Dragonshrine
				},
				["coords"] = {
					{ 59.81, 54.45, 115 },	-- Meet Alexstraza
				},
				["maps"] = {
					115,	-- Dragonblight
					125,	-- Dalaran (Northrend)
				},
				["isYearly"] = true,
			},
			{	-- The Dragon Queen [Neutral - Wolvar]
				["questID"] = 13955,	-- The Dragon Queen
				["provider"] = { "n", 33532 },			-- Wolvar Orphan
				["sourceQuests"] = {
					13930,	-- Home Of The Bear-Men
					13951,	-- Playmates!
					13934,	-- The Bronze Dragonshrine
				},
				["coords"] = {
					{ 59.81, 54.45, 115 },	-- Meet Alexstraza
				},
				["maps"] = {
					115,	-- Dragonblight
					125,	-- Dalaran (Northrend)
				},
				["isYearly"] = true,
			},
			{	-- The Fallen Chieftain [Horde - Orc]
				["questID"] = 29176,	-- The Fallen Chieftain
				["provider"] = { "n", 14444 },			-- Orcish Orphan
				["sourceQuests"] = {
					172,	-- Children's Week
				},
				["coord"] = { 60.74, 22.92, MULGORE },	-- Fallen Chieftain
				["maps"] = {
					MULGORE,
					ORGRIMMAR,
					86,	-- Orgrimmar: The Drag
					THUNDER_BLUFF,
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			},
			{	-- The Frogmarsh [Horde - Zandalari]
				["questID"] = 53967,	-- The Frogmarsh
				["provider"] = { "n", 131346 },		-- Caretaker Padae
				["sourceQuests"] = {
					131346,	-- Children's Week
				},
				["maps"] = {
					863,	-- Nazmir
					1163,	-- The Great Seal [Dazar'alor]
					1164,	-- Hall of Chroniclers [Dazar'alor]
					DAZARALOR,
				},
				["coords"] = {
					{ 71.18, 49.19, 863 },	-- Path Starts
					{ 73.26, 53.42, 863 },	-- The Frogmarsh
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			},
			{	-- The Mighty Hemet Nesingwary [Neutral - Wolvar]
				["questID"] = 13957,	-- The Mighty Hemet Nesingwary
				["provider"] = { "n", 33532 },			-- Wolvar Orphan
				["sourceQuests"] = {
					13930,	-- Home Of The Bear-Men
					13951,	-- Playmates!
					13934,	-- The Bronze Dragonshrine
				},
				["coords"] = {
					{ 27.11, 58.73, 119 },	-- Meet Hemest Nesingwary
				},
				["maps"] = {
					119,	-- Sholazar Basin
					125,	-- Dalaran (Northrend)
				},
				["isYearly"] = true,
			},
			{	-- The Mountain Folk [Alliance - Kul Tiran]
				["questID"] = 53859,	-- The Mountain Folk
				["provider"] = { "n", 145394 },		-- Liam
				["sourceQuests"] = {
					53811,	-- Children's Week
				},
				["coords"] = {
					{ 42.47, 22.71, 895 },	-- Mountain Folk
				},
				["maps"] = {
					1161,	-- Boralus
					895,	-- Tiragarde Sound
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			},
			{	-- The Seat of the Naaru [Alliance - Draenei]
				["questID"] = 10956,	-- The Seat of the Naaru
				["provider"] = { "n", 22818 },			-- Draenei Orphan
				["sourceQuests"] = {
					10950,	-- Auchindoun and the Ring of Observance
					10952,	-- A Trip to the Dark Portal
					10954,	-- Jheel is at Aeris Landing!
				},
				["coords"] = {
					{ 56.87, 40.77, THE_EXODAR },	-- Seat of the Naaru
					{ 58.04, 41.50, THE_EXODAR },	-- Speak to O'ros
				},
				["maps"] = {
					THE_EXODAR,
					SHATTRATH_CITY,
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			},
			{	-- The Sethrak Queen [Horde - Zandalari]
				["questID"] = 53970,	-- The Sethrak Queen
				["provider"] = { "n", 131346 },		-- Caretaker Padae
				["sourceQuests"] = {
					53966,	-- Loa of Winds
					53967,	-- The Frogmarsh
					53968,	-- The Shifting Pack
				},
				["maps"] = {
					864,	-- Vol'dun
					1163,	-- The Great Seal [Dazar'alor]
					1164,	-- Hall of Chroniclers [Dazar'alor]
					DAZARALOR,
				},
				["coords"] = {
					{ 27.01, 53.15, 864 },	-- Path to Sanctuary of the Devoted
					{ 27.02, 51.98, 864 },	-- Path to Sanctuary of the Devoted
					{ 26.77, 52.57, 864 },	-- Sanctuary of the Devoted
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			},
			{	-- The Shifting Pack [Horde - Zandalari]
				["questID"] = 53968,	-- The Shifting Pack
				["provider"] = { "n", 131346 },		-- Caretaker Padae
				["sourceQuests"] = {
					131346,	-- Children's Week
				},
				["maps"] = {
					862,	-- Zuldazar
					1163,	-- The Great Seal [Dazar'alor]
					1164,	-- Hall of Chroniclers [Dazar'alor]
					DAZARALOR,
				},
				["coords"] = {
					{ 49.39, 31.22, 862 },	-- Path Starts
					{ 48.69, 31.76, 862 },	-- Lair of Gonk
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			},
			{	-- The Squid Shrine [Alliance - Kul Tiran]
				["questID"] = 53862,	-- The Squid Shrine
				["provider"] = { "n", 145394 },		-- Liam
				["sourceQuests"] = {
					53811,	-- Children's Week
				},
				["coords"] = {
					{ 72.57, 49.94, 942 },	-- Shrine of the Storm View
				},
				["maps"] = {
					1161,	-- Boralus
					942,	-- Stormsong Valley
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			},
			{	-- Time to Visit the Caverns [Alliance - Draenei]
				["questID"] = 10962,	-- Time to Visit the Caverns
				["provider"] = { "n", 22818 },			-- Draenei Orphan
				["sourceQuests"] = {
					10950,	-- Auchindoun and the Ring of Observance
					10952,	-- A Trip to the Dark Portal
					10954,	-- Jheel is at Aeris Landing!
				},
				["coords"] = {
					{ 53.29, 55.35, CAVERNS_OF_TIME },	-- Salandria taken to Caverns of Time
					{ 39.94, 77.39, CAVERNS_OF_TIME },	-- Toy Dragon
					{ 64.76, 50.01, CAVERNS_OF_TIME },	-- Caverns of Time Entrance
				},
				["maps"] = {TANARIS, CAVERNS_OF_TIME, SHATTRATH_CITY },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			},
			{	-- Time to Visit the Caverns [Horde - Blood Elf]
				["questID"] = 10963,	-- Time to Visit the Caverns
				["provider"] = { "n", 22817 },			-- Blood Elf Orphan
				["sourceQuests"] = {
					10951,	-- A Trip to the Dark Portal
					10945,	-- Hch'uu and the Mushroom People
					10953,	-- Visit the Throne of the Elements
				},
				["coords"] = {
					{ 53.29, 55.35, CAVERNS_OF_TIME },	-- Salandria taken to Caverns of Time
					{ 39.94, 77.39, CAVERNS_OF_TIME },	-- Toy Dragon
					{ 64.76, 50.01, CAVERNS_OF_TIME },	-- Caverns of Time Entrance
				},
				["maps"] = { TANARIS, CAVERNS_OF_TIME, SHATTRATH_CITY },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			},
			{	-- Visit the Throne of the Elements [Horde - Blood Elf]
				["questID"] = 10953,	-- Visit the Throne of the Elements
				["provider"] = { "n", 22817 },			-- Blood Elf Orphan
				["crs"] = {
					18072,	-- Elementalist Sharvak
				},
				["sourceQuests"] = {
					10942,	-- Children's Week
				},
				["coords"] = {
					{ 60.39, 23.36, NAGRAND },	-- Salandria taken to the Throne of Elements
					{ 60.65, 22.11, NAGRAND },	-- Speak to Elementalist Sharvak
				},
				["maps"] = {
					NAGRAND,
					SHATTRATH_CITY,
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			},
			{	-- Yo Ho, Yo Ho! [Alliance - Kul Tiran]
				["questID"] = 53861,	-- Yo Ho, Yo Ho!
				["provider"] = { "n", 145394 },		-- Liam
				["sourceQuests"] = {
					53811,	-- Children's Week
				},
				["coords"] = {
					{ 79.83, 82.51, 895 },	-- Meet with Pirates
				},
				["maps"] = {
					1161,	-- Boralus
					895,	-- Tiragarde Sound
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			},
			{	-- You Scream, I Scream... [Alliance - Human]
				["questID"] = 29119,	-- You Scream, I Scream...
				["provider"] = { "n", 14305 },			-- Human Orphan
				["sourceQuests"] = {
					29093,	-- Cruisin' the Chasm
					54130,	-- Our New Friends
					29106,	-- The Biggest Diamond Ever!
				},
				["crs"] = {
					52420,	-- Bazzil Frostweaver
					52421,	-- Hans Coldhearth
				},
				["coords"] = {
					{ 49.01, 89.74, STORMWIND_CITY },	-- Hans Coldhearth
					{ 49.12, 90.07, STORMWIND_CITY },	-- Bazzil Frostweaver
				},
				["maps"] = { STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			},
			{	-- You Scream, I Scream... [Horde - Orc]
				["questID"] = 29191,	-- You Scream, I Scream...
				["u"] = 20,			-- Children's Week Filter
				["provider"] = { "n", 14444 },	-- Orcish Orphan
				["sourceQuests"] = {
					29146,	-- Ridin' the Rocketway
					29167,	-- The Banshee Queen
					29176,	-- The Fallen Chieftain
				},
				["crs"] = {
					52818,	-- Snixx Quickfreeze
				},
				["coord"] = { 36.28, 86.97, ORGRIMMAR },	-- Snixx Quickfreeze
				["maps"] = {
					ORGRIMMAR,
					86,	-- Orgrimmar: The Drag
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			},
		}),
		n(VENDORS, {
			n(52809, {	-- Blax Bottlerocket <Toys and Novelties>
				["coords"] = {
					{ 57.13, 51.12, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 57.24, 52.54, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 57.87, 54.21, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.08, 51.11, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.29, 62.41, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.34, 62.93, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.48, 55.55, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.67, 62.27, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.78, 53.61, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.79, 50.93, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.81, 57.61, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.85, 58.67, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 58.86, 60.16, ORGRIMMAR },	-- Blax Bottlerocket Path
					{ 59.32, 51.86, ORGRIMMAR },	-- Blax Bottlerocket Path
				},
				["maps"] = {
					ORGRIMMAR,
					86,	-- Ogrimmar: The Drag
				},
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(69895),	-- Green Balloon
					i(69896),	-- Yellow Balloon
				},
			}),
			n(52358, {	-- Craggle Wobbletop <Toys and Novelties>
				["coords"] = {
					{ 56.31, 68.45, STORMWIND_CITY },
					{ 56.67, 66.57, STORMWIND_CITY },
					{ 56.75, 70.04, STORMWIND_CITY },
					{ 57.19, 71.63, STORMWIND_CITY },
					{ 57.57, 65.42, STORMWIND_CITY },
					{ 57.63, 73.23, STORMWIND_CITY },
					{ 58.07, 74.83, STORMWIND_CITY },
					{ 58.44, 64.31, STORMWIND_CITY },
					{ 58.51, 76.42, STORMWIND_CITY },
					{ 59.12, 77.98, STORMWIND_CITY },
					{ 59.44, 63.31, STORMWIND_CITY },
					{ 60.44, 62.44, STORMWIND_CITY },
					{ 61.21, 61.78, STORMWIND_CITY },
					{ 62.31, 61.34, STORMWIND_CITY },
					{ 63.44, 61.05, STORMWIND_CITY },
					{ 64.62, 61.54, STORMWIND_CITY },
					{ 65.63, 62.99, STORMWIND_CITY },
					{ 66.61, 64.43, STORMWIND_CITY },
				},
				["maps"] = { STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(69895),	-- Green Balloon
					i(69896),	-- Yellow Balloon
				},
			}),
		}),
	},
})};