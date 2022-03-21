---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(THE_HINTERLANDS, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(773, {	-- Explore The Hinterlands
					-- #if BEFORE WRATH
					["description"] = "Explore The Hinterlands, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};