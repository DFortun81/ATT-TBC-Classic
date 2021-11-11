---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(HELLFIRE_PENINSULA, {
			n(FACTIONS, {
				faction(946, {	-- Honor Hold
					["maps"] = { HELLFIRE_CITADEL_BLOOD_FURNACE, HELLFIRE_CITADEL_RAMPARTS, HELLFIRE_CITADEL_SHATTERED_HALLS },
					["races"] = ALLIANCE_ONLY,
				}),
				faction(947, {	-- Thrallmar
					["maps"] = { HELLFIRE_CITADEL_BLOOD_FURNACE, HELLFIRE_CITADEL_RAMPARTS, HELLFIRE_CITADEL_SHATTERED_HALLS },
					["races"] = HORDE_ONLY,
				}),
			}),
		}),
	})),
};