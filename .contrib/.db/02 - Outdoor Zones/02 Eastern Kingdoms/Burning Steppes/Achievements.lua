---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(BURNING_STEPPES, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(775, {	-- Explore Burning Steppes
					-- #if BEFORE WRATH
					["description"] = "Explore Burning Steppes, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};