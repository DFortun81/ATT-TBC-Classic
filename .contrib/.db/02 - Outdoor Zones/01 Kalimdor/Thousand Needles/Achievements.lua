---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(THOUSAND_NEEDLES, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(846, {	-- Explore Thousand Needles
					-- #if BEFORE WRATH
					["description"] = "Explore Thousand Needles, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};