---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(SILVERPINE_FOREST, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(769, {	-- Explore Silverpine Forest
					-- #if BEFORE WRATH
					["description"] = "Explore Silverpine Forest, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};