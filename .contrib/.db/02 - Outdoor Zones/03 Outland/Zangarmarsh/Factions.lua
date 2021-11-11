---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(ZANGARMARSH, {
			n(FACTIONS, {
				faction(942, {	-- Cenarion Expedition
					["maps"] = { COILFANG_RESERVOIR_SLAVE_PENS, COILFANG_RESERVOIR_STEAMVAULT, COILFANG_RESERVOIR_UNDERBOG },
				}),
				faction(970, {	-- Sporeggar
					["maps"] = { COILFANG_RESERVOIR_UNDERBOG },
				}),
			}),
		}),
	})),
};