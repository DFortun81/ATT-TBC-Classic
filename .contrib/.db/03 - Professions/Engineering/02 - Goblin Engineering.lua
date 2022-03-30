profession(ENGINEERING, {
	prof(20222, {	-- Goblin Engineering
		["description"] = "These items can only be crafted by Engineers who have completed the Goblin Engineering quest chain.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level a second Engineer and complete the opposing specialization.",
		["sourceQuest"] = 3639,	-- Show Your Work
		["groups"] = {
			{
				["name"] = "Devices",
				["categoryID"] = 188,
				["groups"] = {
					applyclassicphase(TBC_PHASE_ONE, {
						["name"] = "Dimensional Ripper - Area 52",
						["recipeID"] = 36954,
					}),
					{
						["name"] = "Dimensional Ripper - Everlook",
						["recipeID"] = 23486,
					},
					{
						["name"] = "Goblin Jumper Cables XL",
						["recipeID"] = 23078
					},
					applyclassicphase(TBC_PHASE_ONE, {
						["name"] = "Goblin Rocket Launcher",
						["recipeID"] = 30563
					}),
					-- #if BEFORE WRATH
					{
						["name"] = "Pet Bombling",
						["description"] = "While this recipe does not have a requirement for Goblin Engineering, you cannot learn this recipe without Goblin Engineering and switching to Goblin from Gnomish is not possible in Classic.",
						["recipeID"] = 15628
					},
					-- #endif
				}
			},
			{
				["name"] = "Goggles",
				["categoryID"] = 185,
				["groups"] = {
					applyclassicphase(TBC_PHASE_ONE, {
						["name"] = "Foreman's Enchanted Helmet",
						["recipeID"] = 30565
					}),
					applyclassicphase(TBC_PHASE_ONE, {
						["name"] = "Foreman's Reinforced Helmet",
						["recipeID"] = 30566
					}),
					{
						["name"] = "Goblin Construction Helmet",
						["recipeID"] = 12718
					},
					{
						["name"] = "Goblin Mining Helmet",
						["recipeID"] = 12717
					},
					{
						["name"] = "Goblin Rocket Helmet",
						["recipeID"] = 12758
					},
				}
			},
			{
				["name"] = "Explosives",
				["categoryID"] = 184,
				["groups"] = {
					{
						["name"] = "Goblin Bomb Dispenser",
						["recipeID"] = 12755
					},
					{
						["name"] = "Goblin Dragon Gun",
						["recipeID"] = 12908
					},
					{
						["name"] = "Goblin Mortar",
						["recipeID"] = 12716
					},
					{
						["name"] = "Goblin Sapper Charge",
						["recipeID"] = 12760
					},
					applyclassicphase(TBC_PHASE_ONE, {
						["name"] = "Super Sapper Charge",
						["recipeID"] = 30560
					}),
					{
						["name"] = "The Big One",
						["recipeID"] = 12754
					},
					applyclassicphase(TBC_PHASE_ONE, {
						["name"] = "The Bigger One",
						["recipeID"] = 30558
					}),
					{
						["name"] = "The Mortar: Reloaded",
						["recipeID"] = 13240
					},
				}
			},
			{
				["name"] = "Parts",
				["categoryID"] = 183,
				["groups"] = {
					{
						["name"] = "Goblin Rocket Fuel Recipe",
						["recipeID"] = 12715,
					}
				}
			},
			n(QUESTS, {
				q(3644, {	-- Membership Card Renewal
					["qg"] = 8126,	-- Nixx Sprocketspring <Master Goblin Engineer>
					["sourceQuest"] = 3639,	-- Show Your Work
					["description"] = "Requires 200 Engineering to start this quest.",
					["coord"] = { 54.4, 27.2, TANARIS },
					["requireSkill"] = ENGINEERING,
					["cost"] = { { "g", 20000 } },	-- 2g
					["timeline"] = { "removed 4.0.3.2000" },
					["repeatable"] = true,
					["lvl"] = 30,
					["groups"] = {
						i(10791),	-- Goblin Engineer Membership Card
					},
				}),
				q(3646, {	-- Membership Card Renewal
					["qg"] = 8738,	-- Vazario Linkgrease <Goblin Engineering Trainer>
					["sourceQuest"] = 3639,	-- Show Your Work
					["description"] = "Requires 200 Engineering to start this quest.",
					["coord"] = { 62.6, 36.2, THE_BARRENS },
					["requireSkill"] = ENGINEERING,
					["cost"] = { { "g", 20000 } },	-- 2g
					["timeline"] = { "removed 4.0.3.2000" },
					["repeatable"] = true,
					["lvl"] = 30,
					["groups"] = {
						i(10791),	-- Goblin Engineer Membership Card
					},
				}),
			}),
			n(REWARDS, {
				i(11422, {	-- Goblin Engineer's Renewal Gift
					["description"] = "If you destroy your Goblin Engineer Membership Card, you can renew your membership for 2 Gold and will receive this gift in the mail in about a day.",
					["timeline"] = { "removed 4.0.3.2000" },
					["groups"] = {
						i(4417),	-- Schematic: Large Seaforium Charge
						i(11828),	-- Schematic: Pet Bombling
						i(4416),	-- Schematic: Goblin Land Mine
					},
				}),
			}),
		},
	});
});

-- Goblin Engineering Recipes
local itemDB = root("ItemDB", {});
local itemrecipe = function(itemID, spellID)
	local o = { ["itemID"] = itemID, ["spellID"] = spellID };
	itemDB[itemID] = o;
	return o;
end

-- Classic Recipes
itemrecipe(18653, 23078);	-- Schematic: Goblin Jumper Cables XL