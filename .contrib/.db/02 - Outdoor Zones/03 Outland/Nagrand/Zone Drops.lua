---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(NAGRAND, {
			n(ZONE_DROPS, {
				i(26045, {	-- Halaa Battle Token
					["description"] = "Kill members of the opposite faction that are on the plataeu of Halaa or on one of the neighboring assault platforms. Only players of honorable level can be used to farm these tokens.\n\nAs a Level 70, your target must be Level 65+",
				}),
				i(23608, {	-- Plans: Khorium Belt
					["cr"] = 18203,	-- Murkblood Raider
				}),
				i(23611, {	-- Plans: Ragesteel Gloves
					["cr"] = 17136,	-- Boulderfist Warrior
				}),
				i(22923, {	-- Recipe: Major Arcane Protection Potion
					["cr"] = 17150,	-- Vir'aani Arcanist
				}),
				i(25433, {	-- Obsidian Warbeads
					["crs"] = {
						17134,	-- Boulderfist Crusher
						18352,	-- Boulderfist Hunter
						17137,	-- Boulderfist Mage
						17135,	-- Boulderfist Mystic
						17136,	-- Boulderfist Warrior
						18423,	-- Cho'war the Pillager
						18351,	-- Lump
						18065,	-- Warmaul Brute
						17138,	-- Warmaul Reaver
						18064,	-- Warmaul Shaman
						18037,	-- Warmaul Warlock
						18413,	-- Zorbo the Advisor
					},
				}),
				i(26042, {	-- Oshu'gun Crystal Powder Sample
					["races"] = HORDE_ONLY,
				}),
				i(26043, {	-- Oshu'gun Crystal Powder Sample
					["races"] = ALLIANCE_ONLY,
				}),
			}),
		}),
	})),
};