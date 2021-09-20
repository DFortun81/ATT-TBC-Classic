--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays = { applyholiday(HARVEST_FESTIVAL, {
	-- #if ANYCLASSIC
	["npcID"] = -57,
	-- #else
	["holidayID"] = 235442,
	-- #endif
	["groups"] = {
		n(-4, {	-- Free Festival Food
			["description"] = "This is some of the best food and water you can get for leveling! It does disappear 15 minutes after log out though, so pick this up at the start of your session and game until you run out.",
			["groups"] = {
				i(19995),	-- Harvest Boar
				i(19696),	-- Harvest Bread
				i(19996),	-- Harvest Fish
				i(19994),	-- Harvest Fruit
				i(19997),	-- Harvest Nectar
			},
		}),
		n(-297, {	-- Mailbox
			i(19697),	-- Bounty of the Harvest
		}),
		n(QUESTS, {
			q(8150, {	-- Honoring a Hero
				["qg"] = 15012,	-- Javnir Nashak
				["coord"] = { 46.0, 13.6, DUROTAR },
				["maps"] = { DUROTAR, ASHENVALE },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- Grom's Tribute
						["provider"] = { "i", 19851 },	-- Grom's Tribute
						["coord"] = { 83, 79, ASHENVALE },
					}),
					i(20010),	-- The Horde's Hellscream
				},
			}),
			q(8149, {	-- Honoring a Hero
				["qg"] = 15011,	-- Wagner Hammerstrike
				["coord"] = { 52.6, 36.0, DUN_MOROGH },
				["maps"] = { DUN_MOROGH, WESTERN_PLAGUELANDS },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- Uther's Tribute
						["provider"] = { "i", 19850 },	-- Uther's Tribute
						["coord"] = { 51.0, 82.0, WESTERN_PLAGUELANDS },
					}),
					i(20009),	-- For the Light!
				},
			}),
		}),
		n(VENDORS, {
			["crs"] = {
				15012,	-- Javnir Nashak
				15011,	-- Wagner Hammerstrike
			},
			["groups"] = {
				i(9312),	-- Blue Firework
				i(9313),	-- Green Firework
				i(9318),	-- Red Firework
				i(9314),	-- Red Streaks Firework
				i(9315),	-- Yellow Rose Firework
			},
		}),
	},
})};