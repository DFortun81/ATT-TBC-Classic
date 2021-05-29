---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(HELLFIRE_PENINSULA, {
			n(ZONEDROPS, {
				i(28552, {	-- A Mysterious Tome
					["description"] = "Must have started or completed |cFFFFD700Make Them Listen|r for this item to become available.",
					["cr"] = 16906,	-- Unyielding Knight
					["races"] = HORDE_ONLY,
				}),
				i(23580, {	-- Avruu's Orb
					["cr"] = 17084,	-- Avruu
					["coords"] = {
						{ 25.57, 76.45, HELLFIRE_PENINSULA },
						{ 25.57, 76.33, HELLFIRE_PENINSULA },
						{ 25.53, 75.92, HELLFIRE_PENINSULA },
						{ 25.64, 75.25, HELLFIRE_PENINSULA },
					},
				}),
				i(30327, {	-- Bonechewer Blood
					["crs"] = {
						19701,	-- Bonechewer Evoker
						16876,	-- Bonechewer Mutant
						16925,	-- Bonechewer Raider
						18952,	-- Bonechewer Scavenger
					},
					["races"] = HORDE_ONLY,
				}),
				i(29588, {	-- Burning Legion Missive [Alliance]
					["cr"] = 19298,	-- Warbringer Arix'Amal
					["coord"] = { 53.0, 26.7, HELLFIRE_PENINSULA },
					["races"] = ALLIANCE_ONLY,
				}),
				i(29590, {	-- Burning Legion Missive [Horde]
					["cr"] = 20798,	-- Razorsaw
					["races"] = HORDE_ONLY,
				}),
				i(29476, {	-- Crimson Crystal Shard
					["cr"] = 19188,	-- Raging Colossus
				}),
				i(30157, {	-- Cursed Talisman
					["crs"] = {
						16873,	-- Bleeding Hollow Dark Shaman
						16871,	-- Bleeding Hollow Grunt
						19422,	-- Bleeding Hollow Necrolyte
						16907,	-- Bleeding Hollow Peon
						19424,	-- Bleeding Hollow Tormentor
						19457,	-- Grillok "Darkeye"
						19442,	-- Worg Master Kruush
					},
					["races"] = ALLIANCE_ONLY,
				}),
				i(23338, {	-- Eroded Leather Case
					["crs"] = {
						16857,	-- Marauding Crust Burster
						16968,	-- Tunneler
					},
				}),
				i(23336, {	-- Helboar Blood Sample
					["crs"] = {
						16992,	-- Dreadtusk
						16880,	-- Hulking Helboar
					},
				}),
			}),
		}),
	})),
};
