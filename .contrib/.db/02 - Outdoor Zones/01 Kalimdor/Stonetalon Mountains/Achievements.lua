---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(STONETALON_MOUNTAINS, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(847, {	-- Explore Stonetalon Mountains
					-- #if BEFORE WRATH
					["description"] = "Explore Stonetalon Mountains, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};