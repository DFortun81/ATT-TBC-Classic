---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if ANYCLASSIC
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(NETHERSTORM, {
			n(EXPLORATION, {
				exploration(3850, "256:256:411:20"),        -- Netherstone [This one bugs out and needed to be programmed this way]
			}),
		}),
	})),
};
-- #endif