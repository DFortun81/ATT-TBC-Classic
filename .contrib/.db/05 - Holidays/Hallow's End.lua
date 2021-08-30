--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays = { applyholiday(HALLOWS_END, {
	-- #if ANYCLASSIC
	["npcID"] = -58,
	-- #else
	["holidayID"] = 235462,
	-- #endif
	["groups"] = {
		n(QUESTS, {
			q(8353, {	-- Chicken Clucking for a Mint
				["qg"] = 5111,	-- Innkeeper Firebrew <Innkeeper>
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(20490),	-- Ironforge Mint
				},
			}),
			q(8354, {	-- Chicken Clucking for a Mint
				["qg"] = 6741,	-- Innkeeper Norman <Innkeeper>
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(20491),	-- Undercity Mint
				},
			}),
			q(8357, {	-- Dancing for Marzipan
				["qg"] = 6735,	-- Innkeeper Saelienne <Innkeeper>
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(20496),	-- Darnassus Marzipan
				},
			}),
			q(8360, {	-- Dancing for Marzipan
				["qg"] = 6746,	-- Innkeeper Pala <Innkeeper>
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(20497),	-- Thunder Bluff Marzipan
				},
			}),
			q(8356, {	-- Flexing for Nougat
				["qg"] = 6740,	-- Innkeeper Allison <Innkeeper>
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(20492),	-- Stormwind Nougat
				},
			}),
			q(8359, {	-- Flexing for Nougat
				["qg"] = 6929,	-- Innkeeper Gryshka <Innkeeper>
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(20493),	-- Orgrimmar Nougat
				},
			}),
			q(8311, {	-- Hallow's End Treats for Jesper!
				["qg"] = 15310,	-- Jesper
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["cost"] = {
					{ "i", 20492, 1 },	-- Stormwind Nougat
					{ "i", 20494, 1 },	-- Gnomeregan Gumdrop
					{ "i", 20490, 1 },	-- Ironforge Mint
					{ "i", 20496, 1 },	-- Darnassus Marzipan
				},
				["lvl"] = 10,
				["groups"] = {
					i(20557),	-- Hallow's End Pumpkin Treat
				},
			}),
			q(8312, {	-- Hallow's End Treats for Spoops!
				["qg"] = 15309,	-- Spoops
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["cost"] = {
					{ "i", 20493, 1 },	-- Orgrimmar Nougat
					{ "i", 20495, 1 },	-- Darkspear Gumdrop
					{ "i", 20491, 1 },	-- Undercity Mint
					{ "i", 20497, 1 },	-- Thunder Bluff Marzipan
				},
				["lvl"] = 10,
				["groups"] = {
					i(20557),	-- Hallow's End Pumpkin Treat
				},
			}),
			q(8355, {	-- Incoming Gumdrop
				["qg"] = 6826,	-- Talvash del Kissel
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(20494),	-- Gnomeregan Gumdrop
				},
			}),
			q(8358, {	-- Incoming Gumdrop
				["qg"] = 11814,	-- Kali Remik
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(20495),	-- Darkspear Gumdrop
				},
			}),
			q(8322, {	-- Rotten Eggs
				["qg"] = 15197,	-- Darkcaller Yanka
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = 30,
			}),
			q(8409, {	-- Ruined Kegs
				["provider"] = { "o", 180570 },	-- Keg
				["sourceQuest"] = 8322,	-- Rotten Eggs
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = 25,
			}),
			q(1657, {	-- Stinking Up Southshore
				["qg"] = 15197,	-- Darkcaller Yanka
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = 25,
			}),
			q(1658, {	-- Crashing the Wickerman Festival
				["qg"] = 15199,	-- Sergeant Hartman
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 25,
			}),
			q(8373, {	-- The Power of Pine
				["qg"] = 15199,	-- Sergeant Hartman
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = 25,
			}),
		}),
		n(ZONEDROPS, {
			i(20400),	-- Pumpkin Bag
		}),
	},
})};