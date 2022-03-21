---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, applyclassicphase(TBC_PHASE_FIVE, {
		m(ISLE_OF_QUELDANAS, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(868, {	-- Explore Isle of Quel'Danas
					-- #if BEFORE WRATH
					["description"] = "Explore Isle of Quel'Danas, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
				removeclassicphase(ach(897, {	-- You're So Offensive
					-- #if BEFORE 3.0.1
					["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnTooltip]],
					["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REP_OnUpdate(t, 1077); end]],
					["description"] = "Raise your reputation with the Shattered Sun Offensive to Exalted.",
					-- #endif
				})),
			}),
		}),
	})),
};