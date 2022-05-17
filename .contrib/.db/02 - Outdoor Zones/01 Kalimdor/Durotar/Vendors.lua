---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DUROTAR, {
			n(VENDORS, {
				n(3881, {	-- Grimtak <Butcher>
					["coord"] = { 51.2, 42.6, DUROTAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5483),	-- Recipe: Scorpid Surprise
					},
				}),
				n(5942, {	-- Zansoa <Fishing Supplies>
					["coord"] = { 56.0, 73.4, DUROTAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6326),	-- Recipe: Slitherskin Mackerel
						i(6368),	-- Recipe: Rainbow Fin Albacore
					},
				}),
				n(7952, {	-- Zjolnir <Raptor Handler>
					["coord"] = { 55.2, 75.6, DUROTAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(8588),	-- Emerald Raptor (MOUNT!)
						i(18788),	-- Swift Blue Raptor (MOUNT!)
						i(18789),	-- Swift Olive Raptor (MOUNT!)
						i(18790),	-- Swift Orange Raptor (MOUNT!)
						i(8591),	-- Turquoise Raptor (MOUNT!)
						i(8592),	-- Violet Raptor (MOUNT!)
						i(13317, {	-- Ivory Raptor (MOUNT!)
							["timeline"] = { "removed 1.4.0" },
						}),
						i(8586, {	-- Mottled Red Raptor (MOUNT!)
							["timeline"] = { "removed 1.4.0" },
						}),
					},
				}),
			}),
		}),
	}),
};