---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local ASARNAN_MALIJ_GROUPS = {};
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(NETHERSTORM, {
			n(VENDORS, {
				n(19540,  {	-- Asarnan <Enchanting Trainer>
					["coord"] = { 44.2, 33.6, NETHERSTORM },
					["g"] = ASARNAN_MALIJ_GROUPS,
				}),
				n(19536,  {	-- Dealer Jadyan <Exotic Weapons>
					["coord"] = { 44.0, 36.6, NETHERSTORM },
					["g"] = {
						i(29380, {	-- Ethereum Phase Blade
							["isLimited"] = true,
						}),
						i(29377, {	-- Ethereum Phase-Spear
							["isLimited"] = true,
						}),
						i(78348),	-- Formula: Enchant Weapon - Executioner
						i(29371, {	-- Nexus-Claw
							["isLimited"] = true,
						}),
						i(29391, {	-- Pulse Dagger
							["isLimited"] = true,
						}),
						i(29378, {	-- Starheart Baton
							["isLimited"] = true,
						}),
						i(29372, {	-- Void-Talon
							["isLimited"] = true,
						}),
					},
				}),
				n(19537,  {	-- Dealer Malij <Enchanting Supplies>
					["coord"] = { 44.2, 34.0, NETHERSTORM },
					["g"] = ASARNAN_MALIJ_GROUPS,
				}),
				n(20980,  {	-- Dealer Rashaad <Exotic Creatures>
					["coord"] = { 43.4, 35.2, NETHERSTORM },
					["g"] = {
						i(29958),	-- Blue Dragonhawk Hatchling (PET!)
						i(29364),	-- Brown Rabbit Crate (PET!)
						i(8490),	-- Cat Carrier (Siamese) (PET!)
						i(10392),	-- Crimson Snake (PET!)
						i(29363),	-- Mana Wyrmling (PET!)
						i(8495),	-- Parrot Cage (Senegal) (PET!)
						i(29902),	-- Red Moth Egg (PET!)
						i(10393),	-- Undercity Cockroach (PET!)
					},
				}),
				n(21493,  {	-- Kablamm Farflinger <Transportation Engineer>
					["requireSkill"] = 20222,	-- Goblin Engineering
					["description"] = "Goblin Engineers can speak to Kablamm to learn the recipe.",
					["coord"] = { 32.9, 63.7, NETHERSTORM },
					["g"] = {
						recipe(36954),	-- Dimensional Ripper - Area 52
					},
				}),
				n(20242,  {	-- Karaaz <Consortium Quartermaster>
					["coord"] = { 43.6, 34.4, NETHERSTORM },
					["g"] = {
						i(29115),	-- Consortium Blaster
						i(31776),	-- Consortium Tabard
						i(33156),	-- Design: Crimson Sun
						i(23134),	-- Design: Delicate Blood Garnet
						i(33305),	-- Design: Don Julio's Heart
						i(24178),	-- Design: Pendant of the Null Rune
						i(23136),	-- Design: Reckless Flame Spessarite
						i(33622),	-- Design: Relentless Earthstorm Diamond
						i(32412, {	-- Design: Relentless Earthstorm Diamond
							["spellID"] = 0,	-- This is now available via 33622, need to delink the old plans from the recipe
							["u"] = REMOVED_FROM_GAME,
						}),
						i(23146),	-- Design: Shifting Shadow Draenite
						i(31871, {	-- Design: Shifting Shadow Draenite
							["spellID"] = 0,	-- This is now available via 23146, need to delink the old plans from the recipe
							["u"] = REMOVED_FROM_GAME,
						}),
						i(31872, {	-- Design: Shifting Shadow Draenite
							["spellID"] = 0,	-- This is now available via 23146, need to delink the old plans from the recipe
							["u"] = REMOVED_FROM_GAME,
						}),
						i(23155),	-- Design: Sparkling Azure Moonstone
						i(23150),	-- Design: Subtle Golden Draenite
						i(25908),	-- Design: Swift Skyfire Diamond
						i(28274),	-- Formula: Enchant Cloak - PvP Power
						i(22552),	-- Formula: Enchant Weapon - Major Striking
						i(29456),	-- Gift of the Ethereal
						i(29121),	-- Guile of Khoraazi
						i(29119),	-- Haramad's Bargain
						i(138796),	-- Illusion: Executioner
						i(29122),	-- Nether Runner's Cowl
						i(29457),	-- Nethershard
						i(29116),	-- Nomad's Leggings
						i(24314),	-- Pattern: Bag of Jewels
						i(25733), 	-- Pattern: Fel Leather Boots
						i(25732), 	-- Pattern: Fel Leather Gloves
						i(25734), 	-- Pattern: Fel Leather Leggings
						applyclassicphase(TBC_PHASE_THREE, i(23874)),	-- Schematic: Elemental Seaforium Charge
						i(29118, {	-- Smuggler's Ammo Pouch
							["timeline"] = { "removed 4.0.1.12941" },
						}),
						i(29117),	-- Stormspire Vest
					},
				}),
				n(20112,  {	-- Wind Trader Tuluman <Weapon Merchant>
					["coord"] = { 34.6, 37.8, NETHERSTORM },
					["g"] = {
						i(30755, {	-- Mag'hari Fighting Claw
							["isLimited"] = true,
						}),
						i(30753, {	-- Warphorn Spear
							["isLimited"] = true,
						}),
					},
				}),
			}),
		}),
	})),
};

-- Add in the items that aren't locked by phase.
local COMMON_ENCHANTING_RECIPES = {
	i(20753),	-- Formula: Lesser Wizard Oil
	i(20752),	-- Formula: Minor Mana Oil
	i(20758),	-- Formula: Minor Wizard Oil
	i(22307),	-- Pattern: Enchanted Mageweave Pouch
};
appendGroups(COMMON_ENCHANTING_RECIPES, ASARNAN_MALIJ_GROUPS);