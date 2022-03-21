---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(ARATHI_HIGHLANDS, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(761, {	-- Explore Arathi Highlands
					-- #if BEFORE WRATH
					["description"] = "Explore Arathi Highlands, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};