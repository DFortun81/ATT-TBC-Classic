---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(STRANGLETHORN_VALE, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(940, {	-- The Green Hills of Stranglethorn
					["sourceQuests"] = {
						208,	-- Big Game Hunter
						338,	-- The Green Hills of Stranglethorn
					},
					-- #if BEFORE 3.0.1
					["description"] = "Complete all of Hemet Nesingwary quests in Stranglethorn Vale up to and including The Green Hills of Stranglethorn and Big Game Hunter.",
					["OnUpdate"] = [[_.CommonAchievementHandlers.ALL_SOURCE_QUESTS]],
					-- #endif
				})),
			}),
		}),
	}),
};