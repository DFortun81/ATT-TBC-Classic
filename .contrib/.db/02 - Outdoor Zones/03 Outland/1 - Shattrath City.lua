---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local TIER_FOUR_GROUPS = applyclassicphase(TBC_PHASE_ONE, {
	cl(WARRIOR, {
		-- DPS
		i(29021, {	-- Warbringer Battle-Helm
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(29019, {	-- Warbringer Breastplate
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(29023, {	-- Warbringer Shoulderplates
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(29020, {	-- Warbringer Gauntlets
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(29022, {	-- Warbringer Greaves
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),
		
		-- Protection
		i(29011, {	-- Warbringer Greathelm
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(29016, {	-- Warbringer Shoulderguards
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(29012, {	-- Warbringer Chestguard
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(29017, {	-- Warbringer Handguards
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(29015, {	-- Warbringer Legguards
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),
	}),
	cl(PALADIN, {
		-- DPS
		i(29073, {	-- Justicar Crown
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(29075, {	-- Justicar Shoulderplates
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(29071, {	-- Justicar Breastplate
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(29072, {	-- Justicar Gauntlets
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(29074, {	-- Justicar Greaves
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),
		
		-- Holy
		i(29061, {	-- Justicar Diadem
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(29064, {	-- Justicar Pauldrons
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(29062, {	-- Justicar Chestpiece
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(29065, {	-- Justicar Gloves
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(29063, {	-- Justicar Leggings
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),
		
		-- Protection
		i(29068, {	-- Justicar Faceguard
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(29070, {	-- Justicar Shoulderguards
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(29066, {	-- Justicar Chestguard
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(29067, {	-- Justicar Handguards
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(29069, {	-- Justicar Legguards
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),
	}),
	cl(HUNTER, {
		i(29081, {	-- Demon Stalker Greathelm
			["cost"] = { { "i", 29759, 1 }, },	-- Helm of the Fallen Hero
		}),
		i(29084, {	-- Demon Stalker Shoulderguards
			["cost"] = { { "i", 29762, 1 }, },	-- Pauldrons of the Fallen Hero
		}),
		i(29082, {	-- Demon Stalker Harness
			["cost"] = { { "i", 29755, 1 }, },	-- Chestguard of the Fallen Hero
		}),
		i(29085, {	-- Demon Stalker Gauntlets
			["cost"] = { { "i", 29756, 1 }, },	-- Gloves of the Fallen Hero
		}),
		i(29083, {	-- Demon Stalker Greaves
			["cost"] = { { "i", 29765, 1 }, },	-- Leggings of the Fallen Hero
		}),
	}),
	cl(ROGUE, {
		i(29044, {	-- Netherblade Facemask
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(29047, {	-- Netherblade Shoulderpads
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(29045, {	-- Netherblade Chestpiece
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(29048, {	-- Netherblade Gloves
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(29046, {	-- Netherblade Breeches
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),
	}),
	cl(PRIEST, {
		-- DPS
		i(29058, {	-- Soul-Collar of the Incarnate
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(29060, {	-- Soul-Mantle of the Incarnate
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(29056, {	-- Shroud of the Incarnate
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(29057, {	-- Gloves of the Incarnate
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(29059, {	-- Leggings of the Incarnate
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),
		
		-- Holy
		i(29049, {	-- Light-Collar of the Incarnate
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(29054, {	-- Light-Mantle of the Incarnate
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(29050, {	-- Robes of the Incarnate
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(29055, {	-- Handwraps of the Incarnate
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(29053, {	-- Trousers of the Incarnate
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),
	}),
	cl(SHAMAN, {
		-- Enhance
		i(29040, {	-- Cyclone Helm
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(29043, {	-- Cyclone Shoulderplates
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(29038, {	-- Cyclone Breastplate
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(29039, {	-- Cyclone Gauntlets
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(29042, {	-- Cyclone War-Kilt
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),
		
		-- Elemental
		i(29035, {	-- Cyclone Faceguard
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(29037, {	-- Cyclone Shoulderguards
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(29033, {	-- Cyclone Chestguard
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(29034, {	-- Cyclone Handguards
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(29036, {	-- Cyclone Legguards
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),
		
		-- Restoration
		i(29028, {	-- Cyclone Headdress
			["cost"] = { { "i", 29760, 1 }, },	-- Helm of the Fallen Champion
		}),
		i(29031, {	-- Cyclone Shoulderpads
			["cost"] = { { "i", 29763, 1 }, },	-- Pauldrons of the Fallen Champion
		}),
		i(29029, {	-- Cyclone Hauberk
			["cost"] = { { "i", 29754, 1 }, },	-- Chestguard of the Fallen Champion
		}),
		i(29032, {	-- Cyclone Gloves
			["cost"] = { { "i", 29757, 1 }, },	-- Gloves of the Fallen Champion
		}),
		i(29030, {	-- Cyclone Kilt
			["cost"] = { { "i", 29766, 1 }, },	-- Leggings of the Fallen Champion
		}),
	}),
	cl(MAGE, {
		i(29076, {	-- Collar of the Aldor
			["cost"] = { { "i", 29759, 1 }, },	-- Helm of the Fallen Hero
		}),
		i(29079, {	-- Pauldrons of the Aldor
			["cost"] = { { "i", 29762, 1 }, },	-- Pauldrons of the Fallen Hero
		}),
		i(29077, {	-- Vestments of the Aldor
			["cost"] = { { "i", 29755, 1 }, },	-- Chestguard of the Fallen Hero
		}),
		i(29080, {	-- Gloves of the Aldor
			["cost"] = { { "i", 29756, 1 }, },	-- Gloves of the Fallen Hero
		}),
		i(29078, {	-- Legwraps of the Aldor
			["cost"] = { { "i", 29765, 1 }, },	-- Leggings of the Fallen Hero
		}),
	}),
	cl(WARLOCK, {
		i(28963, {	-- Voidheart Crown
			["cost"] = { { "i", 29759, 1 }, },	-- Helm of the Fallen Hero
		}),
		i(28967, {	-- Voidheart Mantle
			["cost"] = { { "i", 29762, 1 }, },	-- Pauldrons of the Fallen Hero
		}),
		i(28964, {	-- Voidheart Robe
			["cost"] = { { "i", 29755, 1 }, },	-- Chestguard of the Fallen Hero
		}),
		i(28968, {	-- Voidheart Gloves
			["cost"] = { { "i", 29756, 1 }, },	-- Gloves of the Fallen Hero
		}),
		i(28966, {	-- Voidheart Leggings
			["cost"] = { { "i", 29765, 1 }, },	-- Leggings of the Fallen Hero
		}),
	}),
	cl(DRUID, {
		-- Boomkin
		i(29093, {	-- Antlers of Malorne
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(29095, {	-- Pauldrons of Malorne
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(29091, {	-- Chestpiece of Malorne
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(29092, {	-- Gloves of Malorne
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(29094, {	-- Britches of Malorne
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),
		
		-- Feral
		i(29098, {	-- Stag-Helm of Malorne
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(29100, {	-- Mantle of Malorne
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(29096, {	-- Breastplate of Malorne
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(29097, {	-- Gauntlets of Malorne
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(29099, {	-- Greaves of Malorne
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),
		
		-- Restoration
		i(29086, {	-- Crown of Malorne
			["cost"] = { { "i", 29761, 1 }, },	-- Helm of the Fallen Defender
		}),
		i(29089, {	-- Shoulderguards of Malorne
			["cost"] = { { "i", 29764, 1 }, },	-- Pauldrons of the Fallen Defender
		}),
		i(29087, {	-- Chestguard of Malorne
			["cost"] = { { "i", 29753, 1 }, },	-- Chestguard of the Fallen Defender
		}),
		i(29090, {	-- Handguards of Malorne
			["cost"] = { { "i", 29758, 1 }, },	-- Gloves of the Fallen Defender
		}),
		i(29088, {	-- Legguards of Malorne
			["cost"] = { { "i", 29767, 1 }, },	-- Leggings of the Fallen Defender
		}),
	}),
});
local TIER_FIVE_GROUPS = applyclassicphase(TBC_PHASE_TWO, {
	cl(WARRIOR, {
		i(30120, {	-- Destroyer Battle-Helm
			["cost"] = { { "i", 30243, 1 }, },	-- Helm of the Vanquished Defender
		}),
		i(30118, {	-- Destroyer Breastplate
			["cost"] = { { "i", 30237, 1 }, },	-- Chestguard of the Vanquished Defender
		}),
		i(30113, {	-- Destroyer Chestguard
			["cost"] = { { "i", 30237, 1 }, },	-- Chestguard of the Vanquished Defender
		}),
		i(30119, {	-- Destroyer Gauntlets
			["cost"] = { { "i", 30240, 1 }, },	-- Gloves of the Vanquished Defender
		}),
		i(30115, {	-- Destroyer Greathelm
			["cost"] = { { "i", 30243, 1 }, },	-- Helm of the Vanquished Defender
		}),
		i(30121, {	-- Destroyer Greaves
			["cost"] = { { "i", 30246, 1 }, },	-- Leggings of the Vanquished Defender
		}),
		i(30114, {	-- Destroyer Handguards
			["cost"] = { { "i", 30240, 1 }, },	-- Gloves of the Vanquished Defender
		}),
		i(30116, {	-- Destroyer Legguards
			["cost"] = { { "i", 30246, 1 }, },	-- Leggings of the Vanquished Defender
		}),
		i(30122, {	-- Destroyer Shoulderblades
			["cost"] = { { "i", 30249, 1 }, },	-- Pauldrons of the Vanquished Defender
		}),
		i(30117, {	-- Destroyer Shoulderguards
			["cost"] = { { "i", 30249, 1 }, },	-- Pauldrons of the Vanquished Defender
		}),
	}),
	cl(PALADIN, {
		i(30129, {	-- Crystalforge Breastplate
			["cost"] = { { "i", 30236, 1 }, },	-- Chestguard of the Vanquished Champion
		}),
		i(30123, {	-- Crystalforge Chestguard
			["cost"] = { { "i", 30236, 1 }, },	-- Chestguard of the Vanquished Champion
		}),
		i(30134, {	-- Crystalforge Chestpiece
			["cost"] = { { "i", 30236, 1 }, },	-- Chestguard of the Vanquished Champion
		}),
		i(30125, {	-- Crystalforge Faceguard
			["cost"] = { { "i", 30242, 1 }, },	-- Helm of the Vanquished Champion
		}),
		i(30130, {	-- Crystalforge Gauntlets
			["cost"] = { { "i", 30239, 1 }, },	-- Gloves of the Vanquished Champion
		}),
		i(30135, {	-- Crystalforge Gloves
			["cost"] = { { "i", 30239, 1 }, },	-- Gloves of the Vanquished Champion
		}),
		i(30136, {	-- Crystalforge Greathelm
			["cost"] = { { "i", 30242, 1 }, },	-- Helm of the Vanquished Champion
		}),
		i(30132, {	-- Crystalforge Greaves
			["cost"] = { { "i", 30245, 1 }, },	-- Leggings of the Vanquished Champion
		}),
		i(30124, {	-- Crystalforge Handguards
			["cost"] = { { "i", 30239, 1 }, },	-- Gloves of the Vanquished Champion
		}),
		i(30137, {	-- Crystalforge Leggings
			["cost"] = { { "i", 30245, 1 }, },	-- Leggings of the Vanquished Champion
		}),
		i(30126, {	-- Crystalforge Legguards
			["cost"] = { { "i", 30245, 1 }, },	-- Leggings of the Vanquished Champion
		}),
		i(30138, {	-- Crystalforge Pauldrons
			["cost"] = { { "i", 30248, 1 }, },	-- Pauldrons of the Vanquished Champion
		}),
		i(30133, {	-- Crystalforge Shoulderbraces
			["cost"] = { { "i", 30248, 1 }, },	-- Pauldrons of the Vanquished Champion
		}),
		i(30127, {	-- Crystalforge Shoulderguards
			["cost"] = { { "i", 30248, 1 }, },	-- Pauldrons of the Vanquished Champion
		}),
		i(30131, {	-- Crystalforge War-Helm
			["cost"] = { { "i", 30242, 1 }, },	-- Helm of the Vanquished Champion
		}),
	}),
	cl(HUNTER, {
		i(30141, {	-- Rift Stalker Helm
			["cost"] = { { "i", 30244, 1 }, },	-- Helm of the Vanquished Hero
		}),
		i(30143, {	-- Rift Stalker Mantle
			["cost"] = { { "i", 30250, 1 }, },	-- Pauldrons of the Vanquished Hero
		}),
		i(30139, {	-- Rift Stalker Hauberk
			["cost"] = { { "i", 30238, 1 }, },	-- Chestguard of the Vanquished Hero
		}),
		i(30140, {	-- Rift Stalker Gauntlets
			["cost"] = { { "i", 30241, 1 }, },	-- Gloves of the Vanquished Hero
		}),
		i(30142, {	-- Rift Stalker Leggings
			["cost"] = { { "i", 30247, 1 }, },	-- Leggings of the Vanquished Hero
		}),
	}),
	cl(ROGUE, {
		i(30146, {	-- Deathmantle Helm
			["cost"] = { { "i", 30242, 1 }, },	-- Helm of the Vanquished Champion
		}),
		i(30149, {	-- Deathmantle Shoulderpads
			["cost"] = { { "i", 30248, 1 }, },	-- Pauldrons of the Vanquished Champion
		}),
		i(30144, {	-- Deathmantle Chestguard
			["cost"] = { { "i", 30236, 1 }, },	-- Chestguard of the Vanquished Champion
		}),
		i(30145, {	-- Deathmantle Handguards
			["cost"] = { { "i", 30239, 1 }, },	-- Gloves of the Vanquished Champion
		}),
		i(30148, {	-- Deathmantle Legguards
			["cost"] = { { "i", 30245, 1 }, },	-- Leggings of the Vanquished Champion
		}),
	}),
	cl(PRIEST, {
		i(30161, {	-- Hood of the Avatar
			["cost"] = { { "i", 30243, 1 }, },	-- Helm of the Vanquished Defender
		}),
		i(30152, {	-- Cowl of the Avatar
			["cost"] = { { "i", 30243, 1 }, },	-- Helm of the Vanquished Defender
		}),
		i(30151, {	-- Gloves of the Avatar
			["cost"] = { { "i", 30240, 1 }, },	-- Gloves of the Vanquished Defender
		}),
		i(30153, {	-- Breeches of the Avatar
			["cost"] = { { "i", 30246, 1 }, },	-- Leggings of the Vanquished Defender
		}),
		
		i(30154, {	-- Mantle of the Avatar
			["cost"] = { { "i", 30249, 1 }, },	-- Pauldrons of the Vanquished Defender
		}),
		i(30160, {	-- Handguards of the Avatar
			["cost"] = { { "i", 30240, 1 }, },	-- Gloves of the Vanquished Defender
		}),
		i(30159, {	-- Shroud of the Avatar
			["cost"] = { { "i", 30237, 1 }, },	-- Chestguard of the Vanquished Defender
		}),
		i(30150, {	-- Vestments of the Avatar
			["cost"] = { { "i", 30237, 1 }, },	-- Chestguard of the Vanquished Defender
		}),
		i(30163, {	-- Wings of the Avatar
			["cost"] = { { "i", 30249, 1 }, },	-- Pauldrons of the Vanquished Defender
		}),
		i(30162, {	-- Leggings of the Avatar
			["cost"] = { { "i", 30246, 1 }, },	-- Leggings of the Vanquished Defender
		}),
	}),
	cl(SHAMAN, {
		i(30164, {	-- Cataclysm Chestguard
			["cost"] = { { "i", 30236, 1 }, },	-- Chestguard of the Vanquished Champion
		}),
		i(30169, {	-- Cataclysm Chestpiece
			["cost"] = { { "i", 30236, 1 }, },	-- Chestguard of the Vanquished Champion
		}),
		i(30185, {	-- Cataclysm Chestplate
			["cost"] = { { "i", 30236, 1 }, },	-- Chestguard of the Vanquished Champion
		}),
		i(30189, {	-- Cataclysm Gauntlets
			["cost"] = { { "i", 30239, 1 }, },	-- Gloves of the Vanquished Champion
		}),
		i(30165, {	-- Cataclysm Gloves
			["cost"] = { { "i", 30239, 1 }, },	-- Gloves of the Vanquished Champion
		}),
		i(30170, {	-- Cataclysm Handgrips
			["cost"] = { { "i", 30239, 1 }, },	-- Gloves of the Vanquished Champion
		}),
		i(30166, {	-- Cataclysm Headguard
			["cost"] = { { "i", 30242, 1 }, },	-- Helm of the Vanquished Champion
		}),
		i(30171, {	-- Cataclysm Headpiece
			["cost"] = { { "i", 30242, 1 }, },	-- Helm of the Vanquished Champion
		}),
		i(30190, {	-- Cataclysm Helm
			["cost"] = { { "i", 30242, 1 }, },	-- Helm of the Vanquished Champion
		}),
		i(30172, {	-- Cataclysm Leggings
			["cost"] = { { "i", 30245, 1 }, },	-- Leggings of the Vanquished Champion
		}),
		i(30167, {	-- Cataclysm Legguards
			["cost"] = { { "i", 30245, 1 }, },	-- Leggings of the Vanquished Champion
		}),
		i(30192, {	-- Cataclysm Legplates
			["cost"] = { { "i", 30245, 1 }, },	-- Leggings of the Vanquished Champion
		}),
		i(30168, {	-- Cataclysm Shoulderguards
			["cost"] = { { "i", 30248, 1 }, },	-- Pauldrons of the Vanquished Champion
		}),
		i(30173, {	-- Cataclysm Shoulderpads
			["cost"] = { { "i", 30248, 1 }, },	-- Pauldrons of the Vanquished Champion
		}),
		i(30194, {	-- Cataclysm Shoulderplates
			["cost"] = { { "i", 30248, 1 }, },	-- Pauldrons of the Vanquished Champion
		}),
	}),
	cl(MAGE, {
		i(30206, {	-- Cowl of Tirisfal
			["cost"] = { { "i", 30244, 1 }, },	-- Helm of the Vanquished Hero
		}),
		i(30210, {	-- Mantle of Tirisfal
			["cost"] = { { "i", 30250, 1 }, },	-- Pauldrons of the Vanquished Hero
		}),
		i(30196, {	-- Robes of Tirisfal
			["cost"] = { { "i", 30238, 1 }, },	-- Chestguard of the Vanquished Hero
		}),
		i(30205, {	-- Gloves of Tirisfal
			["cost"] = { { "i", 30241, 1 }, },	-- Gloves of the Vanquished Hero
		}),
		i(30207, {	-- Leggings of Tirisfal
			["cost"] = { { "i", 30247, 1 }, },	-- Leggings of the Vanquished Hero
		}),
	}),
	cl(WARLOCK, {
		i(30212, {	-- Hood of the Corruptor
			["cost"] = { { "i", 30244, 1 }, },	-- Helm of the Vanquished Hero
		}),
		i(30215, {	-- Mantle of the Corruptor
			["cost"] = { { "i", 30250, 1 }, },	-- Pauldrons of the Vanquished Hero
		}),
		i(30214, {	-- Robe of the Corruptor
			["cost"] = { { "i", 30238, 1 }, },	-- Chestguard of the Vanquished Hero
		}),
		i(30211, {	-- Gloves of the Corruptor
			["cost"] = { { "i", 30241, 1 }, },	-- Gloves of the Vanquished Hero
		}),
		i(30213, {	-- Leggings of the Corruptor
			["cost"] = { { "i", 30247, 1 }, },	-- Leggings of the Vanquished Hero
		}),
	}),
	cl(DRUID, {
		i(30216, {	-- Nordrassil Chestguard
			["cost"] = { { "i", 30237, 1 }, },	-- Chestguard of the Vanquished Defender
		}),
		i(30231, {	-- Nordrassil Chestpiece
			["cost"] = { { "i", 30237, 1 }, },	-- Chestguard of the Vanquished Defender
		}),
		i(30222, {	-- Nordrassil Chestplate
			["cost"] = { { "i", 30237, 1 }, },	-- Chestguard of the Vanquished Defender
		}),
		i(30229, {	-- Nordrassil Feral-Kilt
			["cost"] = { { "i", 30246, 1 }, },	-- Leggings of the Vanquished Defender
		}),
		i(30230, {	-- Nordrassil Feral-Mantle
			["cost"] = { { "i", 30249, 1 }, },	-- Pauldrons of the Vanquished Defender
		}),
		i(30232, {	-- Nordrassil Gauntlets
			["cost"] = { { "i", 30240, 1 }, },	-- Gloves of the Vanquished Defender
		}),
		i(30217, {	-- Nordrassil Gloves
			["cost"] = { { "i", 30240, 1 }, },	-- Gloves of the Vanquished Defender
		}),
		i(30223, {	-- Nordrassil Handgrips
			["cost"] = { { "i", 30240, 1 }, },	-- Gloves of the Vanquished Defender
		}),
		i(30228, {	-- Nordrassil Headdress
			["cost"] = { { "i", 30243, 1 }, },	-- Helm of the Vanquished Defender
		}),
		i(30219, {	-- Nordrassil Headguard
			["cost"] = { { "i", 30243, 1 }, },	-- Helm of the Vanquished Defender
		}),
		i(30233, {	-- Nordrassil Headpiece
			["cost"] = { { "i", 30243, 1 }, },	-- Helm of the Vanquished Defender
		}),
		i(30220, {	-- Nordrassil Life-Kilt
			["cost"] = { { "i", 30246, 1 }, },	-- Leggings of the Vanquished Defender
		}),
		i(30221, {	-- Nordrassil Life-Mantle
			["cost"] = { { "i", 30249, 1 }, },	-- Pauldrons of the Vanquished Defender
		}),
		i(30234, {	-- Nordrassil Wrath-Kilt
			["cost"] = { { "i", 30246, 1 }, },	-- Leggings of the Vanquished Defender
		}),
		i(30235, {	-- Nordrassil Wrath-Mantle
			["cost"] = { { "i", 30249, 1 }, },	-- Pauldrons of the Vanquished Defender
		}),
	}),
});
local MADAME_RUBY_GROUPS = {
	i(28282, {	-- Formula: Enchant Shield - Major Stamina
		["isLimited"] = true,
	}),
	i(22565, {	-- Formula: Large Prismatic Shard
		["isLimited"] = true,
	}),
	i(25849),	-- Formula: Runed Eternium Rod
	i(22562, {	-- Formula: Superior Mana Oil
		["isLimited"] = true,
	}),
	i(22563, {	-- Formula: Superior Wizard Oil
		["isLimited"] = true,
	}),
};
local ZURII_YURIAL_GROUPS = {};
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(SHATTRATH_CITY, {
			["lore"] = "Shattrath City is a major hub in Outland situated in the northwestern portion of Terokkar Forest. It is a capital-sized sanctuary city populated by ancient heroes and naaru. It is the first capital available to both sides.",
			["icon"] = "Interface\\Icons\\spell_arcane_teleportshattrath",
			["isRaid"] = true,
			["lvl"] = 58,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(9069, {	-- An Awfully Big Adventure
						["timeline"] = { "added 6.0.2" },
						["collectible"] = false,
						["filterID"] = BATTLE_PETS,
						["groups"] = {
							crit(25, {	-- Morolu the Elder
								["coord"] = { 59.0, 70.0, SHATTRATH_CITY },
								["cr"] = 66553,	-- Morulu The Elder <Master Pet Tamer>
							}),
						},
					}),
					ach(1205, applyclassicphase(TBC_PHASE_ONE, {	-- Hero of Shattrath
						-- #if BEFORE 3.0.1
						["cost"] = {
							{ "i", 31779, 1 },	-- Aldor Tabard
							{ "i", 31780, 1 },	-- Scryers Tabard
						},
						["OnUpdate"] = [[_.CommonAchievementHandlers.ALL_ITEM_COSTS]],
						["description"] = "Gained exalted status with The Scryers and The Aldor.\n\nNOTE: This can be accomplished now by learning both faction's Exalted recipes, their tabards, or their equipment that require Exalted reputation to buy. For the sake of simplicity, just buy both tabards as this will also count toward the 25 tabard achievement later.\n\nWARNING: You must maintain at least one of these requirements in order to acquire the achievement with prepatch!",
						-- #endif
					})),
					ach(903, applyclassicphase(TBC_PHASE_ONE, {	-- Shattrath Divided
						-- #if BEFORE 3.0.1
						["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnClick]],
						["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnTooltip]],
						["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REPS_ANY_OnUpdate(t, 932, 934); end]],
						["description"] = "Raise your reputation with The Scryers or The Aldor to Exalted.",
						-- #endif
					})),
					ach(764, applyclassicphase(TBC_PHASE_ONE, {	-- The Burning Crusader (A)
						-- #if BEFORE 3.0.1
						["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnClick]],
						["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnTooltip]],
						["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REPS_OnUpdate(t, 942, 989, 1011, 935, 946); end]],
						["description"] = "Raise all of The Burning Crusade dungeon reputations to exalted.",
						-- #endif
						["races"] = ALLIANCE_ONLY,
					})),
					ach(763, applyclassicphase(TBC_PHASE_ONE, {	-- The Burning Crusader (H)
						-- #if BEFORE 3.0.1
						["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnClick]],
						["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnTooltip]],
						["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REPS_OnUpdate(t, 942, 989, 1011, 935, 947); end]],
						["description"] = "Raise all of The Burning Crusade dungeon reputations to exalted.",
						-- #endif
						["races"] = HORDE_ONLY,
					})),
				}),
				-- #if AFTER MOP
				filter(BATTLE_PETS, {
					q(31925, {	-- Morulu The Elder
						["isDaily"] = true,
						["coord"] = { 59.0, 70.0, SHATTRATH_CITY },
						["provider"] = { "n", 66553 },	-- Morulu The Elder
					}),
				}),
				-- #endif
				n(FACTIONS, {
					faction(1011, {	-- Lower City
						["maps"] = { AUCHINDOUN_AUCHENAI_CRYPTS, AUCHINDOUN_SETHEKK_HALLS, AUCHINDOUN_SHADOW_LABYRINTH },
					}),
					faction(932, {	-- The Aldor
						["maxReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
					}),
					faction(934, {	-- The Scryers
						["maxReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
					}),
					faction(935, {	-- The Sha'tar
						["maps"] = { TEMPEST_KEEP_ARCATRAZ, TEMPEST_KEEP_BOTANICA, TEMPEST_KEEP_MECHANAR },
					}),
				}),
				n(FLIGHT_PATHS, {
					fp(128, {	-- Shattrath, Terokkar Forest
						["cr"] = 18940,	-- Nutral <Flight Master>
						["coord"] = { 64.08, 41.12, SHATTRATH_CITY },
					}),
				}),
				n(QUESTS, {
					q(10552, {	-- Allegiance to the Scryers
						["qg"] = 18166,	-- Archmage Khadgar
						["sourceQuest"] = 10211,	-- City of Light
						["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
					}),
					q(10553, {	-- Voren'thal the Seer
						["qg"] = 18166,	-- Archmage Khadgar
						["sourceQuest"] = 10552,	-- Allegiance to the Scryers
						["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
					}),
					q(10412, {	-- Firewing Signets
						["qg"] = 18531,	-- Magistrix Fyalenn
						["sourceQuest"] = 10552,	-- Allegiance to the Scryers
						["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 29426, 10 } },	-- Firewing Signet
					}),
					q(10414, {	-- Single Firewing Signet
						["qg"] = 18531,	-- Magistrix Fyalenn
						["sourceQuest"] = 10412,	-- Firewing Signets
						["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
						["maxReputation"] = { 934, HONORED },	-- The Scryers, Honored.
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 29426, 1 } },	-- Firewing Signet
						["repeatable"] = true,
					}),
					q(10415, {	-- More Firewing Signets
						["qg"] = 18531,	-- Magistrix Fyalenn
						["sourceQuest"] = 10412,	-- Firewing Signets
						["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
						["maxReputation"] = { 934, HONORED },	-- The Scryers, Honored.
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 29426, 10 } },	-- Firewing Signet
						["repeatable"] = true,
					}),
					q(10656, {	-- Sunfury Signets
						["qg"] = 18531,	-- Magistrix Fyalenn
						["sourceQuest"] = 10552,	-- Allegiance to the Scryers
						["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 30810, 10 } },	-- Sunfury Signet
					}),
					q(10659, {	-- Single Sunfury Signet
						["qg"] = 18531,	-- Magistrix Fyalenn
						["sourceQuests"] = { 10824, 10656 },	-- Sunfury Signets (SMV or Shattrath)
						["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
						["maxReputation"] = { 934, EXALTED },	-- The Scryers, Exalted.
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 30810, 1 } },	-- Sunfury Signet
						["repeatable"] = true,
					}),
					q(10658, {	-- More Sunfury Signets
						["qg"] = 18531,	-- Magistrix Fyalenn
						["sourceQuests"] = { 10824, 10656 },	-- Sunfury Signets (SMV or Shattrath)
						["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
						["maxReputation"] = { 934, EXALTED },	-- The Scryers, Exalted.
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 30810, 10 } },	-- Sunfury Signet
						["repeatable"] = true,
					}),
					q(10416, {	-- Synthesis of Power
						["qg"] = 18530,	-- Voren'thal the Seer
						["sourceQuest"] = 10552,	-- Allegiance to the Scryers
						["coord"] = { 42.6, 91.4, SHATTRATH_CITY },
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 29739, 1 } },	-- Arcane Tome
					}),
					q(10419, {	-- Arcane Tomes
						["qg"] = 18530,	-- Voren'thal the Seer
						["sourceQuest"] = 10416,	-- Synthesis of Power
						["coord"] = { 42.6, 91.4, SHATTRATH_CITY },
						["maxReputation"] = { 934, EXALTED },	-- The Scryers, Exalted.
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 29739, 1 } },	-- Arcane Tome
						["repeatable"] = true,
					}),
					q(11039, {	-- Report to Spymaster Thalodien
						["providers"] = {
							{ "n", 23273 },	-- Arcanist Raestan
							{ "n", 23272 },	-- Arcanist Savan
						},
						["sourceQuest"] = 10552,	-- Allegiance to the Scryers
						["coords"] = {
							{ 44.6, 76.2, SHATTRATH_CITY },
							{ 60.6, 63.2, SHATTRATH_CITY },
						},
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["isBreadcrumb"] = true,	-- for Manaforge B'naar
					}),
					q(10024, {	-- Voren'thal's Visions
						["qg"] = 18596,	-- Arcanist Adyria
						["description"] = "If you want to switch from Aldor to Scryers, use this quest to regain lost Scryers reputation.",
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 25744, 8 } },	-- Dampscale Basilisk Eye
					}),
					q(10025, {	-- More Basilisk Eyes
						["qg"] = 18596,	-- Arcanist Adyria
						["sourceQuest"] = 10024,	-- Voren'thal's Visions
						["description"] = "If you want to switch from Aldor to Scryers, use this quest to regain lost Scryers reputation.",
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 25744, 8 } },	-- Dampscale Basilisk Eye
						["repeatable"] = true,
					}),
					q(11482, {	-- Duty Calls
						["qg"] = 18594,	-- Dathris Sunstriker
						["coord"] = { 54.6, 80.8, SHATTRATH_CITY },
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["isBreadcrumb"] = true,
						["lvl"] = 70,
					}),
					q(10551, {	-- Allegiance to the Aldor
						["qg"] = 18166,	-- Archmage Khadgar
						["sourceQuest"] = 10211,	-- City of Light
						["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
					}),
					q(10554, {	-- Ishanah
						["qg"] = 18166,	-- Archmage Khadgar
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
					}),
					q(10021, {	-- Restoring the Light
						["qg"] = 18538,	-- Ishanah
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["coord"] = { 24.2, 29.8, SHATTRATH_CITY },
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
					}),
					q(10325, {	-- Marks of Kil'jaeden
						["qg"] = 18537,	-- Adyen the Lightwarden
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 29425, 10 } },	-- Mark of Kil'jaeden
					}),
					q(10327, {	-- Single Mark of Kil'jaeden
						["qg"] = 18537,	-- Adyen the Lightwarden
						["sourceQuest"] = 10325,	-- Marks of Kil'jaeden
						["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
						["maxReputation"] = { 932, HONORED },	-- The Aldor, Honored.
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 29425, 1 } },	-- Mark of Kil'jaeden
						["repeatable"] = true,
					}),
					q(10326, {	-- More Marks of Kil'jaeden
						["qg"] = 18537,	-- Adyen the Lightwarden
						["sourceQuest"] = 10325,	-- Marks of Kil'jaeden
						["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
						["maxReputation"] = { 932, HONORED },	-- The Aldor, Honored.
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 29425, 10 } },	-- Mark of Kil'jaeden
						["repeatable"] = true,
					}),
					q(10653, {	-- Marks of Sargeras
						["qg"] = 18537,	-- Adyen the Lightwarden
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 30809, 10 } },	-- Mark of Sargeras
					}),
					q(10655, {	-- Single Mark of Sargeras
						["qg"] = 18537,	-- Adyen the Lightwarden
						["sourceQuests"] = { 10826, 10653 },	-- Marks of Sargeras (SMV or Shattrath)
						["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
						["maxReputation"] = { 932, EXALTED },	-- The Aldor, Exalted.
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 30809, 1 } },	-- Mark of Sargeras
						["repeatable"] = true,
					}),
					q(10654, {	-- More Marks of Sargeras
						["qg"] = 18537,	-- Adyen the Lightwarden
						["sourceQuests"] = { 10826, 10653 },	-- Marks of Sargeras (SMV or Shattrath)
						["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
						["maxReputation"] = { 932, EXALTED },	-- The Aldor, Exalted.
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 30809, 10 } },	-- Mark of Sargeras
						["repeatable"] = true,
					}),
					q(10420, {	-- A Cleansing Light
						["qg"] = 18538,	-- Ishanah
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["coord"] = { 24.2, 29.8, SHATTRATH_CITY },
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 29740, 1 } },	-- Fel Armament
					}),
					q(10421, {	-- Fel Armaments
						["qg"] = 18538,	-- Ishanah
						["sourceQuest"] = 10420,	-- A Cleansing Light
						["coord"] = { 24.2, 29.8, SHATTRATH_CITY },
						["maxReputation"] = { 932, EXALTED },	-- The Aldor, Exalted.
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["cost"] = { { "i", 29740, 1 } },	-- Fel Armament
						["repeatable"] = true,
					}),
					q(10020, {	-- A Cure for Zahlia
						["qg"] = 18597,	-- Sha'nir
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
					}),
					applyclassicphase(TBC_PHASE_FIVE, q(11481, {	-- Crisis at the Sunwell (may be able to be picked up in Netherstorm)
						["qg"] = 18537,	-- Adyen the Lightwarden
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["isBreadcrumb"] = true,
					})),
					q(11038, {	-- Assist Exarch Orelis
						["providers"] = {
							{ "n", 23271 },	-- Vindicator Kaan
							{ "n", 23270 },	-- Vindicator Aeus
						},
						["sourceQuest"] = 10551,	-- Allegiance to the Aldor
						["coords"] = {
							{ 35.0, 32.6, SHATTRATH_CITY },
							{ 47.4, 26.4, SHATTRATH_CITY },
						},
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["isBreadcrumb"] = true,	-- for "Distraction at Manaforge B'naar," unavailable if you did any Netherstorm breadcrumb quest
					}),
					q(10017, {	-- Strained Supplies
						["qg"] = 18597,	-- Sha'nir
						["description"] = "If you want to switch from Scryers to Aldor, use this quest to regain lost Aldor reputation.",
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 25802, 8 } },	-- Dreadfang Venom Sac
					}),
					q(10019, {	-- More Venom Sacs
						["qg"] = 18597,	-- Sha'nir
						["sourceQuest"] = 10017,	-- Strained Supplies
						["description"] = "If you want to switch from Scryers to Aldor, use this quest to regain lost Aldor reputation.",
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["cost"] = { { "i", 25802, 8 } },	-- Dreadfang Venom Sac
						["repeatable"] = true,
					}),
					q(11877, {	-- Sunfury Attack Plans
						["qg"] = 25140,	-- Lord Torvos
						["repeatable"] = true,
					}),
					q(11880, {	-- The Multiphase Survey
						["qg"] = 19475,	-- Harbinger Haronem
						["repeatable"] = true,
					}),
					q(11875, {	-- Gaining the Advantage
						["qg"] = 19202,	-- Emissary Mordin
						["description"] = "This daily quest is only available to characters with Herbalism, Mining, or Skinning.",
						["repeatable"] = true,
					}),
					applyclassicphase(TBC_PHASE_FIVE, q(11513, {	-- Intercepting the Mana Cells
						["qg"] = 24932,	-- Exarch Nasuun
						["sourceQuest"] = 11534,	-- Report to Nasuun
						["coord"] = { 49.8, 42.6, SHATTRATH_CITY },
						["isDaily"] = true,
					})),
					applyclassicphase(TBC_PHASE_FIVE, q(11514, {	-- Maintaining the Sunwell Portal
						["qg"] = 24932,	-- Exarch Nasuun
						["coord"] = { 49.8, 42.6, SHATTRATH_CITY },
						["repeatable"] = true,
					})),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11096, {	-- Threat from Above
						["qg"] = 23449,	-- Yuula
						["coord"] = { 64.0, 42.0, SHATTRATH_CITY },
					})),
					applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11098, {	-- To Skettis!
						["qg"] = 23449,	-- Yuula
						["sourceQuest"] = 11096,	-- Threat From Above
						["coord"] = { 64.0, 42.0, SHATTRATH_CITY },
					})),
					q(10984, {	-- Speak with the Ogre
						["qg"] = 22497,	-- V'eru
						["coord"] = { 56.4, 49.2, SHATTRATH_CITY },
						["isBreadcrumb"] = true,
					}),
					q(10917, {  -- The Outcast's Plight
						["qg"] = 22429,	-- Vekax
						["coord"] = { 47.7, 18.8, SHATTRATH_CITY },
						["cost"] = { { "i", 25719, 30 } },	-- 30x Arakkoa Feather
						["groups"] = {
							i(31800, {  -- Outcasts Cache
								i(28495),	-- Windwalker's Sash
								i(28496),	-- Talonite's Belt
								i(28497),	-- Dreadhawk's Girdle
								i(28498),	-- Ravenguard's Baldric
								i(28491),	-- Windwalker's Footwraps
								i(28493),	-- Dreadhawk's Schynbald
								i(28492),	-- Talonite's Boots
								i(28494),	-- Ravenguard's Greaves
							}),
						},
					}),
					q(10918, {  -- More Feathers
						["qg"] = 22429,	-- Vekax
						["sourceQuest"] = 10917,	-- The Outcast's Plight
						["coord"] = { 47.7, 18.8, SHATTRATH_CITY },
						["maxReputation"] = { 1011, HONORED },	-- Lower City, Honored.
						["cost"] = { { "i", 25719, 30 } },	-- 30x Arakkoa Feather
						["repeatable"] = true,
						["groups"] = {
							i(31800, {  -- Outcasts Cache
								i(28495),	-- Windwalker's Sash
								i(28496),	-- Talonite's Belt
								i(28497),	-- Dreadhawk's Girdle
								i(28498),	-- Ravenguard's Baldric
								i(28491),	-- Windwalker's Footwraps
								i(28493),	-- Dreadhawk's Schynbald
								i(28492),	-- Talonite's Boots
								i(28494),	-- Ravenguard's Greaves
							}),
						},
					}),
					q(57581, {	-- Plucking Plumes
						["qg"] = 22429,	-- Vekax
						["coord"] = { 47.7, 18.8, SHATTRATH_CITY },
						["timeline"] = { "added 8.2.5.31960" },
						["minReputation"] = { 1011, HONORED },	-- Lower City, Honored.
						["cost"] = { { "i", 25719, 30 } },	-- 30x Arakkoa Feather
						["repeatable"] = true,
						["groups"] = {
							i(31800, {  -- Outcasts Cache
								i(28495),	-- Windwalker's Sash
								i(28496),	-- Talonite's Belt
								i(28497),	-- Dreadhawk's Girdle
								i(28498),	-- Ravenguard's Baldric
								i(28491),	-- Windwalker's Footwraps
								i(28493),	-- Dreadhawk's Schynbald
								i(28492),	-- Talonite's Boots
								i(28494),	-- Ravenguard's Greaves
							}),
						},
					}),
					applyclassicphase(TBC_PHASE_THREE_NETHERWING, q(11109, {	-- Jorus the Cobalt Netherwing Drake
						["qg"] = 23462,	-- Jorus
						["sourceQuest"] = 11107,	-- Bow to the Highlord
						["coord"] = { 67.8, 17.2, SHATTRATH_CITY },
						["groups"] = {
							i(32859),	-- Reins of the Cobalt Netherwing Drake Mount
						},
					})),
					applyclassicphase(TBC_PHASE_THREE_NETHERWING, q(11110, {	-- Malfas the Purple Netherwing Drake
						["qg"] = 23464,	-- Malfas
						["sourceQuest"] = 11107,	-- Bow to the Highlord
						["coord"] = { 67.8, 18.0, SHATTRATH_CITY },
						["groups"] = {
							i(32860),	-- Reins of the Purple Netherwing Drake Mount
						},
					})),
					applyclassicphase(TBC_PHASE_THREE_NETHERWING, q(11111, {	-- Onyxien the Onyx Netherwing Drake
						["qg"] = 23463,	-- Onyxien
						["sourceQuest"] = 11107,	-- Bow to the Highlord
						["coord"] = { 67.6, 18.4, SHATTRATH_CITY },
						["groups"] = {
							i(32857),	-- Reins of the Onyx Netherwing Drake Mount
						},
					})),
					applyclassicphase(TBC_PHASE_THREE_NETHERWING, q(11112, {	-- Suraku the Azure Netherwing Drake
						["qg"] = 23461,	-- Suraku
						["sourceQuest"] = 11107,	-- Bow to the Highlord
						["coord"] = { 66.8, 18.4, SHATTRATH_CITY },
						["groups"] = {
							i(32858),	-- Reins of the Azure Netherwing Drake Mount
						},
					})),
					applyclassicphase(TBC_PHASE_THREE_NETHERWING, q(11113, {	-- Voranaku the Violet Netherwing Drake
						["qg"] = 23466,	-- Voranaku
						["sourceQuest"] = 11107,	-- Bow to the Highlord
						["coord"] = { 66.6, 17.8, SHATTRATH_CITY },
						["groups"] = {
							i(32862),	-- Reins of the Violet Netherwing Drake Mount
						},
					})),
					applyclassicphase(TBC_PHASE_THREE_NETHERWING, q(11114, {	-- Zoya the Veridian Netherwing Drake
						["qg"] = 23465,	-- Zoya
						["sourceQuest"] = 11107,	-- Bow to the Highlord
						["coord"] = { 66.6, 18.6, SHATTRATH_CITY },
						["groups"] = {
							i(32861),	-- Reins of the Veridian Netherwing Drake Mount
						},
					})),
					q(10210, {	-- A'dal
						["qg"] = 19684,	-- Haggard War Veteran
						["coord"] = { 59.6, 41.4, SHATTRATH_CITY },
					}),
					q(10211, {	-- City of Light
						["qg"] = 18166,	-- Archmage Khadgar
						["sourceQuest"] = 10210,	-- A'dal
						["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
					}),
					q(11046, {	-- Chief Apothecary Hildagard
						["qg"] = 19678,	-- Fantei
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,	-- for "A Haunted History" in Shadowmoon Valley
					}),
					q(44863, {	-- Clearing the Air
						["qg"] = 115546,	-- Lunelli
						["coord"] = { 64.1, 71.5, SHATTRATH_CITY },
						["timeline"] = { "added 7.0.3.21655" },
						["requireSkill"] = BLACKSMITHING,
						["groups"] = {
							i(142279),	-- Plans: Windforged Rapier
							i(142283),	-- Plans: Skyforged Great Axe
							i(142282),	-- Plans: Stormforged Axe
						},
					}),
					q(10009, {	-- Crackin' Some Skulls
						["qg"] = 18584,	-- Sal'salabim
						["sourceQuest"] = 10004,	-- Patience and Understanding *UNTESTED*
					}),
					q(47523, {	-- Disturbance Detected: Black Temple (EVENT: TIMEWALKING)
						["qg"] = 123252,	-- Vormu
						["description"] = "This quest is only available during BC Timewalking.",
						["timeline"] = { "added 7.2.5.23910" },
						["isWeekly"] = true,
					}),
					q(41160, {	-- Earth to Earth
						["qg"] = 115546,	-- Lunelli
						["coord"] = { 64.1, 71.5, SHATTRATH_CITY },
						["timeline"] = { "added 7.0.3.21655" },
						["requireSkill"] = BLACKSMITHING,
						["groups"] = {
							i(142284),	-- Plans: Stoneforged Claymore
							i(142287),	-- Plans: Great Earthforged Hammer
							i(142286),	-- Plans: Lavaforged Warhammer
						},
					}),
					q(10010, {	-- It's Just That Easy?
						["qg"] = 18584,	-- Sal'salabim
						["sourceQuest"] = 10009,	-- Crackin' Some Skulls
					}),
					q(10037, {	-- Rather Be Fishin'
						["qg"] = 18653,	-- Seth
						["groups"] = {
							i(25978)	-- Seth's Graphite Fishing Pole
						},
					}),
					applyclassicphase(WRATH_PHASE_ONE, q(13082, {	-- The Boon of A'dal
						["qg"] = 18481,	-- A'dal
						["sourceQuest"] = 13081,	-- The Will of the Naaru *UNTESTED*
						["timeline"] = { "added 3.0.3" },
					})),
					q(10550, {	-- The Bundle of Bloodthistle
						["qg"] = 21411,	-- Tobias the Filth Gorger
						["sourceQuest"] = 10547,	-- Of Thistleheads and Eggs...
						["coord"] = { 63.8, 69.7, SHATTRATH_CITY },
					}),
					q(10251, {	-- The Master's Grand Design?
						["qg"] = 19720,	-- "Dirty" Larry <Ruffian>
						["coord"] = { 43.6, 29.6, SHATTRATH_CITY },
						["sourceQuest"] = 10231,	-- What Book? I Don't See Any Book.
					}),
					q(10883, {	-- The Tempest Key
						["qg"] = 18166,	-- Archmage Khadgar
						["sourceQuest"] = 10588,	-- The Cipher of Damnation
					}),
					-- TODO: https://wowwiki-archive.fandom.com/wiki/Wind_Trader_Zhareem
					q(11369, {	-- WANTED: A Black Stalker Egg
						["qg"] = 24369,	-- Wind Trader Zhareem
						["coord"] = { 75, 37, SHATTRATH_CITY },
						["maps"] = { COILFANG_RESERVOIR_UNDERBOG },
						["isDaily"] = true,
						["lvl"] = 70,
						["cost"] = {
							{ "i", 33826, 1 },	-- Black Stalker Egg
						},
					}),
					q(11389, {	-- Wanted: Arcatraz Sentinels
						["qg"] = 24370,	-- Nether-Stalker Mah'duun
						["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
						["isDaily"] = true,
						["groups"] = {
							i(29460),	-- Ethereum Prison Key
						},
					}),
					q(11371, {	-- Wanted: Coilfang Myrmidons
						["qg"] = 24370,	-- Nether-Stalker Mah'duun
						["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
						["isDaily"] = true,
						["groups"] = {
							i(29460),	-- Ethereum Prison Key
						},
					}),
					q(11376, {	-- Wanted: Malicious Instructors
						["qg"] = 24370,	-- Nether-Stalker Mah'duun
						["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
						["isDaily"] = true,
						["groups"] = {
							i(29460),	-- Ethereum Prison Key
						},
					}),
					q(11354, {	-- WANTED: Nazan's Riding Crop
						["qg"] = 24369,	-- Wind Trader Zhareem
						["coord"] = { 75, 37, SHATTRATH_CITY },
						["maps"] = { HELLFIRE_CITADEL_RAMPARTS },
						["isDaily"] = true,
						["cost"] = {
							{ "i", 33833, 1 },	-- Nazan's Riding Crop
						},
					}),
					q(11383, {	-- Wanted: Rift Lords
						["qg"] = 24370,	-- Nether-Stalker Mah'duun
						["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
						["isDaily"] = true,
						["groups"] = {
							i(29460),	-- Ethereum Prison Key
						},
					}),
					q(11364, {	-- Wanted: Shattered Hand Centurions
						["qg"] = 24370,	-- Nether-Stalker Mah'duun
						["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
						["isDaily"] = true,
						["groups"] = {
							i(29460),	-- Ethereum Prison Key
						},
					}),
					applyclassicphase(TBC_PHASE_FIVE, q(11500, {	-- Wanted: Sisters of Torment
						["qg"] = 24370,	-- Nether-Stalker Mah'duun
						["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
						["maps"] = { MAGISTERS_TERRACE },
						["isDaily"] = true,
						["groups"] = {
							i(29460),	-- Ethereum Prison Key
						},
					})),
					q(11385, {	-- Wanted: Sunseeker Channelers
						["qg"] = 24370,	-- Nether-Stalker Mah'duun
						["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
						["isDaily"] = true,
						["groups"] = {
							i(29460),	-- Ethereum Prison Key
						},
					}),
					q(11387, {	-- Wanted: Tempest-Forge Destroyers
						["qg"] = 24370,	-- Nether-Stalker Mah'duun
						["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
						["isDaily"] = true,
						["groups"] = {
							i(29460),	-- Ethereum Prison Key
						},
					}),
					q(10231, {	-- What Book? I Don't See Any Book.
						["qg"] = 19715,	-- Ezekiel
						["sourceQuest"] = 10228,	-- Ezekiel
						["coord"] = { 59.3, 35.6, SHATTRATH_CITY },
						["description"] = "Walks around the |cFFFFD700Terrace of Light|r.",
					}),
					q(11045, {	-- Zorus the Judicator
						["qg"] = 19678,	-- Fantei
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,	-- for "A Ghost in the Machine" in SMV, mutually exclusive w/other bcrumbs
					}),
					
					-- Scourge Invasion (Wrath Quests) -- TODO: Move these!
					applyclassicphase(WRATH_PHASE_ONE, q(12753, {	-- A Desperate Alliance
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { DWARF },
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12753, {	-- A Desperate Alliance
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { NIGHTELF },
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12775, {	-- A Desperate Alliance
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { HUMAN },
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12777, {	-- A Desperate Alliance
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { DRAENEI },
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12808, {	-- A Desperate Alliance
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { GNOME },
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12773, {	-- Darnassus
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { NIGHTELF },
						["provider"] = { "n", 29087 },	-- Bishop Lazaril
						["sourceQuest"] = 12753,	-- A Desperate Alliance
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12783, {	-- Desperate Research
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { TROLL },
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12752, {	-- Desperate Research
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { UNDEAD },
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12782, {	-- Desperate Research
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { BLOODELF },
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12784, {	-- Desperate Research
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { TAUREN },
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12811, {	-- Desperate Research
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { ORC },
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12771, {	-- Ironforge (Dwarf)
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { DWARF },
						["provider"] = { "n", 29087 },	-- Bishop Lazaril
						["sourceQuest"] = 12753,	-- A Desperate Alliance
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12809, {	-- Ironforge (Gnome)
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { GNOME },
						["provider"] = { "n", 29087 },	-- Bishop Lazaril
						["sourceQuest"] = 12808,	-- A Desperate Alliance
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12785, {	-- Orgrimmar (Troll)
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { TROLL },
						["provider"] = { "n", 28318 },	-- Grand Apothecary Putress
						["sourceQuest"] = 12783,	-- Desperate Research
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12812, {	-- Orgrimmar (Orc)
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { ORC },
						["provider"] = { "n", 28318 },	-- Grand Apothecary Putress
						["sourceQuest"] = 12811,	-- Desperate Research
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12788, {	-- Silvermoon
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { BLOODELF },
						["provider"] = { "n", 28318 },	-- Grand Apothecary Putress
						["sourceQuest"] = 12782,	-- Desperate Research
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12774, {	-- Stormwind
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { HUMAN },
						["provider"] = { "n", 29087 },	-- Bishop Lazaril
						["sourceQuest"] = 12775,	-- A Desperate Alliance
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12776, {	-- The Exodar
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { DRAENEI },
						["provider"] = { "n", 29087 },	-- Bishop Lazaril
						["sourceQuest"] = 12777,	-- A Desperate Alliance
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12787, {	-- The Undercity
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { UNDEAD },
						["provider"] = { "n", 28318 },	-- Grand Apothecary Putress
						["sourceQuest"] = 12752,	-- Desperate Research
					})),
					applyclassicphase(WRATH_PHASE_ONE, q(12786, {	-- Thunder Bluff
						["timeline"] = { "added 3.0.2", "removed 3.1.0" },
						["races"] = { TAUREN },
						["provider"] = { "n", 28318 },	-- Grand Apothecary Putress
						["sourceQuest"] = 12784,	-- Desperate Research
					})),
				}),
				n(REWARDS, {
					i(33844, {	-- Barrel of Fish
						i(33869),	-- Recipe: Broiled Bloodfin
						-- #if AFTER 3.2.0
						i(34834),	-- Recipe: Captain Rumsey's Lager
						-- #endif
						i(33925),	-- Recipe: Delicious Chocolate Cake
						i(33875),	-- Recipe: Kibler's Bits
						i(33870),	-- Recipe: Skullfish Soup
						i(33871),	-- Recipe: Stormchops
					}),
					i(33857, {	-- Crate of Meat
						-- #if AFTER 3.2.0
						i(34834),	-- Recipe: Captain Rumsey's Lager
						-- #endif
						i(33925),	-- Recipe: Delicious Chocolate Cake
						i(33875),	-- Recipe: Kibler's Bits
						i(33873),	-- Recipe: Spicy Hot Talbuk
						i(33871),	-- Recipe: Stormchops
					}),
				}),
				n(VENDORS, {
					n(19662, {	-- Aaron Hollman <Blacksmithing Supplies>
						["coord" ] = { 64.0, 71.8, SHATTRATH_CITY },
						["minReputation"] = { 1011, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(23591, {	-- Plans: Adamantite Cleaver
								["isLimited"] = true,
							}),
							i(23592, {	-- Plans: Adamantite Dagger
								["isLimited"] = true,
							}),
							i(23590, {	-- Plans: Adamantite Maul
								["isLimited"] = true,
							}),
							i(23593, {	-- Plans: Adamantite Rapier
								["isLimited"] = true,
							}),
							i(25846, {	-- Plans: Adamantite Rod
								["isLimited"] = true,
							}),
						},
					}),
					n(19043, {	-- Ahemen <Staff Vendor>
						["coord"] = { 34.2, 20.0, SHATTRATH_CITY },
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							i(12251, {	-- Big Stick
								["isLimited"] = true,
							}),
						},
					}),
					n(21432, {	-- Almaador <Sha'tari Quartermaster>
						["coord"] = { 51.6, 41.6, SHATTRATH_CITY },
						["minReputation"] = { 935, NEUTRAL },	-- The Sha'tar, Neutral.
						["groups"] = {
							i(29177),	-- Adal's Command
							i(29180),	-- Blessed Scale Girdle
							i(29176),	-- Crest of the Sha'tar
							applyclassicphase(TBC_PHASE_TWO, i(35404)),	-- Crusader's Ornamented Headguard
							applyclassicphase(TBC_PHASE_TWO, i(35416)),	-- Crusader's Scaled Shoulders
							i(33159),	-- Design: Blood of Amber
							i(25904),	-- Design: Insightful Earthstorm Diamond
							i(33155),	-- Design: Kailee's Rose
							i(30826),	-- Design: Ring of Arcane Shielding
							i(24182),	-- Design: Talasite Owl
							applyclassicphase(TBC_PHASE_TWO, i(35359)),	-- Dragonhide Spaulders
							applyclassicphase(TBC_PHASE_TWO, i(35330)),	-- Dreadweave Leggings
							applyclassicphase(TBC_PHASE_TWO, i(35345)),	-- Evoker's Silk Handguards
							i(28273),	-- Formula: Enchant Gloves - Major Healing
							i(33153),	-- Formula: Enchant Gloves - Threat
							i(22537),	-- Formula: Enchant Ring - Healing Power
							i(28281),	-- Formula: Enchant Weapon - Major Healing
							i(29175),	-- Gavel of Pure Light
							i(29195, {	-- Glyph of Arcane Warding
								["timeline"] = { "removed 5.0.4" },
							}),
							i(29191, {	-- Glyph of Power
								["timeline"] = { "removed 5.0.4" },
							}),
							applyclassicphase(TBC_PHASE_TWO, i(35362)),	-- Kodohide Helm
							applyclassicphase(TBC_PHASE_TWO, i(35333)),	-- Mooncloth Cowl
							applyclassicphase(TBC_PHASE_TWO, i(35368)),	-- Opportunist's Leather Legguards
							i(29717),	-- Pattern: Drums of Battle
							-- #if ANYCLASSIC
							applyclassicphase(TBC_PHASE_FOUR, i(185926)),	-- Pattern: Greater Drums of Battle
							-- #endif
							i(13517),	-- Recipe: Alchemist Stone
							i(31354),	-- Recipe: Flask of the Titans
							i(22915),	-- Recipe: Transmute Primal Air to Fire
							applyclassicphase(TBC_PHASE_TWO, i(35341)),	-- Satin Mantle
							applyclassicphase(TBC_PHASE_TWO, i(35407)),	-- Savage Plate Chestpiece
							applyclassicphase(TBC_PHASE_TWO, i(35381)),	-- Seer's Linked Armor
							applyclassicphase(TBC_PHASE_TWO, i(35388)),	-- Seer's Mail Helm
							applyclassicphase(TBC_PHASE_TWO, i(35395)),	-- Seer's Ringmail Shoulderpads
							i(31781),	-- Sha'tar Tabard
							applyclassicphase(TBC_PHASE_TWO, i(35380)),	-- Stalker's Chain Spaulders
							i(30634, {	-- Warpforged Key
								["timeline"] = { "removed 4.2.0.10000" },
							}),
							applyclassicphase(TBC_PHASE_TWO, i(35375)),	-- Wyrmhide Robe
							i(29179),	-- Xi'ri's Gift
						},
					}),
					n(22212, {	-- Andrion Darkspinner <Shadoweave Tailoring Specialist>
						["coord"] = { 66.6, 68.6, SHATTRATH_CITY },
						["minReputation"] = { 1011, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(21915),	-- Pattern: Ebon Shadowbag
							i(21914),	-- Pattern: Frozen Shadoweave Boots
							i(21913),	-- Pattern: Frozen Shadoweave Robe
							i(21912),	-- Pattern: Frozen Shadoweave Shoulders
							i(30483),	-- Pattern: Shadowcloth
						},
					}),
					applyclassicphase(TBC_PHASE_FIVE, n(27667, {	-- Anwehu <Weapons & Armorsmith>
						["coord"] = { 48.8, 42.8, SHATTRATH_CITY },
						["minReputation"] = { 1077, NEUTRAL },	-- Shattered Sun Offensive, Neutral.
						["groups"] = {
							i(34925),	-- Adorned Supernal Legwraps
							i(34935),	-- Aftershock Waistguard
							i(34887),	-- Angelista's Revenge
							i(34890),	-- Anveena's Touch
							i(34904), 	-- Barbed Gloves of the Sage
							i(34929), 	-- Belt of the Silent Path
							i(34894), 	-- Blade of Serration
							i(34947), 	-- Blue's Greaves of the Righteous Guardian
							i(34919), 	-- Boots of Incantations
							i(34942), 	-- Breastplate of Ire
							i(34939), 	-- Chestplate of Stoicism
							i(34932), 	-- Clutch of the Soothing Breeze
							i(34937), 	-- Corrupted Soulcloth Pantaloons
							i(34892), 	-- Crossbow of Relentless Strikes
							i(34905), 	-- Crystalwind Leggings
							i(34921), 	-- Ecclesiastical Cuirass
							i(34906), 	-- Embrace of Everlasting Prowess
							i(34903), 	-- Embrace of Starlight
							i(34938), 	-- Enslaved Doomguard Soulgrips
							i(34889),	-- Fused Nethergon Band
							i(34916), 	-- Gauntless of Rapidity
							i(34896), 	-- Gavel of Naaru Blessings
							i(34944), 	-- Girdle of Seething Rage
							i(34941), 	-- Girdle of the Fearless
							i(34924), 	-- Gown of Spiritual Wonder
							i(34922), 	-- Greaves of Pacification
							i(34901), 	-- Grovewalker's Leggings
							i(34911), 	-- Handwraps of the Aggressor
							i(34933), 	-- Hauberk of Whirling Fury
							i(34946), 	-- Inscribed Legplates of the Aldor
							i(34914), 	-- Leggings of the Pursuit
							i(34943), 	-- Legplates of the Unending Fury
							i(34918), 	-- Legwraps of Sweltering Flame
							i(34902), 	-- Oakleaf-Spun Handguards
							i(34888),	-- Ring of the Stalwart Protector
							i(34931), 	-- Runed Scales of Antiquity
							i(34934), 	-- Rushing Storm Kilt
							i(34912), 	-- Scaled Drakeskin Chestguard
							i(34895), 	-- Scryer's Blade of Focus
							i(34945), 	-- Shattrah Protectorate's Breastplate
							i(34900), 	-- Shroud of Nature's Harmony
							i(34917), 	-- Shroud of the Lore`nial
							i(34926), 	-- Slippers of Dutiful Mending
							i(34898), 	-- Staff of the Forest Lord
							i(34940), 	-- Sunguard Legplates
							i(34949), 	-- Swift Blade of Uncertainty
							i(34910), 	-- Tameless Breeches
							i(34891), 	-- The Blade of Harbingers
							i(34952), 	-- The Mutilator
							i(34936), 	-- Tormented Demonsoul Robes
							i(34928), 	-- Trousers of the Scryers' Retainer
							i(34927), 	-- Tunic of the Dark Hour
							i(34893), 	-- Vanir's Fist of Brutality
							i(34951), 	-- Vanir's Fist of Carnage
							i(34950), 	-- Vanir's Fist of Savagery
							i(34923), 	-- Waistguard of Reparation
							i(34930), 	-- Wave of Life Chestguard
						},
					})),
					n(23483, {	-- Arcanist Xorith
						["coord"] = { 60.6, 63.6, SHATTRATH_CITY },
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = {
							i(35717, {	-- Shattrath Flask of Blinding Light
								["cost"] = { { "i", 32897, 1 }, },	-- 1x Mark of the Illidari
							}),
							i(32898, {	-- Shattrath Flask of Fortification
								["cost"] = { { "i", 32897, 1 }, },	-- 1x Mark of the Illidari
							}),
							i(32899, {	-- Shattrath Flask of Mighty Restoration
								["cost"] = { { "i", 32897, 1 }, },	-- 1x Mark of the Illidari
							}),
							i(35716, {	-- Shattrath Flask of Pure Death
								["cost"] = { { "i", 32897, 1 }, },	-- 1x Mark of the Illidari
							}),
							i(32901, {	-- Shattrath Flask of Relentless Assault
								["cost"] = { { "i", 32897, 1 }, },	-- 1x Mark of the Illidari
							}),
							i(32900, {	-- Shattrath Flask of Supreme Power
								["cost"] = { { "i", 32897, 1 }, },	-- 1x Mark of the Illidari
							}),
						},
					}),
					-- #if BEFORE CATA
					n(25196, {	-- Archer Delvinar <Specialty Ammunition Vendor>
						["coord"] = { 41.4, 63.4, SHATTRATH_CITY },
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = {
							i(32883, {	-- Felbane Slugs
								["timeline"] = { "removed 4.0.1.10000" },
								["races"] = ALLIANCE_ONLY,
							}),
							i(32882, {	-- Hellfire Shot
								["timeline"] = { "removed 4.0.1.10000" },
								["races"] = HORDE_ONLY,
							}),
							applyclassicphase(TBC_PHASE_THREE, i(34581, {	-- Mysterious Arrow
								["timeline"] = { "removed 4.0.1.20000" },
							})),
							applyclassicphase(TBC_PHASE_THREE, i(34582, {	-- Mysterious Shell
								["timeline"] = { "removed 4.0.1.20000" },
							})),
							applyclassicphase(TBC_PHASE_THREE, i(31737, {	-- Timeless Arrow
								["timeline"] = { "removed 4.0.1.20000" },
							})),
							applyclassicphase(TBC_PHASE_THREE, i(31735, {	-- Timeless Shell
								["timeline"] = { "removed 4.0.1.20000" },
							})),
							i(31949, {	-- Warden's Arrow
								["timeline"] = { "removed 4.0.1" },
							}),
						},
					}),
					-- #endif
					n(20613, {	-- Arodis Sunblade <Keeper of Sha'tari Artifacts>
						["coord"] = { 42.6, 90.6, SHATTRATH_CITY },
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = TIER_FOUR_GROUPS,
					}),
					n(20616, {	-- Asuur <Keeper of Sha'tari Artifacts>
						["coord"] = { 23.6, 32.6, SHATTRATH_CITY },
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = TIER_FOUR_GROUPS,
					}),
					n(19196, {	-- Cro Threadstrong <Leatherworking Supplies>
						["coord"] = { 67.2, 67.6, SHATTRATH_CITY },
						["minReputation"] = { 1011, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(25720, {	-- Pattern: Heavy Knothide Leather
								["spellID"] = 32455,	-- Heavy Knothide Leather
								["timeline"] = { "removed 3.2.0.10000"},
								["requireSkill"] = LEATHERWORKING,
								["isLimited"] = true,
								["f"] = 200,
							}),
						},
					}),
					n(19213, {	-- Eiin <Specialty Tailoring Supplies>
						["coord"] = { 66.2, 68.8, SHATTRATH_CITY },
						["minReputation"] = { 1011, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(21892),	-- Pattern: Bolt of Imbued Netherweave
							i(21893),	-- Pattern: Imbued Netherweave Bag
							i(21896),	-- Pattern: Netherweave Robe
							i(21897),	-- Pattern: Netherweave Tunic
						},
					}),
					n(33633, {	-- Enchantress Andiala <Enchanting Trainer>
						["coord"] = { 56.2, 74.4, SHATTRATH_CITY },
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["timeline"] = { "added 3.1.0.9767" },
						["groups"] = ZURII_YURIAL_GROUPS,
					}),
					n(18525, {	-- G'eras
						["coord"] = { 50.8, 42.4, SHATTRATH_CITY },
						["minReputation"] = { 935, NEUTRAL },	-- The Sha'tar, Neutral.
						["groups"] = {
							applyclassicphase(TBC_PHASE_FOUR, i(33585)), 	-- Achromic Trousers of the Naaru
							applyclassicphase(TBC_PHASE_FOUR, i(33810)), 	-- Amani Mask of Death
							applyclassicphase(TBC_PHASE_FOUR, i(33578)), 	-- Armwraps of the Kaldorei Protector
							applyclassicphase(TBC_PHASE_ONE, i(29266)), 	-- Azure-Shield of Coldarra
							applyclassicphase(TBC_PHASE_ONE, i(29373)), 	-- Band of Halos
							applyclassicphase(TBC_PHASE_FOUR, i(33580)),	-- Band of the Swift Paw
							applyclassicphase(TBC_PHASE_FOUR, i(35326)), 	-- Battlemaster's Alacrity
							applyclassicphase(TBC_PHASE_FOUR, i(34049)), 	-- Battlemaster's Audacity
							applyclassicphase(TBC_PHASE_FOUR, i(34163)), 	-- Battlemaster's Cruelty
							applyclassicphase(TBC_PHASE_FOUR, i(34162)), 	-- Battlemaster's Depravity
							applyclassicphase(TBC_PHASE_FOUR, i(33832)), 	-- Battlemaster's Determination
							applyclassicphase(TBC_PHASE_FOUR, i(34050)), 	-- Battlemaster's Perseverance
							applyclassicphase(TBC_PHASE_ONE, i(29375)), 	-- Bishop's Cloak
							applyclassicphase(TBC_PHASE_FOUR, i(33566)), 	-- Blessed Elunite Coverings
							applyclassicphase(TBC_PHASE_ONE, i(29382)), 	-- Blood Knight War Cloak
							applyclassicphase(TBC_PHASE_ONE, i(29383)), 	-- Bloodlust Brooch
							applyclassicphase(TBC_PHASE_FOUR, i(33501)), 	-- Bloodthirster's Wargreaves
							applyclassicphase(TBC_PHASE_FOUR, i(33517)), 	-- Bonefist Gauntlets
							applyclassicphase(TBC_PHASE_FOUR, i(33516)), 	-- Bracers of the Ancient Phalanx
							applyclassicphase(TBC_PHASE_FOUR, i(33296)), 	-- Brooch of Deftness
							applyclassicphase(TBC_PHASE_FOUR, i(33192)), 	-- Carved Witch Doctor's Stick
							applyclassicphase(TBC_PHASE_FOUR, i(33331)), 	-- Chain of Unleashed Rage
							applyclassicphase(TBC_PHASE_FOUR, i(33522)), 	-- Chestguard of the Stoic Guardian
							applyclassicphase(TBC_PHASE_ONE, i(29381)),	-- Choker of Vile Intent
							applyclassicphase(TBC_PHASE_FOUR, i(35321)),	-- Cloak of Arcane Alacrity
							applyclassicphase(TBC_PHASE_FOUR, i(33304)), 	-- Cloak of Subjugated Power
							applyclassicphase(TBC_PHASE_FOUR, i(35324)), 	-- Cloak of Swift Reprieve
							applyclassicphase(TBC_PHASE_ONE, i(32088)), 	-- Cowl of Beastly Rage
							applyclassicphase(TBC_PHASE_ONE, i(32090)), 	-- Cowl of Naaru Blessings
							applyclassicphase(TBC_PHASE_FOUR, i(33484)), 	-- Dory's Embrace
							applyclassicphase(TBC_PHASE_FOUR, i(33535)), 	-- Earthquake Bracers
							applyclassicphase(TBC_PHASE_ONE, i(29376)), 	-- Essence of the Martyr
							applyclassicphase(TBC_PHASE_FOUR, i(33513)), 	-- Eternium Rage-Shackles
							applyclassicphase(TBC_PHASE_ONE, i(29390, {	-- Everbloom Idol
								["timeline"] = { "removed 5.0.4" },
							})),
							applyclassicphase(TBC_PHASE_ONE, i(32083)), 	-- Faceguard of Domination
							applyclassicphase(TBC_PHASE_ONE, i(29385)), 	-- Farstrider Defender's Cloak
							applyclassicphase(TBC_PHASE_FOUR, i(33334)), 	-- Fetish of the Primal Gods
							applyclassicphase(TBC_PHASE_ONE, i(29270)), 	-- Flametongue Seal
							applyclassicphase(TBC_PHASE_FOUR, i(33582)), 	-- Footwraps of Wild Encroachment
							applyclassicphase(TBC_PHASE_FOUR, i(33512)), 	-- Furious Deathgrips
							applyclassicphase(TBC_PHASE_FOUR, i(33557)),	-- Gargon's Bracers of Peaceful Slumber
							applyclassicphase(TBC_PHASE_FOUR, i(33528)),	-- Gauntlets of Sniping
							applyclassicphase(TBC_PHASE_FOUR, i(33524)), 	-- Girdle of the Protector
							applyclassicphase(TBC_PHASE_FOUR, i(33532)), 	-- Gleaming Earthen Bracers
							applyclassicphase(TBC_PHASE_FOUR, i(33287)), 	-- Gnarled Ironwood Pauldrons
							applyclassicphase(TBC_PHASE_ONE, i(29387)), 	-- Gnomeregan Auto-Dodger 600
							applyclassicphase(TBC_PHASE_FOUR, i(33974)), 	-- Grasp of the Moonkin
							applyclassicphase(TBC_PHASE_FOUR, i(33534)), 	-- Grips of Nature's Wrath
							applyclassicphase(TBC_PHASE_FOUR, i(33519)), 	-- Handguards of the Templar
							applyclassicphase(TBC_PHASE_FOUR, i(33965)), 	-- Hauberk of the Furious Elements
							applyclassicphase(TBC_PHASE_ONE, i(32084)), 	-- Helmet of the Steadfast Champion
							applyclassicphase(TBC_PHASE_FOUR, i(33518)), 	-- High Justicar's Legplates
							applyclassicphase(TBC_PHASE_ONE, i(29370)), 	-- Icon of the Silver Crescent
							applyclassicphase(TBC_PHASE_FOUR, i(33508, {	-- Idol of Budding Life
								["timeline"] = { "removed 5.0.4" },
							})),
							applyclassicphase(TBC_PHASE_FOUR, i(33509, {	-- Idol of Terror
								["timeline"] = { "removed 5.0.4" },
							})),
							applyclassicphase(TBC_PHASE_FOUR, i(33510, {	-- Idol of the Unseen Moon
								["timeline"] = { "removed 5.0.4" },
							})),
							applyclassicphase(TBC_PHASE_FOUR, i(33207)), 	-- Implacable Guardian Sabatons
							applyclassicphase(TBC_PHASE_ONE, i(30770)), 	-- Inferno Forged Boots
							applyclassicphase(TBC_PHASE_ONE, i(30774)), 	-- Inferno Forged Gloves
							applyclassicphase(TBC_PHASE_ONE, i(30773)), 	-- Inferno Forged Hauberk
							applyclassicphase(TBC_PHASE_ONE, i(30772)), 	-- Inferno Forged Leggings
							applyclassicphase(TBC_PHASE_ONE, i(30779)), 	-- Inferno Hardened Boots
							applyclassicphase(TBC_PHASE_ONE, i(30776)), 	-- Inferno Hardened Chestguard
							applyclassicphase(TBC_PHASE_ONE, i(30780)), 	-- Inferno Hardened Gloves
							applyclassicphase(TBC_PHASE_ONE, i(30778)), 	-- Inferno Hardened Leggings
							applyclassicphase(TBC_PHASE_ONE, i(30768)), 	-- Inferno Tempered Boots
							applyclassicphase(TBC_PHASE_ONE, i(30769)), 	-- Inferno Tempered Chestguard
							applyclassicphase(TBC_PHASE_ONE, i(30767)), 	-- Inferno Tempered Gauntlets
							applyclassicphase(TBC_PHASE_ONE, i(30766)), 	-- Inferno Tempered Leggings
							applyclassicphase(TBC_PHASE_ONE, i(30763)), 	-- Infernoweave Boots
							applyclassicphase(TBC_PHASE_ONE, i(30764)), 	-- Infernoweave Gloves
							applyclassicphase(TBC_PHASE_ONE, i(30761)), 	-- Infernoweave Leggings
							applyclassicphase(TBC_PHASE_ONE, i(30762)), 	-- Infernoweave Robe
							applyclassicphase(TBC_PHASE_FOUR, i(33279)), 	-- Iron-Tusk Girdle
							applyclassicphase(TBC_PHASE_ONE, i(29273)), 	-- Khadgar's Knapsack
							applyclassicphase(TBC_PHASE_FOUR, i(33333)), 	-- Kharmaa's Shroud of Hope
							applyclassicphase(TBC_PHASE_FOUR, i(33503, {	-- Libram of Divine Judgement
								["timeline"] = { "removed 5.0.4" },
							})),
							applyclassicphase(TBC_PHASE_FOUR, i(33504, {	-- Libram of Divine Purpose
								["timeline"] = { "removed 5.0.4" },
							})),
							applyclassicphase(TBC_PHASE_FOUR, i(33502, {	-- Libram of Mending
								["timeline"] = { "removed 5.0.4" },
							})),
							applyclassicphase(TBC_PHASE_ONE, i(29388, {	-- Libram of Repentance
								["timeline"] = { "removed 5.0.4" },
							})),
							applyclassicphase(TBC_PHASE_ONE, i(29267)), 	-- Light-Bearer's Faith Shield
							applyclassicphase(TBC_PHASE_FOUR, i(33587)), 	-- Light-Blessed Bonds
							applyclassicphase(TBC_PHASE_FOUR, i(33386)), 	-- Man'kin'do's Belt
							applyclassicphase(TBC_PHASE_ONE, i(32089)), 	-- Mana-Binders Cowl
							applyclassicphase(TBC_PHASE_ONE, i(29368)), 	-- Manasurge Pendant
							applyclassicphase(TBC_PHASE_FOUR, i(33972)), 	-- Mask of Primal Power
							applyclassicphase(TBC_PHASE_ONE, i(32087)), 	-- Mask of the Deceiver
							applyclassicphase(TBC_PHASE_FOUR, i(33540)), 	-- Master Assassin Wristwraps
							applyclassicphase(TBC_PHASE_ONE, i(29268)), 	-- Mazthoril Honor Shield
							applyclassicphase(TBC_PHASE_FOUR, i(33577)), 	-- Moon-Walkers
							applyclassicphase(TBC_PHASE_FOUR, i(33530)), 	-- Natural Life Leggings
							applyclassicphase(TBC_PHASE_ONE, i(29374)), 	-- Necklace of Eternal Hope
							applyclassicphase(TBC_PHASE_ONE, i(29386)), 	-- Necklace of the Juggernaut
							applyclassicphase(TBC_PHASE_FOUR, i(30183)),	-- Nether Vortex
							applyclassicphase(TBC_PHASE_FOUR, i(33222)), 	-- Nyn'jah's Tabi Boots
							applyclassicphase(TBC_PHASE_ONE, i(29272)), 	-- Orb of the Soul-Eater
							applyclassicphase(TBC_PHASE_FOUR, i(33584)), 	-- Pantaloons of Arcane Annihilation
							applyclassicphase(TBC_PHASE_FOUR, i(33552)), 	-- Pants of Splendid Recovery
							applyclassicphase(TBC_PHASE_FOUR, i(33514)), 	-- Pauldrons of Gruesome Fate
							applyclassicphase(TBC_PHASE_FOUR, i(33970)), 	-- Pauldrons of the Furious Elements
							applyclassicphase(TBC_PHASE_FOUR, i(33973)), 	-- Pauldrons of Tribal Fury
							applyclassicphase(TBC_PHASE_FOUR, i(33531)), 	-- Polished Waterscale Gloves
							applyclassicphase(TBC_PHASE_FOUR, i(23572)),	-- Primal Nether
							applyclassicphase(TBC_PHASE_ONE, i(29379)), 	-- Ring of Arathi Warlords
							applyclassicphase(TBC_PHASE_ONE, i(29367)),	-- Ring of Cryptic Dreams
							applyclassicphase(TBC_PHASE_ONE, i(29384)),	-- Ring of Unyielding Force
							applyclassicphase(TBC_PHASE_FOUR, i(33588)), 	-- Runed Spell-Cuffs
							applyclassicphase(TBC_PHASE_FOUR, i(33523)), 	-- Sabatons of the Righteous Defender
							applyclassicphase(TBC_PHASE_ONE, i(29269)), 	-- Sapphiron's Wing Bone
							applyclassicphase(TBC_PHASE_ONE, i(29275)), 	-- Searing Sunblade
							applyclassicphase(TBC_PHASE_FOUR, i(33538)), 	-- Shallow-Grave Trousers
							applyclassicphase(TBC_PHASE_ONE, i(29369)),	-- Shawl of Shifting Probabilities
							applyclassicphase(TBC_PHASE_FOUR, i(33527)), 	-- Shifting Camouflage Pants
							applyclassicphase(TBC_PHASE_FOUR, i(33506, {	-- Skycall Totem
								["timeline"] = { "removed 5.0.4" },
							})),
							applyclassicphase(TBC_PHASE_FOUR, i(33593)), 	-- Slikk's Cloak of Placation
							applyclassicphase(TBC_PHASE_FOUR, i(33559)), 	-- Starfire Waistband
							applyclassicphase(TBC_PHASE_FOUR, i(33529)), 	-- Steadying Bracers
							applyclassicphase(TBC_PHASE_FOUR, i(33507, {	-- Stonebreaker's Totem
								["timeline"] = { "removed 5.0.4" },
							})),
							applyclassicphase(TBC_PHASE_ONE, i(32086)), 	-- Storm Master's Helmet
							applyclassicphase(TBC_PHASE_FOUR, i(33536)), 	-- Stormwrap
							applyclassicphase(TBC_PHASE_FOUR, i(33586)), 	-- Studious Wraps
							applyclassicphase(TBC_PHASE_ONE, i(29271)), 	-- Talisman of Kalecgos
							applyclassicphase(TBC_PHASE_ONE, i(29274)), 	-- Tears of Heaven
							applyclassicphase(TBC_PHASE_FOUR, i(33505, {	-- Totem of Living Water
								["timeline"] = { "removed 5.0.4" },
							})),
							applyclassicphase(TBC_PHASE_ONE, i(29389, {	-- Totem of the Pulsing Earth
								["timeline"] = { "removed 5.0.4" },
							})),
							applyclassicphase(TBC_PHASE_FOUR, i(33537)), 	-- Treads of Booming Thunder
							applyclassicphase(TBC_PHASE_FOUR, i(33324)), 	-- Treads of the Life Path
							applyclassicphase(TBC_PHASE_FOUR, i(33539)), 	-- Trickster's Stickyfingers
							applyclassicphase(TBC_PHASE_FOUR, i(33515)), 	-- Unwavering Legguards
							applyclassicphase(TBC_PHASE_FOUR, i(33520)), 	-- Vambraces of the Naaru
							applyclassicphase(TBC_PHASE_FOUR, i(33579)), 	-- Vestments of Hibernation
							applyclassicphase(TBC_PHASE_FOUR, i(33325)), 	-- Voodoo Shaker
							applyclassicphase(TBC_PHASE_FOUR, i(33291)), 	-- Voodoo-Woven Belt
							applyclassicphase(TBC_PHASE_FOUR, i(33583)), 	-- Waistguard of the Great Beast
							applyclassicphase(TBC_PHASE_FOUR, i(33280)), 	-- War-Feathered Loop
							applyclassicphase(TBC_PHASE_ONE, i(32085)), 	-- Warpstalker Helm
							applyclassicphase(TBC_PHASE_FOUR, i(33589)), 	-- Wristguards of Tranquil Thought
						},
					}),
					n(22213, {	-- Gidge Spellweaver <Spellfire Tailoring Specialist>
						["coord"] = { 66.6, 68.6, SHATTRATH_CITY },
						["minReputation"] = { 1011, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(24316),	-- Pattern: Spellcloth
							i(21911),	-- Pattern: Spellfire Bag
							i(21908),	-- Pattern: Spellfire Belt
							i(21909),	-- Pattern: Spellfire Gloves
							i(21910),	-- Pattern: Spellfire Robe
						},
					}),
					n(23484, {	-- Haldor the Compulsive
						["coord"] = { 48.0, 26.8, SHATTRATH_CITY },
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							i(35717, {	-- Shattrath Flask of Blinding Light
								["cost"] = { { "i", 32897, 1 }, },	-- Mark of the Illidari
							}),
							i(32898, {	-- Shattrath Flask of Fortification
								["cost"] = { { "i", 32897, 1 }, },	-- Mark of the Illidari
							}),
							i(32899, {	-- Shattrath Flask of Mighty Restoration
								["cost"] = { { "i", 32897, 1 }, },	-- Mark of the Illidari
							}),
							i(35716, {	-- Shattrath Flask of Pure Death
								["cost"] = { { "i", 32897, 1 }, },	-- Mark of the Illidari
							}),
							i(32901, {	-- Shattrath Flask of Relentless Assault
								["cost"] = { { "i", 32897, 1 }, },	-- Mark of the Illidari
							}),
							i(32900, {	-- Shattrath Flask of Supreme Power
								["cost"] = { { "i", 32897, 1 }, },	-- Mark of the Illidari
							}),
						},
					}),
					n(18756, {	-- Haris Pilton <Socialite>
						["coord"] = { 75.6, 30.6, SHATTRATH_CITY },
						["groups"] = {
							removeclassicphase(ach(1165, {	-- My Sack is "Gigantique"
								["provider"] = { "i", 38082 },	-- "Gigantique" Bag
								-- #if BEFORE WRATH
								["description"] = "Equip Haris Pilton's \"Gigantique\" Bag.",
								["OnUpdate"] = [[_.CommonAchievementHandlers.ANY_ITEM_PROVIDER]],
								-- #endif
							})),
							i(38082, {	-- "Gigantique" Bag
								["cost"] = 12000000,	-- 1,200g
							}),
							i(134007, {	-- Eternal Black Diamond Ring (TOY!)
								["cost"] = 50000000,	-- 5,000g
								["timeline"] = { "added 7.0.3.22248" },
							}),
							i(134004, {	-- Noble's Eternal Elementium Signet (TOY!)
								["cost"] = 30000000,	-- 3,000g
								["timeline"] = { "added 7.0.3.22248" },
							}),
							i(51809, {	-- Portable Hole
								["cost"] = 30000000,	-- 3,000g
								["timeline"] = { "added 3.3.0.10772" },
							}),
						},
					}),
					-- #if AFTER WRATH
					n(19065, {	-- Inessera <Jewelcrafting Supplies Vendor>
						["coord"] = { 35.6, 19.8, SHATTRATH_CITY },
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = COMMON_WRATH_JEWELCRAFTING_RECIPES,
					}),
					-- #endif
					n(19195, {	-- Jim Saltit <Cooking Supplies>
						["coord"] = { 63.4, 68.6, SHATTRATH_CITY },
						["minReputation"] = { 1011, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(21219),	-- Recipe: Sagefish Delight
							i(21099),	-- Recipe: Smoked Sagefish
						},
					}),
					n(21906, {	-- Kelara <Keeper of Sha'tari Heirlooms>
						["coord"] = { 24.8, 27.0, SHATTRATH_CITY },
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = TIER_FIVE_GROUPS,
					}),
					-- #if AFTER WRATH
					n(33637, {	-- Kirembri Silvermane <Jewelcrafting Trainer>
						["coord"] = { 58.6, 75.2, SHATTRATH_CITY },
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = COMMON_WRATH_JEWELCRAFTING_RECIPES,
					}),
					-- #endif
					-- #if BEFORE 4.0.1
					n(19186, {	-- Kylene <Barmaid>
						["description"] = "Speak to her and tell her she's quite the cook to learn these recipes.",
						["coord"] = { 75.6, 32.6, SHATTRATH_CITY },
						["groups"] = applyclassicphase(TBC_PHASE_TWO, bubbleDown({ ["requireSkill"] = COOKING }, {
							recipe(42302),	-- Fisherman's Feast
							recipe(42305),	-- Hot Buttered Trout
							recipe(42296),	-- Stewed Trout
						})),
					}),
					-- #endif
					n(115546, {	-- Lunelli <Keeper of Lost Recipes>
						["description"] = "She will only sell these recipes to those who have completed the quests that reward them.",
						["coord"] = { 64.2, 71.4, SHATTRATH_CITY },
						["timeline"] = { "added 7.1.0.22908" },
						["groups"] = {
							i(142287),	-- Plans: Great Earthforged Hammer
							i(142286),	-- Plans: Lavaforged Warhammer
							i(142283),	-- Plans: Skyforged Great Axe
							i(142284),	-- Plans: Stoneforged Claymore
							i(142282),	-- Plans: Stormforged Axe
							i(142279),	-- Plans: Windforged Rapier
						},
					}),
					n(19663, {	-- Madame Ruby <Enchanting Supplies>
						["coord"] = { 63.6, 70.0, SHATTRATH_CITY },
						["minReputation"] = { 1011, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = MADAME_RUBY_GROUPS,
					}),
					-- #if BEFORE CATA
					n(25195, {	-- Marksman Bova <Specialty Ammunition Vendor>
						["coord"] = { 37.6, 27.8, SHATTRATH_CITY },
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							i(32883, {	-- Felbane Slugs
								["timeline"] = { "removed 4.0.1.10000" },
								["races"] = ALLIANCE_ONLY,
							}),
							i(32882, {	-- Hellfire Shot
								["timeline"] = { "removed 4.0.1.10000" },
								["races"] = HORDE_ONLY,
							}),
							applyclassicphase(TBC_PHASE_THREE, i(34581, {	-- Mysterious Arrow
								["timeline"] = { "removed 4.0.1.20000" },
							})),
							applyclassicphase(TBC_PHASE_THREE, i(34582, {	-- Mysterious Shell
								["timeline"] = { "removed 4.0.1.20000" },
							})),
							applyclassicphase(TBC_PHASE_THREE, i(31737, {	-- Timeless Arrow
								["timeline"] = { "removed 4.0.1.20000" },
							})),
							applyclassicphase(TBC_PHASE_THREE, i(31735, {	-- Timeless Shell
								["timeline"] = { "removed 4.0.1.20000" },
							})),
							i(31949, {	-- Warden's Arrow
								["timeline"] = { "removed 4.0.1" },
							}),
						},
					}),
					-- #endif
					n(21655, {	-- Nakodu <Lower City Quartermaster>
						["coord" ] = { 62.6, 69.0, SHATTRATH_CITY },
						["minReputation"] = { 1011, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(30633),	-- Auchenai Key
							applyclassicphase(TBC_PHASE_TWO, i(35405)),	-- Crusader's Ornamented Leggings
							applyclassicphase(TBC_PHASE_TWO, i(35412)),	-- Crusader's Scaled Chestpiece
							i(33157),	-- Design: Falling Star
							i(24179),	-- Design: Felsteel Boar
							i(24175),	-- Design: Pendant of Thawing
							i(23138),	-- Design: Potent Flame Spessarite
							applyclassicphase(TBC_PHASE_TWO, i(35357)),	-- Dragonhide Helm
							applyclassicphase(TBC_PHASE_TWO, i(35331)),	-- Dreadweave Mantle
							applyclassicphase(TBC_PHASE_TWO, i(35344)),	-- Evoker's Silk Cowl
							i(33148),	-- Formula: Enchant Cloak - Dodge
							applyclassicphase(TBC_PHASE_THREE, i(22538)),	-- Formula: Enchant Ring - Stats
							i(30832),	-- Gavel of Unearthed Secrets
							i(29199, {	-- Glyph of Shadow Warding
								["timeline"] = { "removed 5.0.4" },
							}),
							i(30846, {	-- Glyph of the Outcast
								["timeline"] = { "removed 5.0.4" },
							}),
							applyclassicphase(TBC_PHASE_TWO, i(35361)),	-- Kodohide Gloves
							i(30836),	-- Leggings of the Skettis Exile
							i(30841),	-- Lower City Prayerbook
							i(31778),	-- Lower City Tabard
							applyclassicphase(TBC_PHASE_TWO, i(35335)),	-- Mooncloth Mitts
							applyclassicphase(TBC_PHASE_TWO, i(35370)),	-- Opportunist's Leather Tunic
							i(30833),	-- Pattern: Cloak of Arcane Evasion
							applyclassicphase(TBC_PHASE_THREE, i(34200)),	-- Pattern: Quiver of a Thousand Feathers
							i(22910),	-- Recipe: Elixir of Major Shadow Power
							i(31357, {	-- Recipe: Flask of Chromatic Resistance
								["timeline"] = { "removed 5.0.4" },
							}),
							i(30835),	-- Salvager's Hauberk
							applyclassicphase(TBC_PHASE_TWO, i(35340)),	-- Satin Leggings
							applyclassicphase(TBC_PHASE_TWO, i(35411)),	-- Savage Plate Shoulders
							applyclassicphase(TBC_PHASE_TWO, i(35382)),	-- Seer's Linked Gauntlets
							applyclassicphase(TBC_PHASE_TWO, i(35389)),	-- Seer's Mail Leggings
							applyclassicphase(TBC_PHASE_TWO, i(35391)),	-- Seer's Ringmail Chestguard
							i(30834),	-- Shapeshifter's Signet
							applyclassicphase(TBC_PHASE_TWO, i(35378)),	-- Stalker's Chain Helm
							i(30830),	-- Trident of the Outcast Tribe
							applyclassicphase(TBC_PHASE_TWO, i(35373)),	-- Wyrmhide Legguards
						},
					}),
					n(22208, {	-- Nasmara Moonsong <Mooncloth Tailoring Specialist>
						["coord"] = { 66.4, 69.0, SHATTRATH_CITY },
						["minReputation"] = { 1011, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(21895),	-- Pattern: Primal Mooncloth
							i(21919),	-- Pattern: Primal Mooncloth Bag
							i(21916),	-- Pattern: Primal Mooncloth Belt
							i(21917),	-- Pattern: Primal Mooncloth Robe
							i(21918),	-- Pattern: Primal Mooncloth Shoulders
						},
					}),
					-- #if AFTER WRATH
					n(33680, {	-- Nemiha <Jewelcrafting Trainer>
						["coord"] = { 36.2, 47.0, SHATTRATH_CITY },
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = COMMON_WRATH_JEWELCRAFTING_RECIPES,
					}),
					-- #endif
					applyclassicphase(TBC_PHASE_FIVE, n(27666, {	-- Ontuvo <Jewelcrafting Supplies>
						["coord"] = { 48.8, 41.8, SHATTRATH_CITY },
						["minReputation"] = { 1077, NEUTRAL },	-- Shattered Sun Offensive, Neutral.
						["groups"] = {
							-- #if BEFORE CATA
							i(35238),	-- Design: Balanced Shadowsong Amethyst [TBC] / Design: Shifting Shadowsong Amethyst [CATA+]
							-- #endif
							i(35244),	-- Design: Bold Crimson Spinel
							-- #if BEFORE CATA
							i(35245),	-- Design: Bright Crimson Spinel [TBC] / Design: Delicate Crimson Spinel [CATA+]
							-- #endif
							i(35255),	-- Design: Brilliant Lionseye [TBC] / Design: Brilliant Crimson Spinel [CATA+]
							-- #if AFTER CATA
							i(35248),	-- Design: Brilliant Crimson Spinel [CATA+] / Design: Runed Crimson Spinel [TBC]
							-- #endif
							-- #if BEFORE CATA
							i(35251),	-- Design: Dazzling Seaspray Emerald [TBC] / Design: Purified Shadowsong Amethyst [CATA+]
							-- #endif
							-- #if AFTER CATA
							i(35271),	-- Design: Deadly Pyrestone [CATA+] / Design: Wicked Pyrestone [TBC]
							-- #endif
							i(35246),	-- Design: Delicate Crimson Spinel
							-- #if AFTER CATA
							i(35245),	-- Design: Delicate Crimson Spinel [CATA+] / Design: Bright Crimson Spinel [TBC]
							-- #endif
							-- #if BEFORE CATA
							i(35252),	-- Design: Enduring Seaspray Emerald [TBC] / Design: Regal Seaspray Emerald [CATA+]
							-- #endif
							i(35247),	-- Design: Flashing Crimson Spinel
							i(35769),	-- Design: Forceful Seaspray Emerald
							i(35325),	-- Design: Forceful Talasite
							-- #if BEFORE CATA
							i(35256),	-- Design: Gleaming Lionseye [TBC] / Design: Smooth Lionseye [CATA+]
							i(35266),	-- Design: Glinting Pyrestone [TBC] / Design: Glinting Shadowsong Amethyst [CATA+]
							-- #endif
							-- #if AFTER CATA
							i(35266),	-- Design: Glinting Shadowsong Amethyst [CATA+] / Design: Glinting Pyrestone [TBC]
							i(35240),	-- Design: Glinting Shadowsong Amethyst [CATA+] / Design: Infused Shadowsong Amethyst [TBC]
							-- #endif
							-- #if BEFORE CATA
							i(35239),	-- Design: Glowing Shadowsong Amethyst [TBC] / Design: Timeless Shadowsong Amethyst [CATA+]
							i(35257),	-- Design: Great Lionseye [TBC] / Design: Rigid Empyrean Sapphire [CATA+]
							i(35240),	-- Design: Infused Shadowsong Amethyst [TBC] / Design: Glinting Shadowsong Amethyst [CATA+]
							-- #endif
							i(35267),	-- Design: Inscribed Pyrestone
							i(35253),	-- Design: Jagged Seaspray Emerald
							-- #if BEFORE CATA
							i(35262),	-- Design: Lustrous Empyrean Sapphire [TBC] / Design: Sparkling Empyrean Sapphire [CATA+]
							i(35268),	-- Design: Luminous Pyrestone [TBC] / Design: Reckless Pyrestone [CATA+]
							-- #endif
							i(35258),	-- Design: Mystic Lionseye
							i(35269),	-- Design: Potent Pyrestone
							-- #if AFTER CATA
							i(35251),	-- Design: Purified Shadowsong Amethyst [CATA+] / Design: Dazzling Seaspray Emerald [TBC]
							i(35241),	-- Design: Purified Shadowsong Amethyst [CATA+] / Design: Royal Shadowsong Amethyst [TBC]
							-- #endif
							i(37504),	-- Design: Purified Shadowsong Amethyst
							i(35322),	-- Design: Quick Dawnstone
							i(35768),	-- Design: Quick Lionseye
							i(35254),	-- Design: Radiant Seaspray Emerald
							i(35323),	-- Design: Reckless Noble Topaz
							i(35767),	-- Design: Reckless Pyrestone
							-- #if AFTER CATA
							i(35268),	-- Design: Reckless Pyrestone [CATA+] / Design: Luminous Pyrestone [TBC]
							i(35252),	-- Design: Regal Seaspray Emerald [CATA+] / Design: Enduring Seaspray Emerald [TBC]
							-- #endif
							i(35259),	-- Design: Rigid Lionseye [TBC] / Design: Rigid Empyrean Sapphire [CATA+]
							-- #if AFTER CATA
							i(35257),	-- Design: Rigid Empyrean Sapphire [CATA+] / Design: Great Lionseye [TBC]
							-- #endif
							-- #if BEFORE CATA
							i(35241),	-- Design: Royal Shadowsong Amethyst [TBC] / Design: Purified Shadowsong Amethyst [CATA+]
							i(35248),	-- Design: Runed Crimson Spinel [TBC] / Design: Brilliant Crimson Spinel [CATA+]
							-- #endif
							i(35242),	-- Design: Shifting Shadowsong Amethyst
							-- #if AFTER CATA
							i(35238),	-- Design: Shifting Shadowsong Amethyst [CATA+] / Design: Balanced Shadowsong Amethyst [TBC]
							-- #endif
							i(35260),	-- Design: Smooth Lionseye
							-- #if AFTER CATA
							i(35256),	-- Design: Smooth Lionseye [CATA+] / Design: Gleaming Lionseye [TBC]
							-- #endif
							i(35263),	-- Design: Solid Empyrean Sapphire
							i(35243),	-- Design: Sovereign Shadowsong Amethyst
							i(35264),	-- Design: Sparkling Empyrean Sapphire
							-- #if AFTER CATA
							i(35262),	-- Design: Sparkling Empyrean Sapphire [CATA+] / Design: Lustrous Empyrean Sapphire [TBC]
							-- #endif
							i(35766),	-- Design: Steady Seaspray Emerald
							i(35265),	-- Design: Stormy Empyrean Sapphire
							i(35249),	-- Design: Subtle Crimson Spinel [TBC] / Design: Subtle Lionseye [CATA+]
							i(35261),	-- Design: Thick Lionseye [TBC] / Design: Subtle Lionseye [CATA+] (both)
							-- #if AFTER CATA
							i(35239),	-- Design: Timeless Shadowsong Amethyst [CATA+] / Design: Glowing Shadowsong Amethyst [TBC]
							-- #endif
							i(35270),	-- Design: Veiled Pyrestone [TBC] / Design: Veiled Shadowsong Amethyst [CATA+]
							-- #if BEFORE CATA
							i(35271),	-- Design: Wicked Pyrestone [TBC] / Design: Deadly Pyrestone [CATA+]
							-- #endif
						},
					})),
					n(19321, {	-- Quartermaster Endarin <Aldor Quartermaster>
						["coord"] = { 48.0, 26.6, SHATTRATH_CITY },
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							i(31779),	-- Aldor Tabard
							i(29129),	-- Anchorite's Robes
							i(29130),	-- Auchenai Staff
							-- #if BEFORE CATA
							i(23149),	-- Design: Gleaming Golden Draenite [TBC] / Design: Smooth Golden Draenite [CATA+]
							-- #endif
							i(24177),	-- Design: Pendant of Shadow's End
							-- #if AFTER CATA
							i(23145),	-- Design: Purified Shadow Draenite [CATA+] / Design: Royal Shadow Draenite [TBC]
							-- #else
							i(23145),	-- Design: Royal Shadow Draenite [TBC] / Design: Purified Shadow Draenite [CATA+]
							-- #endif
							-- #if AFTER CATA
							i(23149),	-- Design: Smooth Golden Draenite [CATA+] / Design: Gleaming Golden Draenite [TBC]
							-- #endif
							i(29128),	-- Lightwarden's Band
							i(29123),	-- Medallion of the Lightbearer
							i(29704),	-- Pattern: Blastguard Belt
							i(29703),	-- Pattern: Blastguard Boots
							i(29702),	-- Pattern: Blastguard Pants
							i(30842),	-- Pattern: Flameheart Bracers
							i(30843),	-- Pattern: Flameheart Gloves
							i(30844),	-- Pattern: Flameheart Vest
							i(29693),	-- Pattern: Flamescale Belt
							i(29691),	-- Pattern: Flamescale Boots
							i(29689),	-- Pattern: Flamescale Leggings
							i(24295),	-- Pattern: Golden Spellthread
							i(24293),	-- Pattern: Silver Spellthread
							i(25721),	-- Pattern: Vindicator's Armor Kit
							i(23601),	-- Plans: Flamebane Bracers
							i(23604),	-- Plans: Flamebane Breastplate
							i(23603),	-- Plans: Flamebane Gloves
							i(23602),	-- Plans: Flamebane Helm
							i(29124),	-- Vindicator's Brand
							i(29127),	-- Vindicator's Hauberk
						},
					}),
					n(19331, {	-- Quartermaster Enuril <Scryer Quartermaster>
						["coord" ] = { 60.6, 64.2, SHATTRATH_CITY },
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = {
							-- #if AFTER CATA
							i(23133),	-- Design: Brilliant Blood Garnet [CATA+] / Design: Runed Blood Garnet [TBC]
							-- #else
							i(23143),	-- Design: Dazzling Deep Peridot [TBC] / Design: Purified Shadow Draenite [CATA+]
							-- #endif
							i(24176),	-- Design: Pendant of Withering
							-- #if BEFORE CATA
							i(23133),	-- Design: Runed Blood Garnet [TBC] / Design: Brilliant Blood Garnet [CATA+]
							-- #else
							i(23143),	-- Design: Dazzling Deep Peridot [TBC] / Design: Purified Shadow Draenite [CATA+]
							-- #endif
							i(29134),	-- Gauntlets of the Chosen
							i(29701),	-- Pattern: Enchanted Clefthoof Boots
							i(29700),	-- Pattern: Enchanted Clefthoof Gloves
							i(29698),	-- Pattern: Enchanted Clefthoof Leggings
							i(29684),	-- Pattern: Enchanted Felscale Boots
							i(29682),	-- Pattern: Enchanted Felscale Gloves
							i(29677),	-- Pattern: Enchanted Felscale Leggings
							i(25722),	-- Pattern: Magister's Armor Kit
							i(24292),	-- Pattern: Mystic Spellthread
							i(24294),	-- Pattern: Runic Spellthread
							i(23597),	-- Plans: Enchanted Adamantite Belt
							i(23598),	-- Plans: Enchanted Adamantite Boots
							i(23599),	-- Plans: Enchanted Adamantite Breastplate
							i(23600),	-- Plans: Enchanted Adamantite Leggings
							i(22908),	-- Recipe: Elixir of Major Firepower
							i(29125),	-- Retainer's Blade
							i(29131),	-- Retainer's Leggings
							i(29132),	-- Scryer's Bloodgem
							i(31780),	-- Scryers Tabard
							i(29133),	-- Seer's Cane
							i(29126),	-- Seer's Signet
						},
					}),
					n(20807, {	-- Scribe Saalyn <Aldor Inscriptions>
						["coord"] = { 48.6, 26.6, SHATTRATH_CITY },
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = {
							i(28886, {	-- Greater Inscription of Discipline
								["cost"] = { { "i", 29735, 8 }, },	-- 8x Holy Dust
							}),
							i(28887, {	-- Greater Inscription of Faith
								["cost"] = { { "i", 29735, 8 }, },	-- 8x Holy Dust
							}),
							i(28888, {	-- Greater Inscription of Vengeance
								["cost"] = { { "i", 29735, 8 }, },	-- 8x Holy Dust
							}),
							i(28889, {	-- Greater Inscription of Warding
								["cost"] = { { "i", 29735, 8 }, },	-- 8x Holy Dust
							}),
							i(28881, {	-- Inscription of Discipline
								["cost"] = { { "i", 29735, 2 }, },	-- 2x Holy Dust
							}),
							i(28878, {	-- Inscription of Faith
								["cost"] = { { "i", 29735, 2 }, },	-- 2x Holy Dust
							}),
							i(28885, {	-- Inscription of Vengeance
								["cost"] = { { "i", 29735, 2 }, },	-- 2x Holy Dust
							}),
							i(28882, {	-- Inscription of Warding
								["cost"] = { { "i", 29735, 2 }, },	-- 2x Holy Dust
							}),
						},
					}),
					n(20808, {	-- Scribe Veredis <Scryer Inscriptions>
						["coord"] = { 60.0, 64.6, SHATTRATH_CITY },
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = {
							i(28910, {	-- Greater Inscription of the Blade
								["cost"] = { { "i", 29736, 8 }, },	-- 8x Arcane Rune
							}),
							i(28911, {	-- Greater Inscription of the Knight
								["cost"] = { { "i", 29736, 8 }, },	-- 8x Arcane Rune
							}),
							i(28912, {	-- Greater Inscription of the Oracle
								["cost"] = { { "i", 29736, 8 }, },	-- 8x Arcane Rune
							}),
							i(28909, {	-- Greater Inscription of the Orb
								["cost"] = { { "i", 29736, 8 }, },	-- 8x Arcane Rune
							}),
							i(28907, {	-- Inscription of the Blade
								["cost"] = { { "i", 29736, 2 }, },	-- 2x Arcane Rune
							}),
							i(28908, {	-- Inscription of the Knight
								["cost"] = { { "i", 29736, 2 }, },	-- 2x Arcane Rune
							}),
							i(28904, {	-- Inscription of the Oracle
								["cost"] = { { "i", 29736, 2 }, },	-- 2x Arcane Rune
							}),
							i(28903, {	-- Inscription of the Orb
								["cost"] = { { "i", 29736, 2 }, },	-- 2x Arcane Rune
							}),
						},
					}),
					n(19074, {	-- Skreah <Alchemy Supplies>
						["coord"] = { 45.8, 20.8, SHATTRATH_CITY },
						["minReputation"] = { 1011, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(23574, {	-- Recipe: Transmute Primal Might
								["isLimited"] = true,
							}),
						},
					}),
					n(19238, {	-- Urumir Stavebright <Staff Vendor>
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["coord"] = { 49.6, 79.0, SHATTRATH_CITY },
						["groups"] = {
							i(12252, {	-- Staff of Protection
								["isLimited"] = true,
							}),
						},
					}),
					n(19661, {	-- Viggz Shinesparked <Engineering Supplies>
						["coord"] = { 64.8, 69.6, SHATTRATH_CITY },
						["minReputation"] = { 1011, NEUTRAL },	-- Lower City, Neutral.
						["groups"] = {
							i(23799, {	-- Schematic: Adamantite Rifle
								["isLimited"] = true,
							}),
							i(32381, {	-- Schematic: Fused Wiring
								["isLimited"] = true,
							}),
						},
					}),
					n(21905, {	-- Veynna Dawnstar <Keeper of Sha'tari Heirlooms>
						["coord"] = {44.8, 91.6, SHATTRATH_CITY },
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = TIER_FIVE_GROUPS,
					}),
					n(18484, {	-- Wind Trader Lathrai
						["coord"] = { 72.6, 31.6, SHATTRATH_CITY },
						["groups"] = {
							applyclassicphase(TBC_PHASE_TWO, i(23815, {	-- Schematic: Adamantite Shell Machine
								["isLimited"] = true,
							})),
							i(23816, {	-- Schematic: Fel Iron Toolbox
								["isLimited"] = true,
							}),
							i(23811, {	-- Schematic: White Smoke Flare
								["isLimited"] = true,
							}),
						},
					}),
					n(19234, {	-- Yurial Soulwater <Enchanting Supplies>
						["coord"] = { 44.6, 96.8, SHATTRATH_CITY },
						["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
						["groups"] = ZURII_YURIAL_GROUPS,
					}),
					n(33676, {	-- Zurii <Enchanting Trainer>
						["coord"] = { 36.4, 44.6, SHATTRATH_CITY },
						["timeline"] = { "added 3.1.0.9767" },
						["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
						["groups"] = ZURII_YURIAL_GROUPS,
					}),
				}),
			},
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
appendGroups(COMMON_ENCHANTING_RECIPES, ZURII_YURIAL_GROUPS);
appendGroups(COMMON_ENCHANTING_RECIPES, MADAME_RUBY_GROUPS);