-- Reassign the pointer to the recipe function to automatically mark the removal date.
local oldRecipe = recipe;
recipe = function(recipeID)
	local o = oldRecipe(recipeID);
	o.timeline = { "removed 8.0.1.10000" };
	return o;
end

profession(FIRST_AID, {
	tier(1, {	-- Classic
		recipe(3275),	-- Linen Bandage
		recipe(3276),	-- Heavy Linen Bandage
		recipe(7934),	-- Anti-Venom
		recipe(3277),	-- Wool Bandage
		recipe(3278),	-- Heavy Wool Bandage
		recipe(7935),	-- Strong Anti-Venom
		recipe(7928),	-- Silk Bandage
		recipe(7929),	-- Heavy Silk Bandage
		recipe(10840),	-- Mageweave Bandage
		recipe(10841),	-- Heavy Mageweave Bandage
		recipe(18629),	-- Runecloth Bandage
		recipe(18630),	-- Heavy Runecloth Bandage
		recipe(23787),	-- Powerful Anti-Venom
	}),
	applyclassicphase(TBC_PHASE_ONE, tier(2, {	-- Burning Crusade
		recipe(27032),	-- Nethercloth Bandage
		recipe(27033),	-- Heavy Nethercloth Bandage
	})),
	applyclassicphase(WRATH_PHASE_ONE, tier(3, {	-- Wrath of the Lich King
		recipe(45545),	-- Frostweave Bandage
		recipe(45546),	-- Heavy Frostweave Bandage
	})),
	applyclassicphase(CATA_PHASE_ONE, tier(4, {	-- Cataclysm
		recipe(74556),	-- Embersilk Bandage
		recipe(74557),	-- Heavy Embersilk Bandage
		recipe(74558),	-- Field Bandage: Dense Embersilk
		recipe(88893),	-- Dense Embersilk Bandage
	})),
	applyclassicphase(MOP_PHASE_ONE, tier(5, {	-- Mists of Pandaria
		recipe(102697),	-- Windwool Bandage
		recipe(102698),	-- Heavy Windwool Bandage
	})),
	applyclassicphase(WOD_PHASE_ONE, tier(6, {	-- Warlords of Draenor
		recipe(172539),	-- Antiseptic Bandage
		recipe(172541),	-- Blackwater Anti-Venom
		recipe(172542),	-- Fire Ammonite Oil
		recipe(172540),	-- Healing Tonic
	})),
	applyclassicphase(LEGION_PHASE_ONE, tier(7, {	-- Legion
		recipe(202853),	-- Silkweave Bandage
		recipe(202854),	-- Silkweave Splint
		recipe(230047),	-- Feathered Luffa
		recipe(211926),	-- Set Bonue
		recipe(211696),	-- Stabilize
		recipe(221690),	-- Silvery Salve
		recipe(212067),	-- Treat Burns
		recipe(211353),	-- Treat Fever
	})),
	-- #if BEFORE BFA
	n(QUESTS, {
		q(6625, {	-- Alliance Trauma
			["qg"] = 5150,	-- Nissa Firestone
			["coord"] = { 54.8, 58.6, IRONFORGE },
			["maps"] = { IRONFORGE },
			-- #if BEFORE BFA
			["requireSkill"] = FIRST_AID,
			-- #endif
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
			["lvl"] = lvlsquish(35, 10, 35),
		}),
		q(6623, {	-- Horde Trauma
			-- #if AFTER CATA
			["qg"] = 45540,	-- Krenk Choplimb
			["coord"] = { 36.9, 87.5, ORGRIMMAR },
			-- #else
			["qg"] = 3373,	-- Arnok
			["coord"] = { 34, 84.6, ORGRIMMAR },
			-- #endif
			["maps"] = { ORGRIMMAR },
			-- #if BEFORE BFA
			["requireSkill"] = FIRST_AID,
			-- #endif
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
			["lvl"] = lvlsquish(35, 10, 35),
		}),
		q(6624, {	-- Triage (A)
			["qg"] = 12939,	-- Doctor Gustaf VanHowzen
			["sourceQuest"] = 6625,	-- Alliance Trauma
			["coord"] = { 67.7, 48.9, DUSTWALLOW_MARSH },
			["maps"] = { DUSTWALLOW_MARSH },
			["races"] = ALLIANCE_ONLY,
			-- #if BEFORE BFA
			["requireSkill"] = FIRST_AID,
			-- #endif
			["cost"] = {
				{ "i", 16991, 1 },	-- Triage Bandage
			},
			["lvl"] = lvlsquish(35, 15, 35),
			["groups"] = {
				i(49193, {	-- Alliance Trauma Certification
					["timeline"] = { "timeline 3.2.0.10192" },
				}),
			},
		}),
		q(6622, {	-- Triage (H)
			["qg"] = 12920,	-- Doctor Gregory Victor
			["sourceQuest"] = 6623,	-- Horde Trauma
			-- #if AFTER CATA
			["coord"] = { 73.4, 36.8, ARATHI_HIGHLANDS },
			-- #else
			["coord"] = { 68.5, 37.8, ARATHI_HIGHLANDS },
			-- #endif
			["maps"] = { ARATHI_HIGHLANDS },
			-- #if BEFORE BFA
			["requireSkill"] = FIRST_AID,
			-- #endif
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 16991, 1 },	-- Triage Bandage
			},
			["lvl"] = lvlsquish(35, 15, 35),
			["groups"] = {
				i(49192, {	-- Horde Trauma Certification
					["timeline"] = { "timeline 3.2.0.10192" },
				}),
			},
		}),
	}),
	-- #endif
});

-- Reset the pointer to the recipe function.
recipe = oldRecipe;