---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(LOCH_MODAN, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(779, {	-- Explore Loch Modan
					-- #if BEFORE WRATH
					["description"] = "Explore Loch Modan, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};