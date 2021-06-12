profession(LEATHERWORKING, {
	prof(10656, {	-- Dragonscale Leatherworking
		["description"] = "These items can only be crafted by Leatherworkers who have completed the associated quest.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Leatherworkers and complete the opposing specialization(s).",
		["sourceQuests"] = {
			5141,	-- Dragonscale Leatherworking [Alliance]
			5145,	-- Dragonscale Leatherworking [Horde]
		},
		["groups"] = {
			-- #if AFTER TBC
			{
				["name"] = "Chest",
				["categoryID"] = 932,
				["groups"] = {
					applyclassicphase(TBC_PHASE_ONE, {
						["name"] = "Ebon Netherscale Breastplate",
						["recipeID"] = 35575,
						["requireSkill"] = 10656,
					}),
					-- #if BEFORE CATA
					applyclassicphase(TBC_PHASE_ONE, {
						["name"] = "Golden Dragonstrike Breastplate",
						["recipeID"] = 36079,
						["requireSkill"] = 10656,
					}),
					-- #endif
					applyclassicphase(TBC_PHASE_ONE, {
						["name"] = "Netherstrike Breastplate",
						["recipeID"] = 35580,
						["requireSkill"] = 10656,
					}),
				}
			},
			{
				["name"] = "Bracers",
				["categoryID"] = 933,
				["groups"] = {
					applyclassicphase(TBC_PHASE_ONE, {
						["name"] = "Ebon Netherscale Bracers",
						["recipeID"] = 35577,
						["requireSkill"] = 10656,
					}),
					applyclassicphase(TBC_PHASE_ONE, {
						["name"] = "Netherstrike Bracers",
						["recipeID"] = 35584,
						["requireSkill"] = 10656,
					}),
				}
			},
			{
				["name"] = "Belts",
				["categoryID"] = 935,
				["groups"] = {
					applyclassicphase(TBC_PHASE_ONE, {
						["name"] = "Ebon Netherscale Belt",
						["recipeID"] = 35576,
						["requireSkill"] = 10656,
					}),
					applyclassicphase(TBC_PHASE_ONE, {
						["name"] = "Netherstrike Belt",
						["recipeID"] = 35582,
						["requireSkill"] = 10656,
					}),
				}
			},
			-- #if BEFORE CATA
			{
				["name"] = "Pants",
				["categoryID"] = 936,
				["groups"] = {
					applyclassicphase(TBC_PHASE_ONE, {
						["name"] = "Dragonstrike Leggings",
						["recipeID"] = 36076,
						["requireSkill"] = 10656,
					}),
				},
			},
			-- #endif
			-- #else
			{
				["name"] = "Shoulders",
				["categoryID"] = 252,
				["groups"] = {
					{
						["name"] = "Black Dragonscale Shoulders",
						["recipeID"] = 19094,
						["requireSkill"] = 10656,
					},
					{
						["name"] = "Blue Dragonscale Shoulders",
						["recipeID"] = 19089,
						["requireSkill"] = 10656,
					},
				}
			},
			{
				["name"] = "Chest",
				["categoryID"] = 253,
				["groups"] = {
					{
						["name"] = "Black Dragonscale Breastplate",
						["recipeID"] = 19085,
						["requireSkill"] = 10656,
					},
					{
						["name"] = "Blue Dragonscale Breastplate",
						["recipeID"] = 19077,
						["requireSkill"] = 10656,
					},
					{
						["name"] = "Dragonscale Breastplate",
						["recipeID"] = 10650,
						["requireSkill"] = 10656,
					},
					applyclassicphase(PHASE_FOUR, {
						["name"] = "Dreamscale Breastplate",
						["recipeID"] = 24703,
						["requireSkill"] = 10656,
					}),
					{
						["name"] = "Green Dragonscale Breastplate",
						["recipeID"] = 19050,
						["requireSkill"] = 10656,
					},
					{
						["name"] = "Red Dragonscale Breastplate",
						["recipeID"] = 19054,
						["requireSkill"] = 10656,
					},
				}
			},
			{
				["name"] = "Gloves",
				["categoryID"] = 255,
				["groups"] = {
					applyclassicphase(PHASE_THREE, {
						["name"] = "Chromatic Gauntlets",
						["recipeID"] = 23708,
						["requireSkill"] = 10656,
					}),
					{
						["name"] = "Dragonscale Gauntlets",
						["recipeID"] = 10619,
						["requireSkill"] = 10656,
					},
					{
						["name"] = "Green Dragonscale Gauntlets",
						["recipeID"] = 24655,
						["requireSkill"] = 10656,
					},
				}
			},
			{
				["name"] = "Pants",
				["categoryID"] = 257,
				["groups"] = {
					{
						["name"] = "Black Dragonscale Leggings",
						["recipeID"] = 19107,
						["requireSkill"] = 10656,
					},
					{
						["name"] = "Blue Dragonscale Leggings",
						["recipeID"] = 24654,
						["requireSkill"] = 10656,
					},
					{
						["name"] = "Green Dragonscale Leggings",
						["recipeID"] = 19060,
						["requireSkill"] = 10656,
					},
				}
			},
			{
				["name"] = "Boots",
				["categoryID"] = 258,
				["groups"] = {
					{
						["name"] = "Black Dragonscale Boots",
						["recipeID"] = 20855,
						["requireSkill"] = 10656,
					},
				}
			},
			{
				["name"] = "Cloaks",
				["categoryID"] = 259,
				["groups"] = {
					applyclassicphase(PHASE_ONE_DIREMAUL, {
						["name"] = "Chromatic Cloak",
						["recipeID"] = 22926,
						["requireSkill"] = 10656,
					}),
				}
			},
			-- #endif
		},
	}),
});