---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(WINTERSPRING, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(857, {	-- Explore Winterspring
					-- #if BEFORE WRATH
					["description"] = "Explore Winterspring, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
				removeclassicphase(ach(944, {	-- They Love Me In That Tunnel
					-- #if BEFORE 3.0.1
					["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnTooltip]],
					["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REP_OnUpdate(t, 576); end]],
					["description"] = "Raise your reputation with Timbermaw Hold to Exalted.",
					-- #endif
					["maps"] = { FELWOOD },
				})),
			}),
		}),
	}),
};