profession(40, {	-- Poisons
	{
		["classes"] = { ROGUE },
		["name"] = "Consumable",
		["categoryID"] = 2,
		["g"] = {
			applyclassicphase(TBC_PHASE_ONE, {
				["name"] = "Anesthetic Poison",
				["timeline"] = { "added 2.0.1.6180" },
				["recipeID"] = 26786,
				["lvl"] = 68,
			}),
			-- #if CLASSIC
			{
				["name"] = "Blinding Powder",
				["recipeID"] = 6510,
				["lvl"] = 34,
			},
			-- #endif
			{
				["name"] = "Crippling Poison",
				["recipeID"] = 3420,
				["lvl"] = 20,
			},
			{
				["name"] = "Crippling Poison II",
				["recipeID"] = 3421,
				["lvl"] = 50,
			},
			{
				["name"] = "Deadly Poison",
				["recipeID"] = 2835,
				["lvl"] = 30,
			},
			{
				["name"] = "Deadly Poison II",
				["recipeID"] = 2837,
				["lvl"] = 38,
			},
			{
				["name"] = "Deadly Poison III",
				["recipeID"] = 11357,
				["lvl"] = 46,
			},
			{
				["name"] = "Deadly Poison IV",
				["recipeID"] = 11358,
				["lvl"] = 54,
			},
			applyclassicphase(PHASE_FIVE, {
				["name"] = "Deadly Poison V",
				["recipeID"] = 25347,
				["lvl"] = 60,
			}),
			applyclassicphase(TBC_PHASE_ONE, {
				["name"] = "Deadly Poison VI",
				["timeline"] = { "added 2.0.1.6180" },
				["recipeID"] = 26969,
				["lvl"] = 62,
			}),
			applyclassicphase(TBC_PHASE_ONE, {
				["name"] = "Deadly Poison VII",
				["timeline"] = { "added 2.0.1.6180" },
				["recipeID"] = 27282,
				["lvl"] = 70,
			}),
			{
				["name"] = "Instant Poison",
				["recipeID"] = 8681,
			},
			{
				["name"] = "Instant Poison II",
				["recipeID"] = 8687,
				["lvl"] = 28,
			},
			{
				["name"] = "Instant Poison III",
				["recipeID"] = 8691,
				["lvl"] = 36,
			},
			{
				["name"] = "Instant Poison IV",
				["recipeID"] = 11341,
				["lvl"] = 44,
			},
			{
				["name"] = "Instant Poison V",
				["recipeID"] = 11342,
				["lvl"] = 52,
			},
			{
				["name"] = "Instant Poison VI",
				["recipeID"] = 11343,
				["lvl"] = 60,
			},
			applyclassicphase(TBC_PHASE_ONE, {
				["name"] = "Instant Poison VII",
				["timeline"] = { "added 2.0.1.6180" },
				["recipeID"] = 26892,
				["lvl"] = 68,
			}),
			{
				["name"] = "Mind-Numbing Poison",
				["recipeID"] = 5763,
				["lvl"] = 24,
			},
			{
				["name"] = "Mind-Numbing Poison II",
				["recipeID"] = 8694,
				["lvl"] = 38,
			},
			{
				["name"] = "Mind-Numbing Poison III",
				["recipeID"] = 11400,
				["lvl"] = 52,
			},
			{
				["name"] = "Wound Poison",
				["recipeID"] = 13220,
				["lvl"] = 32,
			},
			{
				["name"] = "Wound Poison II",
				["recipeID"] = 13228,
				["lvl"] = 40,
			},
			{
				["name"] = "Wound Poison III",
				["recipeID"] = 13229,
				["lvl"] = 48,
			},
			{
				["name"] = "Wound Poison IV",
				["recipeID"] = 13230,
				["lvl"] = 56,
			},
			applyclassicphase(TBC_PHASE_ONE, {
				["name"] = "Wound Poison V",
				["timeline"] = { "added 2.0.1.6180" },
				["recipeID"] = 27283,
				["lvl"] = 64,
			}),
		},
	},
});

-- These items never made it in.
_.NeverImplemented = bubbleDown({ ["u"] = NEVER_IMPLEMENTED }, {
	filter(200, {	-- Recipe
		i(5657),	-- Recipe: Instant Toxin
	}),
});