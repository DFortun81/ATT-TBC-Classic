---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(UNGORO_CRATER, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(854, {	-- Explore Un'Goro Crater
					-- #if BEFORE WRATH
					["description"] = "Explore Un'Goro Crater, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};