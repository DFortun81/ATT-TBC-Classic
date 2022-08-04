profession(BLACKSMITHING, {
	n(QUESTS, {
		q(7652, {	-- A Blue Light Bargain
			["qg"] = 14567,	-- Derotain Mudsipper
			-- #if AFTER TBC
			["sourceQuests"] = {
				10891,	-- Imperial Plate Armor [A]
				10892,	-- Imperial Plate Armor [H]
			},
			-- #endif
			["description"] = "You need 265 Blacksmithing. Does not require a specialization.",
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["lvl"] = 50,
		}),
		q(2771, {	-- A Good Head On Your Shoulders
			["qg"] = 7804,	-- Trenton Lighthammer
			["sourceQuest"] = 2760,	-- The Mithril Order
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["cost"] = {
				{ "i", 7931, 2 },	-- Mithril Coif
				{ "i", 7928, 1 },	-- Ornate Mithril Shoulder
			},
			["lvl"] = 40,
			["groups"] = {
				recipe(9980),	-- Ornate Mithril Helm
			},
		}),
		q(2751, {	-- Barbaric Battlements
			["qg"] = 7790,	-- Orokk Omosh
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 79.4, 22.4, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 2868, 2 },	-- Patterned Bronze Bracers
				{ "i", 7957, 2 },	-- Bronze Greatsword
				{ "i", 5635, 2 },	-- Sharp Claw
			},
			["lvl"] = 32,
			["groups"] = {
				i(7979, {	-- Plans: Barbaric Iron Breastplate
					["description"] = "This item can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths.",
				}),
			},
		}),
		q(2757, {	-- Booty Bay or Bust!
			["providers"] = {
				{ "n", 7793 },	-- Ox
				{ "i", 8663 },	-- Mithril Insignia
			},
			["sourceQuest"] = 2756,	-- The Old Ways
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 80.4, 23.2, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["lvl"] = 40,
		}),
		{
			["itemID"] = 9719,	-- Broken Blade of Heroes
			["cost"] = {
				{ "i", 7068, 2 },	-- Elemental Fire
				{ "i", 3486, 2 },	-- Heavy Grinding Stone
				{ "i", 3859, 4 },	-- Steel Bar
				{ "i", 3466, 4 },	-- Strong Flux
			},
			["groups"] = {
				i(9718),	-- Reforged Blade of Heroes
			},
		},
		q(5307, {	-- Corruption
			["qg"] = 11193,	-- Seril Scourgebane
			["coord"] = { 61.2, 37.2, WINTERSPRING },
			["maps"] = { STRATHOLME },
			-- #if BEFORE TBC
			["requireSkill"] = 9787,	-- Weaponsmith
			-- #else
			["requireSkill"] = BLACKSMITHING,
			-- #endif
			["cost"] = {
				{ "i", 13350, 1 },	-- Insignia of the Black Guard
			},
			-- #if BEFORE TBC
			["altQuests"] = {
				5306,	-- Snakestone of the Shadow Huntress [Master Axesmith]
				5305,	-- Sweet Serenity [Master Hammersmith]
			},
			-- #endif
			["lvl"] = 50,
			["groups"] = {
				i(12825),	-- Plans: Blazing Rapier
			},
		}),
		q(3321, {	-- Did You Lose This?
			["qg"] = 7804,	-- Trenton Lighthammer
			["sourceQuests"] = {
				2771,	-- A Good Head On Your Shoulders
				2773,	-- The Mithril Kid
				2772,	-- The World At Your Feet
			},
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["lvl"] = 40,
			["groups"] = {
				i(10418),	-- Glimmering Mithril Insignia
			},
		}),
		q(2754, {	-- Horns of Frenzy
			["qg"] = 7790,	-- Orokk Omosh
			["sourceQuest"] = 2753,	-- Trampled Under Foot
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 79.4, 22.4, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 3851, 2 },	-- Solid Iron Maul
				{ "i", 3482, 2 },	-- Silvered Bronze Boots
				{ "i", 3483, 2 },	-- Silvered Bronze Gauntlets
			},
			["lvl"] = 32,
			["groups"] = {
				i(7980, {	-- Plans: Barbaric Iron Helm
					["description"] = "This item can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths.",
				}),
			},
		}),
		applyclassicphase(TBC_PHASE_ONE, q(10891, {	-- Imperial Plate Armor [A]
			["qg"] = 11145,	-- Myolor Sunderfury
			["coord"] = { 52.0, 41.4, IRONFORGE },
			["requireSkill"] = BLACKSMITHING,
			["isBreadcrumb"] = true,
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 50,
		})),
		applyclassicphase(TBC_PHASE_ONE, q(10892, {	-- Imperial Plate Armor [H]
			["qg"] = 11176,	-- Krathok Moltenfist
			["coord"] = { 80.0, 23.3, ORGRIMMAR },
			["requireSkill"] = BLACKSMITHING,
			["isBreadcrumb"] = true,
			["races"] = HORDE_ONLY,
			["lvl"] = 50,
		})),
		q(7653, {	-- Imperial Plate Belt
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["cost"] = {
				{ "i", 12359, 20 },	-- Thorium Bar
			},
			["lvl"] = 50,
			["groups"] = {
				i(12688),	-- Plans: Imperial Plate Belt
			},
		}),
		q(7654, {	-- Imperial Plate Boots
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["cost"] = {
				{ "i", 12359, 40 },	-- Thorium Bar
			},
			["lvl"] = 50,
			["groups"] = {
				i(12700),	-- Plans: Imperial Plate Boots
			},
		}),
		q(7655, {	-- Imperial Plate Bracer
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["cost"] = {
				{ "i", 12359, 20 },	-- Thorium Bar
			},
			["lvl"] = 50,
			["groups"] = {
				i(12690),	-- Plans: Imperial Plate Bracer
			},
		}),
		q(7656, {	-- Imperial Plate Chest
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["cost"] = {
				{ "i", 12359, 60 },	-- Thorium Bar
			},
			["lvl"] = 50,
			["groups"] = {
				i(12705),	-- Plans: Imperial Plate Chest
			},
		}),
		q(7657, {	-- Imperial Plate Helm
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["cost"] = {
				{ "i", 12359, 50 },	-- Thorium Bar
			},
			["lvl"] = 50,
			["groups"] = {
				i(12701),	-- Plans: Imperial Plate Helm
			},
		}),
		q(7658, {	-- Imperial Plate Leggings
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["cost"] = {
				{ "i", 12359, 60 },	-- Thorium Bar
			},
			["lvl"] = 50,
			["groups"] = {
				i(12715),	-- Plans: Imperial Plate Leggings
			},
		}),
		q(7659, {	-- Imperial Plate Shoulders
			["qg"] = 14567,	-- Derotain Mudsipper
			["sourceQuest"] = 7652,	-- A Blue Light Bargain
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["cost"] = {
				{ "i", 12359, 20 },	-- Thorium Bar
			},
			["lvl"] = 50,
			["groups"] = {
				i(12687),	-- Plans: Imperial Plate Shoulders
			},
		}),
		q(2755, {	-- Joys of Omosh
			["qg"] = 7790,	-- Orokk Omosh
			["sourceQuest"] = 2754,	-- Horns of Frenzy
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 79.4, 22.4, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["lvl"] = 32,
			["groups"] = {
				i(7982, {	-- Plans: Barbaric Iron Gloves
					["description"] = "This item can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths.",
				}),
			},
		}),
		q(2752, {	-- On Iron Pauldrons
			["qg"] = 7790,	-- Orokk Omosh
			["sourceQuest"] = 2751,	-- Barbaric Battlements
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 79.4, 22.4, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 7958, 4 },	-- Bronze Battle Axe
				{ "i", 7956, 4 },	-- Bronze Warhammer
			},
			["lvl"] = 32,
			["groups"] = {
				i(7978, {	-- Plans: Barbaric Iron Shoulders
					["description"] = "This item can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths.",
				}),
			},
		}),
		q(5306, {	-- Snakestone of the Shadow Huntress
			["qg"] = 11192,	-- Kilram
			-- #if BEFORE TBC
			["requireSkill"] = 9787,	-- Weaponsmith
			-- #else
			["requireSkill"] = BLACKSMITHING,
			-- #endif
			["description"] = "Upon finishing this quest, you will become a Master Axesmith and be locked out of becoming a Master Hammersmith and Master Swordsmith.",
			["coord"] = { 61.2, 37, WINTERSPRING },
			["maps"] = { BLACKROCK_SPIRE },
			["cost"] = {
				{ "i", 13352, 1 },	-- Vosh'gajin's Snakestone
			},
			-- #if BEFORE TBC
			["altQuests"] = {
				5307,	-- Corruption [Master Swordsmith]
				5305,	-- Sweet Serenity [Master Hammersmith]
			},
			-- #endif
			["lvl"] = 50,
			["groups"] = {
				i(12821),	-- Plans: Dawn's Edge
			},
		}),
		q(5305, {	-- Sweet Serenity
			["qg"] = 11191,	-- Lilith the Lithe
			-- #if BEFORE TBC
			["requireSkill"] = 9787,	-- Weaponsmith
			-- #else
			["requireSkill"] = BLACKSMITHING,
			-- #endif
			["description"] = "Upon finishing this quest, you will become a Master Hammersmith and be locked out of becoming a Master Axesmith and Master Swordsmith.",
			["coord"] = { 61.2, 37.2, WINTERSPRING },
			["maps"] = { STRATHOLME },
			-- #if BEFORE TBC
			["altQuests"] = {
				5306,	-- Snakestone of the Shadow Huntress [Master Axesmith]
				5307,	-- Corruption [Master Swordsmith]
				8869,	-- Sweet Serenity (Deprecated?)
			},
			-- #endif
			["cost"] = {
				{ "i", 13351, 1 },	-- Crimson Hammersmith's Apron
			},
			["lvl"] = 50,
			["groups"] = {
				i(12824),	-- Plans: Enchanted Battlehammer
			},
		}),
		q(5283, {	-- The Art of the Armorsmith (A)
			["qg"] = 5164,	-- Grumnus Steelshaper
			["requireSkill"] = BLACKSMITHING,
			["description"] = "Upon finishing this quest, you will become a Armorsmith and be locked out of becoming a Weaponsmith.",
			["coord"] = { 50.2, 42.6, IRONFORGE },
			["races"] = ALLIANCE_ONLY,
			["altQuests"] = {
				5301,	-- The Art of the Armorsmith (H)
				5284,	-- The Way of the Weaponsmith (A)
				5302,	-- The Way of the Weaponsmith (H)
			},
			["cost"] = {
				{ "i", 7937, 4 },	-- Ornate Mithril Helm
				{ "i", 7936, 2 },	-- Ornate Mithril Boots
				{ "i", 7935, 1 },	-- Ornate Mithril Breastplate
			},
			["lvl"] = 40,
		}),
		q(5301, {	-- The Art of the Armorsmith (H)
			["qg"] = 11177,	-- Okothos Ironrager
			["requireSkill"] = BLACKSMITHING,
			["description"] = "Upon finishing this quest, you will become a Armorsmith and be locked out of becoming a Weaponsmith.",
			["coord"] = { 79.8, 23.8, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["altQuests"] = {
				5283,	-- The Art of the Armorsmith (A)
				5284,	-- The Way of the Weaponsmith (A)
				5302,	-- The Way of the Weaponsmith (H)
			},
			["cost"] = {
				{ "i", 7937, 4 },	-- Ornate Mithril Helm
				{ "i", 7936, 2 },	-- Ornate Mithril Boots
				{ "i", 7935, 1 },	-- Ornate Mithril Breastplate
			},
			["lvl"] = 40,
		}),
		q(2773, {	-- The Mithril Kid
			["qg"] = 7804,	-- Trenton Lighthammer
			["sourceQuest"] = 2760,	-- The Mithril Order
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["lvl"] = 40,
			["cost"] = {
				{ "i", 7930, 2 },	-- Heavy Mithril Breastplate
				{ "i", 7927, 1 },	-- Ornate Mithril Gloves
			},
			["groups"] = {
				recipe(9972),	-- Ornate Mithril Breastplate
			},
		}),
		q(2756, {	-- The Old Ways
			["qg"] = 7792,	-- Aturk the Anvil
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 80.6, 23.2, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 7963, 4 },	-- Steel Breastplate
				{ "i", 7922, 4 },	-- Steel Plate Helm
			},
			["lvl"] = 40,
			["groups"] = {
				recipe(9957),	-- Orcish War Leggings
			},
		}),
		
		q(5284, {	-- The Way of the Weaponsmith (A)
			["qg"] = 11146,	-- Ironus Coldsteel
			["requireSkill"] = BLACKSMITHING,
			["description"] = "Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",
			["coord"] = { 49.8, 45, IRONFORGE },
			["races"] = ALLIANCE_ONLY,
			["altQuests"] = {
				5283,	-- The Art of the Armorsmith (A)
				5301,	-- The Art of the Armorsmith (H)
				5302,	-- The Way of the Weaponsmith (H)
			},
			["cost"] = {
				{ "i", 3853, 4 },	-- Moonsteel Broadsword
				{ "i", 3855, 4 },	-- Massive Iron Axe
				{ "i", 7941, 2 },	-- Heavy Mithril Axe
				{ "i", 7945, 2 },	-- Big Black Mace
			},
			["lvl"] = 40,
		}),
		q(5302, {	-- The Way of the Weaponsmith (H)
			["qg"] = 11178,	-- Borgosh Corebender
			["requireSkill"] = BLACKSMITHING,
			["description"] = "Upon finishing this quest, you will become a Weaponsmith and be locked out of becoming an Armorsmith.",
			["coord"] = { 79.6, 23.6, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["altQuests"] = {
				5283,	-- The Art of the Armorsmith (A)
				5301,	-- The Art of the Armorsmith (H)
				5284,	-- The Way of the Weaponsmith (A)
			},
			["cost"] = {
				{ "i", 3853, 4 },	-- Moonsteel Broadsword
				{ "i", 3855, 4 },	-- Massive Iron Axe
				{ "i", 7941, 2 },	-- Heavy Mithril Axe
				{ "i", 7945, 2 },	-- Big Black Mace
			},
			["lvl"] = 40,
		}),
		q(2772, {	-- The World At Your Feet
			["qg"] = 7804,	-- Trenton Lighthammer
			["sourceQuest"] = 2760,	-- The Mithril Order
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 51.4, 28.7, TANARIS },
			["cost"] = {
				{ "i", 7933, 2 },	-- Heavy Mithril Boots
				{ "i", 7926, 1 },	-- Ornate Mithril Pants
			},
			["lvl"] = 40,
			["groups"] = {
				recipe(9979),	-- Ornate Mithril Boots
			},
		}),
		q(2753, {	-- Trampled Under Foot
			["qg"] = 7790,	-- Orokk Omosh
			["sourceQuest"] = 2752,	-- On Iron Pauldrons
			["requireSkill"] = BLACKSMITHING,
			["coord"] = { 79.4, 22.4, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 3836, 4 },	-- Green Iron Helm
				{ "i", 3835, 4 },	-- Green Iron Bracers
				{ "i", 3842, 2 },	-- Green Iron Leggings
			},
			["lvl"] = 32,
			["groups"] = {
				i(7981, {	-- Plans: Barbaric Iron Boots
					["description"] = "This item can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths.",
				}),
			},
		}),
	}),
});