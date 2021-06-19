---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones = 
{
	m(KALIMDOR, {
		m(TANARIS, {
			m(CAVERNS_OF_TIME, {
				n(FACTIONS, applyclassicphase(TBC_PHASE_ONE, {
					faction(989, {	-- Keepers of Time
						["maps"] = { CAVERNS_OF_TIME_BLACK_MORASS, CAVERNS_OF_TIME_OLD_HILLSBRAD_FOOTHILLS },
					}),
				})),
			}),
		}),
	}),
};