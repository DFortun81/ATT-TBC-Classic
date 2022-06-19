profession(ALCHEMY, {
	n(QUESTS, {
		q(1581, {	-- Elixirs for the Bladeleafs
			["qg"] = 2083,	-- Syral Bladeleaf
			["requireSkill"] = ALCHEMY,
			["coord"] = { 55.8, 50.4, TELDRASSIL },
			["races"] = ALLIANCE_ONLY,
			["requireSkill"] = ALCHEMY,
			["cost"] = {
				{ "i", 2454, 4 },	-- Elixir of Lion's Strength
				{ "i", 5997, 4 },	-- Elixir of Minor Defense
			},
			["lvl"] = 4,
		}),
		applyclassicphase(TBC_PHASE_ONE, q(10906, {	-- Master of Elixirs (1/2)
			["qgs"] = {
				16588,	-- Apothecary Antonivich <Master Alchemy Trainer>
				18802,	-- Alchemist Gribble <Alchemy Trainer>
			},
			["coords"] = {
				{ 52.2, 36.4, HELLFIRE_PENINSULA },	-- Apothecary Antonivich <Master Alchemy Trainer>
				{ 53.8, 65.8, HELLFIRE_PENINSULA },	-- Alchemist Gribble <Alchemy Trainer>
			},
			["timeline"] = { "added 2.0.3", "removed 4.0.3" },
			["requireSkill"] = ALCHEMY,
			["altQuests"] = {
				--10906,	-- Master of Elixirs (1/2)
				10905,	-- Master of Potions (1/2)
				10907,	-- Master of Transmutation (1/2)
			},
			["isBreadcrumb"] = true,
			["lvl"] = 68,
		})),
		applyclassicphase(TBC_PHASE_ONE, q(10902, {	-- Master of Elixirs (2/2)
			["qg"] = 19052,	-- Lorokeem <Master Alchemy Trainer>
			["sourceQuest"] = 10906,	-- Master of Elixirs (1/2)
			["description"] = "Upon finishing this quest, you will become a Elixir Master and be locked out of becoming a Transmutation or Potion Master.",
			["coord"] = { 45.8, 20.4, SHATTRATH_CITY },
			["timeline"] = { "added 2.0.3", "removed 4.0.3" },
			["maps"] = { CAVERNS_OF_TIME_BLACK_MORASS },
			["requireSkill"] = ALCHEMY,
			["altQuests"] = {
				10902,	-- Master of Elixirs (2/2)
				--10897,	-- Master of Potions (2/2)
				10899,	-- Master of Transmutation (2/2)
			},
			["cost"] = {
				{ "i", 31753, 10 },	-- Essence of Infinity
				{ "i", 22834, 5 },	-- Elixir of Major Defense
				{ "i", 28104, 5 },	-- Elixir of Mastery
				{ "i", 22831, 5 },	-- Elixir of Major Agility
			},
			["lvl"] = 68,
		})),
		applyclassicphase(TBC_PHASE_ONE, q(10905, {	-- Master of Potions (1/2)
			["qgs"] = {
				16588,	-- Apothecary Antonivich <Master Alchemy Trainer>
				18802,	-- Alchemist Gribble <Alchemy Trainer>
			},
			["coords"] = {
				{ 52.2, 36.4, HELLFIRE_PENINSULA },	-- Apothecary Antonivich <Master Alchemy Trainer>
				{ 53.8, 65.8, HELLFIRE_PENINSULA },	-- Alchemist Gribble <Alchemy Trainer>
			},
			["timeline"] = { "added 2.0.3", "removed 4.0.3" },
			["requireSkill"] = ALCHEMY,
			["altQuests"] = {
				10906,	-- Master of Elixirs (1/2)
				--10905,	-- Master of Potions (1/2)
				10907,	-- Master of Transmutation (1/2)
			},
			["isBreadcrumb"] = true,
			["lvl"] = 68,
		})),
		applyclassicphase(TBC_PHASE_ONE, q(10897, {	-- Master of Potions (2/2)
			["qg"] = 17909,	-- Lauranna Thar'well <Expedition Cataloguer>
			["sourceQuest"] = 10905,	-- Master of Potions (1/2)
			["description"] = "Upon finishing this quest, you will become a Potion Master and be locked out of becoming a Transmutation or Elixir Master.",
			["coord"] = { 44.1, 36.6, ZANGARMARSH },
			["timeline"] = { "added 2.0.3", "removed 4.0.3" },
			["maps"] = { TEMPEST_KEEP_BOTANICA },
			["requireSkill"] = ALCHEMY,
			["altQuests"] = {
				10902,	-- Master of Elixirs (2/2)
				--10897,	-- Master of Potions (2/2)
				10899,	-- Master of Transmutation (2/2)
			},
			["cost"] = {
				{ "i", 31744, 1 },	-- Botanist's Field Guide
				{ "i", 22829, 5 },	-- Super Healing Potion
				{ "i", 22832, 5 },	-- Super Mana Potion
				{ "i", 22836, 5 },	-- Major Dreamless Sleep Potion
			},
			["lvl"] = 68,
		})),
		applyclassicphase(TBC_PHASE_ONE, q(10907, {	-- Master of Transmutation (1/2)
			["qgs"] = {
				16588,	-- Apothecary Antonivich <Master Alchemy Trainer>
				18802,	-- Alchemist Gribble <Alchemy Trainer>
			},
			["coords"] = {
				{ 52.2, 36.4, HELLFIRE_PENINSULA },	-- Apothecary Antonivich <Master Alchemy Trainer>
				{ 53.8, 65.8, HELLFIRE_PENINSULA },	-- Alchemist Gribble <Alchemy Trainer>
			},
			["timeline"] = { "added 2.0.3", "removed 4.0.3" },
			["requireSkill"] = ALCHEMY,
			["altQuests"] = {
				10906,	-- Master of Elixirs (1/2)
				10905,	-- Master of Potions (1/2)
				--10907,	-- Master of Transmutation (1/2)
			},
			["isBreadcrumb"] = true,
			["lvl"] = 68,
		})),
		applyclassicphase(TBC_PHASE_ONE, q(10899, {	-- Master of Transmutation (2/2)
			["qg"] = 22427,	-- Zarevhi
			["sourceQuest"] = 10907,	-- Master of Transmutation (1/2)
			["description"] = "Upon finishing this quest, you will become a Transmutation Master and be locked out of becoming a Potion or Elixir Master.",
			["coord"] = { 44.1, 36.6, NETHERSTORM },
			["timeline"] = { "added 2.0.3", "removed 4.0.3" },
			["requireSkill"] = ALCHEMY,
			["altQuests"] = {
				10902,	-- Master of Elixirs (2/2)
				10897,	-- Master of Potions (2/2)
				10899,	-- Master of Transmutation (2/2)
			},
			["cost"] = {
				{ "i", 23571, 4 },	-- Primal Might
			},
			["lvl"] = 68,
		})),
	}),
});