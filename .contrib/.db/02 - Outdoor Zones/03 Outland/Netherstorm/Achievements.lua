---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(NETHERSTORM, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(843, {	-- Explore Netherstorm
					-- #if BEFORE WRATH
					["description"] = "Explore Netherstorm, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
				removeclassicphase(ach(1194, {	-- Into the Nether
					-- #if ANYCLASSIC
					-- #if AFTER CATA
					["sourceQuests"] = {
						-- Socrethar
						10409,	-- Deathblow to the Legion (Aldor)
						10507,	-- Turning Point (Scryers)
						
						-- The Violet Tower
						10240,	-- Building a Perimeter
						
						-- Building the X-52 Nether-Rocket
						10221,	-- Dr. Boom!
							
						-- Protect Area 52!
						10249,	-- Back to the Chief!
						
						-- The Consortium
						10276,	-- Full Triangle
						10408,	-- Nexus-King Salhadaar
						10440,	-- Success!
						10274,	-- Securing the Celestial Ridge
						
						-- Destroying the All-Devouring
						10439,	-- Dimensius the All-Devouring
					},
					-- #elseif BEFORE WRATH
					["description"] = "Complete 120 quests in Nagrand.",
					["OnClick"] = [[_.CommonAchievementHandlers.LOREMASTER_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.LOREMASTER_OnTooltip]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.LOREMASTER_OnUpdate]],
					["rank"] = 120,
					-- #endif
					-- #else
					-- TODO: possibly more sourceQuests needed for some of these
					crit(1, {		-- Socrethar
						["sourceQuests"] = {
							10409,	-- Deathblow to the Legion (Aldor)
							10507,	-- Turning Point (Scryers)
						},
					}),
					crit(2, {		-- The Violet Tower
						["sourceQuests"] = {
							10240,	-- Building a Perimeter
						},
					}),
					crit(3, {		-- Building the X-52 Nether-Rocket
						["sourceQuests"] = {
							10221,	-- Dr. Boom!
						},
					}),
					crit(4, {		-- Protect Area 52!
						["sourceQuests"] = {
							10249,	-- Back to the Chief!
						},
					}),
					crit(5, {		-- The Consortium
						["sourceQuests"] = {
							10276,	-- Full Triangle
							10408,	-- Nexus-King Salhadaar
							10440,	-- Success!
							10274,	-- Securing the Celestial Ridge
						},
					}),
					crit(6, {		-- Destroying the All-Devouring
						["sourceQuests"] = {
							10439,	-- Dimensius the All-Devouring
						},
					}),
					-- #endif
				})),
			}),
		}),
	})),
};