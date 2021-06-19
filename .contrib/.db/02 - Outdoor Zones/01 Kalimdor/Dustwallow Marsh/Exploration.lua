---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if ANYCLASSIC
_.Zones =
{
	m(KALIMDOR, {
		m(DUSTWALLOW_MARSH, {
			n(EXPLORATION, {
				exploration(2079, "200:195:660:21"),	-- Alcaz Island
				applyclassicphase(TBC_PHASE_ONE, exploration(512, {		-- Blackhoof Village
					["maphash"] = "128:128:0:0",
					["coord"] = { 41.8, 13.7, DUSTWALLOW_MARSH },
				})),
				applyclassicphase(TBC_PHASE_ONE, exploration(498, {		-- Bloodfen Burrow
					["maphash"] = "0:0:0:0",
					["coord"] = { 32.6, 65.9, DUSTWALLOW_MARSH },
				})),
				exploration(496, "280:270:230:0"),		-- Brackenwall Village
				exploration(509, "255:250:257:313"),	-- The Den of Flame
				exploration(2302, "400:255:239:189"),	-- The Quagmire
				exploration(513, "230:205:534:224"),	-- Theramore Isle
				exploration(502, "250:315:422:0"),		-- Witch Hill
				exploration(511, "285:240:367:381"),	-- Wyrmbog
				--[[
				exploration(, ""),	-- 
				exploration(, ""),	-- 
				exploration(, ""),	-- 
				exploration(, ""),	-- 
				exploration(, ""),	-- 
				exploration(, ""),	-- 
				exploration(, ""),	-- 
				]]--
				--[[
				[403] = 1,                               -- Shady Rest Inn
				[497] = 3,                               -- Swamplight Manor
				[499] = 5,                               -- Darkmist Cavern
				[500] = 6,                               -- Moggle Point
				[501] = 7,                               -- Beezil's Wreck
				[503] = 9,                               -- Sentry Point
				[504] = 10,                              -- North Point Tower
				[505] = 11,                              -- West Point Tower
				[506] = 12,                              -- Lost Point
				[507] = 13,                              -- Bluefen
				[508] = 14,                              -- Stonemaul Ruins
				[510] = 16,                              -- The Dragonmurk
				[514] = 20,                              -- Foothold Citadel
				[515] = 21,                              -- Ironclad Prison
				[516] = 22,                              -- Dustwallow Bay
				[517] = 23,                              -- Tidefury Cove
				[518] = 24,                              -- Dreadmurk Shore
				[2158] = 26,                             -- Emberstrife's Den
				[2318] = 28,                             -- The Great Sea
				]]--
			}),
		}),
	}),
};
-- #endif