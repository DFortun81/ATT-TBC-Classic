---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(HILLSBRAD_FOOTHILLS, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(772, {	-- Explore Hillsbrad Foothills
					-- #if BEFORE WRATH
					["description"] = "Explore Hillsbrad Foothills, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};