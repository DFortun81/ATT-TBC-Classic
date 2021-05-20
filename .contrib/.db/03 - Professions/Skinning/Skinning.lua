profession(SKINNING, {
	n(QUESTS, {
		q(768, {	-- Gathering Leather
			["qg"] = 3050,	-- Veren Tallstrider
			["requireSkill"] = SKINNING,
			["coord"] = { 44.0, 44.6, THUNDER_BLUFF },
			["maps"] = { THUNDER_BLUFF },
			["cost"] = {
				{ "i", 2318, 12 },	-- Light Leather
			},
			["races"] = HORDE_ONLY,
			["lvl"] = 4,
			["groups"] = {
				i(5936),	-- Animal Skin Belt
				i(4962),	-- Double-layered Gloves
			},
		}),
	}),
});