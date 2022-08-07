---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if BEFORE CATA
local OnTooltipForCityFactionReputation = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
-- #if AFTER TBC
		local repPerTurnIn = isHuman and 82.5 or 75;
-- #else
		local repPerTurnIn = isHuman and 55 or 50;
-- #endif
		local x, n = math.ceil((42000 - reputation) / repPerTurnIn), math.ceil(42000 / repPerTurnIn);
		GameTooltip:AddDoubleLine("Runecloth Turn Ins", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
	end
end]];
-- #endif
local COOKING_AWARD_GROUPS = {
	-- #if AFTER 5.0.4
	currency(81),	-- Epicurean's Award
	-- #else
	currency(402),	-- Chef's Award
	-- #endif
};
local FISHING_AWARD_GROUPS = {
	i(67414, {	-- Bag of Shiny Things
		["timeline"] = { "added 4.0.1.12984" },
	}),
};
local JEWELCRAFTING_AWARD_GROUPS = {
	currency(361),	-- Illustrious Jewelcrafter's Token
};

-- #if AFTER CATA
local TIER_THIRTEEN_RAIDFINDER_GROUPS = {	-- Dragon Soul [Tier 13] (Raid Finder)
	cl(WARRIOR, {
		-- DPS
		i(78783, {	-- Colossal Dragonplate Helmet
			["cost"] = { { "i", 78870, 1 }, },	-- Crown of the Corrupted Protector
		}),
		i(78830, {	-- Colossal Dragonplate Pauldrons
			["cost"] = { { "i", 78876, 1 }, },	-- Shoulders of the Corrupted Protector
		}),
		i(78752, {	-- Colossal Dragonplate Battleplate
			["cost"] = { { "i", 78864, 1 }, },	-- Chest of the Corrupted Protector
		}),
		
		i(78763, {	-- Colossal Dragonplate Gauntlets
			["cost"] = { { "i", 78867, 1 }, },	-- Gauntlets of the Corrupted Protector
		}),
		i(78801, {	-- Colossal Dragonplate Legplates
			["cost"] = { { "i", 78873, 1 }, },	-- Leggings of the Corrupted Protector
		}),
		
		-- Protection
		i(78784, {	-- Colossal Dragonplate Faceguard
			["cost"] = { { "i", 78870, 1 }, },	-- Crown of the Corrupted Protector
		}),
		i(78829, {	-- Colossal Dragonplate Shoulderguards
			["cost"] = { { "i", 78876, 1 }, },	-- Shoulders of the Corrupted Protector
		}),
		i(78753, {	-- Colossal Dragonplate Chestguard
			["cost"] = { { "i", 78864, 1 }, },	-- Chest of the Corrupted Protector
		}),
		i(78764, {	-- Colossal Dragonplate Handguards
			["cost"] = { { "i", 78867, 1 }, },	-- Gauntlets of the Corrupted Protector
		}),
		i(78800, {	-- Colossal Dragonplate Legguards
			["cost"] = { { "i", 78873, 1 }, },	-- Leggings of the Corrupted Protector
		}),
	}),
	cl(PALADIN, {
		-- DPS
		i(78788, {	-- Helmet of Radiant Glory
			["cost"] = { { "i", 78869, 1 }, },	-- Crown of the Corrupted Conqueror
		}),
		i(78837, {	-- Pauldrons of Radiant Glory
			["cost"] = { { "i", 78875, 1 }, },	-- Shoulders of the Corrupted Conqueror
		}),
		i(78822, {	-- Battleplate of Radiant Glory
			["cost"] = { { "i", 78863, 1 }, },	-- Chest of the Corrupted Conqueror
		}),
		i(78770, {	-- Gauntlets of Radiant Glory
			["cost"] = { { "i", 78866, 1 }, },	-- Gauntlets of the Corrupted Conqueror
		}),
		i(78807, {	-- Legplates of Radiant Glory
			["cost"] = { { "i", 78872, 1 }, },	-- Leggings of the Corrupted Conqueror
		}),
		
		-- Holy
		i(78787, {	-- Headguard of Radiant Glory
			["cost"] = { { "i", 78869, 1 }, },	-- Crown of the Corrupted Conqueror
		}),
		i(78841, {	-- Mantle of Radiant Glory
			["cost"] = { { "i", 78875, 1 }, },	-- Shoulders of the Corrupted Conqueror
		}),
		i(78821, {	-- Breastplate of Radiant Glory
			["cost"] = { { "i", 78863, 1 }, },	-- Chest of the Corrupted Conqueror
		}),
		i(78768, {	-- Gloves of Radiant Glory
			["cost"] = { { "i", 78866, 1 }, },	-- Gauntlets of the Corrupted Conqueror
		}),
		i(78812, {	-- Greaves of Radiant Glory
			["cost"] = { { "i", 78872, 1 }, },	-- Leggings of the Corrupted Conqueror
		}),
		
		-- Protection
		i(78790, {	-- Faceguard of Radiant Glory
			["cost"] = { { "i", 78869, 1 }, },	-- Crown of the Corrupted Conqueror
		}),
		i(78840, {	-- Shoulderguards of Radiant Glory
			["cost"] = { { "i", 78875, 1 }, },	-- Shoulders of the Corrupted Conqueror
		}),
		i(78827, {	-- Chestguard of Radiant Glory
			["cost"] = { { "i", 78863, 1 }, },	-- Chest of the Corrupted Conqueror
		}),
		i(78772, {	-- Handguards of Radiant Glory
			["cost"] = { { "i", 78866, 1 }, },	-- Gauntlets of the Corrupted Conqueror
		}),
		i(78810, {	-- Legguards of Radiant Glory
			["cost"] = { { "i", 78872, 1 }, },	-- Leggings of the Corrupted Conqueror
		}),
	}),
	cl(DEATHKNIGHT, {
		-- DPS
		i(78782, {	-- Necrotic Boneplate Helmet
			["cost"] = { { "i", 78868, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(78831, {	-- Necrotic Boneplate Pauldrons
			["cost"] = { { "i", 78874, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(78754, {	-- Necrotic Boneplate Breastplate
			["cost"] = { { "i", 78862, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(78765, {	-- Necrotic Boneplate Gauntlets
			["cost"] = { { "i", 78865, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(78802, {	-- Necrotic Boneplate Greaves
			["cost"] = { { "i", 78871, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
		
		-- Protection
		i(78792, {	-- Necrotic Boneplate Faceguard
			["cost"] = { { "i", 78868, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(78846, {	-- Necrotic Boneplate Shoulderguards
			["cost"] = { { "i", 78874, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(78758, {	-- Necrotic Boneplate Chestguard
			["cost"] = { { "i", 78862, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(78773, {	-- Necrotic Boneplate Handguards
			["cost"] = { { "i", 78865, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(78811, {	-- Necrotic Boneplate Legguards
			["cost"] = { { "i", 78871, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
	}),
	cl(HUNTER, {
		i(78793, {	-- Wyrmstalker's Headguard
			["cost"] = { { "i", 78870, 1 }, },	-- Crown of the Corrupted Protector
		}),
		i(78832, {	-- Wyrmstalker's Spaulders
			["cost"] = { { "i", 78876, 1 }, },	-- Shoulders of the Corrupted Protector
		}),
		i(78756, {	-- Wyrmstalker's Tunic
			["cost"] = { { "i", 78864, 1 }, },	-- Chest of the Corrupted Protector
		}),
		i(78769, {	-- Wyrmstalker's Gloves
			["cost"] = { { "i", 78867, 1 }, },	-- Gauntlets of the Corrupted Protector
		}),
		i(78804, {	-- Wyrmstalker's Legguards
			["cost"] = { { "i", 78873, 1 }, },	-- Leggings of the Corrupted Protector
		}),
	}),
	cl(ROGUE, {
		i(78794, {	-- Blackfang Battleweave Helmet
			["cost"] = { { "i", 78868, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(78833, {	-- Blackfang Battleweave Spaulders
			["cost"] = { { "i", 78874, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(78759, {	-- Blackfang Battleweave Tunic
			["cost"] = { { "i", 78862, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(78774, {	-- Blackfang Battleweave Gloves
			["cost"] = { { "i", 78865, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(78803, {	-- Blackfang Battleweave Legguards
			["cost"] = { { "i", 78871, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
	}),
	cl(PRIEST, {
		-- DPS
		i(78798, {	-- Hood of Dying Light
			["cost"] = { { "i", 78869, 1 }, },	-- Crown of the Corrupted Conqueror
		}),
		i(78845, {	-- Mantle of Dying Light
			["cost"] = { { "i", 78875, 1 }, },	-- Shoulders of the Corrupted Conqueror
		}),
		i(78826, {	-- Robes of Dying Light
			["cost"] = { { "i", 78863, 1 }, },	-- Chest of the Corrupted Conqueror
		}),
		i(78777, {	-- Gloves of Dying Light
			["cost"] = { { "i", 78866, 1 }, },	-- Gauntlets of the Corrupted Conqueror
		}),
		i(78817, {	-- Leggings of Dying Light
			["cost"] = { { "i", 78872, 1 }, },	-- Leggings of the Corrupted Conqueror
		}),
		
		-- Holy
		i(78795, {	-- Cowl of Dying Light
			["cost"] = { { "i", 78869, 1 }, },	-- Crown of the Corrupted Conqueror
		}),
		i(78842, {	-- Mantle of Dying Light
			["cost"] = { { "i", 78875, 1 }, },	-- Shoulders of the Corrupted Conqueror
		}),
		i(78823, {	-- Robes of Dying Light
			["cost"] = { { "i", 78863, 1 }, },	-- Chest of the Corrupted Conqueror
		}),
		i(78778, {	-- Handwraps of Dying Light
			["cost"] = { { "i", 78866, 1 }, },	-- Gauntlets of the Corrupted Conqueror
		}),
		i(78814, {	-- Legwraps of Dying Light
			["cost"] = { { "i", 78872, 1 }, },	-- Leggings of the Corrupted Conqueror
		}),
	}),
	cl(SHAMAN, {
		-- Enhance
		i(78781, {	-- Spiritwalker's Helmet
			["cost"] = { { "i", 78870, 1 }, },	-- Crown of the Corrupted Protector
		}),
		i(78828, {	-- Spiritwalker's Spaulders
			["cost"] = { { "i", 78876, 1 }, },	-- Shoulders of the Corrupted Protector
		}),
		i(78819, {	-- Spiritwalker's Cuirass
			["cost"] = { { "i", 78864, 1 }, },	-- Chest of the Corrupted Protector
		}),
		i(78762, {	-- Spiritwalker's Grips
			["cost"] = { { "i", 78867, 1 }, },	-- Gauntlets of the Corrupted Protector
		}),
		i(78799, {	-- Spiritwalker's Legguards
			["cost"] = { { "i", 78873, 1 }, },	-- Leggings of the Corrupted Protector
		}),
		
		-- Elemental
		i(78780, {	-- Spiritwalker's Headpiece
			["cost"] = { { "i", 78870, 1 }, },	-- Crown of the Corrupted Protector
		}),
		i(78836, {	-- Spiritwalker's Shoulderwraps
			["cost"] = { { "i", 78876, 1 }, },	-- Shoulders of the Corrupted Protector
		}),
		i(78818, {	-- Spiritwalker's Hauberk
			["cost"] = { { "i", 78864, 1 }, },	-- Chest of the Corrupted Protector
		}),
		i(78761, {	-- Spiritwalker's Gloves
			["cost"] = { { "i", 78867, 1 }, },	-- Gauntlets of the Corrupted Protector
		}),
		i(78806, {	-- Spiritwalker's Kilt
			["cost"] = { { "i", 78873, 1 }, },	-- Leggings of the Corrupted Protector
		}),
		
		-- Restoration
		i(78786, {	-- Spiritwalker's Faceguard
			["cost"] = { { "i", 78870, 1 }, },	-- Crown of the Corrupted Protector
		}),
		i(78834, {	-- Spiritwalker's Mantle
			["cost"] = { { "i", 78876, 1 }, },	-- Shoulders of the Corrupted Protector
		}),
		i(78820, {	-- Spiritwalker's Tunic
			["cost"] = { { "i", 78864, 1 }, },	-- Chest of the Corrupted Protector
		}),
		i(78767, {	-- Spiritwalker's Handwraps
			["cost"] = { { "i", 78867, 1 }, },	-- Gauntlets of the Corrupted Protector
		}),
		i(78813, {	-- Spiritwalker's Legwraps
			["cost"] = { { "i", 78873, 1 }, },	-- Leggings of the Corrupted Protector
		}),
	}),
	cl(MAGE, {
		i(78796, {	-- Time Lord's Hood
			["cost"] = { { "i", 78868, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(78843, {	-- Time Lord's Mantle
			["cost"] = { { "i", 78874, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(78824, {	-- Time Lord's Robes
			["cost"] = { { "i", 78862, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(78766, {	-- Time Lord's Gloves
			["cost"] = { { "i", 78865, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(78815, {	-- Time Lord's Leggings
			["cost"] = { { "i", 78871, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
	}),
	cl(WARLOCK, {
		i(78797, {	-- Hood of the Faceless Shroud
			["cost"] = { { "i", 78869, 1 }, },	-- Crown of the Corrupted Conqueror
		}),
		i(78844, {	-- Mantle of the Faceless Shroud
			["cost"] = { { "i", 78875, 1 }, },	-- Shoulders of the Corrupted Conqueror
		}),
		i(78825, {	-- Robes of the Faceless Shroud
			["cost"] = { { "i", 78863, 1 }, },	-- Chest of the Corrupted Conqueror
		}),
		i(78776, {	-- Gloves of the Faceless Shroud
			["cost"] = { { "i", 78866, 1 }, },	-- Gauntlets of the Corrupted Conqueror
		}),
		i(78816, {	-- Leggings of the Faceless Shroud
			["cost"] = { { "i", 78872, 1 }, },	-- Leggings of the Corrupted Conqueror
		}),
	}),
	cl(DRUID, {
		-- Boomkin
		i(78791, {	-- Deep Earth Cover
			["cost"] = { { "i", 78868, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(78839, {	-- Deep Earth Shoulderwraps
			["cost"] = { { "i", 78874, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(78757, {	-- Deep Earth Vestment
			["cost"] = { { "i", 78862, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(78771, {	-- Deep Earth Gloves
			["cost"] = { { "i", 78865, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(78809, {	-- Deep Earth Leggings
			["cost"] = { { "i", 78871, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
		
		-- Feral
		i(78789, {	-- Deep Earth Headpiece
			["cost"] = { { "i", 78868, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(78838, {	-- Deep Earth Spaulders
			["cost"] = { { "i", 78874, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(78760, {	-- Deep Earth Raiment
			["cost"] = { { "i", 78862, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(78779, {	-- Deep Earth Grips
			["cost"] = { { "i", 78865, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(78808, {	-- Deep Earth Legguards
			["cost"] = { { "i", 78871, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
		
		-- Restoration
		i(78785, {	-- Deep Earth Helm
			["cost"] = { { "i", 78868, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(78835, {	-- Deep Earth Mantle
			["cost"] = { { "i", 78874, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(78755, {	-- Deep Earth Robes
			["cost"] = { { "i", 78862, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(78775, {	-- Deep Earth Handwraps
			["cost"] = { { "i", 78865, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(78805, {	-- Deep Earth Legwraps
			["cost"] = { { "i", 78871, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
	}),
};
local TIER_THIRTEEN_NORMAL_GROUPS = {	-- Dragon Soul [Tier 13] (Normal)
	cl(WARRIOR, {
		-- DPS
		i(76983, {	-- Colossal Dragonplate Helmet
			["cost"] = { { "i", 78177, 1 }, },	-- Crown of the Corrupted Protector
		}),
		i(76987, {	-- Colossal Dragonplate Pauldrons
			["cost"] = { { "i", 78175, 1 }, },	-- Shoulders of the Corrupted Protector
		}),
		i(76984, {	-- Colossal Dragonplate Battleplate
			["cost"] = { { "i", 78179, 1 }, },	-- Chest of the Corrupted Protector
		}),
		
		i(76985, {	-- Colossal Dragonplate Gauntlets
			["cost"] = { { "i", 78178, 1 }, },	-- Gauntlets of the Corrupted Protector
		}),
		i(76986, {	-- Colossal Dragonplate Legplates
			["cost"] = { { "i", 78176, 1 }, },	-- Leggings of the Corrupted Protector
		}),
		
		-- Protection
		i(76990, {	-- Colossal Dragonplate Faceguard
			["cost"] = { { "i", 78177, 1 }, },	-- Crown of the Corrupted Protector
		}),
		i(76992, {	-- Colossal Dragonplate Shoulderguards
			["cost"] = { { "i", 78175, 1 }, },	-- Shoulders of the Corrupted Protector
		}),
		i(76988, {	-- Colossal Dragonplate Chestguard
			["cost"] = { { "i", 78179, 1 }, },	-- Chest of the Corrupted Protector
		}),
		i(76989, {	-- Colossal Dragonplate Handguards
			["cost"] = { { "i", 78178, 1 }, },	-- Gauntlets of the Corrupted Protector
		}),
		i(76991, {	-- Colossal Dragonplate Legguards
			["cost"] = { { "i", 78176, 1 }, },	-- Leggings of the Corrupted Protector
		}),
	}),
	cl(PALADIN, {
		-- DPS
		i(76876, {	-- Helmet of Radiant Glory
			["cost"] = { { "i", 78182, 1 }, },	-- Crown of the Corrupted Conqueror
		}),
		i(76878, {	-- Pauldrons of Radiant Glory
			["cost"] = { { "i", 78180, 1 }, },	-- Shoulders of the Corrupted Conqueror
		}),
		i(76874, {	-- Battleplate of Radiant Glory
			["cost"] = { { "i", 78184, 1 }, },	-- Chest of the Corrupted Conqueror
		}),
		i(76875, {	-- Gauntlets of Radiant Glory
			["cost"] = { { "i", 78183, 1 }, },	-- Gauntlets of the Corrupted Conqueror
		}),
		i(76877, {	-- Legplates of Radiant Glory
			["cost"] = { { "i", 78181, 1 }, },	-- Leggings of the Corrupted Conqueror
		}),
		
		-- Holy
		i(76767, {	-- Headguard of Radiant Glory
			["cost"] = { { "i", 78182, 1 }, },	-- Crown of the Corrupted Conqueror
		}),
		i(76769, {	-- Mantle of Radiant Glory
			["cost"] = { { "i", 78180, 1 }, },	-- Shoulders of the Corrupted Conqueror
		}),
		i(76765, {	-- Breastplate of Radiant Glory
			["cost"] = { { "i", 78184, 1 }, },	-- Chest of the Corrupted Conqueror
		}),
		i(76766, {	-- Gloves of Radiant Glory
			["cost"] = { { "i", 78183, 1 }, },	-- Gauntlets of the Corrupted Conqueror
		}),
		i(76768, {	-- Greaves of Radiant Glory
			["cost"] = { { "i", 78181, 1 }, },	-- Leggings of the Corrupted Conqueror
		}),
		
		-- Protection
		i(77005, {	-- Faceguard of Radiant Glory
			["cost"] = { { "i", 78182, 1 }, },	-- Crown of the Corrupted Conqueror
		}),
		i(77007, {	-- Shoulderguards of Radiant Glory
			["cost"] = { { "i", 78180, 1 }, },	-- Shoulders of the Corrupted Conqueror
		}),
		i(77003, {	-- Chestguard of Radiant Glory
			["cost"] = { { "i", 78184, 1 }, },	-- Chest of the Corrupted Conqueror
		}),
		i(77004, {	-- Handguards of Radiant Glory
			["cost"] = { { "i", 78183, 1 }, },	-- Gauntlets of the Corrupted Conqueror
		}),
		i(77006, {	-- Legguards of Radiant Glory
			["cost"] = { { "i", 78181, 1 }, },	-- Leggings of the Corrupted Conqueror
		}),
	}),
	cl(DEATHKNIGHT, {
		-- DPS
		i(76976, {	-- Necrotic Boneplate Helmet
			["cost"] = { { "i", 78172, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(76978, {	-- Necrotic Boneplate Pauldrons
			["cost"] = { { "i", 78170, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(76974, {	-- Necrotic Boneplate Breastplate
			["cost"] = { { "i", 78174, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(76975, {	-- Necrotic Boneplate Gauntlets
			["cost"] = { { "i", 78173, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(76977, {	-- Necrotic Boneplate Greaves
			["cost"] = { { "i", 78171, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
		
		-- Protection
		i(77010, {	-- Necrotic Boneplate Faceguard
			["cost"] = { { "i", 78172, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(77012, {	-- Necrotic Boneplate Shoulderguards
			["cost"] = { { "i", 78170, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(77008, {	-- Necrotic Boneplate Chestguard
			["cost"] = { { "i", 78174, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(77009, {	-- Necrotic Boneplate Handguards
			["cost"] = { { "i", 78173, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(77011, {	-- Necrotic Boneplate Legguards
			["cost"] = { { "i", 78171, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
	}),
	cl(HUNTER, {
		i(77030, {	-- Wyrmstalker's Headguard
			["cost"] = { { "i", 78177, 1 }, },	-- Crown of the Corrupted Protector
		}),
		i(77032, {	-- Wyrmstalker's Spaulders
			["cost"] = { { "i", 78175, 1 }, },	-- Shoulders of the Corrupted Protector
		}),
		i(77028, {	-- Wyrmstalker's Tunic
			["cost"] = { { "i", 78179, 1 }, },	-- Chest of the Corrupted Protector
		}),
		i(77029, {	-- Wyrmstalker's Gloves
			["cost"] = { { "i", 78178, 1 }, },	-- Gauntlets of the Corrupted Protector
		}),
		i(77031, {	-- Wyrmstalker's Legguards
			["cost"] = { { "i", 78176, 1 }, },	-- Leggings of the Corrupted Protector
		}),
	}),
	cl(ROGUE, {
		i(77025, {	-- Blackfang Battleweave Helmet
			["cost"] = { { "i", 78172, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(77027, {	-- Blackfang Battleweave Spaulders
			["cost"] = { { "i", 78170, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(77023, {	-- Blackfang Battleweave Tunic
			["cost"] = { { "i", 78174, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(77024, {	-- Blackfang Battleweave Gloves
			["cost"] = { { "i", 78173, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(77026, {	-- Blackfang Battleweave Legguards
			["cost"] = { { "i", 78171, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
	}),
	cl(PRIEST, {
		-- DPS
		i(76347, {	-- Hood of Dying Light
			["cost"] = { { "i", 78182, 1 }, },	-- Crown of the Corrupted Conqueror
		}),
		i(76344, {	-- Mantle of Dying Light
			["cost"] = { { "i", 78180, 1 }, },	-- Shoulders of the Corrupted Conqueror
		}),
		i(76345, {	-- Robes of Dying Light
			["cost"] = { { "i", 78184, 1 }, },	-- Chest of the Corrupted Conqueror
		}),
		i(76348, {	-- Gloves of Dying Light
			["cost"] = { { "i", 78183, 1 }, },	-- Gauntlets of the Corrupted Conqueror
		}),
		i(76346, {	-- Leggings of Dying Light
			["cost"] = { { "i", 78181, 1 }, },	-- Leggings of the Corrupted Conqueror
		}),
		
		-- Holy
		i(76358, {	-- Cowl of Dying Light
			["cost"] = { { "i", 78182, 1 }, },	-- Crown of the Corrupted Conqueror
		}),
		i(76361, {	-- Mantle of Dying Light
			["cost"] = { { "i", 78180, 1 }, },	-- Shoulders of the Corrupted Conqueror
		}),
		i(76360, {	-- Robes of Dying Light
			["cost"] = { { "i", 78184, 1 }, },	-- Chest of the Corrupted Conqueror
		}),
		i(76357, {	-- Handwraps of Dying Light
			["cost"] = { { "i", 78183, 1 }, },	-- Gauntlets of the Corrupted Conqueror
		}),
		i(76359, {	-- Legwraps of Dying Light
			["cost"] = { { "i", 78181, 1 }, },	-- Leggings of the Corrupted Conqueror
		}),
	}),
	cl(SHAMAN, {
		-- Enhance
		i(77042, {	-- Spiritwalker's Helmet
			["cost"] = { { "i", 78177, 1 }, },	-- Crown of the Corrupted Protector
		}),
		i(77044, {	-- Spiritwalker's Spaulders
			["cost"] = { { "i", 78175, 1 }, },	-- Shoulders of the Corrupted Protector
		}),
		i(77040, {	-- Spiritwalker's Cuirass
			["cost"] = { { "i", 78179, 1 }, },	-- Chest of the Corrupted Protector
		}),
		i(77041, {	-- Spiritwalker's Grips
			["cost"] = { { "i", 78178, 1 }, },	-- Gauntlets of the Corrupted Protector
		}),
		i(77043, {	-- Spiritwalker's Legguards
			["cost"] = { { "i", 78176, 1 }, },	-- Leggings of the Corrupted Protector
		}),
		
		-- Elemental
		i(77037, {	-- Spiritwalker's Headpiece
			["cost"] = { { "i", 78177, 1 }, },	-- Crown of the Corrupted Protector
		}),
		i(77035, {	-- Spiritwalker's Shoulderwraps
			["cost"] = { { "i", 78175, 1 }, },	-- Shoulders of the Corrupted Protector
		}),
		i(77039, {	-- Spiritwalker's Hauberk
			["cost"] = { { "i", 78179, 1 }, },	-- Chest of the Corrupted Protector
		}),
		i(77038, {	-- Spiritwalker's Gloves
			["cost"] = { { "i", 78178, 1 }, },	-- Gauntlets of the Corrupted Protector
		}),
		i(77036, {	-- Spiritwalker's Kilt
			["cost"] = { { "i", 78176, 1 }, },	-- Leggings of the Corrupted Protector
		}),
		
		-- Restoration
		i(76758, {	-- Spiritwalker's Faceguard
			["cost"] = { { "i", 78177, 1 }, },	-- Crown of the Corrupted Protector
		}),
		i(76760, {	-- Spiritwalker's Mantle
			["cost"] = { { "i", 78175, 1 }, },	-- Shoulders of the Corrupted Protector
		}),
		i(76756, {	-- Spiritwalker's Tunic
			["cost"] = { { "i", 78179, 1 }, },	-- Chest of the Corrupted Protector
		}),
		i(76757, {	-- Spiritwalker's Handwraps
			["cost"] = { { "i", 78178, 1 }, },	-- Gauntlets of the Corrupted Protector
		}),
		i(76759, {	-- Spiritwalker's Legwraps
			["cost"] = { { "i", 78176, 1 }, },	-- Leggings of the Corrupted Protector
		}),
	}),
	cl(MAGE, {
		i(76213, {	-- Time Lord's Hood
			["cost"] = { { "i", 78172, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(76216, {	-- Time Lord's Mantle
			["cost"] = { { "i", 78170, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(76215, {	-- Time Lord's Robes
			["cost"] = { { "i", 78174, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(76212, {	-- Time Lord's Gloves
			["cost"] = { { "i", 78173, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(76214, {	-- Time Lord's Leggings
			["cost"] = { { "i", 78171, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
	}),
	cl(WARLOCK, {
		i(76342, {	-- Hood of the Faceless Shroud
			["cost"] = { { "i", 78182, 1 }, },	-- Crown of the Corrupted Conqueror
		}),
		i(76339, {	-- Mantle of the Faceless Shroud
			["cost"] = { { "i", 78180, 1 }, },	-- Shoulders of the Corrupted Conqueror
		}),
		i(76340, {	-- Robes of the Faceless Shroud
			["cost"] = { { "i", 78184, 1 }, },	-- Chest of the Corrupted Conqueror
		}),
		i(76343, {	-- Gloves of the Faceless Shroud
			["cost"] = { { "i", 78183, 1 }, },	-- Gauntlets of the Corrupted Conqueror
		}),
		i(76341, {	-- Leggings of the Faceless Shroud
			["cost"] = { { "i", 78181, 1 }, },	-- Leggings of the Corrupted Conqueror
		}),
	}),
	cl(DRUID, {
		-- Boomkin
		i(77019, {	-- Deep Earth Cover
			["cost"] = { { "i", 78172, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(77022, {	-- Deep Earth Shoulderwraps
			["cost"] = { { "i", 78170, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(77021, {	-- Deep Earth Vestment
			["cost"] = { { "i", 78174, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(77018, {	-- Deep Earth Gloves
			["cost"] = { { "i", 78173, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(77020, {	-- Deep Earth Leggings
			["cost"] = { { "i", 78171, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
		
		-- Feral
		i(77015, {	-- Deep Earth Headpiece
			["cost"] = { { "i", 78172, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(77017, {	-- Deep Earth Spaulders
			["cost"] = { { "i", 78170, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(77013, {	-- Deep Earth Raiment
			["cost"] = { { "i", 78174, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(77014, {	-- Deep Earth Grips
			["cost"] = { { "i", 78173, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(77016, {	-- Deep Earth Legguards
			["cost"] = { { "i", 78171, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
		
		-- Restoration
		i(76750, {	-- Deep Earth Helm
			["cost"] = { { "i", 78172, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(76753, {	-- Deep Earth Mantle
			["cost"] = { { "i", 78170, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(76752, {	-- Deep Earth Robes
			["cost"] = { { "i", 78174, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(76749, {	-- Deep Earth Handwraps
			["cost"] = { { "i", 78173, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(76751, {	-- Deep Earth Legwraps
			["cost"] = { { "i", 78171, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
	}),
};
local TIER_THIRTEEN_HEROIC_GROUPS = {	-- Dragon Soul [Tier 13] (Heroic)
	cl(WARRIOR, {
		-- DPS
		i(78688, {	-- Colossal Dragonplate Helmet
			["cost"] = { { "i", 78851, 1 }, },	-- Crown of the Corrupted Protector
		}),
		i(78735, {	-- Colossal Dragonplate Pauldrons
			["cost"] = { { "i", 78860, 1 }, },	-- Shoulders of the Corrupted Protector
		}),
		i(78657, {	-- Colossal Dragonplate Battleplate
			["cost"] = { { "i", 78848, 1 }, },	-- Chest of the Corrupted Protector
		}),
		
		i(78668, {	-- Colossal Dragonplate Gauntlets
			["cost"] = { { "i", 78854, 1 }, },	-- Gauntlets of the Corrupted Protector
		}),
		i(78706, {	-- Colossal Dragonplate Legplates
			["cost"] = { { "i", 78857, 1 }, },	-- Leggings of the Corrupted Protector
		}),
		
		-- Protection
		i(78689, {	-- Colossal Dragonplate Faceguard
			["cost"] = { { "i", 78851, 1 }, },	-- Crown of the Corrupted Protector
		}),
		i(78734, {	-- Colossal Dragonplate Shoulderguards
			["cost"] = { { "i", 78860, 1 }, },	-- Shoulders of the Corrupted Protector
		}),
		i(78658, {	-- Colossal Dragonplate Chestguard
			["cost"] = { { "i", 78848, 1 }, },	-- Chest of the Corrupted Protector
		}),
		i(78669, {	-- Colossal Dragonplate Handguards
			["cost"] = { { "i", 78854, 1 }, },	-- Gauntlets of the Corrupted Protector
		}),
		i(78705, {	-- Colossal Dragonplate Legguards
			["cost"] = { { "i", 78857, 1 }, },	-- Leggings of the Corrupted Protector
		}),
	}),
	cl(PALADIN, {
		-- DPS
		i(78693, {	-- Helmet of Radiant Glory
			["cost"] = { { "i", 78850, 1 }, },	-- Crown of the Corrupted Conqueror
		}),
		i(78742, {	-- Pauldrons of Radiant Glory
			["cost"] = { { "i", 78859, 1 }, },	-- Shoulders of the Corrupted Conqueror
		}),
		i(78727, {	-- Battleplate of Radiant Glory
			["cost"] = { { "i", 78847, 1 }, },	-- Chest of the Corrupted Conqueror
		}),
		i(78675, {	-- Gauntlets of Radiant Glory
			["cost"] = { { "i", 78853, 1 }, },	-- Gauntlets of the Corrupted Conqueror
		}),
		i(78712, {	-- Legplates of Radiant Glory
			["cost"] = { { "i", 78856, 1 }, },	-- Leggings of the Corrupted Conqueror
		}),
		
		-- Holy
		i(78692, {	-- Headguard of Radiant Glory
			["cost"] = { { "i", 78850, 1 }, },	-- Crown of the Corrupted Conqueror
		}),
		i(78746, {	-- Mantle of Radiant Glory
			["cost"] = { { "i", 78859, 1 }, },	-- Shoulders of the Corrupted Conqueror
		}),
		i(78726, {	-- Breastplate of Radiant Glory
			["cost"] = { { "i", 78847, 1 }, },	-- Chest of the Corrupted Conqueror
		}),
		i(78673, {	-- Gloves of Radiant Glory
			["cost"] = { { "i", 78853, 1 }, },	-- Gauntlets of the Corrupted Conqueror
		}),
		i(78717, {	-- Greaves of Radiant Glory
			["cost"] = { { "i", 78856, 1 }, },	-- Leggings of the Corrupted Conqueror
		}),
		
		-- Protection
		i(78695, {	-- Faceguard of Radiant Glory
			["cost"] = { { "i", 78850, 1 }, },	-- Crown of the Corrupted Conqueror
		}),
		i(78745, {	-- Shoulderguards of Radiant Glory
			["cost"] = { { "i", 78859, 1 }, },	-- Shoulders of the Corrupted Conqueror
		}),
		i(78732, {	-- Chestguard of Radiant Glory
			["cost"] = { { "i", 78847, 1 }, },	-- Chest of the Corrupted Conqueror
		}),
		i(78677, {	-- Handguards of Radiant Glory
			["cost"] = { { "i", 78853, 1 }, },	-- Gauntlets of the Corrupted Conqueror
		}),
		i(78715, {	-- Legguards of Radiant Glory
			["cost"] = { { "i", 78856, 1 }, },	-- Leggings of the Corrupted Conqueror
		}),
	}),
	cl(DEATHKNIGHT, {
		-- DPS
		i(78687, {	-- Necrotic Boneplate Helmet
			["cost"] = { { "i", 78852, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(78736, {	-- Necrotic Boneplate Pauldrons
			["cost"] = { { "i", 78861, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(78659, {	-- Necrotic Boneplate Breastplate
			["cost"] = { { "i", 78849, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(78670, {	-- Necrotic Boneplate Gauntlets
			["cost"] = { { "i", 78855, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(78707, {	-- Necrotic Boneplate Greaves
			["cost"] = { { "i", 78858, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
		
		-- Protection
		i(78697, {	-- Necrotic Boneplate Faceguard
			["cost"] = { { "i", 78852, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(78751, {	-- Necrotic Boneplate Shoulderguards
			["cost"] = { { "i", 78861, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(78663, {	-- Necrotic Boneplate Chestguard
			["cost"] = { { "i", 78849, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(78678, {	-- Necrotic Boneplate Handguards
			["cost"] = { { "i", 78855, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(78716, {	-- Necrotic Boneplate Legguards
			["cost"] = { { "i", 78858, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
	}),
	cl(HUNTER, {
		i(78698, {	-- Wyrmstalker's Headguard
			["cost"] = { { "i", 78851, 1 }, },	-- Crown of the Corrupted Protector
		}),
		i(78737, {	-- Wyrmstalker's Spaulders
			["cost"] = { { "i", 78860, 1 }, },	-- Shoulders of the Corrupted Protector
		}),
		i(78661, {	-- Wyrmstalker's Tunic
			["cost"] = { { "i", 78848, 1 }, },	-- Chest of the Corrupted Protector
		}),
		i(78674, {	-- Wyrmstalker's Gloves
			["cost"] = { { "i", 78854, 1 }, },	-- Gauntlets of the Corrupted Protector
		}),
		i(78709, {	-- Wyrmstalker's Legguards
			["cost"] = { { "i", 78857, 1 }, },	-- Leggings of the Corrupted Protector
		}),
	}),
	cl(ROGUE, {
		i(78699, {	-- Blackfang Battleweave Helmet
			["cost"] = { { "i", 78852, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(78738, {	-- Blackfang Battleweave Spaulders
			["cost"] = { { "i", 78861, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(78664, {	-- Blackfang Battleweave Tunic
			["cost"] = { { "i", 78849, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(78679, {	-- Blackfang Battleweave Gloves
			["cost"] = { { "i", 78855, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(78708, {	-- Blackfang Battleweave Legguards
			["cost"] = { { "i", 78858, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
	}),
	cl(PRIEST, {
		-- DPS
		i(78703, {	-- Hood of Dying Light
			["cost"] = { { "i", 78850, 1 }, },	-- Crown of the Corrupted Conqueror
		}),
		i(78750, {	-- Mantle of Dying Light
			["cost"] = { { "i", 78859, 1 }, },	-- Shoulders of the Corrupted Conqueror
		}),
		i(78731, {	-- Robes of Dying Light
			["cost"] = { { "i", 78847, 1 }, },	-- Chest of the Corrupted Conqueror
		}),
		i(78682, {	-- Gloves of Dying Light
			["cost"] = { { "i", 78853, 1 }, },	-- Gauntlets of the Corrupted Conqueror
		}),
		i(78722, {	-- Leggings of Dying Light
			["cost"] = { { "i", 78856, 1 }, },	-- Leggings of the Corrupted Conqueror
		}),
		
		-- Holy
		i(78700, {	-- Cowl of Dying Light
			["cost"] = { { "i", 78850, 1 }, },	-- Crown of the Corrupted Conqueror
		}),
		i(78747, {	-- Mantle of Dying Light
			["cost"] = { { "i", 78859, 1 }, },	-- Shoulders of the Corrupted Conqueror
		}),
		i(78728, {	-- Robes of Dying Light
			["cost"] = { { "i", 78847, 1 }, },	-- Chest of the Corrupted Conqueror
		}),
		i(78683, {	-- Handwraps of Dying Light
			["cost"] = { { "i", 78853, 1 }, },	-- Gauntlets of the Corrupted Conqueror
		}),
		i(78719, {	-- Legwraps of Dying Light
			["cost"] = { { "i", 78856, 1 }, },	-- Leggings of the Corrupted Conqueror
		}),
	}),
	cl(SHAMAN, {
		-- Enhance
		i(78686, {	-- Spiritwalker's Helmet
			["cost"] = { { "i", 78851, 1 }, },	-- Crown of the Corrupted Protector
		}),
		i(78733, {	-- Spiritwalker's Spaulders
			["cost"] = { { "i", 78860, 1 }, },	-- Shoulders of the Corrupted Protector
		}),
		i(78724, {	-- Spiritwalker's Cuirass
			["cost"] = { { "i", 78848, 1 }, },	-- Chest of the Corrupted Protector
		}),
		i(78667, {	-- Spiritwalker's Grips
			["cost"] = { { "i", 78854, 1 }, },	-- Gauntlets of the Corrupted Protector
		}),
		i(78704, {	-- Spiritwalker's Legguards
			["cost"] = { { "i", 78857, 1 }, },	-- Leggings of the Corrupted Protector
		}),
		
		-- Elemental
		i(78685, {	-- Spiritwalker's Headpiece
			["cost"] = { { "i", 78851, 1 }, },	-- Crown of the Corrupted Protector
		}),
		i(78741, {	-- Spiritwalker's Shoulderwraps
			["cost"] = { { "i", 78860, 1 }, },	-- Shoulders of the Corrupted Protector
		}),
		i(78723, {	-- Spiritwalker's Hauberk
			["cost"] = { { "i", 78848, 1 }, },	-- Chest of the Corrupted Protector
		}),
		i(78666, {	-- Spiritwalker's Gloves
			["cost"] = { { "i", 78854, 1 }, },	-- Gauntlets of the Corrupted Protector
		}),
		i(78711, {	-- Spiritwalker's Kilt
			["cost"] = { { "i", 78857, 1 }, },	-- Leggings of the Corrupted Protector
		}),
		
		-- Restoration
		i(78691, {	-- Spiritwalker's Faceguard
			["cost"] = { { "i", 78851, 1 }, },	-- Crown of the Corrupted Protector
		}),
		i(78739, {	-- Spiritwalker's Mantle
			["cost"] = { { "i", 78860, 1 }, },	-- Shoulders of the Corrupted Protector
		}),
		i(78725, {	-- Spiritwalker's Tunic
			["cost"] = { { "i", 78848, 1 }, },	-- Chest of the Corrupted Protector
		}),
		i(78672, {	-- Spiritwalker's Handwraps
			["cost"] = { { "i", 78854, 1 }, },	-- Gauntlets of the Corrupted Protector
		}),
		i(78718, {	-- Spiritwalker's Legwraps
			["cost"] = { { "i", 78857, 1 }, },	-- Leggings of the Corrupted Protector
		}),
	}),
	cl(MAGE, {
		i(78701, {	-- Time Lord's Hood
			["cost"] = { { "i", 78852, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(78748, {	-- Time Lord's Mantle
			["cost"] = { { "i", 78861, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(78729, {	-- Time Lord's Robes
			["cost"] = { { "i", 78849, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(78671, {	-- Time Lord's Gloves
			["cost"] = { { "i", 78855, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(78720, {	-- Time Lord's Leggings
			["cost"] = { { "i", 78858, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
	}),
	cl(WARLOCK, {
		i(78702, {	-- Hood of the Faceless Shroud
			["cost"] = { { "i", 78850, 1 }, },	-- Crown of the Corrupted Conqueror
		}),
		i(78749, {	-- Mantle of the Faceless Shroud
			["cost"] = { { "i", 78859, 1 }, },	-- Shoulders of the Corrupted Conqueror
		}),
		i(78730, {	-- Robes of the Faceless Shroud
			["cost"] = { { "i", 78847, 1 }, },	-- Chest of the Corrupted Conqueror
		}),
		i(78681, {	-- Gloves of the Faceless Shroud
			["cost"] = { { "i", 78853, 1 }, },	-- Gauntlets of the Corrupted Conqueror
		}),
		i(78721, {	-- Leggings of the Faceless Shroud
			["cost"] = { { "i", 78856, 1 }, },	-- Leggings of the Corrupted Conqueror
		}),
	}),
	cl(DRUID, {
		-- Boomkin
		i(78696, {	-- Deep Earth Cover
			["cost"] = { { "i", 78852, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(78744, {	-- Deep Earth Shoulderwraps
			["cost"] = { { "i", 78861, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(78662, {	-- Deep Earth Vestment
			["cost"] = { { "i", 78849, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(78676, {	-- Deep Earth Gloves
			["cost"] = { { "i", 78855, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(78714, {	-- Deep Earth Leggings
			["cost"] = { { "i", 78858, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
		
		-- Feral
		i(78694, {	-- Deep Earth Headpiece
			["cost"] = { { "i", 78852, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(78743, {	-- Deep Earth Spaulders
			["cost"] = { { "i", 78861, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(78665, {	-- Deep Earth Raiment
			["cost"] = { { "i", 78849, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(78684, {	-- Deep Earth Grips
			["cost"] = { { "i", 78855, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(78713, {	-- Deep Earth Legguards
			["cost"] = { { "i", 78858, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
		
		-- Restoration
		i(78690, {	-- Deep Earth Helm
			["cost"] = { { "i", 78852, 1 }, },	-- Crown of the Corrupted Vanquisher
		}),
		i(78740, {	-- Deep Earth Mantle
			["cost"] = { { "i", 78861, 1 }, },	-- Shoulders of the Corrupted Vanquisher
		}),
		i(78660, {	-- Deep Earth Robes
			["cost"] = { { "i", 78849, 1 }, },	-- Chest of the Corrupted Vanquisher
		}),
		i(78680, {	-- Deep Earth Handwraps
			["cost"] = { { "i", 78855, 1 }, },	-- Gauntlets of the Corrupted Vanquisher
		}),
		i(78710, {	-- Deep Earth Legwraps
			["cost"] = { { "i", 78858, 1 }, },	-- Leggings of the Corrupted Vanquisher
		}),
	}),
};
local TIER_THIRTEEN_COMMON_GROUPS = {
	i(77162),	-- Arrowflick Gauntlets
	i(77109),	-- Band of Reconstruction
	i(77095),	-- Batwing Cloak
	i(77180),	-- Belt of Hidden Keys
	i(77181),	-- Belt of Universal Curing
	i(77171),	-- Bladeshatter Treads
	i(77184),	-- Blinding Girdle of Truth
	i(77119),	-- Bones of the Damned
	i(77175),	-- Boneshard Boots
	i(77172),	-- Boots of Fungoid Growth
	i(77114),	-- Bottled Wishes
	i(77322),	-- Bracers of Manifold Pockets
	i(77323),	-- Bracers of the Black Dream
	i(77319),	-- Bracers of the Spectral Wolf
	i(77318),	-- Bracers of Unrelenting Excellence
	i(77091),	-- Cameo of Terrible Memories
	i(77120),	-- Chestplate of the Unshakable Titan
	i(77324),	-- Chronoboost Bracers
	i(77159),	-- Clockwinder's Immaculate Gloves
	i(77182),	-- Cord of Dragon Sinew
	i(77127),	-- Decaying Herbalist's Robes
	i(77185),	-- Demonbone Waistguard
	i(77321),	-- Dragonbelly Bracers
	i(77124),	-- Dragonflayer Vest
	i(77097),	-- Dreamcrusher Drape
	i(77111),	-- Emergency Descent Loop
	i(77117),	-- Fire of the Deep
	i(77316),	-- Flashing Bracers of Warmth
	i(77186),	-- Forgesmelter Waistplate
	i(77160),	-- Fungus-Born Gloves
	i(77166),	-- Gauntlets of Feathery Blows
	i(77125),	-- Ghostworld Chestguard
	i(77183),	-- Girdle of Shamanic Fury
	i(77164),	-- Gleaming Grips of Mending
	i(77163),	-- Gloves of Ghostly Dreams
	i(77153),	-- Glowing Wings of Hope
	i(77165),	-- Grimfist Crushers
	i(77092),	-- Guardspike Choker
	i(77317),	-- Heartcrusher Wristplates
	i(77149),	-- Helmet of Perpetual Rebirth
	i(77147),	-- Hood of Hidden Flesh
	i(77079),	-- Hungermouth Wand
	i(77099),	-- Indefatigable Greatcloak
	i(77156),	-- Jaw of Repudiation
	i(77176),	-- Kavan's Forsaken Treads
	i(77113),	-- Kiroptyric Sigil
	i(77170),	-- Kneebreaker Boots
	i(77161),	-- Lightfinger Handwraps
	i(77121),	-- Lightwarper Vestments
	i(77320),	-- Luminescent Bracers
	i(77098),	-- Nanoprecise Cape
	i(77090),	-- Necklace of Black Dragon's Teeth
	i(77148),	-- Nocturnal Gaze
	i(77088),	-- Opal of the Secret Order
	i(77115),	-- Reflection of the Light
	i(77110),	-- Ring of Torn Flesh
	i(77122),	-- Robes of Searing Shadow
	i(77173),	-- Rooftop Griptoes
	i(77116),	-- Rotting Skull
	i(77174),	-- Sabatons of the Graceful Spirit
	i(77078),	-- Scintillating Rods
	i(77108),	-- Seal of the Grand Architect
	i(77126),	-- Shadowbinder Chestguard
	i(77123),	-- Shining Carapace of Glory
	i(77112),	-- Signet of the Resolute
	i(77169),	-- Silver Sabatons of Fury
	i(77146),	-- Soulgaze Cowl
	i(77177),	-- Splinterfoot Sandals
	i(77179),	-- Tentacular Belt
	i(77157),	-- The Hands of Gilly
	i(77089),	-- Threadlinked Chain
	i(77187),	-- Vestal's Irrepressible Girdle
	i(77155),	-- Visage of Petrification
	i(77151),	-- Wolfdream Circlet
	i(77096),	-- Woundlicker Cover
	i(77150),	-- Zeherah's Dragonskull Crown
};
local TIER_THIRTEEN_GROUPS = applyclassicphase(CATA_PHASE_FIVE,
	appendGroups(TIER_THIRTEEN_COMMON_GROUPS, 
	appendGroups(TIER_THIRTEEN_HEROIC_GROUPS, 
	appendGroups(TIER_THIRTEEN_NORMAL_GROUPS,
	appendGroups(TIER_THIRTEEN_RAIDFINDER_GROUPS, {
})))));
-- #endif

root("Zones", m(EASTERN_KINGDOMS, {
	m(STORMWIND_CITY, {
		["lore"] = "Stormwind City is the capital city of the Alliance. It is located in the northwestern part of Elwynn Forest.\n\nDuring the First War, the Kingdom of Azeroth, including its capital, Stormwind Keep, was utterly destroyed by the Horde and its survivors fled to Lordaeron. After the orcs were defeated at the Dark Portal at the end of the Second War, it was decided that the city would be rebuilt. The nobles of Stormwind assembled a team of the most skilled and ingenious stonemasons and architects they could find--which later turned sour and led to the rise of the Defias.\n\nWith the fall of the northern kingdoms, Stormwind is by far the most populated city in the world. It serves in many ways as the cultural and trade center of the Alliance, even with remote access to the sea. It is home to the Academy of Arcane Sciences, the only wizarding school in Eastern Kingdoms, as well as SI:7, a rogue intelligence organization.",
		-- #if AFTER WRATH
		["icon"] = "Interface\\Icons\\inv_misc_tournaments_banner_human",
		-- #endif
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(5476, applyclassicphase(CATA_PHASE_ONE, {	-- Fish or Cut Bait: Stormwind
					["timeline"] = { "added 4.2.0" },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						crit(1, {	-- Hitting a Walleye
							["sourceQuest"] = 26414,	-- Hitting a Walleye
						}),
						crit(2, {	-- Diggin' For Worms
							["sourceQuest"] = 26420,	-- Diggin' For Worms
						}),
						crit(3, {	-- Rock Lobster
							["sourceQuest"] = 26442,	-- Rock Lobster
						}),
						crit(4, {	-- Big Gulp
							["sourceQuest"] = 26488,	-- Big Gulp
						}),
						crit(5, {	-- Thunder Falls
							["sourceQuest"] = 26536,	-- Thunder Falls
						}),
					},
				})),
				ach(5474, applyclassicphase(CATA_PHASE_ONE, {	-- Let's Do Lunch: Stormwind
					["timeline"] = { "added 4.2.0" },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						crit(1, {	-- A Fisherman's Feast
							["sourceQuest"] = 26190,	-- A Fisherman's Feast
						}),
						crit(2, {	-- Feeling Crabby?
							["sourceQuest"] = 26177,	-- Feeling Crabby?
						}),
						crit(3, {	-- Orphans Like Cookies Too!
							["sourceQuest"] = 26192,	-- Orphans Like Cookies Too!
						}),
						crit(4, {	-- Penny's Pumpkin Pancakes
							["sourceQuest"] = 26153,	-- Penny's Pumpkin Pancakes
						}),
						crit(5, {	-- The King's Cider
							["sourceQuest"] = 26183,	-- The King's Cider
						}),
					},
				})),
			}),
			-- #if AFTER MOP
			petbattle(filter(BATTLE_PETS, {
				p(378, {	-- Rabbit
					["crs"] = { 61080 },	-- Rabbit
				}),
				p(379, {	-- Squirrel
					["crs"] = { 61081 },	-- Squirrel
				}),
				p(675, {	-- Stormwind Rat
					["crs"] = { 62954 },	-- Stormwind Rat
				}),
			})),
			-- #endif
			n(FACTIONS, {
				faction(72, {	-- Stormwind
					-- #if AFTER WRATH
					["icon"] = "Interface\\Icons\\Achievement_Character_Human_Female",
					-- #else
					["icon"] = asset("Achievement_Character_Human_Female"),
					-- #endif
					-- #if BEFORE CATA
					["OnTooltip"] = OnTooltipForCityFactionReputation,
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(2, {	-- Stormwind City, Elwynn
					["cr"] = 352,	-- Dungar Longdrink <Gryphon Master>
					-- #if AFTER CATA
					["coord"] = { 71.0, 72.6, STORMWIND_CITY },
					-- #elseif AFTER WRATH
					["coord"] = { 71.0, 72.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 66.2, 62.4, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(BLACKSMITHING, {
					n(5511, {	-- Therum Deepforge <Expert Blacksmith>
						["coord"] = { 57.0, 16.6, STORMWIND_CITY },
						["races"] = ALLIANCE_ONLY,
						["groups"] = CLASSIC_BLACKSMITHING,
					}),
				}),
				prof(ENCHANTING, {
					n(1317, {	-- Lucan Cordell <Enchanting Trainer>
						["coord"] = { 53.0, 74.2, STORMWIND_CITY },
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(CLASSIC_ENCHANTING,
							-- #if AFTER CATA
							CATA_ENCHANTING
							-- #else
							{}
							-- #endif
						),
					}),
				}),
				prof(FISHING, {
					i(34864, {	-- Baby Crocolisk
						["timeline"] = { "added 2.4.0.7897" },
					}),
					i(67414, {	-- Bag of Shiny Things
						["description"] = "Fishing Daily Quest Reward",
						["timeline"] = { "added 4.0.1.12984" },
						["cr"] = 5494,	-- Catherine Leland
						["groups"] = {
							i(44983, {	-- Strand Crawler
								["timeline"] = { "added 3.1.0.9658" },
							}),
							i(33820, {	-- Weather-Beaten Fishing Hat
								["timeline"] = { "added 2.4.0.7897" },
							}),
							i(45991, {	-- Bone Fishing Pole
								["timeline"] = { "added 3.1.0.9658" },
							}),
							i(45992, {	-- Jeweled Fishing Pole
								["timeline"] = { "added 3.1.0.9658" },
							}),
							i(67410, {	-- Very Unlucky Rock
								["timeline"] = { "added 4.0.1.12984" },
							}),
						},
					}),
				}),
			}),
			n(QUESTS, {
				q(7794, {	-- A Donation of Mageweave
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					-- #if AFTER WRATH
					["coord"] = { 53.9, 81.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 44.2, 73.6, STORMWIND_CITY },
					-- #endif
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7795, {	-- A Donation of Runecloth
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					-- #if AFTER WRATH
					["coord"] = { 53.9, 81.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 44.2, 73.6, STORMWIND_CITY },
					-- #endif
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(7793, {	-- A Donation of Silk
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					-- #if AFTER WRATH
					["coord"] = { 53.9, 81.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 44.2, 73.6, STORMWIND_CITY },
					-- #endif
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
				}),
				q(7791, {	-- A Donation of Wool
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					-- #if AFTER WRATH
					["coord"] = { 53.9, 81.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 44.2, 73.6, STORMWIND_CITY },
					-- #endif
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(26190, {	-- A Fisherman's Feast
					["qg"] = 42288,	-- Robby Flay
					["coord"] = { 50.6, 71.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = COOKING_AWARD_GROUPS,
				}),
				q(46275, {	-- A Kingdom's Heart
					["qg"] = 119357,	-- Anduin Wrynn
					["sourceQuest"] = 46274,	-- Consoling the King
					["coord"] = { 49.8, 45.2, STORMWIND_CITY },
					["timeline"] = { "added 7.2.0.23746" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(212, {	-- A Meal Served Cold
					["qg"] = 1141,	-- Angus Stern
					-- #if AFTER WRATH
					["coord"] = { 51.8, 93.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 41.4, 89.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Chilled Basilisk Haunch
							["provider"] = { "i", 2476 },	-- Chilled Basilisk Haunch
							["cr"] = 690,	-- Cold Eye Basilisk
						}),
					},
				}),
				q(335, {	-- A Noble Brew (1/2)
					["qg"] = 1435,	-- Zardeth of the Black Claw
					-- #if AFTER WRATH
					["coord"] = { 40.1, 85.3, STORMWIND_CITY },
					-- #else
					["coord"] = { 26.4, 78.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DUSKWOOD, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Tear of Tilloa
							["provider"] = { "i", 2779 },	-- Tear of Tilloa
							["coord"] = { 78.5, 36.0, DUSKWOOD },
						}),
						objective(2, {	-- 0/1 Musquash Root
							["provider"] = { "i", 2784 },	-- Musquash Root
							["coord"] = { 64.7, 75.5, WETLANDS },
						}),
					},
				}),
				q(336, {	-- A Noble Brew (2/2)
					["providers"] = {
						{ "n", 1435 },	-- Zardeth of the Black Claw
						{ "i", 2788 },	-- Black Claw Stout
					},
					["sourceQuest"] = 335,	-- A Noble Brew (1/2)
					-- #if AFTER WRATH
					["coord"] = { 40.1, 85.3, STORMWIND_CITY },
					-- #else
					["coord"] = { 26.4, 78.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(47202, {	-- A Personal Message
					["qg"] = 119357,	-- Anduin Wrynn
					["sourceQuest"] = 46275,	-- A Kingdom's Heart
					["coord"] = { 85.9, 34.3, STORMWIND_CITY },
					["timeline"] = { "added 7.2.0.23746" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25154, {	-- A Present for Lila
					["qg"] = 50480,	-- Isabel Jones
					["coord"] = { 63.8, 61.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				q(27106, {	-- A Villain Unmasked
					["provider"] = { "o", 205198 },	-- Pile of Explosives
					["sourceQuest"] = 27092,	-- Cataclysm in the Catacombs
					["coord"] = { 50.4, 42.4, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(63919, {	-- Corruption-Seeking Chestguard
							["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
						}),
						i(63918, {	-- Detective's Shoulderplates
							["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
						}),
						i(63920, {	-- Treads of Revelation
							["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
						}),
						i(63921, {	-- Truth-Seeker Belt
							["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
						}),
						i(63917, {	-- Truthbreaker Shield
							["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
						}),
					},
				}),
				q(1638, {	-- A Warrior's Training
					["qgs"] = {
						913,	-- Lyria Du Lac <Warrior Trainer>
						5480,	-- Ilsa Corbin <Warrior Trainer>
					},
					["altQuests"] = {
						1684,	-- Elanaria
						1679,	-- Muren Stormpike
						1678,	-- Vejrek
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
					},
					["coords"] = {
						{ 41, 65.8, ELWYNN_FOREST },
						-- #if AFTER WRATH
						{ 80.4, 59.8, STORMWIND_CITY },
						-- #else
						{ 78.6, 45.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(44473, {	-- A Weapon of the Alliance
					["qg"] = 100973,	-- Anduin Wrynn
					["sourceQuest"] = 44463,	-- Demons Among Them
					["coord"] = { 85.6, 31.8, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3.21796" },
					["classes"] = { DEMONHUNTER },
					["races"] = ALLIANCE_ONLY,
				}),
				q(7796, {	-- Additional Runecloth [Stormwind]
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					["sourceQuest"] = 7795,	-- A Donation of Runecloth
					-- #if AFTER WRATH
					["coord"] = { 53.9, 81.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 44.2, 73.6, STORMWIND_CITY },
					-- #endif
					["cost"] = { { "i", 14047, 20 } }, 	-- Runecloth
					["maxReputation"] = { 72, EXALTED },	-- Stormwind, Exalted.
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(62567, {	-- Adventurers Wanted: Chromie's Call
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.2, 17.6, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["lockCriteria"] = { 1, "lvl", 50 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(11451, {	-- Alicia's Poem
					["providers"] = {
						{ "n", 24729 },	-- Alicia
						{ "i", 34089 },	-- Alicia's Poem
					},
					-- #if AFTER LEGION
					["coord"] = { 81.6, 28.2, STORMWIND_CITY },
					-- #elseif AFTER CATA
					["coord"] = { 81.5, 28.6, STORMWIND_CITY },
					-- #elseif AFTER WRATH
					["coord"] = { 70.9, 35.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 66.9, 13.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "added 2.3.0" },
					["maps"] = { SHATTRATH_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(60, 60, 15),
				}),
				q(396, {	-- An Audience with the King
					["providers"] = {
						{ "n", 1646 },	-- Baros Alexston <City Architect>
						{ "i", 2956 },	-- Report on the Defias Brotherhood
					},
					["sourceQuest"] = 395,	-- Brotherhood's End
					-- #if AFTER WRATH
					["coord"] = { 57.7, 47.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 49, 30.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						i(2933, {	-- Seal of Wrynn
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(30989, {	-- An Old Pit Fighter
					["qg"] = 61796,	-- King Varian Wrynn
					["sourceQuest"] = 30988,	-- The Alliance Way
					["coord"] = { 82.6, 28.2, STORMWIND_CITY },
					["timeline"] = { "added 5.0.4", "removed 7.0.3" },
					["races"] = { PANDAREN_ALLIANCE },
				}),
				q(58496, {	-- An Unwelcome Advisor
					["provider"] = { "o", 369893 },	-- Urgent Missive
					["coord"] = { 68.1, 22.4, BORALUS },	-- Urgent Missive
					["description"] = "This quest is automatically offered.",
					["timeline"] = { "added 8.3.0.33062" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(58912, {	-- An Urgent Meeting
					["qg"] = 163211,	-- Henry Garrick
					["sourceQuest"] = 58911,	-- Home Is Where the Hearth Is
					["customCollect"] = "NPE",	-- New Player Experience
					["coord"] = { 75.3, 54.3, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(5676, {	-- Arcane Feedback [Stormwind City]
					["qgs"] = {
						11406,	-- High Priest Rohan <Priest Trainer>
						376,	-- High Priestess Laurena <Priest Trainer>
					},
					["coords"] = {
						{ 26.4, 7.6, IRONFORGE },
						{ 38.8, 26.6, STORMWIND_CITY },
					},
					["altQuests"] = {
						5678,	-- Arcane Feedback [Darnassus, NYI?]
						5677,	-- Arcane Feedback [Ironforge]
					},
					["timeline"] = { "removed 3.0.2" },
					["races"] = { HUMAN },
					["classes"] = { PRIEST },
					["lvl"] = 20,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 13896,	-- Feedback (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				q(1942, {	-- Astral Knot Garment
					["qg"] = 1309,	-- Wynne Larson <Robe Merchant>
					["sourceQuest"] = 1940,	-- Pristine Spider Silk
					-- #if AFTER WRATH
					["coord"] = { 51.8, 83.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 41.8, 76.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["lvl"] = 26,
					["groups"] = {
						i(9516, {	-- Astral Knot Blouse
							["timeline"] = { "removed 4.0.3" },
						}),
						i(7511, {	-- Astral Knot Robe
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(1639, {	-- Bartleby the Drunk
					["qg"] = 6089,	-- Harry Burlguard
					["sourceQuests"] = {
						1638,	-- A Warrior's Training
						1684,	-- Elanaria
						1679,	-- Muren Stormpike
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
					},
					-- #if AFTER WRATH
					["coord"] = { 77.1, 53.3, STORMWIND_CITY },
					-- #else
					["coord"] = { 74, 37.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(1665, {	-- Bartleby's Mug
					["providers"] = {
						{ "n", 6090 },	-- Bartleby
						{ "i", 6781 },	-- Bartleby's Mug
					},
					["sourceQuest"] = 1640,	-- Beat Bartleby
					["altQuests"] = {
						--1665,	-- Bartleby's Mug
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
						1678,	-- Vejrek
						1683,	-- Vorlus Vilehoof
					},
					-- #if AFTER WRATH
					["coord"] = { 76.8, 52.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 73.8, 36.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
					-- #if BEFORE CATA
					["groups"] = {
						recipe(71),		-- Defensive Stance
						--recipe(7386),	-- Sunder Armor	[TODO: Users are reporting they can't collect this.]
						recipe(355),	-- Taunt
					},
					-- #endif
				}),
				-- #if AFTER SHADOWLANDS
				q(53370, {	-- Battle for Azeroth: Hour of Reckoning [SL+] / Hour of Reckoning
					["qg"] = 144095,	-- Master Mathias Shaw
					["description"] = "If this quest is not automatically offered, you can try picking it up from a War Board, or taking the boat from Stormwind to Boralus.",
					["timeline"] = { "added 8.0.1.27291" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(163542, {	-- Footman's Warmace
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163541, {	-- Longbow of the Hunt
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163539, {	-- Spear of the Hunt
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163537, {	-- Footman's Warhammer
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163534, {	-- Warmage's Spellblade
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163526, {	-- Footman's Handaxe
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163540, {	-- Footman's Boot Knife
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163538, {	-- Footman's Gladius
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163536, {	-- Warmage's Spire
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163533, {	-- Footman's Cleaver
							["timeline"] = { "added 8.0.1.27291" },
						}),
					},
				}),
				-- #endif
				q(58983, {	-- Battle for Azeroth: Tides of War (Shadowlands version)
					["qg"] = 163219,	-- Captain Garrick
					["sourceQuest"] = 58912,	-- An Urgent Meeting
					["altQuests"] = { 46727 },	-- Tides of War
					["coord"] = { 85.2, 32.1, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(178941, {	-- Alliance Dog Tags
							["timeline"] = { "added 9.0.1.36228" },
						}),
					}
				}),
				q(1640, {	-- Beat Bartleby
					["qg"] = 6090,	-- Bartleby
					["sourceQuest"] = 1639,	-- Bartleby the Drunk
					-- #if AFTER WRATH
					["coord"] = { 76.8, 52.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 73.8, 36.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(26488, {	-- Big Gulp
					["qg"] = 5494,	-- Catherine Leland
					["coord"] = { 55.0, 69.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.1.12984" },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = FISHING_AWARD_GROUPS,
				}),
				q(29412, {	-- Blown Away
					["qg"] = 54117,	-- Vin
					["coord"] = { 58.8, 52.8, STORMWIND_CITY },
					["timeline"] = { "added 4.2.0.14133" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(72042, {	-- Alliance Balloon
							["timeline"] = { "added 4.2.0.14133" },
						}),
					},
				}),
				q(344, {	-- Brother Paxton
					["qg"] = 1440,	-- Milton Sheaf
					["sourceQuest"] = 343,	-- Speaking of Fortitude
					-- #if AFTER WRATH
					["coord"] = { 77.1, 30.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 74.2, 7.5, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(395, {	-- Brotherhood's End
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 394,	-- The Head of the Beast
					-- #if AFTER WRATH
					["coord"] = { 78.3, 70.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(1705, {	-- Burning Blood
					["qg"] = 1416,	-- Grimand Elmore
					["sourceQuest"] = 1700,	-- Grimand Elmore
					-- #if AFTER WRATH
					["coord"] = { 59.7, 33.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 51.6, 12.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/20 Burning Blood
							["provider"] = { "i", 6844 },	-- Burning Blood
							["coord"] = { 74.2, 77.8, DUSKWOOD },
							["crs"] = {
								205,	-- Nightbane Dark Runner
								533,	-- Nightbane Shadow Weaver
								920,	-- Nightbane Tainted One
								206,	-- Nightbane Vile Fang
								898,	-- Nightbane Worgen
							},
						}),
						objective(1, {	-- 0/1 Burning Rock
							["provider"] = { "i", 6845 },	-- Burning Rock
							["coord"] = { 74.2, 77.8, DUSKWOOD },
							["cr"] = 6170,	-- Gutspill
						}),
					},
				}),
				q(60959, {	-- Burning Crusade: Onward to Adventure in Outland
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["sourceQuest"] = 60120,	-- Burning Crusade: To Outland!
					["coord"] = { 56.2, 17.3, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["lockCriteria"] = { 1, "lvl", 50 },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(60120, {	-- Burning Crusade: To Outland!
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.3, 17.3, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["lockCriteria"] = { 1, "lvl", 50 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(29100, {	-- Bwemba's Spirit [A]
					["qg"] = 52654,	-- Bwemba
					["sourceQuest"] = 29156,	-- The Troll Incursion
					["coord"] = { 25.9, 29.2, STORMWIND_CITY },
					["timeline"] = { "added 4.1.0.13682" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(14482, {	-- Call of Duty
					["qg"] = 36799,	-- Recruiter Burns
					["sourceQuests"] = {
						14481,	-- Into The Abyss
						27724,	-- Hero's Call: Vashj'ir!
						28827,	-- To the Depths
					},
					["coord"] = { 27.4, 24.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(60891, {	-- Cataclysm: Onward to Adventure in the Eastern Kingdoms
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.2, 17.3, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["lockCriteria"] = { 1, "lvl", 50 },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(27092, {	-- Cataclysm in the Catacombs
					["qg"] = 50049,	-- Jack Bauden <SI:7 Agent>
					["sourceQuest"] = 27072,	-- The Old Barracks
					["coord"] = { 37.2, 56.4, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(46274, {	-- Consoling the King
					["qg"] = 119338,	-- Genn Greymane
					["sourceQuest"] = 46272,	-- Summons to the Keep
					["coord"] = { 85.7, 32.1, STORMWIND_CITY },
					["timeline"] = { "added 7.2.0.23746" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(32469, {	-- Crystal Clarity
					["qg"] = 16908,	-- Arielle Snapflash
					["sourceQuest"] = 32470,	-- Light Camera Action
					["coord"] = { 61.2, 22.8, STORMWIND_CITY },
					["timeline"] = { "added 7.3.5" },
					["collectible"] = false,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(122661, {	-- S.E.L.F.I.E. Lens Upgrade Kit
							["timeline"] = { "added 6.1.0" },
							["groups"] = {
								i(122674, {	-- S.E.L.F.I.E. Camera MkII
									["timeline"] = { "added 6.1.0" },
								}),
							},
						}),
					},
				}),
				q(44463, {	-- Demons Among Them
					["qg"] = 102585,	-- Jace Darkweaver
					["sourceQuest"] = 44471,	-- Second Sight
					["coord"] = { 84.4, 33.6, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3.21796" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DEMONHUNTER },
					["groups"] = {
						i(128959, {	-- Seal of House Wrynn
							["timeline"] = { "added 7.0.3.21796" },
						}),
					},
				}),
				q(40593, {	-- Demons Among Us
					["qg"] = 100675,	-- Jace Darkweaver
					["sourceQuest"] = 40517,	-- The Fallen Lion
					["coord"] = { 85.2, 32.3, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3.21796" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(128959, {	-- Seal of House Wrynn
							["timeline"] = { "added 7.0.3.21796" },
						}),
						i(138774, {	-- Accolade of House Wrynn
							["timeline"] = { "added 7.0.3.21796" },
						}),
						i(138773, {	-- Favor of House Wrynn
							["timeline"] = { "added 7.0.3.21796" },
						}),
					},
				}),
				q(5634, {	-- Desperate Prayer
					["qgs"] = {
						11401,	-- Priestess Alathea <Priest Trainer>
						1226,	-- Maxan Anvol <Priest Trainer>
						377,	-- Priestess Josetta <Priest Trainer>
						11406,	-- High Priest Rohan <Priest Trainer>
						11397,	-- Nara Meideros <Priest Trainer>
						376,	-- High Priestess Laurena <Priest Trainer>
						3600,	-- Laurna Morninglight <Priest Trainer>
					},
					["coords"] = {
						{ 39.6, 80.8, DARNASSUS },
						{ 47.2, 52.2, DUN_MOROGH },
						{ 43.4, 65.6, ELWYNN_FOREST },
						{ 26.4, 7.6, IRONFORGE },
						{ 20.8, 50.2, STORMWIND_CITY },
						{ 38.8, 26.6, STORMWIND_CITY },
						{ 55.6, 56.8, TELDRASSIL },
					},
					["altQuests"] = {
						5635,	-- Desperate Prayer [Elwynn Forest]
						5636,	-- Desperate Prayer [Teldrassil]
						5637,	-- Desperate Prayer [Dun Morogh]
						5638,	-- Desperate Prayer [Stormwind City #2]
						5639,	-- Desperate Prayer [Ironforge]
						5640,	-- Desperate Prayer [Darnassus]
					},
					["timeline"] = { "removed 3.0.2" },
					["races"] = { HUMAN, DWARF },
					["classes"] = { PRIEST },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 13908,	-- Desperate Prayer (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				q(1716, {	-- Devourer of Souls [Stormwind City]
					["qg"] = 6122,	-- Gakin the Darkbinder
					["sourceQuest"] = 1717,	-- Gakin's Summons (Succubus)
					-- #if AFTER WRATH
					["coord"] = { 39.2, 85.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 25.4, 78.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(26420, {	-- Diggin' For Worms
					["qg"] = 5494,	-- Catherine Leland
					["coord"] = { 55.0, 69.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.1.12984" },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = FISHING_AWARD_GROUPS,
				}),
				q(6261, {	-- Dungar Longdrink
					["providers"] = {
						{ "n", 1323 },	-- Osric Strang
						{ "i", 16115 },	-- Osric's Crate
					},
					["sourceQuest"] = 6281,	-- Continue to Stormwind
					-- #if AFTER WRATH
					["coord"] = { 77.2, 61.0, STORMWIND_CITY },
					-- #else
					["coord"] = { 74.2, 47.5, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["lvl"] = 10,
				}),
				q(26395, {	-- Dungar Longdrink
					["qg"] = 1323,	-- Osric Strang
					["sourceQuest"] = 26394,	-- Continue to Stormwind
					["coord"] = { 77.0, 61.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3" },
					["races"] = { HUMAN },
				}),
				q(25156, {	-- Elemental Goo
					["qg"] = 50480,	-- Isabel Jones
					["coord"] = { 63.8, 61.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				q(28807, {	-- Expert Opinion
					["qg"] = 44293,	-- Anduin Wrynn <Prince of Stormwind>
					["sourceQuests"] = {
						27064,	-- He's Holding Out on Us
						27060,	-- Unholy Cow
					},
					["coord"] = { 85.7, 31.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(58708, {	-- Fame Waits for Gnome One
					["qg"] = 162393,	-- Gila Crosswires
					["coord"] = { 52.7, 14.1, STORMWIND_CITY },
					["timeline"] = { "added 8.3.0.33062" },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(26177, {	-- Feeling Crabby?
					["qg"] = 42288,	-- Robby Flay
					["coord"] = { 50.6, 71.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = COOKING_AWARD_GROUPS,
				}),
				q(58908, {	-- Finding Your Way
					["qg"] = 163095,	-- Lindie Springstock
					["sourceQuest"] = 59583,	-- Welcome to Stormwind
					["customCollect"] = "NPE",	-- New Player Experience
					["coord"] = { 70.1, 85.3, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1701, {	-- Fire Hardened Mail
					["providers"] = {
						{ "n", 5413 },	-- Furen Longbeard
						{ "i", 6842 },	-- Furen's Instructions
					},
					["sourceQuest"] = 1702,	-- The Shieldsmith
					-- #if AFTER WRATH
					["coord"] = { 64.6, 37.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 58.0, 16.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { RAZORFEN_KRAUL, WETLANDS, STONETALON_MOUNTAINS },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/50 Scorched Spider Fang
							["provider"] = { "i", 6838 },	-- Scorched Spider Fang
							["crs"] = {
								4040,	-- Cave Stalker
								1111,	-- Leech Stalker
							},
						}),
						objective(2, {	-- 0/12 Charred Horn
							["provider"] = { "i", 6839 },	-- Charred Horn
							["crs"] = {
								4031,	-- Fledgling Chimaera
								4032,	-- Young Chimaera
							},
						}),
						objective(3, {	-- 0/1 Galvanized Horn
							["provider"] = { "i", 6840 },	-- Galvanized Horn
							["cr"] = 6167,	-- Chimaera Matriarch
						}),
						objective(4, {	-- 0/1 Vial of Phlogiston
							["provider"] = { "i", 6841 },	-- Vial of Phlogiston
							["cr"] = 6168,	-- Roogug
						}),
					},
				}),
				q(6184, {	-- Flint Shadowmore
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 6183,	-- Honor the Dead
					-- #if AFTER WRATH
					["coord"] = { 78.3, 70.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				q(27675, {	-- Forged Documents
					["provider"] = { "i", 62056 },	-- Forged Documents
					["description"] = "After creating Forged Documents with Inscription, search the city for an NPC to accept them - the quest can end in a variety of different places.",
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = INSCRIPTION,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
				}),
				-- #if AFTER SHADOWLANDS
				q(27271, {	-- Frazzle's Request [SL+] / Journey to the Wizard's Sanctum
					["qgs"] = {
						16749,	-- Edirah
						50690,	-- Tarelvir
						5146,	-- Nittlebur Sparkfizzle
					},
					["coords"] = {
						{ 47.2, 61.8, THE_EXODAR },	-- Edirah
						{ 37.6, 80.0, DARNASSUS },	-- Tarelvir
						{ 26.2, 6.2, IRONFORGE },	-- Nittlebur Sparkfizzle
					},
					["timeline"] = { "added 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				q(1782, {	-- Furen's Armor
					["qg"] = 5413,	-- Furen Longbeard
					["sourceQuest"] = 1701,	-- Fire Hardened Mail
					-- #if AFTER WRATH
					["coord"] = { 64.6, 37.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 58.0, 16.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["groups"] = {
						i(6972, {	-- Fire Hardened Hauberk
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(1685, {	-- Gakin's Summons (Voidwalker)
					["qg"] = 6121,	-- Remen Marcot
					["altQuests"] = { 1715 }, -- The Slaughtered Lamb
					["coord"] = { 44.4, 66.2, ELWYNN_FOREST },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(1717, {	-- Gakin's Summons (Succubus)
					["qg"] = 6120,	-- Lago Blackwrench
					["coord"] = { 47.6, 9.6, IRONFORGE },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1921, {	-- Gathering Materials
					["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
					["sourceQuest"] = 1920,	-- Investigate the Blue Recluse
					-- #if AFTER WRATH
					["coord"] = { 49.5, 85.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 38.6, 79.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { LOCH_MODAN },
					["cost"] = { { "i", 2589, 10 } },	-- Linen Cloth
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["lvl"] = 15,
					["groups"] = {
						objective(2, {	-- 0/6 Charged Rift Gem
							["provider"] = { "i", 7249 },	-- Charged Rift Gem
							["coord"] = { 35, 27, LOCH_MODAN },
						}),
					},
				}),
				q(49976, {	-- Gifts of the Fallen
					["qg"] = 132255,	-- Master Mathias Shaw
					["sourceQuest"] = 50371,	-- Summons to Stormwind
					["coord"] = { 39.0, 62.6, STORMWIND_CITY },
					["timeline"] = { "added 7.3.5", "removed 8.0.1" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(39800, {	-- Greymane's Gambit
					["qg"] = 96663,	-- Genn Greymane
					["sourceQuest"] = 38206,	-- Making the Rounds
					["coord"] = { 18.6, 50.8, STORMWIND_CITY },
					["timeline"] = { "added 7.0.1.20756" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(139914, {	-- 7th Legion Battlemage Amice
							["timeline"] = { "added 7.0.1.20756" },
						}),
						i(121760, {	-- 7th Legion Battlemage Wraps
							["timeline"] = { "added 7.0.1.20756" },
						}),
						i(139950, {	-- Gryphon Rider's Shoulderpads
							["timeline"] = { "added 7.0.1.20756" },
						}),
						i(139955, {	-- Gryphon Rider's Cuffs
							["timeline"] = { "added 7.0.1.20756" },
						}),
						i(139976, {	-- Skyfire Engineer's Mantle
							["timeline"] = { "added 7.0.1.20756" },
						}),
						i(121762, {	-- Skyfire Engineer's Wristguards
							["timeline"] = { "added 7.0.1.20756" },
						}),
						i(121753, {	-- Skyfire Marine's Pauldrons
							["timeline"] = { "added 7.0.1.20756" },
						}),
						i(121761, {	-- Skyfire Marine's Vambraces
							["timeline"] = { "added 7.0.1.20756" },
						}),
					},
				}),
				q(1700, {	-- Grimand Elmore
					["providers"] = {
						{ "n", 5413 },	-- Furen Longbeard
						{ "i", 6926 },	-- Furen's Notes
					},
					["sourceQuest"] = 1701,	-- Fire Hardened Mail
					-- #if AFTER WRATH
					["coord"] = { 64.6, 37.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 58.0, 16.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1706, {	-- Grimand's Armor
					["qg"] = 1416,	-- Grimand Elmore
					["sourceQuest"] = 1705,	-- Burning Blood
					-- #if AFTER WRATH
					["coord"] = { 59.7, 33.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 51.6, 12.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["groups"] = {
						i(6971, {	-- Fire Hardened Coif
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(66420, {	-- Happy Hour
					["qg"] = 188342,	-- Onnesa
					["sourceQuest"] = 66390,	-- Missing Merchandise
					["coord"] = { 51.5, 70.4, STORMWIND_CITY },
					["timeline"] = { "added 9.2.5" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(191865, {	-- Bottle of Briny Seawater
							["timeline"] = { "added 9.2.5" },
						}),
					},
				}),
				q(333, {	-- Harlan Needs a Resupply
					["providers"] = {
						{ "n", 1427 },	-- Harlan Bagley
						{ "i", 2724 },	-- Cloth Request
					},
					-- #if AFTER CATA
					["coord"] = { 62.2, 67.8, STORMWIND_CITY },
					-- #elseif AFTER WRATH
					["coord"] = { 62.3, 67.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 55.1, 56.0, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
				q(27064, {	-- He's Holding Out on Us
					["qg"] = 44293,	-- Anduin Wrynn <Prince of Stormwind>
					["sourceQuest"] = 26997,	-- The Usual Suspects
					["coord"] = { 85.7, 31.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1939, {	-- High Sorcerer Andromath
					["qgs"] = {
						5144,	-- Bink <Mage Trainer>
						5497,	-- Jennea Cannon <Mage Trainer>
					},
					["coords"] = {
						{ 27.0, 8.2, IRONFORGE },
						-- #if AFTER WRATH
						{ 49.5, 85.8, STORMWIND_CITY },
						-- #else
						{ 38.6, 79.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 26,
				}),
				q(26414, {	-- Hitting a Walleye
					["qg"] = 5494,	-- Catherine Leland
					["coord"] = { 55.0, 69.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.1.12984" },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = FISHING_AWARD_GROUPS,
				}),
				q(58911, {	-- Home Is Where the Hearth Is
					["qg"] = 163097,	-- Lindle Springstock
					["sourceQuests"] = {
						58910,	-- What's Your Specialty? (Druid)
						59586,	-- What's Your Specialty? (Hunter)
						59587,	-- What's Your Specialty? (Mage)
						59588,	-- What's Your Specialty? (Monk)
						59589,	-- What's Your Specialty? (Paladin)
						59590,	-- What's Your Specialty? (Priest)
						59591,	-- What's Your Specialty? (Rogue)
						59592,	-- What's Your Specialty? (Shaman)
						59593,	-- What's Your Specialty? (Warlock)
						59594,	-- What's Your Specialty? (Warrior)
					},
					["coord"] = { 79.0, 69.8, STORMWIND_CITY },
					["customCollect"] = "NPE",	-- New Player Experience
					["timeline"] = { "added 9.0.1" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(6183, {	-- Honor the Dead
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 6182,	-- The First and the Last
					-- #if AFTER WRATH
					["coord"] = { 78.3, 70.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				-- #if BEFORE SHADOWLANDS
				q(53370, {	-- Hour of Reckoning / Battle for Azeroth: Hour of Reckoning [SL+]
					["qg"] = 144095,	-- Master Mathias Shaw
					["description"] = "If this quest is not automatically offered, you can try picking it up from a War Board, or taking the boat from Stormwind to Boralus.",
					["timeline"] = { "added 8.0.1.27291" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(163542, {	-- Footman's Warmace
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163541, {	-- Longbow of the Hunt
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163539, {	-- Spear of the Hunt
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163537, {	-- Footman's Warhammer
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163534, {	-- Warmage's Spellblade
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163526, {	-- Footman's Handaxe
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163540, {	-- Footman's Boot Knife
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163538, {	-- Footman's Gladius
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163536, {	-- Warmage's Spire
							["timeline"] = { "added 8.0.1.27291" },
						}),
						i(163533, {	-- Footman's Cleaver
							["timeline"] = { "added 8.0.1.27291" },
						}),
					},
				}),
				-- #endif
				q(399, {	-- Humble Beginnings
					["qg"] = 1646,	-- Baros Alexston <City Architect>
					-- #if AFTER WRATH
					["coord"] = { 57.7, 47.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 49, 30.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 A Simple Compass
							["provider"] = { "i", 2998 },	-- A Simple Compass
							["coord"] = { 36.3, 54.6, WESTFALL },
						}),
					},
				}),
				q(32675, {	-- I Believe You Can Fly
					["description"] = "This quest is automatically offered to Alliance players upon reaching the specified level.",
					["timeline"] = { "added 5.2.0" },
					["races"] = ALLIANCE_ONLY,
					["DisablePartySync"] = true,
					["isBreadcrumb"] = true,
					["lockCriteria"] = { 1,
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["lvl"] = lvlsquish(60, 60, 30),
				}),
				q(44120, {	-- Illidari Allies
					["qg"] = 100973,	-- Anduin Wrynn
					["sourceQuest"] = 40593,	-- Demons Among Us
					["coord"] = { 85.6, 31.8, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2759, {	-- In Search of Galvan
					["providers"] = {
						{ "n", 7798 },	-- Hank the Hammer
						{ "i", 8663 },	-- Mithril Insignia
					},
					["sourceQuest"] = 2758,	-- The Origins of Smithing
					-- #if AFTER WRATH
					["coord"] = { 63.0, 36.4, STORMWIND_CITY },
					-- #else
					["coord"] = { 56.0, 16.0, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["requireSkill"] = BLACKSMITHING,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(1448, {	-- In Search of The Temple
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					-- #if AFTER WRATH
					["coord"] = { 69.5, 40.4, STORMWIND_CITY },
					-- #else
					["coord"] = { 70.0, 55.0, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(2745, {	-- Infiltrating the Castle
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["sourceQuest"] = 350,	-- Look to an Old Friend
					-- #if AFTER WRATH
					["coord"] = { 66.0, 74.1, STORMWIND_CITY },
					-- #else
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(1920, {	-- Investigate the Blue Recluse
					["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
					["sourceQuest"] = 1919,	-- Report to Jennea
					-- #if AFTER WRATH
					["coord"] = { 49.5, 85.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 38.6, 79.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/3 Filled Containment Coffer
							["provider"] = { "i", 7292 },	-- Filled Containment Coffer
							-- #if AFTER WRATH
							["coord"] = { 51.0, 95.0, STORMWIND_CITY },
							-- #else
							["coord"] = { 39.4, 86, STORMWIND_CITY },
							-- #endif
							["cost"] = {
								{ "i", 7247, 1 },	-- Chest of Containment Coffers
								{ "i", 7308, 1 },	-- Cantation of Manifestation
							},
							["cr"] = 6492,	-- Rift Spawn
						}),
						objective(2, {	-- 0/1 Chest of Containment Coffers
							["provider"] = { "i", 7247 },	-- Chest of Containment Coffers
							-- #if AFTER WRATH
							["coord"] = { 49.6, 85.4, STORMWIND_CITY },
							-- #else
							["coord"] = { 38.7, 79.1, STORMWIND_CITY },
							-- #endif
						}),
						objective(3, {	-- 0/1 Cantation of Manifestation
							["provider"] = { "i", 7308 },	-- Cantation of Manifestation
							-- #if AFTER WRATH
							["coord"] = { 49.6, 85.4, STORMWIND_CITY },
							-- #else
							["coord"] = { 38.7, 79.1, STORMWIND_CITY },
							-- #endif
						}),
					},
				}),
				q(2746, {	-- Items of Some Consequence
					["qg"] = 7766,	-- Tyrion
					["sourceQuest"] = 2745,	-- Infiltrating the Castle
					-- #if AFTER WRATH
					["coord"] = { 73.2, 35.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 69.2, 14.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { ELWYNN_FOREST },
					["cost"] = { { "i", 4306, 3 } },	-- Silk Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						objective(2, {	-- 0/2 Clara's Fresh Apple
							["provider"] = { "i", 8683 },	-- Clara's Fresh Apple
							["coord"] = { 34, 57.2, ELWYNN_FOREST },
						}),
					},
				}),
				q(30987, {	-- Joining the Alliance
					["qg"] = 60566,	-- Aysa Cloudsinger
					["coord"] = { 74.2, 92.4, STORMWIND_CITY },
					["timeline"] = { "added 5.0.4" },
					["races"] = { PANDAREN_NEUTRAL },
				}),
				-- #if BEFORE SHADOWLANDS
				q(27271, {	-- Journey to the Wizard's Sanctum / Frazzle's Request [SL+]
					["qgs"] = {
						16749,	-- Edirah
						50690,	-- Tarelvir
						5146,	-- Nittlebur Sparkfizzle
					},
					["coords"] = {
						{ 47.2, 61.8, THE_EXODAR },	-- Edirah
						{ 37.6, 80.0, DARNASSUS },	-- Tarelvir
						{ 26.2, 6.2, IRONFORGE },	-- Nittlebur Sparkfizzle
					},
					["timeline"] = { "added 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				q(1704, {	-- Klockmort Spannerspan
					["providers"] = {
						{ "n", 5413 },	-- Furen Longbeard
						{ "i", 6926 },	-- Furen's Notes
					},
					["sourceQuest"] = 1701,	-- Fire Hardened Mail
					-- #if AFTER WRATH
					["coord"] = { 64.6, 37.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 58.0, 16.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(32665, {	-- Learn To Ride
					["description"] = "This quest is automatically granted to Pandaren upon reaching the specified level.",
					["timeline"] = { "added 5.2.0" },
					["races"] = { PANDAREN_ALLIANCE },
					["DisablePartySync"] = true,
					["isBreadcrumb"] = true,
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["lvl"] = lvlsquish(20, 20, 10),
				}),
				q(60971, {	-- Legion: Onward to Adventure in the Broken Isles
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.2, 17.3, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1" },
					["lockCriteria"] = { 1, "lvl", 50 },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(58909, {	-- License to Ride
					["qg"] = 163007,	-- Curly
					["sourceQuest"] = 58908,	-- Finding Your Way (A)
					["customCollect"] = "NPE",	-- New Player Experience
					["coord"] = { 77.3, 67.0, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- Crieve NOTE: The reward from this quest appears to be race specific, might not be a bad idea to utilize a smart SYMLINK at some point. (logic for switching content based on race is not yet a thing)
						-- Reins of the Striped Nightsaber (Night Elves)
						i(2411),	-- Black Stallion (MOUNT!)
					},
				}),
				q(32470, {	-- Light Camera Action
					["qg"] = 16908,	-- Arielle Snapflash
					["coord"] = { 61.2, 22.8, STORMWIND_CITY },
					["timeline"] = { "added 7.3.5" },
					["cost"] = { { "i", 4406, 1 } },	-- Standard Scope
					["collectible"] = false,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Iron Box
							["provider"] = { "i", 155856 },	-- Iron Box
							["coord"] = { 68.1, 66.9, STORMWIND_CITY },
						}),
						objective(3, {	-- 0/1 Russet Belt
							["provider"] = { "i", 3593 },	-- Russet Belt
							["coord"] = { 53.2, 81.8, STORMWIND_CITY },
						}),
						i(122637, {	-- S.E.L.F.I.E. Camera
							["timeline"] = { "added 6.1.0.19508" },
						}),
					},
				}),
				q(350, {	-- Look to an Old Friend
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 393,	-- Shadow of the Past
					-- #if AFTER WRATH
					["coord"] = { 78.3, 70.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(38206, {	-- Making the Rounds
					["qg"] = 96644,	-- Sky Admiral Rogers
					["sourceQuest"] = 38035,	-- A Royal Summons
					["coord"] = { 18.8, 42.6, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1941, {	-- Manaweave Robe
					["qg"] = 1309,	-- Wynne Larson <Robe Merchant>
					["sourceQuest"] = 1921,	-- Gathering Materials
					-- #if AFTER WRATH
					["coord"] = { 51.8, 83.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 41.8, 76.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["lvl"] = 15,
					["groups"] = {
						i(7509, {	-- Manaweave Robe
							-- #if AFTER 4.0.3
							["description"] = "This item is still available in the Ghostlands for Blood Elf Mages, originally only available to the Alliance in Stormwind.",
							-- #endif
							["timeline"] = { "removed 4.0.3" },	-- Item is still available in the Ghostlands for Horde, but removed from this source.
						}),
					},
				}),
				q(65047, {	-- Mark of the Nightwing Raven
					["qg"] = 44395,	-- Celestine of the Harvest
					["coord"] = { 57.6, 24.8, STORMWIND_CITY },
					["name"] = "Mark of the Nightwing Raven",	-- TODO: What is this?
					["timeline"] = { "added 9.1.5" },
					["classes"] = { DRUID },
				}),
				q(1666, {	-- Marshal Haggard
					["qg"] = 6089,	-- Harry Burlguard
					["sourceQuest"] = 1665,	-- Bartleby's Mug
					-- #if AFTER WRATH
					["coord"] = { 77.1, 53.3, STORMWIND_CITY },
					-- #else
					["coord"] = { 74, 37.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(2360, {	-- Mathias and the Defias
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					-- #if AFTER WRATH
					["coord"] = { 78.3, 70.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 20,
				}),
				q(1703, {	-- Mathiel
					["providers"] = {
						{ "n", 5413 },	-- Furen Longbeard
						{ "i", 6926 },	-- Furen's Notes
					},
					["sourceQuest"] = 1701,	-- Fire Hardened Mail
					-- #if AFTER WRATH
					["coord"] = { 64.6, 37.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 58.0, 16.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,	-- might be night elf only
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1363, {	-- Mazen's Behest (1/2)
					["qg"] = 338,	-- Mazen Mac'Nadir
					-- #if AFTER WRATH
					["coord"] = { 51.8, 74.3, STORMWIND_CITY },
					-- #else
					["coord"] = { 41.4, 64.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
				}),
				q(1364, {	-- Mazen's Behest (2/2)
					["qg"] = 5386,	-- Acolyte Dellis
					["sourceQuest"] = 1363,	-- Mazen's Behest (1/2)
					-- #if AFTER WRATH
					["coord"] = { 51.4, 73.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 40.8, 64, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
					["groups"] = {
						objective(1, {	-- 0/1 Khadgar's Essays on Dimensional Convergence
							["provider"] = { "i", 6065 },	-- Khadgar's Essays on Dimensional Convergence
							["crs"] = {
								1081,	-- Mire Lord
								14448,	-- Molt Thorn
								764,	-- Swampwalker
								765,	-- Swampwalker Elder
								766,	-- Tangled Horror
							},
						}),
						i(10747, {	-- Teacher's Sash
							["timeline"] = { "removed 4.0.3" },
						}),
						i(10748, {	-- Wanderlust Boots
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(1861, {	-- Mirror Lake
					["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
					["sourceQuest"] = 1860,	-- Speak with Jennea
					["altQuests"] = { 1880 },	-- Mage-tastic Gizmonitor
					-- #if AFTER WRATH
					["coord"] = { 49.5, 85.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 38.6, 79.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { ELWYNN_FOREST },
					["classes"] = { MAGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Mirror Lake Water Sample
							["provider"] = { "i", 7206 },	-- Mirror Lake Water Sample
							["cost"] = { { "i", 7207, 1 } },	-- Jennea's Flask
							["coord"] = { 28, 62, ELWYNN_FOREST },
						}),
						i(7508, {	-- Ley Orb
							-- #if AFTER 4.0.3
							["description"] = "This item is still available in Eversong Woods for Horde Mages.",
							-- #endif
							["timeline"] = { "removed 4.0.3" },	-- Item is still available in the Eversong Woods for Horde, but removed from this source.
						}),
						i(9513, {	-- Ley Staff
							-- #if AFTER 4.0.3
							["description"] = "This item is still available in Eversong Woods for Horde Mages.",
							-- #endif
							["timeline"] = { "removed 4.0.3" },	-- Item is still available in the Eversong Woods for Horde, but removed from this source.
						}),
					},
				}),
				q(66390, {	-- Missing Merchandise
					["qg"] = 188342,	-- Onnesa
					["coord"] = { 51.5, 70.4, STORMWIND_CITY },
					["timeline"] = { "added 9.2.5" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27038, {	-- Missing Parts
					["qg"] = 44749,	-- Supply Sergeant Graves
					["sourceQuest"] = 26975,	-- Rallying the Fleet
					["coord"] = { 33.2, 39.4, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(63927, {	-- Machine-Linker Girdle
							["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
						}),
						i(63926, {	-- Reconstructing Hauberk
							["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
						}),
						i(63925, {	-- Scavenger Bracers
							["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
						}),
					},
				}),
				q(60965, {	-- Mists of Pandaria: Onward to Adventure in Pandaria
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.2, 17.3, STORMWIND_CITY },
					["lockCriteria"] = { 1, "lvl", 50 },
					["timeline"] = { "added 9.0.1" },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(60125, {	-- Mists of Pandaria: To Pandaria!
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.3, 17.3, STORMWIND_CITY },
					["lockCriteria"] = { 1, "lvl", 50 },
					["timeline"] = { "added 7.3.5" },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(26960, {	-- My Son, the Prince
					["qg"] = 29611,	-- King Varian Wrynn <King of Stormwind>
					["coord"] = { 85.8, 31.7, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25105, {	-- Nibbler! No!
					["qg"] = 50480,	-- Isabel Jones
					["coord"] = { 63.8, 61.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				q(25155, {	-- Ogrezonians in the Mood
					["qg"] = 50480,	-- Isabel Jones
					["coord"] = { 63.8, 61.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				q(6187, {	-- Order Must Be Restored
					-- #if AFTER WRATH
					["qg"] = 29611,	-- King Varian Wrynn <King of Stormwind>
					["coord"] = { 79.8, 38.6, STORMWIND_CITY },
					-- #else
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["coord"] = { 78, 18, STORMWIND_CITY },
					-- #endif
					["sourceQuest"] = 6186,	-- The Blightcaller Cometh
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
					["groups"] = {
						objective(1, {	-- 0/1 Nathanos Blightcaller slain
							["provider"] = { "n", 11878 },	-- Nathanos Blightcaller <Champion of the Banshee Queen>
						}),
						i(16996, {	-- Gorewood Bow
							["timeline"] = { "removed 4.0.3" },
						}),
						i(16997, {	-- Stormrager
							["timeline"] = { "removed 4.0.3" },
						}),
						i(16998, {	-- Sacred Protector
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(26192, {	-- Orphans Like Cookies Too!
					["qg"] = 42288,	-- Robby Flay
					["coord"] = { 50.6, 71.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = COOKING_AWARD_GROUPS,
				}),
				q(334, {	-- Package for Thurman
					["providers"] = {
						{ "n", 1428 },	-- Rema Schneider
						{ "i", 2760 },	-- Thurman's Sewing Kit
					},
					["sourceQuest"] = 333,	-- Harlan Needs a Resupply
					-- #if AFTER LEGION
					["coord"] = { 58.0, 67.2, STORMWIND_CITY },
					-- #elseif AFTER WRATH
					["coord"] = { 58.1, 67.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 49.5, 55.3, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
				q(27044, {	-- Peasant Problems
					["qg"] = 44293,	-- Anduin Wrynn <Prince of Stormwind>
					["sourceQuests"] = {
						26975,	-- Rallying the Fleet
						26997,	-- The Usual Suspects
					},
					["coord"] = { 85.7, 31.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26153, {	-- Penny's Pumpkin Pancakes
					["qg"] = 42288,	-- Robby Flay
					["coord"] = { 50.6, 71.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = COOKING_AWARD_GROUPS,
				}),
				q(1940, {	-- Pristine Spider Silk
					["qg"] = 5694,	-- High Sorcerer Andromath
					["sourceQuest"] = 1938,	-- Ur's Treatise on Shadow Magic
					-- #if AFTER WRATH
					["coord"] = { 48.7, 87.6, STORMWIND_CITY },
					-- #else
					["coord"] = { 37.6, 81.6, STORMWIND_CITY },
					-- #endif
					["maps"] = { DUSKWOOD },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/8 Pristine Spider Silk
							["provider"] = { "i", 7267 },	-- Pristine Spider Silk
							["crs"] = {
								949,	-- Carrion Recluse
								930,	-- Black Widow Hatchling
							},
						}),
					},
				}),
				q(40661, {	-- Protect the Home Front
					["qg"] = 101004,	-- Elerion Bladedancer
					["coord"] = { 40.4, 77.8, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3.21796", "removed 7.0.5" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26975, {	-- Rallying the Fleet
					["qg"] = 29611,	-- King Varian Wrynn <King of Stormwind>
					["sourceQuest"] = 26960,	-- My Son, the Prince
					["coord"] = { 85.8, 31.7, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2281, {	-- Redridge Rendezvous
					["qg"] = 6946,	-- Renzik "The Shiv"
					["sourceQuests"] = {
						2260,	-- Erion's Behest(Darnassus)
						2298,	-- Kingly Shakedown(Ironforge)
						2300,	-- SI:7(Elwynn Forest)
					},
					["coord"] = { 75.9, 60.3, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 16,
				}),
				q(1919, {	-- Report to Jennea
					["qg"] = 7312,	-- Dink <Mage Trainer>
					["coord"] = { 26.8, 8.6, IRONFORGE },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 15,
				}),
				q(58498, {	-- Return of the Warrior King
					["qg"] = 154532,	-- Magni Bronzebeard <The Speaker>
					["sourceQuest"] = 58496,	-- An Unwelcome Advisor
					["coord"] = { 85.2, 32.5, STORMWIND_CITY },
					["timeline"] = { "added 8.3.0.33062" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26396, {	-- Return to Argus
					["qg"] = 352,	-- Dungar Longdrink
					["sourceQuest"] = 26395,	-- Dungar Longdrink
					["coord"] = { 71.0, 72.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3" },
					["races"] = { HUMAN },
				}),
				q(6285, {	-- Return to Lewis
					["providers"] = {
						{ "n", 352 },	-- Dungar Longdrink <Gryphon Master>
						{ "i", 16115 },	-- Osric's Crate
					},
					["sourceQuest"] = 6261,	-- Dungar Longdrink
					-- #if AFTER WRATH
					["coord"] = { 71.0, 72.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 66.2, 62.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["lvl"] = 10,
				}),
				q(26442, {	-- Rock Lobster
					["qg"] = 5494,	-- Catherine Leland
					["coord"] = { 55.0, 69.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.1.12984" },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = FISHING_AWARD_GROUPS,
				}),
				q(44471, {	-- Second Sight
					["qg"] = 102585,	-- Jace Darkweaver
					["sourceQuest"] = 39691,	-- The Call of War
					["coord"] = { 84.4, 33.6, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3.21796" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DEMONHUNTER },
				}),
				q(393, {	-- Shadow of the Past
					["providers"] = {
						{ "n", 1646 },	-- Baros Alexston <City Architect>
						{ "i", 8687 },	-- Sealed Description of Thredd's Visitor
					},
					["sourceQuest"] = 392,	-- The Curious Visitor
					-- #if AFTER WRATH
					["coord"] = { 57.7, 47.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 49, 30.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(2206, {	-- Snatch and Grab
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 2205,	-- Seek out SI:7
					-- #if AFTER WRATH
					["coord"] = { 78.3, 70.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Defias Shipping Schedule
							["provider"] = { "i", 7675 },	-- Defias Shipping Schedule
							["coord"] = { 48.2, 87.6, ELWYNN_FOREST },
							["cr"] = 6846,	-- Defias Dockmaster
						}),
						i(7298, {	-- Blade of Cunning
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(343, {	-- Speaking of Fortitude
					["qg"] = 1444,	-- Brother Kristoff
					-- #if AFTER WRATH
					["coord"] = { 55.0, 54.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 45.7, 38.3, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(353, {	-- Stormpike's Delivery
					["providers"] = {
						{ "n", 1416 },	-- Grimand Elmore
						{ "i", 2806 },	-- Package for Stormpike
					},
					["sourceQuest"] = 1097,	-- Elmore's Task
					-- #if AFTER WRATH
					["coord"] = { 59.7, 33.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 51.6, 12.2, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
				q(579, {	-- Stormwind Library
					["qg"] = 2504,	-- Donyal Tovald <Librarian>
					-- #if AFTER WRATH
					["coord"] = { 84.6, 24.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 71.6, 7.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["cost"] = { { "i", 3898, 1 } },	-- Library Scrip
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(3899, {	-- Legends of the Gurubashi, Volume 3
							["timeline"] = { "removed 4.0.3" },
						}),
						i(2154, {	-- The Story of Morgan Ladimore
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(50371, {	-- Summons to Stormwind
					["qg"] = 132255,	-- Master Mathias Shaw
					["coord"] = { 39.0, 62.6, STORMWIND_CITY },
					["timeline"] = { "added 7.3.5", "removed 8.0.1" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1688, {	-- Surena Caledon
					["qg"] = 6122,	-- Gakin the Darkbinder
					["sourceQuest"] = 1685,	-- Gakin's Summons (Voidwalker)
					-- #if AFTER WRATH
					["coord"] = { 39.2, 85.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 25.4, 78.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { ELWYNN_FOREST },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Surena's Choker
							["provider"] = { "i", 6810 },	-- Surena's Choker
							["coord"] = { 71.0, 80.6, ELWYNN_FOREST },
							["cr"] = 881,	-- Surena Caledon
						}),
					},
				}),
				q(30988, {	-- The Alliance Way
					["qg"] = 61796,	-- King Varian Wrynn
					["sourceQuest"] = 30987,	-- Joining the Alliance
					["coord"] = { 82.6, 28.2, STORMWIND_CITY },
					["timeline"] = { "added 5.0.4", "removed 7.0.3" },
					["races"] = { PANDAREN_ALLIANCE },
				}),
				q(434, {	-- The Attack!
					["qg"] = 7766,	-- Tyrion
					["sourceQuest"] = 2746,	-- Items of Some Consequence
					-- #if AFTER WRATH
					["coord"] = { 73.2, 35.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 69.2, 14.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Lord Gregor Lescovar slain
							["provider"] = { "n", 1754 },	-- Lord Gregor Lescovar
						}),
						objective(2, {	-- 0/1 Marzon the Silent Blade slain
							["provider"] = { "n", 1755 },	-- Marzon the Silent Blade
						}),
					},
				}),
				q(42740, {	-- The Battle for Broken Shore
					-- CRIEVE NOTE: Perhaps move this and related quests/things to the World Events section?
					-- Also find the right mapID for the scenario.
					["qg"] = 108916,	-- Knight Dameron
					["sourceQuest"] = 42782,	-- To Be Prepared
				--	["altQuests"] = { 43806 },	-- Scenario Skip (A)
					["coord"] = { 19.0, 26.1, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3" },
					["classes"] = exclude({ DEMONHUNTER }, ALL_CLASSES),
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(138767),	-- Stormwind Vanguard Battle Mace
						i(138772),	-- Stormwind Vanguard Bonegrinder
						i(138770),	-- Stormwind Vanguard Dagger
						i(138771),	-- Stormwind Vanguard Longbow
						i(138765),	-- Stormwind Vanguard Mageblade
						i(138769),	-- Stormwind Vanguard Polearm
						i(138768),	-- Stormwind Vanguard Quickblade
						i(136586),	-- Stormwind Vanguard Splitter
						i(138766),	-- Stormwind Vanguard Stave
						i(138764),	-- Stormwind Vanguard Waraxe
						i(139389, {	-- Charred Locket
							["description"] = "In order to get this you must do the scenario 'Battle for Broken Shore' and on Stage 6 search for a pile of ash titled 'Ashes of a Fallen Crusader' to retrieve the item.  You will then go to 85, 67 in Elywnn Forest located at the Eastvale Logging Camp.  From there you will go to the bedroom on the second floor to talk to Alaina.  After talking to her leave (log or swap zones) and then come back to her to retrieve the item.",
							["groups"] = {
								i(139391),	-- Alaina's Bonnet
							},
						}),
					},
				}),
				q(51795, {	-- The Battle for Lordaeron
					["qg"] = 144095,	-- Master Mathias Shaw
					["sourceQuest"] = 53370,	-- Hour of Reckoning
					["coord"] = { 22.4, 32.6, STORMWIND_CITY },
					["timeline"] = { "added 8.0.1" },
					["races"] = ALLIANCE_ONLY,
				}),
				-- #if ANYCLASSIC
				q(65603, {	-- The Binding (Incubus) [Stormwind City]
					["qg"] = 6122,	-- Gakin the Darkbinder
					["sourceQuest"] = 65602,	-- What Is Love?
					-- #if AFTER WRATH
					["coord"] = { 39.2, 85.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 25.4, 78.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Incubus slain
							["provider"] = { "n", 185335 },	-- Summoned Incubus
							["cost"] = { { "i", 190186, 1 } },	-- Wooden Figurine
						}),
						-- #if BEFORE 4.0.3
						recipe(713),	-- Summon Incubus
						-- #endif
						i(22243, {	-- Small Soul Pouch
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				-- #endif
				q(1739, {	-- The Binding (Succubus) [Stormwind City]
					["qg"] = 6122,	-- Gakin the Darkbinder
					["sourceQuest"] = 1738,	-- Heartswood
					-- #if AFTER WRATH
					["coord"] = { 39.2, 85.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 25.4, 78.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Succubus slain
							["provider"] = { "n", 5677 },	-- Summoned Succubus
							["cost"] = { { "i", 6913, 1 } },	-- Heartswood Core
						}),
						-- #if BEFORE 4.0.3
						recipe(712),	-- Summon Succubus
						-- #endif
						i(22243, {	-- Small Soul Pouch
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(1689, {	-- The Binding (Voidwalker) [Stormwind City]
					["qg"] = 6122,	-- Gakin the Darkbinder
					["sourceQuest"] = 1688,	-- Surena Caledon
					-- #if AFTER WRATH
					["coord"] = { 39.2, 85.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 25.4, 78.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Voidwalker slain
							["provider"] = { "n", 5676 },	-- Summoned Voidwalker
							["cost"] = { { "i", 6928, 1 } },	-- Bloodstone Choker
						}),
						-- #if BEFORE 4.0.3
						recipe(697),	-- Summon Voidwalker
						-- #endif
					},
				}),
				q(29439, {	-- The Call of the World-Shaman
					["qg"] = 45226,	-- Naraat the Earthspeaker
					["coord"] = { 74.4, 18.8, STORMWIND_CITY },
					["timeline"] = { "added 4.2.0" },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(39691, {	-- The Call of War
					["qg"] = 97296,	-- Archmage Khadgar
					["coord"] = { 72.4, 47.2, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3.21796" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DEMONHUNTER },
				}),
				q(392, {	-- The Curious Visitor
					["providers"] = {
						{ "n", 1719 },	-- Warden Thelwater
						{ "i", 8687 },	-- Sealed Description of Thredd's Visitor
					},
					["sourceQuest"] = 391,	-- The Stockage Riots
					-- #if AFTER WRATH
					["coord"] = { 51.5, 69.3, STORMWIND_CITY },
					-- #else
					["coord"] = { 41.2, 58, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(28826, {	-- The Eye of the Storm
					["qg"] = 45226,	-- Naraat the Earthspeaker
					["sourceQuest"] = 28825,	-- A Personal Summons
					["coord"] = { 74.4, 18.8, STORMWIND_CITY },
					["timeline"] = { "added 4.0.1.12984" },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(40517, {	-- The Fallen Lion
					["qg"] = 100395,	-- Genn Greymane
					["sourceQuest"] = 42740,	-- The Battle for Broken Shore (QuestID 43806 - Scenario Skip)
					["coord"] = { 19.8, 34.9, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(6182, {	-- The First and the Last
					-- #if AFTER WRATH
					["qg"] = 29611,	-- King Varian Wrynn <King of Stormwind>
					["coord"] = { 79.8, 38.6, STORMWIND_CITY },
					-- #else
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["coord"] = { 78, 18, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				q(394, {	-- The Head of the Beast
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["sourceQuest"] = 434,	-- The Attack!
					-- #if AFTER WRATH
					["coord"] = { 66.0, 74.1, STORMWIND_CITY },
					-- #else
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(26183, {	-- The King's Cider
					["qg"] = 42288,	-- Robby Flay
					["coord"] = { 50.6, 71.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = COOKING_AWARD_GROUPS,
				}),
				q(25157, {	-- The Latest Fashion!
					["qg"] = 50480,	-- Isabel Jones
					["coord"] = { 63.8, 61.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				q(1274, {	-- The Missing Diplomat (1/17)
					["qg"] = 4982,	-- Thomas <Altar Boy>
					-- #if AFTER WRATH
					["coord"] = { 49.6, 44.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 28.3, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1241, {	-- The Missing Diplomat (2/17)
					["providers"] = {
						{ "n", 4960 },	-- Bishop DeLavey
						{ "i", 5948 },	-- Letter to Jorgen
					},
					["sourceQuest"] = 1274,	-- The Missing Diplomat (1/17)
					-- #if AFTER WRATH
					["coord"] = { 80.3, 44.1, STORMWIND_CITY },
					-- #else
					["coord"] = { 78.4, 25.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1242, {	-- The Missing Diplomat (3/17)
					["providers"] = {
						{ "n", 4959 },	-- Jorgen
						{ "i", 5946 },	-- Sealed Note to Elling
					},
					["sourceQuest"] = 1241,	-- The Missing Diplomat (2/17)
					-- #if AFTER WRATH
					["coord"] = { 76.3, 85.1, STORMWIND_CITY },
					-- #else
					["coord"] = { 73.2, 78.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1243, {	-- The Missing Diplomat (4/17)
					["providers"] = {
						{ "n", 482 },	-- Elling Trias <Master of Cheese>
						{ "i", 5960 },	-- Sealed Note to Watcher Backus
					},
					["sourceQuest"] = 1242,	-- The Missing Diplomat (3/17)
					-- #if AFTER WRATH
					["coord"] = { 66.0, 74.1, STORMWIND_CITY },
					-- #else
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1244, {	-- The Missing Diplomat (5/17)
					["qg"] = 840,	-- Watcher Backus
					["sourceQuest"] = 1243,	-- The Missing Diplomat (4/17)
					["coord"] = { 73.21, 38.81, DUSKWOOD },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/1 Defias Docket
							["provider"] = { "i", 5947 },	-- Defias Docket
							["coord"] = { 24.0, 72.1, DUSKWOOD },
						}),
					},
				}),
				q(1245, {	-- The Missing Diplomat (6/17)
					["providers"] = {
						{ "n", 840 },	-- Watcher Backus
						{ "i", 5947 },	-- Defias Docket
					},
					["sourceQuest"] = 1244,	-- The Missing Diplomat (5/17)
					["coord"] = { 73.21, 38.81, DUSKWOOD },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1246, {	-- The Missing Diplomat (7/17)
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["sourceQuest"] = 1245,	-- The Missing Diplomat (6/17)
					-- #if AFTER WRATH
					["coord"] = { 66.0, 74.1, STORMWIND_CITY },
					-- #else
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1447, {	-- The Missing Diplomat (8/17)
					["qg"] = 4961,	-- Dashel Stonefist
					["sourceQuest"] = 1246,	-- The Missing Diplomat (7/17)
					["description"] = "Dashel Stonefist will spawn 2 level 26 adds to fight alongside him.",
					-- #if AFTER WRATH
					["coord"] = { 74.3, 59.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 70.5, 44.9, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1247, {	-- The Missing Diplomat (9/17)
					["qg"] = 4961,	-- Dashel Stonefist
					["sourceQuest"] = 1447,	-- The Missing Diplomat (8/17)
					-- #if AFTER WRATH
					["coord"] = { 74.3, 59.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 70.5, 44.9, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1248, {	-- The Missing Diplomat (10/17)
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["sourceQuest"] = 1247,	-- The Missing Diplomat (9/17)
					-- #if AFTER WRATH
					["coord"] = { 66.0, 74.1, STORMWIND_CITY },
					-- #else
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(46728, {	-- The Nation of Kul Tiras
					["qg"] = 120756,	-- Anduin Wyrnn
					["sourceQuest"] = 46727,	-- Tides of War
					["coord"] = { 85.0, 32.4, STORMWIND_CITY },
					["timeline"] = { "added 8.0.1" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(59641, {	-- The Nation of Kul Tiras
					["qg"] = 165395,	-- Anduin Wrynn
					["sourceQuest"] = 58983,	-- Tides of War
					["customCollect"] = "NPE",	-- New Player Experience
					["coord"] = { 85.8, 31.6, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27072, {	-- The Old Barracks
					["qg"] = 50049,	-- Jack Bauden <SI:7 Agent>
					["sourceQuest"] = 28807,	-- Expert Opinion
					["coord"] = { 81.2, 63.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2758, {	-- The Origins of Smithing
					["qg"] = 7798,	-- Hank the Hammer
					-- #if AFTER WRATH
					["coord"] = { 63.0, 36.4, STORMWIND_CITY },
					-- #else
					["coord"] = { 56, 16, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["requireSkill"] = BLACKSMITHING,
					["cost"] = { { "i", 6040, 6 } },	-- Golden Scale Bracers
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						i(9367, {	-- Plans: Golden Scale Gauntlets (RECIPE!)
							["timeline"] = { "removed 4.0.3" },
							-- #if BEFORE 4.0.3
							["description"] = "This item can be sold on the Neutral Auction House to Horde Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Alliance Blacksmiths.",
							-- #endif
						}),
					},
				}),
				q(543, {	-- The Perenolde Tiara
					["qg"] = 2285,	-- Count Remington Ridgewell
					-- #if AFTER CATA
					["coord"] = { 81.6, 34.1, STORMWIND_CITY },
					-- #elseif AFTER WRATH
					["coord"] = { 76.9, 47.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 74, 30, STORMWIND_CITY },
					-- #endif
					-- #if AFTER CATA
					["maps"] = { HILLSBRAD_FOOTHILLS },
					-- #else
					["maps"] = { ALTERAC_MOUNTAINS },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(30, 30, 7),
					["groups"] = {
						objective(1, {	-- 0/1 Perenolde Tiara
							["provider"] = { "i", 3684 },	-- Perenolde Tiara
							-- #if AFTER CATA
							["coord"] = { 45.0, 24.5, HILLSBRAD_FOOTHILLS },
							-- #else
							["coord"] = { 39.6, 52.8, ALTERAC_MOUNTAINS },
							-- #endif
							["cr"] = 2417,	-- Grel'borg the Miser
						}),
					},
				}),
				q(58675, {	-- The Price of Peace
					["qg"] = 162178,	-- Master Mathias Shaw
					["sourceQuest"] = 58674,	-- A Gathering of Champions
					["coord"] = { 53.2, 15.0, STORMWIND_CITY },
					["timeline"] = { "added 8.3.0" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1790, {	-- The Symbol of Life
					["qg"] = 6171,	-- Duthorian Rall
					["description"] = "This quest is repeatable, but can only be completed while you have the quest \"The Tome of Divinity\" (Quest #1786) in your quest log.",
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["repeatable"] = true,
					["lvl"] = 12,
					["groups"] = {
						i(6866, {	-- Symbol of Life
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(2998, {	-- The Tome of Divinity (1a/10)
					["qg"] = 927,	-- Brother Wilhelm
					["altQuests"] = {
						3681,	-- The Tome of Divinity (1b/10)
						1787,	-- The Tome of Divinity (8)
					},
					["coord"] = { 41, 66, ELWYNN_FOREST },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(3681, {	-- The Tome of Divinity (1b/10)
					["qg"] = 5149,	-- Brandur Ironhammer
					["altQuests"] = {
						2998, 	-- The Tome of Divinity (1a/10)
						1787,	-- The Tome of Divinity (8)
					},
					["coord"] = { 23.4, 6.2, IRONFORGE },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1641, {	-- The Tome of Divinity (2/10)
					["qg"] = 6171,	-- Duthorian Rall
					["sourceQuests"] = {
						2998,	-- The Tome of Divinity (1a/10)
						3681,	-- The Tome of Divinity (1b/10)
					},
					["altQuests"] = { 1787 },	-- The Tome of Divinity (8)
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1642, {	-- The Tome of Divinity (3/10)
					["providers"] = {
						{ "n", 6171 },	-- Duthorian Rall
						{ "i", 6775 },	-- Tome of Divinity
					},
					["sourceQuest"] = 1641,	-- The Tome of Divinity (2/10)
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1643, {	-- The Tome of Divinity (4/10)
					["qg"] = 6171,	-- Duthorian Rall
					["sourceQuest"] = 1642,	-- The Tome of Divinity (3/10)
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1644, {	-- The Tome of Divinity (5/10)
					["qg"] = 6174,	-- Stephanie Turner
					["sourceQuest"] = 1643,	-- The Tome of Divinity (4/10)
					-- #if AFTER WRATH
					["coord"] = { 63.8, 72.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 57, 61.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["cost"] = { { "i", 2589, 10 } },	-- Linen Cloth
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1780, {	-- The Tome of Divinity (6/10)
					["qg"] = 6174,	-- Stephanie Turner
					["sourceQuest"] = 1644,	-- The Tome of Divinity (5/10)
					-- #if AFTER WRATH
					["coord"] = { 63.8, 72.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 57, 61.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1781, {	-- The Tome of Divinity (7/10)
					["providers"] = {
						{ "n", 6171 },	-- Duthorian Rall
						{ "i", 6866 },	-- Symbol of Life
					},
					["sourceQuest"] = 1644,	-- The Tome of Divinity (6/10)
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1786, {	-- The Tome of Divinity (8/10)
					["providers"] = {
						{ "n", 6173 },	-- Gazin Tenorm
						{ "i", 6866 },	-- Symbol of Life
					},
					["sourceQuest"] = 1781,	-- The Tome of Divinity (7/10)
					-- #if AFTER WRATH
					["coord"] = { 49.5, 44.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 38.6, 26.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1787, {	-- The Tome of Divinity (9/10)
					["qg"] = 6172,	-- Henze Faulk
					["sourceQuest"] = 1786,	-- The Tome of Divinity (8/10)
					["coord"] = { 72.6, 51.6, ELWYNN_FOREST },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
					["groups"] = {
						objective(1, {	-- 0/1 Defias Script
							["provider"] = { "i", 6846 },	-- Defias Script
							["cr"] = 474,	-- Defias Rogue Wizard
						}),
					},
				}),
				q(1788, {	-- The Tome of Divinity (10/10)
					["qg"] = 6173,	-- Gazin Tenorm
					["sourceQuest"] = 1787,	-- The Tome of Divinity (9/10)
					-- #if AFTER WRATH
					["coord"] = { 49.5, 44.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 38.6, 26.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
					-- #if BEFORE 4.0.1
					["groups"] = {
						--recipe(7328),	-- Redemption [Rank 1]
					},
					-- #endif
				}),
				q(4485, {	-- The Tome of Nobility (Stormwind City)
					["qg"] = 5491,	-- Arthur the Faithful <Paladin Trainer>
					-- #if AFTER WRATH
					["coord"] = { 49.6, 49.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 38.7, 32.9, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 2.4.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(4486, {	-- The Tome of Nobility (Ironforge)
					["qg"] = 5149,	-- Brandur Ironhammer <Paladin Trainer>
					["coord"] = { 23.6, 6.6, IRONFORGE },
					["timeline"] = { "removed 2.4.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(1661, {	-- The Tome of Nobility
					["qg"] = 6171,	-- Duthorian Rall
					["sourceQuests"] = {
						4485,	-- The Tome of Nobility (Stormwind City)
						4486,	-- The Tome of Nobility (Ironforge)
					},
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 2.4.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 40,
					-- #if BEFORE 2.4.3
					["groups"] = {
						mount(13819),	-- Summon Warhorse
					},
					-- #endif
				}),
				q(1794, {	-- The Tome of Valor [Dwarf]
					["qg"] = 5149,	-- Brandur Ironhammer <Paladin Trainer>
					["coord"] = { 23.6, 6.4, IRONFORGE },
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { PALADIN },
					["races"] = { DWARF },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1793, {	-- The Tome of Valor [Human]
					["qg"] = 6171,	-- Duthorian Rall
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { PALADIN },
					["races"] = { HUMAN },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1649, {	-- The Tome of Valor (1/4)
					["providers"] = {
						{ "n", 6171 },	-- Duthorian Rall
						{ "i", 6776 },	-- Tome of Valor
					},
					["sourceQuests"] = {
						1794,	-- The Tome of Valor [Dwarf]
						1793,	-- The Tome of Valor [Human]
					},
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 20,
				}),
				q(1650, {	-- The Tome of Valor (2/4)
					["qg"] = 6171,	-- Duthorian Rall
					["sourceQuest"] = 1649,	-- The Tome of Valor (1/4)
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 20,
				}),
				q(1651, {	-- The Tome of Valor (3/4)
					["qg"] = 6182,	-- Daphne Stilwell
					["sourceQuest"] = 1650,	-- The Tome of Valor (2/4)
					["coord"] = { 42.4, 88.4, WESTFALL },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 20,
				}),
				q(1652, {	-- The Tome of Valor (4/4)
					["qg"] = 6171,	-- Duthorian Rall
					["sourceQuest"] = 1651,	-- The Tome of Valor (3/4)
					-- #if AFTER WRATH
					["coord"] = { 50.5, 47.5, STORMWIND_CITY },
					-- #else
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 20,
					["groups"] = {
						-- #if BEFORE 4.0.3
						recipe(5502),	-- Sense Undead
						-- #endif
						i(9607, {	-- Bastion of Stormwind
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(2607, {	-- The Touch of Zanzil (1/3)
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 2359,	-- Klaven's Tower
					-- #if AFTER WRATH
					["coord"] = { 78.3, 70.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 20,
				}),
				q(2608, {	-- The Touch of Zanzil (2/3)
					["qg"] = 7207,	-- Doc Mixilpixil
					["sourceQuest"] = 2607,	-- The Touch of Zanzil (1/3)
					-- #if AFTER WRATH
					["coord"] = { 80.1, 69.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 78.0, 59.0, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- Diagnosis Complete
							["description"] = "Type /lay to lie down to be examined.",
						}),
					},
				}),
				q(2609, {	-- The Touch of Zanzil (3/3)
					["qg"] = 7207,	-- Doc Mixilpixil
					["sourceQuest"] = 2608,	-- The Touch of Zanzil (2/3)
					-- #if AFTER WRATH
					["coord"] = { 80.1, 69.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 78.0, 59.0, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 3372, 1 },	-- Leaded Vial
						{ "i", 4371, 1 },	-- Bronze Tube
					},
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Simple Wildflowers
							["provider"] = { "i", 3421 },	-- Simple Wildflowers
							["coord"] = { 64.4, 60.8, STORMWIND_CITY },
							["crs"] = {
								1302,	-- Bernard Gump <Florist>
								1303,	-- Felicia Gump <Herbalism Supplies>
							},
						}),
						objective(4, {	-- 0/1 Spool of Light Chartreuse Silk Thread
							["provider"] = { "i", 8431 },	-- Spool of Light Chartreuse Silk Thread
							["coord"] = { 39.9, 46.3, STORMWIND_CITY },
						}),
						i(8432, {	-- Eau de Mixilpixil
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(26997, {	-- The Usual Suspects
					["qg"] = 2439,	-- Major Samuelson <Stormwind City Guard>
					["sourceQuest"] = 26977,	-- Twilight Investigation
					["coord"] = { 85.1, 31.0, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26536, {	-- Thunder Falls
					["qg"] = 5494,	-- Catherine Leland
					["coord"] = { 55.0, 69.6, STORMWIND_CITY },
					["timeline"] = { "added 4.0.1.12984" },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = FISHING_AWARD_GROUPS,
				}),
				q(46727, {	-- Tides of War
					["qgs"] = {
						142930,	-- Halford Wyrmbane
						-- #if AFTER 9.0.2
						49748,	-- Hero's Herald
						-- #endif
					},
					["coord"] = { 27.6, 21.2, STORMWIND_CITY },
					["timeline"] = { "added 8.0.1" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(42782, {	-- To Be Prepared
					["qg"] = 107934,	-- Recruiter Lee
					["sourceQuest"] = 40519,	-- The Legion Returns
					["coord"] = { 36.8, 43.1, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(138450, {	-- Signet of Stormwind
							["timeline"] = { "added 7.0.3" },
						}),
					},
				}),
				q(29102, {	-- To Fort Livingston
					["qg"] = 52654,	-- Bwemba
					["sourceQuest"] = 29100,	-- Bwemba's Spirit [A]
					["coord"] = { 25.9, 29.2, STORMWIND_CITY },
					["timeline"] = { "added 4.1.0.13682" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28827, {	-- To the Depths
					["qg"] = 45226,	-- Naraat the Earthspeaker
					["sourceQuest"] = 28826,	-- The Eye of the Storm
					["coord"] = { 74.4, 18.8, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(1449, {	-- To The Hinterlands
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					["sourceQuest"] = 1448,	-- In Search of The Temple
					-- #if AFTER WRATH
					["coord"] = { 69.5, 40.4, STORMWIND_CITY },
					-- #else
					["coord"] = { 64.3, 20.7, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(26977, {	-- Twilight Investigation
					["qg"] = 29611,	-- King Varian Wrynn <King of Stormwind>
					["sourceQuest"] = 26960,	-- My Son, the Prince
					["coord"] = { 85.8, 31.7, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28238, {	-- Twilight Shores (1/2)
					["qgs"] = {
						1750,	-- Grand Admiral Jes-Tereth
						29611,	-- King Varian Wrynn
						107574,	-- Anduin Wrynn
					},
					["sourceQuest"] = 28716,	-- Hero's Call: Twilight Highlands!
					["coord"] = { 85.6, 31.8, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28832, {	-- Twilight Shores (2/2)
					["qg"] = 44806,	-- Fargo Flintlocke
					["sourceQuest"] = 28238,	-- Twilight Shores (1/2)
					["coord"] = { 26.2, 47.2, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(47222, {	-- Two If By Sea
					["qg"] = 121754,	-- Vereesa Windrunner
					["sourceQuests"] = {
						47221,	-- The Hand of Fate
						48506,	-- The Hand of Fate
					},
					["coord"] = { 21.4, 30.4, STORMWIND_CITY },
					["timeline"] = { "added 7.3.0" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27060, {	-- Unholy Cow
					["qg"] = 44807,	-- Farmer Wollerton
					["sourceQuest"] = 27044,	-- Peasant Problems
					["coord"] = { 52.0, 5.8, STORMWIND_CITY },
					["timeline"] = { "added 4.0.3.13277", "removed 7.0.3" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1938, {	-- Ur's Treatise on Shadow Magic
					["qg"] = 5694,	-- High Sorcerer Andromath
					["sourceQuest"] = 1939,	-- High Sorcerer Andromath
					-- #if AFTER WRATH
					["coord"] = { 48.7, 87.6, STORMWIND_CITY },
					-- #else
					["coord"] = { 37.6, 81.6, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/1 Ur's Treatise on Shadow Magic
							["provider"] = { "i", 7266 },	-- Ur's Treatise on Shadow Magic
							["coord"] = { 79.0, 37.6, REDRIDGE_MOUNTAINS },
							["description"] = "Located in one of the bookshelves at the top of the tower.",
						}),
					},
				}),
				q(60969, {	-- Warlords of Draenor: Onward to Adventure in Draenor
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.3, 17.3, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1" },
					["lockCriteria"] = { 1, "lvl", 50 },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(59583, {	-- Welcome to Stormwind
					["qg"] = 154169,	-- Captain Garrick
					["sourceQuest"] = 55991,	-- An End to Beginnings
					["customCollect"] = "NPE",	-- New Player Experience
					["coord"] = { 73.6, 91.3, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["races"] = ALLIANCE_ONLY,
				}),
				-- #if ANYCLASSIC
				q(65602, {	-- What Is Love?
					["qg"] = 6122,	-- Gakin the Darkbinder
					-- #if AFTER WRATH
					["coord"] = { 39.2, 85.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 25.4, 78.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { ASHENVALE },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Wooden Figurine
							["provider"] = { "i", 190309 },	-- Wooden Figurine
							["coord"] = { 26, 22, ASHENVALE },
						}),
					},
				}),
				-- #endif
				q(58910, {	-- What's Your Specialty? (Druid)
					["qg"] = 163097,	-- Lindle Springstock
					["sourceQuest"] = 58909,	-- License to Ride
					["customCollect"] = "NPE",	-- New Player Experience
					["coord"] = { 77.4, 67.2, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
				}),
				q(59586, {	-- What's Your Specialty? (Hunter)
					["qg"] = 163097,	-- Lindle Springstock
					["sourceQuest"] = 58909,	-- License to Ride
					["customCollect"] = "NPE",	-- New Player Experience
					["coord"] = { 77.4, 67.2, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { HUNTER },
				}),
				q(59587, {	-- What's Your Specialty? (Mage)
					["qg"] = 163097,	-- Lindle Springstock
					["sourceQuest"] = 58909,	-- License to Ride
					["customCollect"] = "NPE",	-- New Player Experience
					["coord"] = { 77.4, 67.2, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
				}),
				q(59588, {	-- What's Your Specialty? (Monk)
					["qg"] = 163097,	-- Lindle Springstock
					["sourceQuest"] = 58909,	-- License to Ride
					["customCollect"] = "NPE",	-- New Player Experience
					["coord"] = { 77.4, 67.2, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MONK },
				}),
				q(59589, {	-- What's Your Specialty? (Paladin)
					["qg"] = 163097,	-- Lindle Springstock
					["sourceQuest"] = 58909,	-- License to Ride
					["customCollect"] = "NPE",	-- New Player Experience
					["coord"] = { 77.4, 67.2, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
				}),
				q(59590, {	-- What's Your Specialty? (Priest)
					["qg"] = 163097,	-- Lindle Springstock
					["sourceQuest"] = 58909,	-- License to Ride
					["customCollect"] = "NPE",	-- New Player Experience
					["coord"] = { 77.4, 67.2, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PRIEST },
				}),
				q(59591, {	-- What's Your Specialty? (Rogue)
					["qg"] = 163097,	-- Lindle Springstock
					["sourceQuest"] = 58909,	-- License to Ride
					["customCollect"] = "NPE",	-- New Player Experience
					["coord"] = { 77.4, 67.2, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
				}),
				q(59592, {	-- What's Your Specialty? (Shaman)
					["qg"] = 163097,	-- Lindle Springstock
					["sourceQuest"] = 58909,	-- License to Ride
					["customCollect"] = "NPE",	-- New Player Experience
					["coord"] = { 77.4, 67.2, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { SHAMAN },
				}),
				q(59593, {	-- What's Your Specialty? (Warlock)
					["qg"] = 163097,	-- Lindle Springstock
					["sourceQuest"] = 58909,	-- License to Ride
					["customCollect"] = "NPE",	-- New Player Experience
					["coord"] = { 77.4, 67.2, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
				}),
				q(59594, {	-- What's Your Specialty? (Warrior)
					["qg"] = 163097,	-- Lindle Springstock
					["sourceQuest"] = 58909,	-- License to Ride
					["customCollect"] = "NPE",	-- New Player Experience
					["coord"] = { 77.4, 67.2, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
				}),
				q(58502, {	-- Where the Heart Is
					["qg"] = 154532,	-- Magni Bronzebeard <The Speaker>
					["sourceQuest"] = 58498,	-- Return of the Warrior King
					["coord"] = { 87.5, 35.5, STORMWIND_CITY },
					["timeline"] = { "added 8.3.0.33062" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(332, {	-- Wine Shop Advert
					["providers"] = {
						{ "n", 1432 },	-- Renato Gallina
						{ "i", 2722 },	-- Wine Ticket
					},
					-- #if BEFORE CATA
					["sourceQuest"] = 61,	-- Shipment to Stormwind
					-- #endif
					-- #if AFTER LEGION
					["coord"] = { 63.8, 73.4, STORMWIND_CITY },
					-- #elseif AFTER WRATH
					["coord"] = { 63.8, 73.6, STORMWIND_CITY },
					-- #else
					["coord"] = { 57.0, 63.4, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2723),	-- Bottle of Dalaran Noir
					},
				}),
				q(49981, {	-- Witness to the Wound
					["qg"] = 132255,	-- Master Mathias Shaw
					["sourceQuest"] = 49976,	-- Gifts of the Fallen
					["coord"] = { 39.0, 62.6, STORMWIND_CITY },
					["timeline"] = { "added 7.3.5", "removed 8.0.1" },
					["races"] = ALLIANCE_ONLY,
				}),
				q(60962, {	-- Wrath of the Lich King: Onward to Adventure in Northrend
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["sourceQuest"] = 60096,	-- Wrath of the Lich King: To Northrend!
					["coord"] = { 56.2, 17.3, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1" },
					["lockCriteria"] = { 1, "lvl", 50 },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(60096, {	-- Wrath of the Lich King: To Northrend!
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.3, 17.3, STORMWIND_CITY },
					["timeline"] = { "added 7.3.5" },
					["lockCriteria"] = { 1, "lvl", 50 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(397, {	-- You Have Served Us Well
					["qg"] = 1435,	-- Zardeth of the Black Claw
					["sourceQuest"] = 336,	-- A Noble Brew (2/2)
					-- #if AFTER WRATH
					["coord"] = { 40.1, 85.3, STORMWIND_CITY },
					-- #else
					["coord"] = { 26.4, 78.4, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
					["lvl"] = 25,
					["groups"] = {
						i(3556, {	-- Dread Mage Hat
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
			}),
			n(RARES, {
				n(130828, {	-- Gordon MacKellar
					["coord"] = { 43.0, 78.0, STORMWIND_CITY },
					["timeline"] = { "added 7.3.5.25692" },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(134831, {	-- Doomsayer's Robes (TOY!)
							["timeline"] = { "added 7.0.3.22248" },
						}),
					},
				}),
				n(3581, {  -- Sewer Beast
					-- #if AFTER CATA
					["coords"] = {
						{ 48.4, 61.8, STORMWIND_CITY },
						{ 54.6, 65.6, STORMWIND_CITY },
						{ 56.0, 72.8, STORMWIND_CITY },
						{ 58.4, 79.2, STORMWIND_CITY },
						{ 58.4, 42.0, STORMWIND_CITY },
						{ 62.8, 51.8, STORMWIND_CITY },
						{ 71.0, 48.8, STORMWIND_CITY },
						{ 67.0, 55.0, STORMWIND_CITY },
						{ 66.0, 61.2, STORMWIND_CITY },
						{ 68.8, 64.2, STORMWIND_CITY },
						{ 70.6, 68.0, STORMWIND_CITY },
					},
					-- #else
					["coords"] = {
						{ 49.8, 22.6, STORMWIND_CITY },
						{ 53.8, 30.6, STORMWIND_CITY },
						{ 66.8, 32.2, STORMWIND_CITY },
						{ 62.6, 38.0, STORMWIND_CITY },
						{ 66.6, 57.0, STORMWIND_CITY },
						{ 62.4, 50.2, STORMWIND_CITY },
						{ 35.2, 42.4, STORMWIND_CITY },
						{ 38.6, 47.4, STORMWIND_CITY },
						{ 31.4, 64.4, STORMWIND_CITY },
						{ 34.2, 60.2, STORMWIND_CITY },
						{ 50.0, 69.6, STORMWIND_CITY },
						{ 47.2, 61.6, STORMWIND_CITY },
					},
					-- #endif
				}),
				n(112958, {	-- Soulare of Andorhal
					["description"] = "Emote |cFFFFFFFF/tired|r at him to get the toy.  Horde players can do this, too!",
					["coord"] = { 38.2, 64.6, STORMWIND_CITY },
					["timeline"] = { "added 7.0.3.22290" },
					["groups"] = {
						i(117573, {	-- Wayfarer's Bonfire (TOY!)
							["timeline"] = { "added 6.0.1.18663" },
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(1347, {	-- Alexandra Bolero <Tailoring Supplies>
					["coord"] = { 43.3, 74.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6274, {	-- Pattern: Blue Overalls
							["isLimited"] = true,
						}),
						i(10325, {	-- Pattern: White Wedding Dress
							["isLimited"] = true,
						}),
					},
				}),
				n(5494, {	-- Catherine Leland <Fishing Supplier>
					["coord"] = { 45.8, 58.5, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6330),	-- Recipe: Bristle Whisker Catfish
						i(6368),	-- Recipe: Rainbow Fin Albacore
					},
				}),
				n(1307, {	-- Charys Yserian <Arcane Trinkets Vendor>
					["coord"] = { 32.4, 79.9, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4824, {	-- Blurred Axe
							["isLimited"] = true,
						}),
						i(4825, {	-- Callous Axe
							["isLimited"] = true,
						}),
						i(4826, {	-- Marauder Axe
							["isLimited"] = true,
						}),
						i(4827, {	-- Wizard's Belt
							["isLimited"] = true,
						}),
						i(4828, {	-- Nightwind Belt
							["isLimited"] = true,
						}),
						i(4829, {	-- Dreamer's Belt
							["isLimited"] = true,
						}),
					},
				}),
				n(1304, {	-- Darian Singh <Fireworks Vendor>
					["coord"] = { 29.6, 67.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(18649, {	-- Schematic: Blue Firework
							["isLimited"] = true,
						}),
					},
				}),
				n(1286, {	-- Edna Mullby <Trade Supplies>
					["coord"] = { 58.2, 60.5, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(20856, {	-- Design: Heavy Golden Necklace of Battle
							["isLimited"] = true,
						}),
					},
				}),
				n(5483, {	-- Erika Tate <Cooking Supplier>
					["coord"] = { 76.0, 36.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight
						i(21099),	-- Recipe: Smoked Sagefish
					},
				}),
				n(44245, {	-- Faldren Tillsdale
					["coord"] = { 76.1, 66.8, STORMWIND_CITY },
					["timeline"] = { "added 4.0.1.12984" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = TIER_THIRTEEN_GROUPS,
				}),
				n(1303, {	-- Felicia Gump <Herbalism Supplier>
					["coord"] = { 64.2, 60.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2665),	-- Stormwind Seasoning Herbs
					},
				}),
				n(1298, {	-- Frederick Stover <Bow & Arrow Merchant>
					["coord"] = { 50.3, 57.7, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11303, {	-- Fine Shortbow
							["isLimited"] = true,
						}),
						i(11307, {	-- Massive Longbow
							["isLimited"] = true,
						}),
						i(11306, {	-- Sturdy Recurve
							["isLimited"] = true,
						}),
					},
				}),
				n(1318, {	-- Jessara Cordell <Enchanting Supplies>
					["coord"] = { 43.0, 64.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if BEFORE CATA
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						-- #endif
						-- #if NOT CLASSIC
						i(20753),	-- Formula: Lesser Wizard Oil
						i(20752),	-- Formula: Minor Mana Oil
						i(20758),	-- Formula: Minor Wizard Oil
						-- #endif
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
				n(5512, {	-- Kaita Deepforge <Blacksmithing Supplies>
					["coord"] = { 56.3, 17.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12162, {	-- Plans: Hardened Iron Shortsword
							["isLimited"] = true,
						}),
					},
				}),
				n(340, {	-- Kendor Kabonka <Master of Cooking Recipes>
					["coord"] = { 74.6, 36.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(728),		-- Recipe: Westfall Stew
						i(2697),	-- Recipe: Goretusk Liver Pie
						i(2698),	-- Recipe: Cooked Crab Claw
						i(2699),	-- Recipe: Redridge Goulash
						i(2700),	-- Recipe: Succulent Pork Ribs
						i(2701),	-- Recipe: Seasoned Wolf Kabob
						i(2889),	-- Recipe: Beer Basted Boar Ribs
						i(3678),	-- Recipe: Crocolisk Steak
						i(3679),	-- Recipe: Blood Sausage
						i(3680),	-- Recipe: Murloc Fin Soup
						i(3681),	-- Recipe: Crocolisk Gumbo
						i(3682),	-- Recipe: Curiously Tasty Omelet
						i(3683),	-- Recipe: Gooey Spider Cake
					},
				}),
				n(8666, {	-- Lil Timmy <Boy with kittens>
					["coord"] = { 64.0, 38.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8489, {	-- Cat Carrier 'White Kitten'
							["isLimited"] = true,
						}),
					},
				}),
				n(1313, {	-- Maria Lumere <Alchemy Supplies>
					["coord"] = { 46.6, 79.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(9301, {	-- Recipe: Elixir of Shadow Power
							["isLimited"] = true,
						}),
					},
				}),
				n(28347, {	-- Miles Sidney <Poison Supplies>
					["coord"] = { 74.2, 58.0, STORMWIND_CITY },
					["timeline"] = { "added 3.0.1.8634" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(38579, {	-- Venomous Tome
							["timeline"] = { "created 2.4.2", "added 3.0.1.8634" },
						}),
					},
				}),
				n(277, {	-- Roberto Pupellyverbos <Merlot Connoisseur>
					["coord"] = { 52.0, 67.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(1941),	-- Cask of Merlot
					},
				}),
			}),
		},
	}),
}));

-- #if AFTER 8.0.1.27291
root("HiddenQuestTriggers", {
	m(EASTERN_KINGDOMS, {
		m(STORMWIND_CITY, {
			q(53645),	-- triggered during 'Molten Core' (53342) when porting to Molten Core
			q(59255),	-- completed when turning in 'Fame Waits for Gnome One' (58708)
		}),
	}),
});
-- #endif

root("NeverImplemented", bubbleDown({ ["u"] = NEVER_IMPLEMENTED }, {
	-- #if BEFORE 3.0.1.8634
	i(38579, {	-- Venomous Tome
		["timeline"] = { "created 2.4.2", "added 3.0.1.8634" },
	}),
	-- #endif
	n(QUESTS, {
		q(60362, {	-- Blank
			["timeline"] = { "created 9.0.1.36230"},
		}),
		q(14446, {	-- Cataclysm!
			["qg"] = 36674,	-- Nambria
			["coord"] = { 41.4, 47.6, STORMWIND_CITY },
			["timeline"] = { "created 4.0.1"},
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
		}),
		q(57766, {	-- War with the Horde
			["timeline"] = { "created 9.0.1.36492"},
		}),
	}),
}));