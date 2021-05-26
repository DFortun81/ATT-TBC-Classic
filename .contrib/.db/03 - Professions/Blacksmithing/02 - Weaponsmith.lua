profession(BLACKSMITHING, {
	prof(9787, {	-- Weaponsmith
		["description"] = "These items can only be crafted by Blacksmiths who have completed the Way of the Weaponsmith quest chain.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Blacksmiths and complete the opposing specialization(s).",
		["sourceQuests"] = {
			5284,	-- The Way of the Weaponsmith [Alliance]
			5302,	-- The Way of the Weaponsmith [Horde]
		},
		["groups"] = {
			prof(17041, {	-- Master Axesmith
				["description"] = "These items can only be crafted by Master Axesmith specialized Weaponsmiths.",
				["groups"] = {
					{
						["name"] = "Black Planar Edge",
						["recipeID"] = 34542,
						["requireSkill"] = 17041,
					},
					{
						["name"] = "Bloodmoon",
						["recipeID"] = 36261,
						["requireSkill"] = 17041,
					},
					{
						["name"] = "Lunar Crescent",
						["recipeID"] = 34543,
						["requireSkill"] = 17041,
					},
					{
						["name"] = "Mooncleaver",
						["recipeID"] = 34544,
						["requireSkill"] = 17041,
					},
					{
						["name"] = "Skyforged Great Axe",
						["recipeID"] = 36135,
						["requireSkill"] = 17041,
					},
					{
						["name"] = "Stormforged Axe",
						["recipeID"] = 36134,
						["requireSkill"] = 17041,
					},
					{
						["name"] = "The Planar Edge",
						["recipeID"] = 34541,
						["requireSkill"] = 17041,
					},
					{
						["name"] = "Wicked Edge of the Planes",
						["recipeID"] = 36260,
						["requireSkill"] = 17041,
					},
				},
			}),
			prof(17040, {	-- Master Hammersmith
				["description"] = "These items can only be crafted by Master Hammersmith specialized Weaponsmiths.",
				["groups"] = {
					{
						["name"] = "Deepthunder",
						["recipeID"] = 34548,
						["requireSkill"] = 17040,
					},
					{
						["name"] = "Drakefist Hammer",
						["recipeID"] = 34545,
						["requireSkill"] = 17040,
					},
					{
						["name"] = "Dragonmaw",
						["recipeID"] = 34546,
						["requireSkill"] = 17040,
					},
					{
						["name"] = "Dragonstrike",
						["recipeID"] = 36262,
						["requireSkill"] = 17040,
					},
					{
						["name"] = "Great Earthforged Hammer",
						["recipeID"] = 36137,
						["requireSkill"] = 17040,
					},
					{
						["name"] = "Lavaforged Warhammer",
						["recipeID"] = 36136,
						["requireSkill"] = 17040,
					},
					{
						["name"] = "Stormherald",
						["recipeID"] = 36263,
						["requireSkill"] = 17040,
					},
					{
						["name"] = "Thunder",
						["recipeID"] = 34547,
						["requireSkill"] = 17040,
					},
				},
			}),
			prof(17039, {	-- Master Swordsmith
				["description"] = "These items can only be crafted by Master Swordsmith specialized Weaponsmiths.",
				["groups"] = {
					{
						["name"] = "Blazefury",
						["recipeID"] = 36258,
						["requireSkill"] = 17039
					},
					{
						["name"] = "Blazeguard",
						["recipeID"] = 34537,
						["requireSkill"] = 17039
					},
					{
						["name"] = "Fireguard",
						["recipeID"] = 34535,
						["requireSkill"] = 17039
					},
					{
						["name"] = "Lionheart Blade",
						["recipeID"] = 34538,
						["requireSkill"] = 17039
					},
					{
						["name"] = "Lionheart Champion",
						["recipeID"] = 34540,
						["requireSkill"] = 17039
					},
					{
						["name"] = "Lionheart Executioner",
						["recipeID"] = 36259,
						["requireSkill"] = 17039
					},
					{
						["name"] = "Stoneforged Claymore",
						["recipeID"] = 36133,
						["requireSkill"] = 17039
					},
					{
						["name"] = "Windforged Rapier",
						["recipeID"] = 36131,
						["requireSkill"] = 17039
					},
				},
			})
		},
				["name"] = "Weapons",
				["description"] = "These can be crafted by any Weaponsmith.",
				["categoryID"] = 227,
				["g"] = {
					{					
						["name"] = "Light Earthforged Blade", 
						["recipeID"] = 36125,
						["requireSkill"] = 9787,
					},
					{					
						["name"] = "Light Emberforged Hammer", 
						["recipeID"] = 36128,
						["requireSkill"] = 9787,
					},
					{					
						["name"] = "Light Skyforged Axe", 
						["recipeID"] = 36126,
						["requireSkill"] = 9787,
					},
				
		},
	}),
});