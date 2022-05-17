---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DARNASSUS, {
			n(VENDORS, {
				n(4168, {	-- Elynna <Tailoring Supplies>
					["coord"] = { 64.6, 21.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6272),	-- Pattern: Blue Linen Robe
						i(6275),	-- Pattern: Greater Adept's Robe
						i(10311),	-- Pattern: Orange Martial Shirt
					},
				}),
				n(4223, {	-- Fyldan <Cooking Supplier>
					["coord"] = { 48.5, 21.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Pattern: Orange Martial Shirt
					},
				}),
				n(4232, {	-- Glorandiir <Axe Merchant>
					["coord"] = { 64.2, 59.0, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12249),	-- Merciless Axe
					},
				}),
				n(4173, {	-- Landria <Bow Merchant>
					["coord"] = { 63.3, 66.3, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11303),	-- Fine Shortbow
						i(11306),	-- Sturdy Recurve
						i(11308),	-- Sylvan Shortbow
					},
				}),
				n(4730, {	-- Lelanai <Saber Handler>
					-- #if AFTER CATA
					["coord"] = { 42.6, 32.8, DARNASSUS },
					-- #else
					["coord"] = { 38.3, 15.3, DARNASSUS },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8632),	-- Spotted Frostsaber (MOUNT!)
						i(47100, {	-- Striped Dawnsaber (MOUNT!)
							["timeline"] = { "added 3.2.0.10026" },
						}),
						i(8629),	-- Striped Nightsaber (MOUNT!)
						i(8631),	-- Striped Frostsaber (MOUNT!)
						i(18766),	-- Swift Frostsaber (MOUNT!)
						i(18767),	-- Swift Mistsaber (MOUNT!)
						i(18902),	-- Swift Stormsaber (MOUNT!)
						i(12302, {	-- Ancient Frostsaber (MOUNT!)
							["timeline"] = { "removed 1.4.0" },
						}),
						i(12303, {	-- Nightsaber (MOUNT!)
							["timeline"] = { "removed 1.4.0" },
						}),
					},
				}),
				n(4229, {	-- Mythrin'dir <General Trade Supplier>
					["coord"] = { 61.0, 17.7, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11223),	-- Formula: Enchant Bracer - Deflection
						i(16217),	-- Formula: Enchant Shield - Greater Stamina
					},
				}),
				n(4225, {	-- Saenorion <Leatherworking Supplies>
					["coord"] = { 63.7, 22.3, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7451),	-- Pattern: Green Whelp Bracers
						i(18949),	-- Pattern: Barbaric Bracers
					},
				}),
				n(8665, {	-- Shylenai <Owl Trainer>
					["coord"] = { 69.8, 45.4, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8500),	-- Great Horned Owl
						i(8501),	-- Hawk Owl
					},
				}),
				n(4235, {	-- Turian <Thrown Weapons Merchant>
					["coord"] = { 62.7, 65.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12247),	-- Broad Bladed Knife
					},
				}),
				n(4226, {	-- Ulthir <Alchemy Supplies>
					["coord"] = { 55.8, 24.5, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5642),	-- Recipe: Free Action Potion
						i(5643),	-- Recipe: Great Rage Potion
						i(13477),	-- Recipe: Superior Mana Potion
					},
				}),
				n(4228, {	-- Vaean <Enchanting Supplies>
					["coord"] = { 58.6, 14.7, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if BEFORE CATA
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						-- #endif
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
				n(4175, {	-- Vinasia <Cloth Armor Merchant>
					["coord"] = { 60.7, 72.5, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12256),	-- Cindercloth Leggings
					},
				}),
			}),
		}),
	}),
};