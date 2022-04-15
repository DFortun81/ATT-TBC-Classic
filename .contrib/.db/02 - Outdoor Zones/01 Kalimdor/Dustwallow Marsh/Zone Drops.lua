---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DUSTWALLOW_MARSH, {
			n(ZONE_DROPS, {
				i(5959, {	-- Acidic Venom Sac
					["races"] = HORDE_ONLY,
					["crs"] = {
						4412,	-- Darkfang Creeper
						4411,	-- Darkfang Lurker
						4413,	-- Darkfang Spider
						4414,	-- Darkfang Venomspitter
						4415,	-- Giant Darkfang Spider
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, i(33085, {	-- Bloodfen Feather
					["crs"] = {
						4356,	-- Bloodfen Razormaw
						4357,	-- Bloodfen Lashtail
						23873,	-- Goreclaw the Ravenous
					},
				})),
				applyclassicphase(PHASE_FIVE, i(22094, {	-- Bloodkelp
					["crs"] = {
						4368,	-- Strashaz Myrmidon
						4366,	-- Strashaz Serpent Guard
						4371,	-- Strashaz Siren
						4370,	-- Strashaz Sorceress
						4364,	-- Strashaz Warrior
						16072,	-- Tidelord Rrurgaz
					},
				})),
				i(10822, {	-- Dark Whelpling
					["cr"] = 4324,	-- Searing Whelp
				}),
				i(5883, {	-- Forked Mudrock Tongue
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4399,	-- Mudrock Borer
						4398,	-- Mudrock Burrower
						4400,	-- Mudrock Snapjaw
						4397,	-- Mudrock Spikeshell
						4396,	-- Mudrock Tortoise
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, i(33051, {	-- Grimtotem Battle Plan
					["cost"] = {{ "i", 33050, 4 }},	-- Grimtotem Note
				})),
				applyclassicphase(TBC_PHASE_ONE, i(33061, {	-- Grimtotem Key
					["crs"] = {
						23592,	-- Grimtotem Breaker
						23714,	-- Grimtotem Elder
						23593,	-- Grimtotem Spirit-Shifter
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, i(33050, {	-- Grimtotem Note
					["cr"] = 23714,	-- Grimtotem Elder
				})),
				i(5942, {	-- Jeweled Pendant
					["races"] = HORDE_ONLY,
					["crs"] = {
						14236,	-- Lord Angler
						4401,	-- Muckshell Clacker
						4403,	-- Muckshell Pincer
						4405,	-- Muckshell Razorclaw
						4404,	-- Muckshell Scrabbler
						4402,	-- Muckshell Snapclaw
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, i(33202, {	-- Marsh Frog Leg
					["cr"] = 23979,	-- Giant Marsh Frog
				})),
				applyclassicphase(TBC_PHASE_ONE, i(33103, {	-- Marsh Venom
					["crs"] = {
						4412,	-- Darkfang Creeper
						4348,	-- Noxious Shredder
					},
				})),
				i(5847, {	-- Mirefin Head
					["crs"] = {
						14230,	-- Burgle Eye
						4362,	-- Mirefin Coastrunner
						4361,	-- Mirefin Muckdweller
						4359,	-- Mirefin Murloc
						4363,	-- Mirefin Oracle
						4358,	-- Mirefin Puddlejumper
						4360,	-- Mirefin Warrior
					},
				}),
				i(5775, {	-- Pattern: Black Silk Pack
					["cr"] = 4834,	-- Theramore Infiltrator
				}),
				i(12718, {	-- Plans: Runic Breastplate
					["crs"] = {
						4368,	-- Strashaz Myrmidon
						16072,	-- Tidelord Rrurgaz
					},
				}),
				i(12714, {	-- Plans: Runic Plate Helm
					["cr"] = 4364,	-- Strashaz Warrior
				}),
				i(12706, {	-- Plans: Runic Plate Shoulders
					["cr"] = 4366,	-- Strashaz Serpent Guard
				}),
				i(20766, {	-- Slimy Bag
					["crs"] = {
						4393,	-- Acidic Swamp Ooze
						4392,	-- Corrosive Swamp Ooze
						4391,	-- Swamp Ooze
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, i(33114, {	-- Sealed Letter
					["cr"] = 23881,	-- Apothecary Cylla
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(TBC_PHASE_ONE, i(33115, {	-- Sealed Letter
					["cr"] = 23881,	-- Apothecary Cylla
					["races"] = HORDE_ONLY,
				})),
				i(5841, {	-- Searing Heart
					["races"] = HORDE_ONLY,
					["crs"] = {
						4323,	-- Searing Hatchling
						4324,	-- Searing Whelp
					},
				}),
				i(5840, {	-- Searing Tongue
					["races"] = HORDE_ONLY,
					["crs"] = {
						4323,	-- Searing Hatchling
						4324,	-- Searing Whelp
					},
				}),
				applyclassicphase(TBC_PHASE_ONE, i(33126, {	-- Thresher Oil
					["cr"] = 4388,	-- Young Murk Thresher
					["races"] = ALLIANCE_ONLY,
				})),
				i(5884, {	-- Unpopped Darkmist Eye
					["crs"] = {
						4377,	-- Darkmist Lurker
						4378,	-- Darkmist Recluse
						4379,	-- Darkmist Silkspinner
						4376,	-- Darkmist Spider
						4380,	-- Darkmist Widow
					},
				}),
			}),
		}),
	}),
};