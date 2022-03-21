---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(TIRISFAL_GLADES, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(768, {	-- Explore Tirisfal Glades
					-- #if BEFORE WRATH
					["description"] = "Explore Tirisfal Glades, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};