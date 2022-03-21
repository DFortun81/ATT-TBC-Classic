---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(DEADWIND_PASS, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(777, {	-- Explore Deadwind Pass
					-- #if BEFORE WRATH
					["description"] = "Explore Deadwind Pass, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};