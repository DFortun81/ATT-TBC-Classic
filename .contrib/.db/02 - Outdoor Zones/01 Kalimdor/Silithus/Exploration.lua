---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if ANYCLASSIC
_.Zones =
{
	m(KALIMDOR, {
		m(SILITHUS, {
			n(EXPLORATION, {
				applyclassicphase(TBC_PHASE_ONE, exploration(3427, {	-- Bronzebeard Encampment
					["maphash"] = "128:128:0:0",
					["coord"] = { 41.2, 89.2, SILITHUS },
				})),
				exploration(3425, "320:256:344:197"),	-- Cenarion Hold
				exploration(2742, "512:320:265:12"),	-- Hive'Ashi
				exploration(2744, "512:384:245:285"),	-- Hive'Regal
				exploration(2743, "384:512:97:144"),	-- Hive'Zora
				exploration(2738, "384:384:500:65"),	-- Southwind Village
				exploration(2740, "320:289:104:24"),	-- The Crystal Vale
				exploration(2737, "288:256:116:413"),	-- The Scarab Wall
				--[[
				exploration(2477, ""),	-- The Veiled Sea
				exploration(2739, ""),	-- Twilight Base Camp
				exploration(2741, ""),	-- The Scarab Dais
				exploration(3077, ""),	-- Valor's Rest
				exploration(3097, ""),	-- The Swarming Pillar
				exploration(3098, ""),	-- Twilight Post
				exploration(3099, ""),	-- Twilight Outpost
				exploration(3100, ""),	-- Ravaged Twilight Camp
				exploration(3257, ""),	-- Bones of Grakkarond
				exploration(3426, ""),	-- Staghelm Point
				exploration(3446, ""),	-- Twilight's Run
				exploration(3447, ""),	-- Ortell's Hideout
				exploration(3454, ""),	-- Ruins of Ahn'Qiraj
				]]--
			}),
		}),
	}),
};
-- #endif