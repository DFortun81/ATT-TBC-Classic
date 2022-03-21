---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(ALTERAC_MOUNTAINS, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(760, {	-- Explore Alterac Mountains
					-- #if BEFORE WRATH
					["description"] = "Explore Alterac Mountains, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
		}),
	}),
};