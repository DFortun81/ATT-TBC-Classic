---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(ELWYNN_FOREST, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(776, {	-- Explore Elwynn Forest
					-- #if BEFORE WRATH
					["description"] = "Explore Elwynn Forest, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};