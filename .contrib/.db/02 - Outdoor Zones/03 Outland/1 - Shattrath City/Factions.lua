---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(SHATTRATH_CITY, {
			n(FACTIONS, {
				faction(1011, {	-- Lower City
					["maps"] = { AUCHINDOUN_AUCHENAI_CRYPTS, AUCHINDOUN_SETHEKK_HALLS, AUCHINDOUN_SHADOW_LABYRINTH },
				}),
				faction(932, {	-- The Aldor
					["maxReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
				}),
				faction(934, {	-- The Scryers
					["maxReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
				}),
				faction(935, {	-- The Sha'tar
					["maps"] = { TEMPEST_KEEP_ARCATRAZ, TEMPEST_KEEP_BOTANICA, TEMPEST_KEEP_MECHANAR },
				}),
			}),
		}),
	})),
};