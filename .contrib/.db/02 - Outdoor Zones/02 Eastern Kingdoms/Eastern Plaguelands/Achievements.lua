---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(EASTERN_PLAGUELANDS, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(771, {	-- Explore Eastern Plaguelands
					-- #if BEFORE WRATH
					["description"] = "Explore Eastern Plaguelands, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
				removeclassicphase(ach(946, {	-- The Argent Dawn
					-- #if BEFORE 3.0.1
					["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnTooltip]],
					["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REP_OnUpdate(t, 529); end]],
					["description"] = "Raise your reputation with the Argent Dawn to Exalted.",
					-- #endif
					["maps"] = { WESTERN_PLAGUELANDS },
				})),
			}),
		}),
	}),
};