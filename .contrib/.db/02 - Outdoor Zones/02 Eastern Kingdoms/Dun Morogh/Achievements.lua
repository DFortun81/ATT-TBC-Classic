---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(DUN_MOROGH, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(627, {	-- Explore Dun Morogh
					-- #if BEFORE WRATH
					["description"] = "Explore Dun Morogh, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};