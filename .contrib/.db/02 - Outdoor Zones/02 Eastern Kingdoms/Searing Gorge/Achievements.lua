---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(SEARING_GORGE, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(774, {	-- Explore Searing Gorge
					-- #if BEFORE WRATH
					["description"] = "Explore Searing Gorge, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};