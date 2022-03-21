---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(DUSKWOOD, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(778, {	-- Explore Duskwood
					-- #if BEFORE WRATH
					["description"] = "Explore Duskwood, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};