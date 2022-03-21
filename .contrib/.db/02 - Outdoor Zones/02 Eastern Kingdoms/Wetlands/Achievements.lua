---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(WETLANDS, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(841, {	-- Explore Wetlands
					-- #if BEFORE WRATH
					["description"] = "Explore Wetlands, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};