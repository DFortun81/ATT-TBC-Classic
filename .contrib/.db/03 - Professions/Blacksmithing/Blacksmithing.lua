profession(BLACKSMITHING, {
	tier(1, {	-- Classic
		{
			["name"] = "Materials",
			["categoryID"] = 215,
			["g"] = {
				{
					["name"] = "Arcanite Rod",
					["recipeID"] = 20201
				},
				{
					["name"] = "Coarse Grinding Stone",
					["recipeID"] = 3326
				},
				{
					["name"] = "Dense Grinding Stone",
					["recipeID"] = 16639
				},
				{
					["name"] = "Golden Rod",
					["recipeID"] = 14379
				},
				{
					["name"] = "Heavy Grinding Stone",
					["recipeID"] = 3337
				},
				{
					["name"] = "Inlaid Mithril Cylinder",
					["recipeID"] = 11454
				},
				{
					["name"] = "Iron Buckle",
					["recipeID"] = 8768
				},
				{
					["name"] = "Rough Grinding Stone",
					["recipeID"] = 3320
				},
				{
					["name"] = "Silver Rod",
					["recipeID"] = 7818
				},
				{
					["name"] = "Solid Grinding Stone",
					["recipeID"] = 9920
				},
				{
					["name"] = "Truesilver Rod",
					["recipeID"] = 14380
				},
			}
		},
		{
			["name"] = "Weapon Mods",
			["categoryID"] = 216,
			["g"] = {
				{
					["name"] = "Coarse Sharpening Stone",
					["recipeID"] = 2665
				},
				{
					["name"] = "Coarse Weightstone",
					["recipeID"] = 3116
				},
				{
					["name"] = "Dense Sharpening Stone",
					["recipeID"] = 16641
				},
				{
					["name"] = "Dense Weightstone",
					["recipeID"] = 16640
				},
				{
					["name"] = "Elemental Sharpening Stone",
					["recipeID"] = 22757
				},
				{
					["name"] = "Heavy Sharpening Stone",
					["recipeID"] = 2674
				},
				{
					["name"] = "Heavy Weightstone",
					["recipeID"] = 3117
				},
				{
					["name"] = "Iron Counterweight",
					["recipeID"] = 7222
				},
				{
					["name"] = "Rough Sharpening Stone",
					["recipeID"] = 2660
				},
				{
					["name"] = "Rough Weightstone",
					["recipeID"] = 3115
				},
				{
					["name"] = "Solid Sharpening Stone",
					["recipeID"] = 9918
				},
				{
					["name"] = "Solid Weightstone",
					["recipeID"] = 9921
				},
				{
					["name"] = "Steel Weapon Chain",
					["recipeID"] = 7224
				}
			}
		},
		{
			["name"] = "Armor Mods",
			["categoryID"] = 217,
			["g"] = {
				{
					["name"] = "Iron Shield Spike",
					["recipeID"] = 7221
				},
				{
					["name"] = "Mithril Shield Spike",
					["recipeID"] = 9939
				},
				{
					["name"] = "Mithril Spurs",
					["recipeID"] = 9964
				},
				{
					["name"] = "Thorium Shield Spike",
					["recipeID"] = 16651
				}
			}
		},
		{
			["name"] = "Helms",
			["categoryID"] = 218,
			["g"] = {
				{
					["name"] = "Barbaric Iron Helm",
					["recipeID"] = 9814
				},
				-- #if AFTER TBC
				applyclassicphase(PHASE_THREE, {
					["name"] = "Dark Iron Helm",
					["recipeID"] = 23636,
				}),
				-- #endif
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Darkrune Helm",
					["recipeID"] = 24913,
				}),
				-- #if AFTER TBC
				applyclassicphase(PHASE_THREE, {
					["name"] = "Enchanted Thorium Helm",
					["recipeID"] = 16742,
				}),
				-- #endif
				{
					["name"] = "Golden Scale Coif",
					["recipeID"] = 3503
				},
				{
					["name"] = "Green Iron Helm",
					["recipeID"] = 3502
				},
				-- #if AFTER TBC
				{
					["name"] = "Helm of the Great Chief",
					["recipeID"] = 16728,
				},
				{
					["name"] = "Lionheart Helm",
					["recipeID"] = 16729,
				},
				-- #endif
				{
					["name"] = "Heavy Mithril Helm",
					["recipeID"] = 9970
				},
				{
					["name"] = "Imperial Plate Helm",
					["recipeID"] = 16658
				},
				{
					["name"] = "Mithril Coif",
					["recipeID"] = 9961
				},
				{
					["name"] = "Ornate Mithril Helm",
					["recipeID"] = 9980,
				},
				{
					["name"] = "Radiant Circlet",
					["recipeID"] = 16659
				},
				{
					["name"] = "Runic Plate Helm",
					["recipeID"] = 16726
				},
				{
					["name"] = "Steel Plate Helm",
					["recipeID"] = 9935
				},
				{
					["name"] = "Thorium Helm",
					["recipeID"] = 16653
				},
				-- #if AFTER TBC
				{
					["name"] = "Whitesoul Helm",
					["recipeID"] = 16724,
				},
				-- #endif
			}
		},
		{
			["name"] = "Shoulders",
			["categoryID"] = 219,
			["g"] = {
				{
					["name"] = "Barbaric Iron Shoulders",
					["recipeID"] = 9811
				},
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Bloodsoul Shoulders",
					["recipeID"] = 24137,
				}),
				{
					["name"] = "Dark Iron Shoulders",
					["recipeID"] = 15295
				},
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Darksoul Shoulders",
					["recipeID"] = 24141,
				}),
				-- #if AFTER TBC
				applyclassicphase(TBC_PHASE_ONE, {
					["name"] = "Dawnbringer Shoulders",
					["recipeID"] = 16660,
				}),
				{
					["name"] = "Fiery Chain Shoulders",
					["recipeID"] = 20873,
				},
				-- #endif
				{
					["name"] = "Golden Scale Shoulders",
					["recipeID"] = 3505
				},
				{
					["name"] = "Green Iron Shoulders",
					["recipeID"] = 3504
				},
				{
					["name"] = "Heavy Mithril Shoulder",
					["recipeID"] = 9926
				},
				{
					["name"] = "Imperial Plate Shoulders",
					["recipeID"] = 16646
				},
				{
					["name"] = "Mithril Scale Shoulders",
					["recipeID"] = 9966
				},
				{
					["name"] = "Ornate Mithril Shoulder",
					["recipeID"] = 9952
				},
				{
					["name"] = "Rough Bronze Shoulders",
					["recipeID"] = 3328
				},
				{
					["name"] = "Runic Plate Shoulders",
					["recipeID"] = 16664
				},
				{
					["name"] = "Silvered Bronze Shoulders",
					["recipeID"] = 3330
				}
			}
		},
		{
			["name"] = "Bracers",
			["categoryID"] = 222,
			["g"] = {
				{
					["name"] = "Copper Bracers",
					["recipeID"] = 2663
				},
				-- #if AFTER TBC
				{
					["name"] = "Dark Iron Bracers",
					["recipeID"] = 20874,
				},
				-- #endif
				{
					["name"] = "Golden Scale Bracers",
					["recipeID"] = 7223
				},
				{
					["name"] = "Green Iron Bracers",
					["recipeID"] = 3501
				},
				applyclassicphase(PHASE_SIX, {
					["name"] = "Icebane Bracers",
					["recipeID"] = 28244,
				}),
				{
					["name"] = "Imperial Plate Bracers",
					["recipeID"] = 16649
				},
				{
					["name"] = "Mithril Scale Bracers",
					["recipeID"] = 9937
				},
				{
					["name"] = "Patterned Bronze Bracers",
					["recipeID"] = 2672
				},
				un(NEVER_IMPLEMENTED, {
					["name"] = "Rough Bronze Bracers",
					["recipeID"] = 2671,
				}),
				{
					["name"] = "Runed Copper Bracers",
					["recipeID"] = 2664
				},
				{
					["name"] = "Thorium Bracers",
					["recipeID"] = 16644
				}
			}
		},
		{
			["name"] = "Gauntlets",
			["categoryID"] = 221,
			["g"] = {
				{
					["name"] = "Barbaric Iron Gloves",
					["recipeID"] = 9820
				},
				un(PHASE_FIVE, {
					["name"] = "Black Grasp of the Destroyer",
					["recipeID"] = 27589,
				}),
				un(PHASE_FOUR, {
					["name"] = "Bloodsoul Gauntlets",
					["recipeID"] = 24138,
				}),
				-- #if AFTER TBC
				applyclassicphase(PHASE_THREE, {
					["name"] = "Dark Iron Gauntlets",
					["recipeID"] = 23637,
				}),
				-- #endif
				un(PHASE_FOUR, {
					["name"] = "Darkrune Gauntlets",
					["recipeID"] = 24912,
				}),
				-- #if AFTER TBC
				{
					["name"] = "Fiery Plate Gauntlets",
					["recipeID"] = 16655,
				},
				-- #endif
				{
					["name"] = "Gemmed Copper Gauntlets",
					["recipeID"] = 3325
				},
				un(PHASE_THREE, {
					["name"] = "Gloves of the Dawn",
					["recipeID"] = 23633,
				}),
				{
					["name"] = "Golden Scale Gauntlets",
					["recipeID"] = 11643
				},
				{
					["name"] = "Green Iron Gauntlets",
					["recipeID"] = 3336
				},
				{
					["name"] = "Heavy Mithril Gauntlet",
					["recipeID"] = 9928
				},
				un(PHASE_SIX, {
					["name"] = "Icebane Gauntlets",
					["recipeID"] = 28243,
				}),
				un(NEVER_IMPLEMENTED, {
					["name"] = "Ironforge Gauntlets",
					["recipeID"] = 8368,
				}),
				un(PHASE_FIVE_CATCH_UP, {
					["name"] = "Ironvine Gloves",
					["recipeID"] = 28462,
				}),
				un(NEVER_IMPLEMENTED, {
					["name"] = "Mithril Scale Gloves",
					["recipeID"] = 9942,
				}),
				{
					["name"] = "Ornate Mithril Gloves",
					["recipeID"] = 9950
				},
				{
					["name"] = "Radiant Gloves",
					["recipeID"] = 16654
				},
				{
					["name"] = "Runed Copper Gauntlets",
					["recipeID"] = 3323
				},
				{
					["name"] = "Silvered Bronze Gauntlets",
					["recipeID"] = 3333
				},
				-- #if AFTER TBC
				{
					["name"] = "Storm Gauntlets",
					["recipeID"] = 16661,
				},
				{
					["name"] = "Stronghold Gauntlets",
					["recipeID"] = 16741,
				},
				{
					["name"] = "Truesilver Gauntlets",
					["recipeID"] = 9954,
				},
				-- #endif
			}
		},
		{
			["name"] = "Chest",
			["categoryID"] = 220,
			["g"] = {
				{
					["name"] = "Barbaric Iron Breastplate",
					["recipeID"] = 9813
				},
				un(PHASE_FOUR, {
					["name"] = "Bloodsoul Breastplate",
					["recipeID"] = 24136,
				}),
				{
					["name"] = "Copper Chain Vest",
					["recipeID"] = 3321
				},
				{
					["name"] = "Dark Iron Mail",
					["recipeID"] = 15293
				},
				-- #if AFTER TBC
				{
					["name"] = "Dark Iron Plate",
					["recipeID"] = 15296,
				},
				-- #endif
				un(PHASE_FOUR, {
					["name"] = "Darkrune Breastplate",
					["recipeID"] = 24914,
				}),
				un(PHASE_FOUR, {
					["name"] = "Darksoul Breastplate",
					["recipeID"] = 24139,
				}),
				-- #if AFTER TBC
				{
					["name"] = "Demon Forged Breastplate",
					["recipeID"] = 16667,
				},
				applyclassicphase(PHASE_THREE, {
					["name"] = "Enchanted Thorium Breastplate",
					["recipeID"] = 16745,
				}),
				-- #endif
				{
					["name"] = "Golden Scale Cuirass",
					["recipeID"] = 3511
				},
				{
					["name"] = "Green Iron Hauberk",
					["recipeID"] = 3508
				},
				{
					["name"] = "Heavy Mithril Breastplate",
					["recipeID"] = 9959
				},
				un(PHASE_SIX, {
					["name"] = "Icebane Breastplate",
					["recipeID"] = 28242,
				}),
				{
					["name"] = "Imperial Plate Chest",
					["recipeID"] = 16663
				},
				-- #if AFTER TBC
				{
					["name"] = "Invulnerable Mail",
					["recipeID"] = 16746,
				},
				-- #endif
				{
					["name"] = "Ironforge Breastplate",
					["recipeID"] = 8367,
				},
				un(NEVER_IMPLEMENTED, {
					["name"] = "Ironforge Chain",
					["recipeID"] = 8366,
				}),
				un(PHASE_FIVE_CATCH_UP, {
					["name"] = "Ironvine Breastplate",
					["recipeID"] = 28461,
				}),
				un(PHASE_FIVE, {
					["name"] = "Obsidian Mail Tunic",
					["recipeID"] = 27590,
				}),
				{
					["name"] = "Ornate Mithril Breastplate",
					["recipeID"] = 9972,
				},
				{
					["name"] = "Radiant Breastplate",
					["recipeID"] = 16648
				},
				{
					["name"] = "Rough Bronze Cuirass",
					["recipeID"] = 2670
				},
				{
					["name"] = "Runed Copper Breastplate",
					["recipeID"] = 2667
				},
				{
					["name"] = "Rough Copper Vest",
					["recipeID"] = 12260
				},
				{
					["name"] = "Runic Breastplate",
					["recipeID"] = 16731
				},
				{
					["name"] = "Shining Silver Breastplate",
					["recipeID"] = 2675
				},
				{
					["name"] = "Silvered Bronze Breastplate",
					["recipeID"] = 2673
				},
				{
					["name"] = "Steel Breastplate",
					["recipeID"] = 9916
				},
				un(PHASE_FIVE, {
					["name"] = "Thick Obsidian Breastplate",
					["recipeID"] = 27587,
				}),
				{
					["name"] = "Thorium Armor",
					["recipeID"] = 16642
				},
				-- #if AFTER TBC
				{
					["name"] = "Truesilver Breastplate",
					["recipeID"] = 9974,
				},
				{
					["name"] = "Wildthorn Mail",
					["recipeID"] = 16650,
				},
				-- #endif
			}
		},
		{
			["name"] = "Belts",
			["categoryID"] = 223,
			["g"] = {
				{
					["name"] = "Copper Chain Belt",
					["recipeID"] = 2661
				},
				-- #if AFTER TBC
				{
					["name"] = "Fiery Chain Girdle",
					["recipeID"] = 20872,
				},
				-- #endif
				un(PHASE_THREE, {
					["name"] = "Girdle of the Dawn",
					["recipeID"] = 23632,
				}),
				un(PHASE_FIVE, {
					["name"] = "Heavy Obsidian Belt",
					["recipeID"] = 27585,
				}),
				un(PHASE_THREE, {
					["name"] = "Heavy Timbermaw Belt",
					["recipeID"] = 23628,
				}),
				{
					["name"] = "Imperial Plate Belt",
					["recipeID"] = 16647
				},
				un(PHASE_FIVE_CATCH_UP, {
					["name"] = "Ironvine Belt",
					["recipeID"] = 28463,
				}),
				un(PHASE_FIVE, {
					["name"] = "Light Obsidian Belt",
					["recipeID"] = 27588,
				}),
				{
					["name"] = "Radiant Belt",
					["recipeID"] = 16645
				},
				{
					["name"] = "Runed Copper Belt",
					["recipeID"] = 2666
				},
				{
					["name"] = "Thorium Belt",
					["recipeID"] = 16643
				}
			}
		},
		{
			["name"] = "Legs",
			["categoryID"] = 224,
			["g"] = {
				{
					["name"] = "Copper Chain Pants",
					["recipeID"] = 2662
				},
				-- #if AFTER TBC
				{
					["name"] = "Dark Iron Leggings",
					["recipeID"] = 20876,
				},
				-- #endif
				un(PHASE_FOUR, {
					["name"] = "Darksoul Leggings",
					["recipeID"] = 24140,
				}),
				-- #if AFTER TBC
				applyclassicphase(PHASE_THREE, {
					["name"] = "Enchanted Thorium Leggings",
					["recipeID"] = 16744,
				}),
				-- #endif
				{
					["name"] = "Golden Scale Leggings",
					["recipeID"] = 3507
				},
				{
					["name"] = "Green Iron Leggings",
					["recipeID"] = 3506
				},
				{
					["name"] = "Heavy Mithril Pants",
					["recipeID"] = 9933
				},
				{
					["name"] = "Imperial Plate Leggings",
					["recipeID"] = 16730
				},
				{
					["name"] = "Mithril Scale Pants",
					["recipeID"] = 9931
				},
				{
					["name"] = "Orcish War Leggings",
					["recipeID"] = 9957,
					["races"] = HORDE_ONLY,
				},
				{
					["name"] = "Ornate Mithril Pants",
					["recipeID"] = 9945
				},
				{
					["name"] = "Radiant Leggings",
					["recipeID"] = 16725
				},
				{
					["name"] = "Rough Bronze Leggings",
					["recipeID"] = 2668
				},
				{
					["name"] = "Runed Copper Pants",
					["recipeID"] = 3324
				},
				{
					["name"] = "Runic Plate Leggings",
					["recipeID"] = 16732
				},
				{
					["name"] = "Silvered Bronze Leggings",
					["recipeID"] = 12259
				},
				{
					["name"] = "Thorium Leggings",
					["recipeID"] = 16662
				},
				-- #if AFTER TBC
				applyclassicphase(PHASE_FIVE, {
					["name"] = "Titanic Leggings",
					["recipeID"] = 27829,
				}),
				-- #endif
			}
		},
		{
			["name"] = "Boots",
			["categoryID"] = 225,
			["g"] = {
				{
					["name"] = "Barbaric Iron Boots",
					["recipeID"] = 9818
				},
				{
					["name"] = "Copper Chain Boots",
					["recipeID"] = 3319
				},
				-- #if AFTER TBC
				applyclassicphase(PHASE_FOUR, {
					["name"] = "Dark Iron Boots",
					["recipeID"] = 24399,
				}),
				-- #endif
				{
					["name"] = "Golden Scale Boots",
					["recipeID"] = 3515
				},
				{
					["name"] = "Green Iron Boots",
					["recipeID"] = 3334
				},
				{
					["name"] = "Heavy Mithril Boots",
					["recipeID"] = 9968
				},
				un(PHASE_THREE, {
					["name"] = "Heavy Timbermaw Boots",
					["recipeID"] = 23629,
				}),
				{
					["name"] = "Imperial Plate Boots",
					["recipeID"] = 16657
				},
				{
					["name"] = "Ornate Mithril Boots",
					["recipeID"] = 9979,
				},
				{
					["name"] = "Polished Steel Boots",
					["recipeID"] = 3513
				},
				{
					["name"] = "Radiant Boots",
					["recipeID"] = 16656
				},
				{
					["name"] = "Rough Bronze Boots",
					["recipeID"] = 7817
				},
				{
					["name"] = "Runic Plate Boots",
					["recipeID"] = 16665
				},
				{
					["name"] = "Silvered Bronze Boots",
					["recipeID"] = 3331
				},
				{
					["name"] = "Thorium Boots",
					["recipeID"] = 16652
				}
			}
		},
		{
			["name"] = "Shields",
			["categoryID"] = 226,
			["g"] = {
				un(PHASE_FIVE, {
					["name"] = "Jagged Obsidian Shield",
					["recipeID"] = 27586,
				}),
			}
		},
		{
			["name"] = "Weapons",
			["categoryID"] = 227,
			["g"] = {
				-- #if AFTER TBC
				{
					["name"] = "Annihilator",
					["recipeID"] = 16991,
				},
				{
					["name"] = "Arcanite Reaper",
					["recipeID"] = 16994,
				},
				{
					["name"] = "Arcanite Champion",
					["recipeID"] = 16990,
				},
				-- #endif
				{
					["name"] = "Big Black Mace",
					["recipeID"] = 10001
				},
				{
					["name"] = "Big Bronze Knife",
					["recipeID"] = 3491
				},
				-- #if AFTER TBC
				un(PHASE_THREE, {
					["name"] = "Black Amnesty",
					["recipeID"] = 23638,
				}),
				un(PHASE_THREE, {
					["name"] = "Blackfury",
					["recipeID"] = 23639,
				}),
				un(PHASE_THREE, {
					["name"] = "Blackguard",
					["recipeID"] = 23652,
				}),
				{
					["name"] = "Blazing Rapier",
					["recipeID"] = 16978,
				},
				un(NEVER_IMPLEMENTED, {
					["name"] = "Bleakwood Hew",
					["recipeID"] = 16965,
				}),
				{
					["name"] = "Blight",
					["recipeID"] = 10011,
				},
				un(NEVER_IMPLEMENTED, {
					["name"] = "Blood Talon",
					["recipeID"] = 16986,
				}),
				-- #endif
				{
					["name"] = "Blue Glittering Axe",
					["recipeID"] = 9995
				},
				{
					["name"] = "Bronze Axe",
					["recipeID"] = 2741
				},
				{
					["name"] = "Bronze Battle Axe",
					["recipeID"] = 9987
				},
				{
					["name"] = "Bronze Greatsword",
					["recipeID"] = 9986
				},
				{
					["name"] = "Bronze Mace",
					["recipeID"] = 2740
				},
				{
					["name"] = "Bronze Shortsword",
					["recipeID"] = 2742
				},
				{
					["name"] = "Bronze Warhammer",
					["recipeID"] = 9985
				},
				{
					["name"] = "Copper Axe",
					["recipeID"] = 2738
				},
				{
					["name"] = "Copper Battle Axe",
					["recipeID"] = 3293
				},
				{
					["name"] = "Copper Claymore",
					["recipeID"] = 9983
				},
				{
					["name"] = "Copper Dagger",
					["recipeID"] = 8880
				},
				{
					["name"] = "Copper Mace",
					["recipeID"] = 2737
				},
				{
					["name"] = "Copper Shortsword",
					["recipeID"] = 2739
				},
				-- #if AFTER TBC
				{
					["name"] = "Corruption",
					["recipeID"] = 16985,
				},
				{
					["name"] = "Dark Iron Destroyer",
					["recipeID"] = 20897,
				},
				{
					["name"] = "Dark Iron Pulverizer",
					["recipeID"] = 15292,
				},
				{
					["name"] = "Dark Iron Reaver",
					["recipeID"] = 20890,
				},
				{
					["name"] = "Dark Iron Sunderer",
					["recipeID"] = 15294,
				},
				un(NEVER_IMPLEMENTED, {
					["name"] = "Darkspear",
					["recipeID"] = 16987,
				}),
				{
					["name"] = "Dawn's Edge",
					["recipeID"] = 16970,
				},
				-- #endif
				{
					["name"] = "Dazzling Mithril Rapier",
					["recipeID"] = 10005
				},
				{
					["name"] = "Deadly Bronze Poniard",
					["recipeID"] = 3295
				},
				-- #if AFTER TBC
				un(PHASE_THREE, {
					["name"] = "Ebon Hand",
					["recipeID"] = 23650,
				}),
				-- #endif
				{
					["name"] = "Ebon Shiv",
					["recipeID"] = 10013
				},
				{
					["name"] = "Edge of Winter",
					["recipeID"] = 21913
				},
				-- #if AFTER TBC
				{
					["name"] = "Enchanted Battlehammer",
					["recipeID"] = 16973,
				},
				-- #endif
				-- #if BEFORE MOP
				un(TBC_PHASE_ONE, {
					["recipeID"] = 34982,	-- Enchanted Thorium Blades
					["timeline"] = {
						"added 2.0.1.10000",
						"removed 5.0.4.10000"
					},
				}),
				-- #endif
				{
					["name"] = "Frost Tiger Blade",
					["recipeID"] = 3497
				},
				-- #if AFTER TBC
				{
					["name"] = "Frostguard",
					["recipeID"] = 16992,
				},
				-- #endif
				{
					["name"] = "Glinting Steel Dagger",
					["recipeID"] = 15972
				},
				{
					["name"] = "Golden Iron Destroyer",
					["recipeID"] = 3495
				},
				{
					["name"] = "Hardened Iron Shortsword",
					["recipeID"] = 3492
				},
				-- #if AFTER TBC
				{
					["name"] = "Hammer of the Titans",
					["recipeID"] = 16988,
				},
				{
					["name"] = "Heartseeker",
					["recipeID"] = 16995,
				},
				-- #endif
				{
					["name"] = "Heavy Bronze Mace",
					["recipeID"] = 3296
				},
				{
					["name"] = "Heavy Copper Broadsword",
					["recipeID"] = 3292
				},
				applyclassicphase(TBC_PHASE_ONE, {
					["name"] = "Heavy Copper Longsword",
					["recipeID"] = 43549,
				}),
				{
					["name"] = "Heavy Copper Maul",
					["recipeID"] = 7408
				},
				{
					["name"] = "Heavy Mithril Axe",
					["recipeID"] = 9993
				},
				{
					["name"] = "Huge Thorium Battleaxe",
					["recipeID"] = 16971
				},
				un(NEVER_IMPLEMENTED, {
					["name"] = "Inlaid Thorium Hammer",
					["recipeID"] = 16967,
				}),
				{
					["name"] = "Iridescent Hammer",
					["recipeID"] = 6518
				},
				{
					["name"] = "Jade Serpentblade",
					["recipeID"] = 3493
				},
				{
					["name"] = "Massive Iron Axe",
					["recipeID"] = 3498
				},
				-- #if AFTER TBC
				{
					["name"] = "Masterwork Stormhammer",
					["recipeID"] = 16993,
				},
				-- #endif
				{
					["name"] = "Mighty Iron Hammer",
					["recipeID"] = 3297
				},
				{
					["name"] = "Moonsteel Broadsword",
					["recipeID"] = 3496
				},
				-- #if AFTER TBC
				un(PHASE_THREE, {
					["name"] = "Nightfall",
					["recipeID"] = 23653,
				}),
				-- #endif
				{
					["name"] = "Ornate Thorium Handaxe",
					["recipeID"] = 16969
				},
				{
					["name"] = "Pearl-handled Dagger",
					["recipeID"] = 6517
				},
				-- #if AFTER TBC
				un(PHASE_FIVE, {
					["name"] = "Persuader",
					["recipeID"] = 27830,
				}),
				{
					["name"] = "Phantom Blade",
					["recipeID"] = 10007,
				},
				-- #endif
				un(NEVER_IMPLEMENTED, {
					["name"] = "Rune Edge",
					["recipeID"] = 16980,
				}),
				{
					["name"] = "Runed Mithril Hammer",
					["recipeID"] = 10009
				},
				-- #if AFTER TBC
				un(PHASE_FIVE, {
					["name"] = "Sageblade",
					["recipeID"] = 27832,
				}),
				-- #endif
				{
					["name"] = "Searing Golden Blade",
					["recipeID"] = 15973
				},
				-- #if AFTER TBC
				{
					["name"] = "Serenity",
					["recipeID"] = 16983,
				},
				-- #endif
				{
					["name"] = "Shadow Crescent Axe",
					["recipeID"] = 3500
				},
				{
					["name"] = "Solid Iron Maul",
					["recipeID"] = 3494
				},
				{
					["name"] = "Sulfuron Hammer",
					["recipeID"] = 21161
				},
				-- #if AFTER TBC
				{
					["name"] = "The Shatterer",
					["recipeID"] = 10003,
				},
				-- #endif
				-- #if BEFORE MOP
				un(TBC_PHASE_ONE, {
					["recipeID"] = 34979,	-- Thick Bronze Darts
					["timeline"] = {
						"added 2.0.1.10000",
						"removed 5.0.4.10000"
					},
				}),
				-- #endif
				{
					["name"] = "Thick War Axe",
					["recipeID"] = 3294
				},
				un(NEVER_IMPLEMENTED, {
					["name"] = "Thorium Greatsword",
					["recipeID"] = 16960,
				}),
				-- #if AFTER TBC
				{
					["name"] = "Truesilver Champion",
					["recipeID"] = 10015,
				},
				-- #endif
				{
					["name"] = "Volcanic Hammer",
					["recipeID"] = 16984
				},
				-- #if BEFORE MOP
				un(TBC_PHASE_ONE, {
					["recipeID"] = 34981,	-- Whirling Steel Axes
					["timeline"] = {
						"added 2.0.1.10000",
						"removed 5.0.4.10000"
					},
				}),
				-- #endif
				{
					["name"] = "Wicked Mithril Blade",
					["recipeID"] = 9997
				}
			}
		},
		{
			["name"] = "Skeleton Keys",
			["categoryID"] = 228,
			["g"] = {
				{
					["name"] = "Arcanite Skeleton Key",
					["recipeID"] = 19669
				},
				{
					["name"] = "Golden Skeleton Key",
					["recipeID"] = 19667
				},
				{
					["name"] = "Silver Skeleton Key",
					["recipeID"] = 19666
				},
				{
					["name"] = "Truesilver Skeleton Key",
					["recipeID"] = 19668
				}
			}
		},
	}),
	applyclassicphase(TBC_PHASE_ONE, tier(2, {	-- Burning Crusade
		{
			["name"] = "Materials",
			["categoryID"] = 215,
			["g"] = {
				{
					["name"] = "Adamantite Rod",
					["recipeID"] = 32656,
				},
				{
					["name"] = "Eternium Rod",
					["recipeID"] = 32657,
				},
				{
					["name"] = "Fel Iron Rod",
					["recipeID"] = 32655,
				},
			},
		},
		{
			["name"] = "Weapon Mods",
			["categoryID"] = 216,
			["g"] = {
				{
					["name"] = "Adamantite Weapon Chain",
					["recipeID"] = 42688,
				},
				{
					["name"] = "Adamantite Sharpening Stone",
					["recipeID"] = 29656,
				},
				{
					["name"] = "Adamantite Weightstone",
					["recipeID"] = 34608,
				},
				{
					["name"] = "Fel Sharpening Stone",
					["recipeID"] = 29654,
				},
				{
					["name"] = "Fel Weightstone",
					["recipeID"] = 34607,
				},

			},
		},
		{
			["name"] = "Armor Mods",
			["categoryID"] = 217,
			["g"] = {
				{
					["name"] = "Felsteel Shield Spike",
					["recipeID"] = 29657,
				},
				{
					["name"] = "Greater Rune of Warding",
					["recipeID"] = 32285,
				},
				{
					["name"] = "Greater Ward of Shielding",
					["recipeID"] = 29729,
				},
				{
					["name"] = "Lesser Rune of Warding",
					["recipeID"] = 32284,
				},
				{
					["name"] = "Lesser Ward of Shielding",
					["recipeID"] = 29728,
				},
			},
		},
		{
			["name"] = "Helms",
			["categoryID"] = 218,
			["g"] = {
				{
					["name"] = "Fel Iron Chain Coif",
					["recipeID"] = 29551,
				},
				{
					["name"] = "Felsteel Helm",
					["recipeID"] = 29621,
				},
				{
					["name"] = "Flamebane Helm",
					["recipeID"] = 29615,
				},
				{
					["name"] = "Helm of the Stalwart Defender",
					["recipeID"] = 29664,
				},
				{
					["name"] = "Iceguard Helm",
					["recipeID"] = 38479,
				},
				{
					["name"] = "Ragesteel Helm",
					["recipeID"] = 29643,
				},
				{
					["name"] = "Oathkeepers Helm",
					["recipeID"] = 29668,
				},
				{
					["name"] = "Storm Helm",
					["recipeID"] = 29663,
				},
				{
					["name"] = "Wildguard Helm",
					["recipeID"] = 38476,
				},
			},
		},
		{
			["name"] = "Shoulders",
			["categoryID"] = 219,
			["g"] = {
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Dawnsteel Shoulders",
					["recipeID"] = 41135,
				}),
				{
					["name"] = "Ragesteel Shoulders",
					["recipeID"] = 42662,
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Swiftsteel Shoulders",
					["recipeID"] = 41133,
				}),
			},
		},
		{
			["name"] = "Bracers",
			["categoryID"] = 222,
			["g"] = {
				{
					["name"] = "Adamantite Plate Bracers",
					["recipeID"] = 29603,
				},
				{
					["name"] = "Black Felsteel Bracers",
					["recipeID"] = 29669,
				},
				{
					["name"] = "Blessed Bracers",
					["recipeID"] = 29672,
				},
				{
					["name"] = "Bracers of the Green Fortress",
					["recipeID"] = 29671,
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Dawnsteel Bracers",
					["recipeID"] = 41134,
				}),
				{
					["name"] = "Fel Iron Chain Bracers",
					["recipeID"] = 29553,
				},
				{
					["name"] = "Flamebane Bracers",
					["recipeID"] = 29614,
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Shadesteel Bracers",
					["recipeID"] = 40034,
				}),
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Swiftsteel Bracers",
					["recipeID"] = 41132,
				}),
			},
		},
		{
			["name"] = "Gauntlets",
			["categoryID"] = 221,
			["g"] = {
				{
					["name"] = "Adamantite Plate Gloves",
					["recipeID"] = 29605,
				},
				{
					["name"] = "Felfury Gauntlets",
					["recipeID"] = 29658,
				},
				{
					["name"] = "Fel Iron Chain Gloves",
					["recipeID"] = 29552,
				},
				{
					["name"] = "Fel Iron Plate Gloves",
					["recipeID"] = 29545,
				},
				{
					["name"] = "Felsteel Gloves",
					["recipeID"] = 29619,
				},
				{
					["name"] = "Flamebane Gloves",
					["recipeID"] = 29616,
				},
				{
					["name"] = "Gauntlets of the Iron Tower",
					["recipeID"] = 29622,
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Hard Khorium Battlefists",
					["recipeID"] = 46141,
				}),
				{
					["name"] = "Ragesteel Gloves",
					["recipeID"] = 29642,
				},
				{
					["name"] = "Steelgrip Gauntlets",
					["recipeID"] = 29662,
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Sunblessed Gauntlets",
					["recipeID"] = 46140,
				}),
				{
					["name"] = "Swiftsteel Gloves",
					["recipeID"] = 29648,
				},
			},
		},
		{
			["name"] = "Chest",
			["categoryID"] = 220,
			["g"] = {
				{
					["name"] = "Adamantite Breastplate",
					["recipeID"] = 29606,
				},
				{
					["name"] = "Earthpeace Breastplate",
					["recipeID"] = 29649,
				},
				{
					["name"] = "Enchanted Adamantite Breastplate",
					["recipeID"] = 29610,
				},
				{
					["name"] = "Fel Iron Breastplate",
					["recipeID"] = 29550,
				},
				{
					["name"] = "Fel Iron Chain Tunic",
					["recipeID"] = 29556,
				},
				{
					["name"] = "Flamebane Breastplate",
					["recipeID"] = 29617,
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Hard Khorium Battleplate",
					["recipeID"] = 46144,
				}),
				{
					["name"] = "Iceguard Breastplate",
					["recipeID"] = 38477,
				},
				{
					["name"] = "Ragesteel Breastplate",
					["recipeID"] = 29645,
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Sunblessed Breastplate",
					["recipeID"] = 46142,
				}),
				{
					["name"] = "Wildguard Breastplate",
					["recipeID"] = 38473,
				},
			},
		},
		{
			["name"] = "Belts",
			["categoryID"] = 223,
			["g"] = {
				applyclassicphase(TBC_PHASE_TWO, {
					["name"] = "Belt of the Guardian",
					["recipeID"] = 36389,
				}),
				{
					["name"] = "Enchanted Adamantite Belt",
					["recipeID"] = 29608,
				},
				{
					["name"] = "Fel Iron Plate Belt",
					["recipeID"] = 29547,
				},
				{
					["name"] = "Khorium Belt",
					["recipeID"] = 29628,
				},
				applyclassicphase(TBC_PHASE_TWO, {
					["name"] = "Red Belt of Battle",
					["recipeID"] = 36390,
				}),
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Shadesteel Girdle",
					["recipeID"] = 40036,
				}),
			},
		},
		{
			["name"] = "Legs",
			["categoryID"] = 224,
			["g"] = {
				{
				["name"] = "Enchanted Adamantite Leggings",
				["recipeID"] = 29613,
				},
				{
					["name"] = "Fel Iron Plate Pants",
					["recipeID"] = 29549,
				},
				{
					["name"] = "Felsteel Leggings",
					["recipeID"] = 29620,
				},
				{
					["name"] = "Iceguard Leggings",
					["recipeID"] = 38478,
				},
				{
					["name"] = "Khorium Pants",
					["recipeID"] = 29629,
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Shadesteel Greaves",
					["recipeID"] = 40035,
				}),
				{
					["name"] = "Wildguard Leggings",
					["recipeID"] = 38475,
				},
			},
		},
		{
			["name"] = "Boots",
			["categoryID"] = 225,
			["g"] = {
				applyclassicphase(TBC_PHASE_TWO, {
					["name"] = "Boots of the Protector",
					["recipeID"] = 36391,
				}),
				{
					["name"] = "Enchanted Adamantite Boots",
					["recipeID"] = 29611,
				},
				{
					["name"] = "Fel Iron Plate Boots",
					["recipeID"] = 29548,
				},
				{
					["name"] = "Khorium Boots",
					["recipeID"] = 29630,
				},
				applyclassicphase(TBC_PHASE_TWO, {
					["name"] = "Red Havoc Boots",
					["recipeID"] = 36392,
				}),				
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Shadesteel Sabots",
					["recipeID"] = 40033,
				}),
			},
		},
		{
			["name"] = "Weapons",
			["categoryID"] = 227,
			["g"] = {
				{
					["name"] = "Adamantite Cleaver",
					["recipeID"] = 29568,
				},
				{
					["name"] = "Adamantite Dagger",
					["recipeID"] = 29569,
				},
				{
					["name"] = "Adamantite Maul",
					["recipeID"] = 29566,
				},
				{
					["name"] = "Adamantite Rapier",
					["recipeID"] = 29571,
				},
				{
					["name"] = "Dirge",
					["recipeID"] = 29699,
				},
				{
					["name"] = "Eternium Runed Blade",
					["recipeID"] = 29698,
				},
				{
					["name"] = "Fel Edged Battleaxe",
					["recipeID"] = 29694,
				},
				{
					["name"] = "Fel Hardened Maul",
					["recipeID"] = 29697,
				},
				{
					["name"] = "Fel Iron Greatsword",
					["recipeID"] = 29565,
				},
				{
					["name"] = "Fel Iron Hammer",
					["recipeID"] = 29558,
				},
				{
					["name"] = "Fel Iron Hatchet",
					["recipeID"] = 29557,
				},
				{
					["name"] = "Felsteel Longblade",
					["recipeID"] = 29692,
				},
				{
					["name"] = "Felsteel Reaper",
					["recipeID"] = 29695,
				},
				{
					["name"] = "Felsteel Whisper Knives",
					["recipeID"] = 34983,
				},
				{
					["name"] = "Hammer of Righteous Might",
					["recipeID"] = 43846,
				},
				{
					["name"] = "Hand of Eternity",
					["recipeID"] = 29700,
				},
				{
					["name"] = "Khorium Champion",
					["recipeID"] = 29693,
				},
				{
					["name"] = "Runic Hammer",
					["recipeID"] = 29696,
				},
			},
		},
	})),
	applyclassicphase(WRATH_PHASE_ONE, tier(3, {	-- Wrath of the Lich King
		
	})),
	applyclassicphase(CATA_PHASE_ONE, tier(4, {	-- Cataclysm
		
	})),
	applyclassicphase(MOP_PHASE_ONE, tier(5, {	-- Mists of Pandaria
		
	})),
	applyclassicphase(WOD_PHASE_ONE, tier(6, {	-- Warlords of Draenor
		
	})),
	applyclassicphase(LEGION_PHASE_ONE, tier(7, {	-- Legion
		
	})),
	applyclassicphase(BFA_PHASE_ONE, tier(8, {	-- BFA
		
	})),
	applyclassicphase(SHADOWLANDS_PHASE_ONE, tier(9, {	-- Shadowlands
		
	})),
});

-- Blacksmithing Item Database
_.ItemDB = {};

-- Recipe Cache (for Validation)
local recipeCache, recipeCacheU = {}, {};
local function cacheRecipes(g)
	if g and type(g) == "table" then
		if g.groups then cacheRecipes(g.groups); end
		if g.g then cacheRecipes(g.g); end
		local spellID = g.spellID or g.recipeID;
		if spellID then
			recipeCache[spellID] = true; 
			if g.u then recipeCacheU[spellID] = g.u; end
		end
		for i,o in ipairs(g) do
			cacheRecipes(o);
		end
	end
end
cacheRecipes(_.Professions);

-- Blacksmithing Item Recipe Database
local itemrecipe = function(name, itemID, spellID, phase, timeline)
	local o = { ["itemID"] = itemID, ["spellID"] = spellID };
	if type(phase) == "string" then
		timeline = phase;
		phase = nil;
	end
	if timeline then
		-- Ensure that the timeline is in a table format.
		if type(timeline) == "string" then timeline = { timeline }; end
		if type(timeline) == "table" then o.timeline = timeline; end
	end
	if name then
		-- Ensure that the name is in a string format.
		if type(name) == "table" then
			-- #if AFTER CATA
			name = name[2];
			-- #else
			name = name[1];
			-- #endif
		end
		o.name = name;
	end
	_.ItemDB[itemID] = phase and applyclassicphase(phase, o) or o;
	
	-- Ensure that this recipe's spellID exists in the profession database.
	if recipeCache and type(timeline) ~= "boolean" then
		if recipeCache[o.spellID] then
			-- Grab the phase from the cache.
			local u = recipeCacheU[o.spellID];
			if u then
				if o.u ~= u then
					print("ITEM RECIPE MISSING U: ", name, o.spellID, u, o.u);
					o.u = u;
				end
			elseif o.u ~= u then
				print("RECIPE MISSING U: ", name, o.spellID, o.u);
			end
		else
			print("MISSING RECIPE", name, o.spellID);
		end
	end
	return o;
end

-- Classic Recipes
itemrecipe("Plans: Runed Copper Breastplate", 2881, 2667);
itemrecipe("Plans: Silvered Bronze Shoulders", 2882, 3330);
itemrecipe("Plans: Deadly Bronze Poniard", 2883, 3295);
itemrecipe("Plans: Mighty Iron Hammer", 3608, 3297);
itemrecipe("Plans: Copper Chain Vest", 3609, 3321);
itemrecipe("Plans: Gemmed Copper Gauntlets", 3610, 3325);
itemrecipe("Plans: Green Iron Boots", 3611, 3334);
itemrecipe("Plans: Green Iron Gauntlets", 3612, 3336);
itemrecipe("Plans: Jade Serpentblade", 3866, 3493);
itemrecipe("Plans: Golden Iron Destroyer", 3867, 3495);
itemrecipe("Plans: Frost Tiger Blade", 3868, 3497);
itemrecipe("Plans: Shadow Crescent Axe", 3869, 3500);
itemrecipe("Plans: Green Iron Shoulders", 3870, 3504);
itemrecipe("Plans: Golden Scale Shoulders", 3871, 3505);
itemrecipe("Plans: Golden Scale Leggings", 3872, 3507);
itemrecipe("Plans: Golden Scale Cuirass", 3873, 3511);
itemrecipe("Plans: Polished Steel Boots", 3874, 3513);
itemrecipe("Plans: Golden Scale Boots", 3875, 3515);
itemrecipe("Plans: Iridescent Hammer", 5543, 6518);
itemrecipe("Plans: Silvered Bronze Breastplate", 5578, 2673);
itemrecipe("Plans: Iron Shield Spike", 6044, 7221);
itemrecipe("Plans: Iron Counterweight", 6045, 7222);
itemrecipe("Plans: Steel Weapon Chain", 6046, 7224);
itemrecipe("Plans: Golden Scale Coif", 6047, 3503);
itemrecipe("Plans: Ironforge Breastplate", 6735, 8367);
itemrecipe("Plans: Heavy Mithril Pants", 7975, 9933);
itemrecipe("Plans: Mithril Shield Spike", 7976, 9939);
itemrecipe("Plans: Barbaric Iron Shoulders", 7978, 9811);
itemrecipe("Plans: Barbaric Iron Breastplate", 7979, 9813);
itemrecipe("Plans: Barbaric Iron Helm", 7980, 9814);
itemrecipe("Plans: Barbaric Iron Boots", 7981, 9818);
itemrecipe("Plans: Barbaric Iron Gloves", 7982, 9820);
itemrecipe("Plans: Ornate Mithril Pants", 7983, 9945);
itemrecipe("Plans: Ornate Mithril Gloves", 7984, 9950);
itemrecipe("Plans: Ornate Mithril Shoulder", 7985, 9952);
itemrecipe("Plans: Mithril Spurs", 7989, 9964);
itemrecipe("Plans: Heavy Mithril Helm", 7990, 9970);
itemrecipe("Plans: Mithril Scale Shoulders", 7991, 9966);
itemrecipe("Plans: Blue Glittering Axe", 7992, 9995);
itemrecipe("Plans: Dazzling Mithril Rapier", 7993, 10005);
itemrecipe("Plans: Mithril Scale Bracers", 7995, 9937);
itemrecipe("Plans: Runed Mithril Hammer", 8028, 10009);
itemrecipe("Plans: Wicked Mithril Blade", 8029, 9997);
itemrecipe("Plans: Ebon Shiv", 8030, 10013);
itemrecipe("Plans: Golden Scale Gauntlets", 9367, 11643);
itemrecipe("Plans: Silvered Bronze Leggings", 10424, 12259);
itemrecipe("Plans: Inlaid Mithril Cylinder", 10713, 11454);
itemrecipe("Plans: Solid Iron Maul", 10858, 3494);
itemrecipe("Plans: Dark Iron Pulverizer", 11610, 15292);
itemrecipe("Plans: Dark Iron Sunderer", 11611, 15294);
itemrecipe("Plans: Dark Iron Plate", 11612, 15296);
itemrecipe("Plans: Dark Iron Mail", 11614, 15293);
itemrecipe("Plans: Dark Iron Shoulders", 11615, 15295);
itemrecipe("Plans: Hardened Iron Shortsword", 12162, 3492);
itemrecipe("Plans: Moonsteel Broadsword", 12163, 3496);
itemrecipe("Plans: Massive Iron Axe", 12164, 3498);
itemrecipe("Plans: Searing Golden Blade", 12261, 15973);
itemrecipe("Plans: Thorium Armor", 12682, 16642);
itemrecipe("Plans: Thorium Belt", 12683, 16643);
itemrecipe("Plans: Thorium Bracers", 12684, 16644);
itemrecipe("Plans: Radiant Belt", 12685, 16645);
itemrecipe("Plans: Imperial Plate Shoulders", 12687, 16646);
itemrecipe("Plans: Imperial Plate Belt", 12688, 16647);
itemrecipe("Plans: Radiant Breastplate", 12689, 16648);
itemrecipe("Plans: Imperial Plate Bracers", 12690, 16649);
itemrecipe("Plans: Wildthorn Mail", 12691, 16650);
itemrecipe("Plans: Thorium Shield Spike", 12692, 16651);
itemrecipe("Plans: Thorium Boots", 12693, 16652);
itemrecipe("Plans: Thorium Helm", 12694, 16653);
itemrecipe("Plans: Radiant Gloves", 12695, 16654);
itemrecipe("Plans: Demon Forged Breastplate", 12696, 16667);
itemrecipe("Plans: Radiant Boots", 12697, 16656);
itemrecipe("Plans: Dawnbringer Shoulders", 12698, 16660, TBC_PHASE_ONE);
itemrecipe("Plans: Fiery Plate Gauntlets", 12699, 16655);
itemrecipe("Plans: Imperial Plate Boots", 12700, 16657);
itemrecipe("Plans: Imperial Plate Helm", 12701, 16658);
itemrecipe("Plans: Radiant Circlet", 12702, 16659);
itemrecipe("Plans: Storm Gauntlets", 12703, 16661);
itemrecipe("Plans: Thorium Leggings", 12704, 16662);
itemrecipe("Plans: Imperial Plate Chest", 12705, 16663);
itemrecipe("Plans: Runic Plate Shoulders", 12706, 16664);
itemrecipe("Plans: Runic Plate Boots", 12707, 16665);
itemrecipe("Plans: Whitesoul Helm", 12711, 16724);
itemrecipe("Plans: Radiant Leggings", 12713, 16725);
itemrecipe("Plans: Runic Plate Helm", 12714, 16726);
itemrecipe("Plans: Imperial Plate Leggings", 12715, 16730);
itemrecipe("Plans: Helm of the Great Chief", 12716, 16728);
itemrecipe("Plans: Lionheart Helm", 12717, 16729);
itemrecipe("Plans: Runic Breastplate", 12718, 16731);
itemrecipe("Plans: Runic Plate Leggings", 12719, 16732);
itemrecipe("Plans: Stronghold Gauntlets", 12720, 16741);
itemrecipe("Plans: Invulnerable Mail", 12728, 16746);
itemrecipe("Plans: Ornate Thorium Handaxe", 12819, 16969);
itemrecipe("Plans: Dawn's Edge", 12821, 16970);
itemrecipe("Plans: Huge Thorium Battleaxe", 12823, 16971);
itemrecipe("Plans: Enchanted Battlehammer", 12824, 16973);
itemrecipe("Plans: Blazing Rapier", 12825, 16978);
itemrecipe("Plans: Serenity", 12827, 16983);
itemrecipe("Plans: Volcanic Hammer", 12828, 16984);
itemrecipe("Plans: Corruption", 12830, 16985);
itemrecipe("Plans: Hammer of the Titans", 12833, 16988);
itemrecipe("Plans: Arcanite Champion", 12834, 16990);
itemrecipe("Plans: Annihilator", 12835, 16991);
itemrecipe("Plans: Frostguard", 12836, 16992);
itemrecipe("Plans: Masterwork Stormhammer", 12837, 16993);
itemrecipe("Plans: Arcanite Reaper", 12838, 16994);
itemrecipe("Plans: Heartseeker", 12839, 16995);
itemrecipe("Plans: Fiery Chain Girdle", 17049, 20872);
itemrecipe("Plans: Dark Iron Bracers", 17051, 20874);
itemrecipe("Plans: Dark Iron Leggings", 17052, 20876);
itemrecipe("Plans: Fiery Chain Shoulders", 17053, 20873);
itemrecipe("Plans: Dark Iron Reaver", 17059, 20890);
itemrecipe("Plans: Dark Iron Destroyer", 17060, 20897);
itemrecipe("Plans: Enchanted Thorium Helm", 12725, 16742, PHASE_THREE);
itemrecipe("Plans: Enchanted Thorium Leggings", 12726, 16744, PHASE_THREE);
itemrecipe("Plans: Enchanted Thorium Breastplate", 12727, 16745, PHASE_THREE);
un(FEAST_OF_WINTER_VEIL, itemrecipe("Plans: Edge of Winter", 17706, 21913));
itemrecipe("Plans: Elemental Sharpening Stone", 18264, 22757);
itemrecipe("Plans: Sulfuron Hammer", 18592, 21161);
itemrecipe("Plans: Heavy Timbermaw Belt", 19202, 23628, PHASE_THREE);
itemrecipe("Plans: Girdle of the Dawn", 19203, 23632, PHASE_THREE);
itemrecipe("Plans: Heavy Timbermaw Boots", 19204, 23629, PHASE_THREE);
itemrecipe("Plans: Gloves of the Dawn", 19205, 23633, PHASE_THREE);
itemrecipe("Plans: Dark Iron Helm", 19206, 23636, PHASE_THREE);
itemrecipe("Plans: Dark Iron Gauntlets", 19207, 23637, PHASE_THREE);
itemrecipe("Plans: Black Amnesty", 19208, 23638, PHASE_THREE);
itemrecipe("Plans: Blackfury", 19209, 23639, PHASE_THREE);
itemrecipe("Plans: Ebon Hand", 19210, 23650, PHASE_THREE);
itemrecipe("Plans: Blackguard", 19211, 23652, PHASE_THREE);
itemrecipe("Plans: Nightfall", 19212, 23653, PHASE_THREE);
itemrecipe("Plans: Bloodsoul Breastplate", 19776, 24136, PHASE_FOUR);
itemrecipe("Plans: Bloodsoul Shoulders", 19777, 24137, PHASE_FOUR);
itemrecipe("Plans: Bloodsoul Gauntlets", 19778, 24138, PHASE_FOUR);
itemrecipe("Plans: Darksoul Breastplate", 19779, 24139, PHASE_FOUR);
itemrecipe("Plans: Darksoul Leggings", 19780, 24140, PHASE_FOUR);
itemrecipe("Plans: Darksoul Shoulders", 19781, 24141, PHASE_FOUR);
itemrecipe("Plans: Dark Iron Boots", 20040, 24399, PHASE_FOUR);
itemrecipe("Plans: Darkrune Gauntlets", 20553, 24912, PHASE_FOUR);
itemrecipe("Plans: Darkrune Breastplate", 20554, 24914, PHASE_FOUR);
itemrecipe("Plans: Darkrune Helm", 20555, 24913, PHASE_FOUR);
itemrecipe("Plans: Heavy Obsidian Belt", 22209, 27585, PHASE_FIVE);
itemrecipe("Plans: Light Obsidian Belt", 22214, 27588, PHASE_FIVE);
itemrecipe("Plans: Jagged Obsidian Shield", 22219, 27586, PHASE_FIVE);
itemrecipe("Plans: Black Grasp of the Destroyer", 22220, 27589, PHASE_FIVE);
itemrecipe("Plans: Obsidian Mail Tunic", 22221, 27590, PHASE_FIVE);
itemrecipe("Plans: Thick Obsidian Breastplate", 22222, 27587, PHASE_FIVE);
itemrecipe("Plans: Titanic Leggings", 22388, 27829, PHASE_FIVE);
itemrecipe("Plans: Sageblade", 22389, 27832, PHASE_FIVE);
itemrecipe("Plans: Persuader", 22390, 27830, PHASE_FIVE);
itemrecipe("Plans: Icebane Breastplate", 22703, 28242, PHASE_SIX);
itemrecipe("Plans: Icebane Gauntlets", 22704, 28243, PHASE_SIX);
itemrecipe("Plans: Icebane Bracers", 22705, 28244, PHASE_SIX);
itemrecipe("Plans: Ironvine Breastplate", 22766, 28461, PHASE_FIVE_CATCH_UP);
itemrecipe("Plans: Ironvine Gloves", 22767, 28462, PHASE_FIVE_CATCH_UP);
itemrecipe("Plans: Ironvine Belt", 22768, 28463, PHASE_FIVE_CATCH_UP);

-- #if AFTER TBC
-- TBC Recipes
itemrecipe("Plans: Heavy Copper Longsword", 33792, 43549, TBC_PHASE_ONE);
itemrecipe("Plans: Adamantite Maul", 23590, 29566, TBC_PHASE_ONE);
itemrecipe("Plans: Adamantite Cleaver", 23591, 29568, TBC_PHASE_ONE);
itemrecipe("Plans: Adamantite Dagger", 23592, 29569, TBC_PHASE_ONE);
itemrecipe("Plans: Adamantite Rapier", 23593, 29571, TBC_PHASE_ONE);
itemrecipe("Plans: Adamantite Plate Bracers", 23594, 29603, TBC_PHASE_ONE);
itemrecipe("Plans: Adamantite Plate Gloves", 23595, 29605, TBC_PHASE_ONE);
itemrecipe("Plans: Adamantite Breastplate", 23596, 29606, TBC_PHASE_ONE);
itemrecipe("Plans: Enchanted Adamantite Belt", 23597, 29608, TBC_PHASE_ONE);
itemrecipe("Plans: Enchanted Adamantite Boots", 23598, 29611, TBC_PHASE_ONE);
itemrecipe("Plans: Enchanted Adamantite Breastplate", 23599, 29610, TBC_PHASE_ONE);
itemrecipe("Plans: Enchanted Adamantite Leggings", 23600, 29610, TBC_PHASE_ONE);
itemrecipe("Plans: Flamebane Bracers", 23601, 29614, TBC_PHASE_ONE);
itemrecipe("Plans: Flamebane Helm", 23602, 29615, TBC_PHASE_ONE);
itemrecipe("Plans: Flamebane Gloves", 23603, 29616, TBC_PHASE_ONE);
itemrecipe("Plans: Flamebane Breastplate", 23604, 29617, TBC_PHASE_ONE);
itemrecipe("Plans: Felsteel Gloves", 23605, 29619, TBC_PHASE_ONE);
itemrecipe("Plans: Felsteel Leggings", 23606, 29620, TBC_PHASE_ONE);
itemrecipe("Plans: Felsteel Helm", 23607, 29621, TBC_PHASE_ONE);
itemrecipe("Plans: Khorium Belt", 23608, 29628, TBC_PHASE_ONE);
itemrecipe("Plans: Khorium Pants", 23609, 29629, TBC_PHASE_ONE);
itemrecipe("Plans: Khorium Boots", 23610, 29630, TBC_PHASE_ONE);
itemrecipe("Plans: Ragesteel Gloves", 23611, 29642, TBC_PHASE_ONE);
itemrecipe("Plans: Ragesteel Helm", 23612, 29643, TBC_PHASE_ONE);
itemrecipe("Plans: Ragesteel Breastplate", 23613, 29645, TBC_PHASE_ONE);
itemrecipe("Plans: Swiftsteel Gloves", 23615, 29648, TBC_PHASE_ONE);
itemrecipe("Plans: Earthpeace Breastplate", 23617, 29649, TBC_PHASE_ONE);
itemrecipe("Plans: Adamantite Sharpening Stone", 23618, 29656, TBC_PHASE_ONE);
itemrecipe("Plans: Felsteel Shield Spike", 23619, 29657, TBC_PHASE_ONE);
itemrecipe("Plans: Lesser Ward of Shielding", 23638, 29728, TBC_PHASE_ONE);
itemrecipe("Plans: Greater Ward of Shielding", 23639, 29729, TBC_PHASE_ONE);
itemrecipe("Plans: Felsteel Shield Spike", 24002, 29657, TBC_PHASE_ONE);
itemrecipe("Plans: Greater Rune of Warding", 25526, 32285, TBC_PHASE_ONE);
itemrecipe("Plans: Adamantite Rod", 25846, 32656, TBC_PHASE_ONE, "removed 5.0.4.10000");
itemrecipe("Plans: Eternium Rod", 25847, 32657, TBC_PHASE_ONE, "removed 5.0.4.10000");
itemrecipe("Plans: Adamantite Weightstone", 28632, 34608, TBC_PHASE_ONE);
itemrecipe("Plans: Wildguard Breastplate", 31390, 38473, TBC_PHASE_ONE);
itemrecipe("Plans: Wildguard Leggings", 31391, 38475, TBC_PHASE_ONE);
itemrecipe("Plans: Wildguard Helm", 31392, 38476, TBC_PHASE_ONE);
itemrecipe("Plans: Iceguard Breastplate", 31393, 38477, TBC_PHASE_ONE);
itemrecipe("Plans: Iceguard Leggings", 31394, 38478, TBC_PHASE_ONE);
itemrecipe("Plans: Iceguard Helm", 31395, 38479, TBC_PHASE_ONE);
itemrecipe("Plans: Ragesteel Shoulders", 33174, 42662, TBC_PHASE_ONE);

-- World Drops (TBC Phase One)
itemrecipe("Plans: Adamantite Weapon Chain", 33186, 42688, TBC_PHASE_ONE);
itemrecipe("Plans: Black Felsteel Bracers", 23626, 29669, TBC_PHASE_ONE);
itemrecipe("Plans: Blessed Bracers", 23628, 29672, TBC_PHASE_ONE);
itemrecipe("Plans: Bracers of the Green Fortress", 23627, 29671, TBC_PHASE_ONE);
itemrecipe("Plans: Dirge", 23636, 29699, TBC_PHASE_ONE);
itemrecipe("Plans: Eternium Runed Blade", 23635, 29698, TBC_PHASE_ONE);
itemrecipe("Plans: Fel Edged Battleaxe", 23631, 29694, TBC_PHASE_ONE);
itemrecipe("Plans: Fel Hardened Maul", 23634, 29697, TBC_PHASE_ONE);
itemrecipe("Plans: Felfury Gauntlets", 23620, 29658, TBC_PHASE_ONE);
itemrecipe("Plans: Felsteel Longblade", 23629, 29692, TBC_PHASE_ONE);
itemrecipe("Plans: Felsteel Reaper", 23632, 29695, TBC_PHASE_ONE);
itemrecipe("Plans: Gauntlets of the Iron Tower", 23621, 29622, TBC_PHASE_ONE);
itemrecipe("Plans: Hammer of Righteous Might", 33954, 43846, TBC_PHASE_ONE);
itemrecipe("Plans: Hand of Eternity", 23637, 29700, TBC_PHASE_ONE);
itemrecipe("Plans: Helm of the Stalwart Defender", 23624, 29664, TBC_PHASE_ONE);
itemrecipe("Plans: Khorium Champion", 23630, 29693, TBC_PHASE_ONE);
itemrecipe("Plans: Oathkeeper's Helm", 23625, 29668, TBC_PHASE_ONE);
itemrecipe("Plans: Runic Hammer", 23633, 29696, TBC_PHASE_ONE);
itemrecipe("Plans: Steelgrip Gauntlets", 23622, 29662, TBC_PHASE_ONE);
itemrecipe("Plans: Storm Helm", 23623, 29663, TBC_PHASE_ONE);

itemrecipe("Plans: Belt of the Guardian", 30321, 36389, TBC_PHASE_TWO);
itemrecipe("Plans: Red Belt of Battle", 30322, 36390, TBC_PHASE_TWO);
itemrecipe("Plans: Boots of the Protector", 30323, 36391, TBC_PHASE_TWO);
itemrecipe("Plans: Red Havoc Boots", 30324, 36392, TBC_PHASE_TWO);

itemrecipe("Plans: Shadesteel Sabots", 32441, 40033, TBC_PHASE_THREE);
itemrecipe("Plans: Shadesteel Bracers", 32442, 40034, TBC_PHASE_THREE);
itemrecipe("Plans: Shadesteel Greaves", 32443, 40035, TBC_PHASE_THREE);
itemrecipe("Plans: Shadesteel Girdle", 32444, 40036, TBC_PHASE_THREE);
itemrecipe("Plans: Swiftsteel Bracers", 32736, 41132, TBC_PHASE_THREE);
itemrecipe("Plans: Swiftsteel Shoulders", 32737, 41133, TBC_PHASE_THREE);
itemrecipe("Plans: Dawnsteel Bracers", 32738, 41134, TBC_PHASE_THREE);
itemrecipe("Plans: Dawnsteel Shoulders", 32739, 41135, TBC_PHASE_THREE);

itemrecipe("Plans: Sunblessed Gauntlets", 35208, 46140, TBC_PHASE_FIVE);
itemrecipe("Plans: Hard Khorium Battlefists", 35209, 46141, TBC_PHASE_FIVE);
itemrecipe("Plans: Sunblessed Breastplate", 35210, 46142, TBC_PHASE_FIVE);
itemrecipe("Plans: Hard Khorium Battleplate", 35211, 46144, TBC_PHASE_FIVE);
itemrecipe("Plans: Adamantite Weapon Chain", 35296, 42688, TBC_PHASE_FIVE, true);
-- #endif

-- These items never made it in.
recipeCache = nil;	-- Invalidate the cache.
_.NeverImplemented = bubbleDown({ ["u"] = NEVER_IMPLEMENTED }, {
	filter(200, {	-- Recipe
		itemrecipe("Plans: Bleakwood Hew", 12817, 16965);
		itemrecipe("Plans: Blood Talon", 12831, 16986);
		itemrecipe("Plans: Darkspear", 12832, 16987);
		itemrecipe("Plans: Inlaid Thorium Hammer", 12818, 16967);
		itemrecipe("Plans: Ironforge Chain", 6734, 8366);
		itemrecipe("Plans: Ironforge Gauntlets", 6736, 8368);
		itemrecipe("Plans: Mithril Scale Gloves", 7977, 9942);
		itemrecipe("Plans: Orcish War Leggings", 7994, 9957);	-- learned from quest 2756 (horde) but recipe item is not in game
		itemrecipe("Plans: Ornate Mithril Breastplate", 7986, 9972);
		itemrecipe("Plans: Ornate Mithril Boots", 7988, 9979);	--  learned from quest 2772 but recipe item is not in game
		itemrecipe("Plans: Ornate Mithril Helm", 7987, 9980);
		itemrecipe("Plans: Rough Bronze Bracers", 5577, 2671);
		itemrecipe("Plans: Rune Edge", 12826, 16980);
		itemrecipe("Plans: Thorium Greatsword", 12816, 16960);
		
		-- #if BEFORE TBC
		-- This wasn't implemented until TBC, it was NYI until then.
		i(12698);	-- Plans: Dawnbringer Shoulders
		recipe(16660),	-- Dawnbringer Shoulders
		-- #endif
		
		-- #if AFTER TBC
		itemrecipe("Plans: Dawnsteel Bracers", 35529);
		itemrecipe("Plans: Dawnsteel Shoulders", 35530, 41135);
		itemrecipe("Plans: Hard Khorium Battlefists", 35553);
		itemrecipe("Plans: Hard Khorium Battleplate", 35554);
		itemrecipe("Plans: Sunblessed Breastplate", 35555, 46142);
		itemrecipe("Plans: Sunblessed Gauntlets", 35556);
		itemrecipe("Plans: Swiftsteel Bracers", 35531);
		itemrecipe("Plans: Swiftsteel Shoulders", 35532, 41133);
		-- #endif
	}),
});