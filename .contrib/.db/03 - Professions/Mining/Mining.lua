profession(MINING, {
	tier(CLASSIC_TIER, {
		-- #if ANYCLASSIC
		recipe(2580),	-- Find Minerals
		-- #endif
		{
			["name"] = "Enchanted Thorium Bar",
			["timeline"] = { "added 3.3.0.10000" },
			["recipeID"] = 70524
		},
		{
			["name"] = "Smelt Bronze",
			["recipeID"] = 2659
		},
		{
			["name"] = "Smelt Copper",
			["recipeID"] = 2657
		},
		{
			["name"] = "Smelt Dark Iron",
			["recipeID"] = 14891
		},
		applyclassicphase(PHASE_THREE, {
			["name"] = "Smelt Elementium",
			["recipeID"] = 22967,
		}),
		{
			["name"] = "Smelt Gold",
			["recipeID"] = 3308
		},
		{
			["name"] = "Smelt Iron",
			["recipeID"] = 3307
		},
		{
			["name"] = "Smelt Mithril",
			["recipeID"] = 10097
		},
		{
			["name"] = "Smelt Silver",
			["recipeID"] = 2658
		},
		{
			["name"] = "Smelt Steel",
			["recipeID"] = 3569
		},
		{
			["name"] = "Smelt Thorium",
			["recipeID"] = 16153
		},
		{
			["name"] = "Smelt Tin",
			["recipeID"] = 3304
		},
		{
			["name"] = "Smelt Truesilver",
			["recipeID"] = 10098
		},
	}),
	applyclassicphase(TBC_PHASE_ONE, tier(TBC_TIER, {
		{
			["name"] = "Earth Shatter",
			["recipeID"] = 35750,
		},
		{
			["name"] = "Fire Sunder",
			["recipeID"] = 35751,
		},
		{
			["name"] = "Smelt Adamantite",
			["recipeID"] = 29358,
		},
		{
			["name"] = "Smelt Eternium",
			["recipeID"] = 29359,
		},
		{
			["name"] = "Smelt Fel Iron",
			["recipeID"] = 29356,
		},
		{
			["name"] = "Smelt Felsteel",
			["recipeID"] = 29360,
		},
		{
			["name"] = "Smelt Hardened Adamantite",
			["recipeID"] = 29686,
		},
		applyclassicphase(TBC_PHASE_FIVE, {
			["name"] = "Smelt Hardened Khorium",
			["recipeID"] = 46353,
		}),
		{
			["name"] = "Smelt Khorium",
			["recipeID"] = 29361,
		}
	})),
	applyclassicphase(WRATH_PHASE_ONE, tier(WOTLK_TIER, {
		{
			["name"] = "Smelt Cobalt",
			["recipeID"] = 49252
		},
		{
			["name"] = "Smelt Saronite",
			["recipeID"] = 49258
		},
		{
			["name"] = "Smelt Titanium",
			["recipeID"] = 55211
		},
		{
			["name"] = "Smelt Titansteel",
			["recipeID"] = 55208
		}
	})),
	applyclassicphase(CATA_PHASE_ONE, tier(CATA_TIER, {
		{
			["name"] = "Smelt Elementium",
			["recipeID"] = 74530
		},
		{
			["name"] = "Smelt Hardened Elementium",
			["recipeID"] = 74537
		},
		{
			["name"] = "Smelt Obsidium",
			["recipeID"] = 84038
		},
		{
			["name"] = "Smelt Pyrite",
			["recipeID"] = 74529
		}
	})),
	applyclassicphase(MOP_PHASE_ONE, tier(MOP_TIER, {
		{
			["name"] = "Smelt Ghost Iron",
			["recipeID"] = 102165
		},
		{
			["name"] = "Smelt Trillium",
			["recipeID"] = 102167
		}
	})),
	--[[
	-- There were no new mining skills in WoD.
	applyclassicphase(WOD_PHASE_ONE, tier(WOD_TIER, {
		
	})),
	]]--
	applyclassicphase(LEGION_PHASE_ONE, tier(LEGION_TIER, {
		{
			["name"] = "Empyrium Deposit",
			["nextRecipeID"] = 247849,
			["recipeID"] = 247848
		},
		{
			["name"] = "Empyrium Deposit",
			["nextRecipeID"] = 247850,
			["previousRecipeID"] = 247848,
			["recipeID"] = 247849
		},
		{
			["name"] = "Empyrium Deposit",
			["previousRecipeID"] = 247849,
			["recipeID"] = 247850
		},
		{
			["name"] = "Empyrium Seam",
			["nextRecipeID"] = 247852,
			["recipeID"] = 247851
		},
		{
			["name"] = "Empyrium Seam",
			["nextRecipeID"] = 247853,
			["previousRecipeID"] = 247851,
			["recipeID"] = 247852
		},
		{
			["name"] = "Empyrium Seam",
			["previousRecipeID"] = 247852,
			["recipeID"] = 247853
		},
		{
			["name"] = "Felslate Deposit",
			["nextRecipeID"] = 184493,
			["recipeID"] = 184492
		},
		{
			["name"] = "Felslate Deposit",
			["nextRecipeID"] = 184494,
			["previousRecipeID"] = 184492,
			["recipeID"] = 184493
		},
		{
			["name"] = "Felslate Deposit",
			["previousRecipeID"] = 184493,
			["recipeID"] = 184494
		},
		{
			["name"] = "Felslate Seam",
			["nextRecipeID"] = 184497,
			["recipeID"] = 184496
		},
		{
			["name"] = "Felslate Seam",
			["nextRecipeID"] = 184498,
			["previousRecipeID"] = 184496,
			["recipeID"] = 184497
		},
		{
			["name"] = "Felslate Seam",
			["previousRecipeID"] = 184497,
			["recipeID"] = 184498
		},
		{
			["name"] = "Infernal Brimstone",
			["nextRecipeID"] = 184505,
			["recipeID"] = 184504
		},
		{
			["name"] = "Infernal Brimstone",
			["nextRecipeID"] = 191970,
			["previousRecipeID"] = 184504,
			["recipeID"] = 184505
		},
		{
			["name"] = "Infernal Brimstone",
			["previousRecipeID"] = 184505,
			["recipeID"] = 191970
		},
		{
			["name"] = "Leystone Deposit",
			["nextRecipeID"] = 184456,
			["recipeID"] = 184454
		},
		{
			["name"] = "Leystone Deposit",
			["nextRecipeID"] = 184457,
			["previousRecipeID"] = 184454,
			["recipeID"] = 184456
		},
		{
			["name"] = "Leystone Deposit",
			["previousRecipeID"] = 184456,
			["recipeID"] = 184457
		},
		{
			["name"] = "Leystone Seam",
			["nextRecipeID"] = 184485,
			["recipeID"] = 184484
		},
		{
			["name"] = "Leystone Seam",
			["nextRecipeID"] = 184486,
			["previousRecipeID"] = 184484,
			["recipeID"] = 184485
		},
		{
			["name"] = "Leystone Seam",
			["previousRecipeID"] = 184485,
			["recipeID"] = 184486
		},
		{
			["name"] = "Living Felslate",
			["nextRecipeID"] = 184501,
			["recipeID"] = 184500
		},
		{
			["name"] = "Living Felslate",
			["nextRecipeID"] = 184502,
			["previousRecipeID"] = 184500,
			["recipeID"] = 184501
		},
		{
			["name"] = "Living Felslate",
			["previousRecipeID"] = 184501,
			["recipeID"] = 184502
		},
		{
			["name"] = "Living Leystone",
			["nextRecipeID"] = 184489,
			["recipeID"] = 184488
		},
		{
			["name"] = "Living Leystone",
			["nextRecipeID"] = 184490,
			["previousRecipeID"] = 184488,
			["recipeID"] = 184489
		},
		{
			["name"] = "Living Leystone",
			["previousRecipeID"] = 184489,
			["recipeID"] = 184490
		}
	})),
	applyclassicphase(BFA_PHASE_ONE, tier(BFA_TIER, {
		{
			["name"] = "Monelite Deposit",
			["nextRecipeID"] = 253334,
			["recipeID"] = 253333
		},
		{
			["name"] = "Monelite Deposit",
			["nextRecipeID"] = 253335,
			["previousRecipeID"] = 253333,
			["recipeID"] = 253334
		},
		{
			["name"] = "Monelite Deposit",
			["previousRecipeID"] = 253334,
			["recipeID"] = 253335
		},
		{
			["name"] = "Monelite Seam",
			["nextRecipeID"] = 253343,
			["recipeID"] = 253342
		},
		{
			["name"] = "Monelite Seam",
			["nextRecipeID"] = 253344,
			["previousRecipeID"] = 253342,
			["recipeID"] = 253343
		},
		{
			["name"] = "Monelite Seam",
			["previousRecipeID"] = 253343,
			["recipeID"] = 253344
		},
		{
			["name"] = "Osmenite Deposit",
			["nextRecipeID"] = 296148,
			["recipeID"] = 296149
		},
		{
			["name"] = "Osmenite Deposit",
			["nextRecipeID"] = 296147,
			["previousRecipeID"] = 296149,
			["recipeID"] = 296148
		},
		{
			["name"] = "Osmenite Deposit",
			["previousRecipeID"] = 296148,
			["recipeID"] = 296147
		},
		{
			["name"] = "Osmenite Seam",
			["nextRecipeID"] = 296144,
			["recipeID"] = 296145
		},
		{
			["name"] = "Osmenite Seam",
			["nextRecipeID"] = 296143,
			["previousRecipeID"] = 296145,
			["recipeID"] = 296144
		},
		{
			["name"] = "Osmenite Seam",
			["previousRecipeID"] = 296144,
			["recipeID"] = 296143
		},
		{
			["name"] = "Platinum Deposit",
			["nextRecipeID"] = 253340,
			["recipeID"] = 253339
		},
		{
			["name"] = "Platinum Deposit",
			["nextRecipeID"] = 253341,
			["previousRecipeID"] = 253339,
			["recipeID"] = 253340
		},
		{
			["name"] = "Platinum Deposit",
			["previousRecipeID"] = 253340,
			["recipeID"] = 253341
		},
		{
			["name"] = "Storm Silver Deposit",
			["nextRecipeID"] = 253337,
			["recipeID"] = 253336
		},
		{
			["name"] = "Storm Silver Deposit",
			["nextRecipeID"] = 253338,
			["previousRecipeID"] = 253336,
			["recipeID"] = 253337
		},
		{
			["name"] = "Storm Silver Deposit",
			["previousRecipeID"] = 253337,
			["recipeID"] = 253338
		},
		{
			["name"] = "Storm Silver Seam",
			["nextRecipeID"] = 253346,
			["recipeID"] = 253345
		},
		{
			["name"] = "Storm Silver Seam",
			["nextRecipeID"] = 253347,
			["previousRecipeID"] = 253345,
			["recipeID"] = 253346
		},
		{
			["name"] = "Storm Silver Seam",
			["previousRecipeID"] = 253346,
			["recipeID"] = 253347
		}
	})),
});

-- Mining Recipes
local itemDB = root("ItemDB", {});
local itemrecipe = function(itemID, spellID, timeline, classicphase)
	local o = { ["itemID"] = itemID };
	if spellID and spellID > 0 then
		o.spellID = spellID;
	end
	if timeline then
		-- Ensure that the timeline is in a table format.
		if type(timeline) == "string" then timeline = { timeline }; end
		o.timeline = timeline;
	end
	if classicphase then applyclassicphase(classicphase, o); end
	itemDB[itemID] = o;
	return o;
end

-- #if AFTER TBC
-- TBC Recipes
itemrecipe(35273, 46353, "added 2.4.0.7897", TBC_PHASE_FIVE);	-- Study of Advanced Smelting
-- #endif

-- #if AFTER WRATH
-- Wrath Recipes
itemrecipe(44956, 22967, "added 3.0.8.9464", WRATH_PHASE_ONE);	-- Goblin's Guide to Elementium
-- #endif