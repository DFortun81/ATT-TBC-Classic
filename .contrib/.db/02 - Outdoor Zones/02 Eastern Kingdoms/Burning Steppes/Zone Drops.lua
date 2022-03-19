---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(BURNING_STEPPES, {
			n(ZONE_DROPS, {
				i(11467, {	-- Blackrock Medallion
					["questID"] = 4283,	-- FIFTY! YEP!
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						7029,	-- Blackrock Battlemaster
						7027,	-- Blackrock Slayer
						7025,	-- Blackrock Soldier
						7026,	-- Blackrock Sorcerer
						7028,	-- Blackrock Warlock
						7055,	-- Blackrock Worg
						10077,	-- Deathmaw
						9690,	-- Ember Worg
						9697,	-- Giant Ember Worg
						9694,	-- Slavering Ember Worg
					},
				}),
				i(11266, {	-- Fractured Elemental Shard
					["questID"] = 4061,	-- The Rise of the Machines
					["races"] = HORDE_ONLY,
					["crs"] = {
						7032,	-- Greater Obsidian Elemental
						8981,	-- Malfunctioning Reaver
						7039,	-- War Reaver
					},
				}),
				i(14482, {	-- Pattern: Cindercloth Cloak
					["cr"] = 7037,	-- Thaurissan Firewalker
				}),
				i(14490, {	-- Pattern: Cindercloth Pants
					["cr"] = 7037,	-- Thaurissan Firewalker
				}),
				i(15738, {	-- Pattern: Heavy Scorpid Gauntlets
					["cr"] = 7025,	-- Blackrock Soldier
				}),
				i(15748, {	-- Pattern: Heavy Scorpid Leggings
					["cr"] = 7027,	-- Blackrock Slayer
				}),
				-- #if BEFORE 5.0.4
				i(15774, {	-- Pattern: Heavy Scorpid Shoulders
					["timeline"] = { "removed 4.0.3", "added 5.0.4", "removed 6.0.2" },
					-- #if BEFORE 4.0.3
					["coord"] = { 41.8, 37.0, BURNING_STEPPES },
					["cr"] = 7029,	-- Blackrock Battlemaster
					-- #endif
				}),
				-- #endif
				i(15732, {	-- Pattern: Volcanic Leggings
					["cr"] = 7035,	-- Firegut Brute
				}),
				i(13476, {	-- Recipe: Mighty Rage Potion
					["cr"] = 7027,	-- Blackrock Slayer
				}),
				applyclassicphase(PHASE_FIVE, i(22338, {	-- Volcanic Ash
					["cr"] = 10078,	-- Terrorspark
				})),
			}),
		}),
	}),
};