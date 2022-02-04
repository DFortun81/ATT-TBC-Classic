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
					-- #if BEFORE TBC
					{
						["name"] = "Annihilator",
						["recipeID"] = 16991,
						["requireSkill"] = 17041,
					},
					{
						["name"] = "Arcanite Reaper",
						["recipeID"] = 16994,
						["requireSkill"] = 17041,
					},
					{
						["name"] = "Dark Iron Destroyer",
						["recipeID"] = 20897,
						["requireSkill"] = 17041,
					},
					{
						["name"] = "Dawn's Edge",
						["recipeID"] = 16970,
						["requireSkill"] = 17041,
					},
					{
						["name"] = "Nightfall",
						["recipeID"] = 23653,
						["requireSkill"] = 17041,
					},
					-- #endif
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Black Planar Edge",
						["recipeID"] = 34542,
						["requireSkill"] = 17041,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Bloodmoon",
						["recipeID"] = 36261,
						["requireSkill"] = 17041,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Lunar Crescent",
						["recipeID"] = 34543,
						["requireSkill"] = 17041,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Mooncleaver",
						["recipeID"] = 34544,
						["requireSkill"] = 17041,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Skyforged Great Axe",
						["recipeID"] = 36135,
						["requireSkill"] = 17041,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
							"added 7.1.5.23360",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Stormforged Axe",
						["recipeID"] = 36134,
						["requireSkill"] = 17041,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
							"added 7.1.5.23360",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "The Planar Edge",
						["recipeID"] = 34541,
						["requireSkill"] = 17041,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Wicked Edge of the Planes",
						["recipeID"] = 36260,
						["requireSkill"] = 17041,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					}),
				},
			}),
			prof(17040, {	-- Master Hammersmith
				["description"] = "These items can only be crafted by Master Hammersmith specialized Weaponsmiths.",
				["groups"] = {
					-- #if BEFORE TBC
					applyclassicphase(PHASE_THREE, {
						["name"] = "Ebon Hand",
						["recipeID"] = 23650,
						["requireSkill"] = 17040,
					}),
					{
						["name"] = "Enchanted Battlehammer",
						["recipeID"] = 16973,
						["requireSkill"] = 17040,
					},
					{
						["name"] = "Hammer of the Titans",
						["recipeID"] = 16988,
						["requireSkill"] = 17040,
					},
					{
						["name"] = "Masterwork Stormhammer",
						["recipeID"] = 16993,
						["requireSkill"] = 17040,
					},
					applyclassicphase(PHASE_FIVE, {
						["name"] = "Persuader",
						["recipeID"] = 27830,
						["requireSkill"] = 17040,
					}),
					{
						["name"] = "Serenity",
						["recipeID"] = 16983,
						["requireSkill"] = 17040,
						["timeline"] = { "removed 2.0.1", "added 3.0.1" },
					},
					-- #endif
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Deep Thunder",
						["recipeID"] = 34548,
						["requireSkill"] = 17040,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Dragonmaw",
						["recipeID"] = 34546,
						["requireSkill"] = 17040,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Dragonstrike",
						["recipeID"] = 36262,
						["requireSkill"] = 17040,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Drakefist Hammer",
						["recipeID"] = 34545,
						["requireSkill"] = 17040,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Great Earthforged Hammer",
						["recipeID"] = 36137,
						["requireSkill"] = 17040,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
							"added 7.1.5.23360",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Lavaforged Warhammer",
						["recipeID"] = 36136,
						["requireSkill"] = 17040,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
							"added 7.1.5.23360",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Stormherald",
						["recipeID"] = 36263,
						["requireSkill"] = 17040,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Thunder",
						["recipeID"] = 34547,
						["requireSkill"] = 17040,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					}),
				},
			}),
			prof(17039, {	-- Master Swordsmith
				["description"] = "These items can only be crafted by Master Swordsmith specialized Weaponsmiths.",
				["groups"] = {
					-- #if BEFORE TBC
					{
						["name"] = "Arcanite Champion",
						["recipeID"] = 16990,
						["requireSkill"] = 17039,
					},
					applyclassicphase(PHASE_THREE, {
						["name"] = "Blackguard",
						["recipeID"] = 23652,
						["requireSkill"] = 17039,
					}),
					{
						["name"] = "Blazing Rapier",
						["recipeID"] = 16978,
						["requireSkill"] = 17039,
					},
					{
						["name"] = "Corruption",
						["recipeID"] = 16985,
						["requireSkill"] = 17039,
						["timeline"] = { "removed 2.0.1", "added 3.0.1" },
					},
					{
						["name"] = "Dark Iron Reaver",
						["recipeID"] = 20890,
						["requireSkill"] = 17039,
					},
					{
						["name"] = "Frostguard",
						["recipeID"] = 16992,
						["requireSkill"] = 17039,
					},
					applyclassicphase(PHASE_FIVE, {
						["name"] = "Sageblade",
						["recipeID"] = 27832,
						["requireSkill"] = 17039,
					}),
					-- #endif
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Blazefury",
						["recipeID"] = 36258,
						["requireSkill"] = 17039,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Blazeguard",
						["recipeID"] = 34537,
						["requireSkill"] = 17039,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Fireguard",
						["recipeID"] = 34535,
						["requireSkill"] = 17039,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Lionheart Blade",
						["recipeID"] = 34538,
						["requireSkill"] = 17039,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Lionheart Champion",
						["recipeID"] = 34540,
						["requireSkill"] = 17039,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Lionheart Executioner",
						["recipeID"] = 36259,
						["requireSkill"] = 17039,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Stoneforged Claymore",
						["recipeID"] = 36133,
						["requireSkill"] = 17039,
						["timeline"] = {
							"added 2.1.0.6692",
							"removed 4.0.1.13287",
							"added 7.1.5.23360",
						},
					}),
					applyclassicphase(TBC_PHASE_ONE,{
						["name"] = "Windforged Rapier",
						["recipeID"] = 36131,
						["requireSkill"] = 17039,
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
							"added 7.1.5.23360",
						},
					}),
				},
			}),
			{
				["name"] = "Weapons",
				["description"] = "These can be crafted by any Weaponsmith.",
				["categoryID"] = 227,
				["groups"] = {
					-- #if BEFORE TBC
					applyclassicphase(PHASE_THREE, {
						["name"] = "Black Amnesty",
						["recipeID"] = 23638,
						["requireSkill"] = 9787,
					}),
					applyclassicphase(PHASE_THREE, {
						["name"] = "Blackfury",
						["recipeID"] = 23639,
						["requireSkill"] = 9787,
					}),
					un(NEVER_IMPLEMENTED, {
						["name"] = "Bleakwood Hew",
						["recipeID"] = 16965,
						["requireSkill"] = 9787,
					}),
					{
						["name"] = "Blight",
						["recipeID"] = 10011,
						["requireSkill"] = 9787,
					},
					un(NEVER_IMPLEMENTED, {
						["name"] = "Blood Talon",
						["recipeID"] = 16986,
						["requireSkill"] = 9787,
					}),
					{
						["name"] = "Dark Iron Pulverizer",
						["recipeID"] = 15292,
						["requireSkill"] = 9787,
					},
					{
						["name"] = "Dark Iron Sunderer",
						["recipeID"] = 15294,
						["requireSkill"] = 9787,
					},
					un(NEVER_IMPLEMENTED, {
						["name"] = "Darkspear",
						["recipeID"] = 16987,
						["requireSkill"] = 9787,
					}),
					{
						["name"] = "Heartseeker",
						["recipeID"] = 16995,
						["requireSkill"] = 9787,
					},
					-- #endif
					applyclassicphase(TBC_PHASE_ONE,{					
						["name"] = "Light Earthforged Blade", 
						["recipeID"] = 36125,
						["requireSkill"] = 9787,
					}),
					applyclassicphase(TBC_PHASE_ONE,{					
						["name"] = "Light Emberforged Hammer", 
						["recipeID"] = 36128,
						["requireSkill"] = 9787,
					}),
					applyclassicphase(TBC_PHASE_ONE,{					
						["name"] = "Light Skyforged Axe", 
						["recipeID"] = 36126,
						["requireSkill"] = 9787,
					}),
					-- #if BEFORE TBC
					{
						["name"] = "Phantom Blade",
						["recipeID"] = 10007,
						["requireSkill"] = 9787,
					},
					{
						["name"] = "The Shatterer",
						["recipeID"] = 10003,
						["requireSkill"] = 9787,
					},
					{
						["name"] = "Truesilver Champion",
						["recipeID"] = 10015,
						["requireSkill"] = 9787,
					},
					-- #endif
				}
			},
		},
	}),
});