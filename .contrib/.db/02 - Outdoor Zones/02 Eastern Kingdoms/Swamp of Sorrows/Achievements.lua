---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(SWAMP_OF_SORROWS, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(782, {	-- Explore Swamp of Sorrows
					-- #if BEFORE WRATH
					["description"] = "Explore Swamp of Sorrows, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};