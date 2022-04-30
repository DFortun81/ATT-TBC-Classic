---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(THOUSAND_NEEDLES, {
			n(ZONE_DROPS, {
				i(1493, {	-- Heavy Marauder Scimitar
					["cr"] = 4099,	-- Galak Marauder
				}),
				i(5809, {	-- Highperch Venom Sac
					["crs"] = {
						5934,	-- Heartrazor
						4109,	-- Highperch Consort
						4110,	-- Highperch Patriarch
						4107,	-- Highperch Wyvern
					},
				}),
				-- #if AFTER TBC
				i(5773, {	-- Pattern: Robes of Arcana
					["timeline"] = { "removed 4.0.3" },
					["cr"] = 10760,	-- Grimtotem Geomancer
				}),
				-- #endif
			}),
		}),
	}),
};