---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
_.Craftables = { tier(2, applyclassicphase(TBC_PHASE_ONE, {	-- Burning Crusade
	prof(ALCHEMY, {
		category(644, {	-- Materials
			i(31080),	-- Mercurial Stone
		}),
		category(638, {	-- Potions
			
		}),
		category(639, {	-- Elixirs
			
		}),
		category(640, {	-- Flasks
			
		}),
		category(641, {	-- Transmutes
			
		}),
		category(642, {	-- Trinkets
			i(13503),	-- Alchemist Stone
			i(35751),	-- Assassin's Alchemist Stone
			i(35748),	-- Guardian's Alchemist Stone
			i(35750),	-- Redeemer's Alchemist Stone
			i(35749),	-- Sorcerer's Alchemist Stone
		}),
		category(643, {	-- Oils
			
		}),
	}),
	prof(BLACKSMITHING, {
		
	}),
	prof(COOKING, {
		i(27657),	-- Blackened Basilisk
		i(27663),	-- Blackened Sporefish
		i(27661),	-- Blackened Trout
		i(33867),	-- Broiled Bloodfin
		i(27651),	-- Buzzard Bites
		i(30155),	-- Clam Bar
		i(31673),	-- Crunchy Serpent
		i(27662),	-- Feltail Delight
		applyclassicphase(TBC_PHASE_TWO, i(33052)),	-- Fisherman's Feast
		i(27666),	-- Golden Fish Sticks
		i(27664),	-- Grilled Mudfish
		applyclassicphase(TBC_PHASE_TWO, i(33053)),	-- Hot Buttered Trout
		i(33874),	-- Kibler's Bits
		i(31672),	-- Mok'Nathal Shortribs
		i(27665),	-- Poached Bluefish
		i(27655),	-- Ravager Dog
		i(27658),	-- Roasted Clefthoof
		i(33825),	-- Skullfish Soup
		i(27667),	-- Spicy Crawdad
		i(33872),	-- Spicy Hot Talbuk
		applyclassicphase(TBC_PHASE_TWO, i(33048)),	-- Stewed Trout
		i(33866),	-- Stormchops
		i(27660),	-- Talbuk Steak
		i(27659),	-- Warp Burger
	}),
	prof(ENCHANTING, {
		
	}),
	prof(ENGINEERING, {
		
	}),
	prof(FIRST_AID, {
		i(21990),	-- Netherweave Bandage
		i(21991),	-- Heavy Netherweave Bandage
	}),
	prof(FISHING, {
		
	}),
	prof(HERBALISM, {
		["description"] = "The following items can be gathered by Herbalists out in the world.",
		["groups"] = {
			i(22790),	-- Ancient Lichen
			i(22786),	-- Dreaming Glory
			i(22795),	-- Fel Blossom
			i(22794),	-- Fel Lotus
			i(22785),	-- Felweed
			i(22788),	-- Flame Cap
			i(22793),	-- Mana Thistle
			i(35229),	-- Nether Residue
			i(22791),	-- Netherbloom
			i(32468),	-- Netherdust Pollen
			i(22792),	-- Nightmare Vine
			i(22787),	-- Ragveil
			i(22789),	-- Terocone
			i(24401),	-- Unidentified Plant Parts
		},
	}),
	prof(LEATHERWORKING, {
	
	}),
	prof(MINING, {
		["description"] = "The following items can be gathered by Miners out in the world.",
		["groups"] = {
			spell(2656, {	-- Smelting
				["description"] = "The following items can be smelted by Miners in a city.",
				["groups"] = {
					i(23446),	-- Adamantite Bar
					i(23447),	-- Eternium Bar
					i(23445),	-- Fel Iron Bar
					i(23448),	-- Felsteel Bar
					i(23573),	-- Hardened Adamantite Bar
					applyclassicphase(TBC_PHASE_FIVE, i(35128)),	-- Hardened Khorium Bar
					i(23449),	-- Khorium Bar
				},
			}),
			i(23425),	-- Adamantite Ore
			i(23427),	-- Eternium Ore
			i(23424),	-- Fel Iron Ore
			i(23426),	-- Khorium Ore
			i(35229),	-- Nether Residue
			i(32464),	-- Nethercite Ore
		},
	}),
	prof(SKINNING, {
		["description"] = "The following items can be gathered by skinning creatures out in the world.",
		["groups"] = {
			i(29539),	-- Cobra Scales
			i(25699),	-- Crystal Infused Leather
			i(25707),	-- Fel Hide
			i(25700),	-- Fel Scales
			i(21887),	-- Knothide Leather
			i(25649),	-- Knothide Leather Scraps
			i(29548),	-- Nether Dragonscales
			i(35229),	-- Nether Residue
			i(32470),	-- Nethermine Flayer Hide
			i(25708),	-- Thick Clefthoof Leather
			i(29547),	-- Wind Scales
		},
	}),
	prof(TAILORING, {
		
	}),
}))};