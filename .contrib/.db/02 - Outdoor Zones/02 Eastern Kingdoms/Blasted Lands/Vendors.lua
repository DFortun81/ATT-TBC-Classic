---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(BLASTED_LANDS, {
			n(VENDORS, {
				-- #if AFTER TBC
				n(3546, {	-- Bernie Heisten <Food & Drink>
					["coord"] = { 63.5, 17.0, BLASTED_LANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, i(23848, {	-- Nethergarde Bitter
							["description"] = "Buy at least one of these before you enter the Dark Portal!",
						})),
					},
				}),
				-- #endif
				n(8178, {	-- Nina Lightbrew <Alchemy Supplies>
					["coord"] = { 66.8, 18.6, BLASTED_LANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(9300),	-- Recipe: Elixir of Demonslaying
					},
				}),
			}),
		}),
	}),
};