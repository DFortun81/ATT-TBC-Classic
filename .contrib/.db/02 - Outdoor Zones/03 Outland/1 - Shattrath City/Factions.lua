---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(SHATTRATH_CITY, {
			n(FACTIONS, {
				faction(1011),	-- Lower City
				faction(932, {	-- The Aldor
					["maxReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
				}),
				faction(934, {	-- The Scryers
					["maxReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
				}),
				faction(935),	-- The Sha'tar
			}),
		}),
	})),
};