---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(REDRIDGE_MOUNTAINS, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(780, {	-- Explore Redridge Mountains
					-- #if BEFORE WRATH
					["description"] = "Explore Redridge Mountains, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};