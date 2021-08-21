---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(ZANGARMARSH, {
			prof(FISHING, {
				i(35313, {	-- Bloated Barbed Gill Trout
					i(34866),	-- Giant Freshwater Shrimp
				}),
				o(182952, {	-- Steam Pump Flotsam
					["model"] = 219411,
					["groups"] = {
						i(27481),	-- Heavy Supply Crate
						i(34469, {	-- Strange Engine Part
							["description"] = "\"Don't pay anybody in advance. And don't ride in anything with a Capissen 38 engine, they fall right out of the sky.\" - Kaylee Fry",
						}),
					},
				}),
			}),
		}),
	})),
};