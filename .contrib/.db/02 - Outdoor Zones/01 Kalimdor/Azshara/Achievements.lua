---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(AZSHARA, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(852, {	-- Explore Azshara
					-- #if BEFORE WRATH
					["description"] = "Explore Azshara, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};