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
root("Zones", m(KALIMDOR, {
	m(THUNDER_BLUFF, {
		["lore"] = "Thunder Bluff is the Tauren capital city located in the northern part of the region of Mulgore. The whole of the city is built on bluffs several hundred feet above the surrounding landscape, and is accessible by elevators on the southwestern and northeastern sides.",
		["isRaid"] = true,
		["groups"] = {
			n(FACTIONS, {
				faction(81, {	-- Thunder Bluff
					["icon"] = asset("Achievement_Character_Tauren_Male"),
					-- #if BEFORE CATA
					["OnTooltip"] = OnTooltipForCityFactionReputation,
					-- #endif
					["races"] = HORDE_ONLY,
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(22, {	-- Thunder Bluff, Mulgore
					["cr"] = 2995,	-- Tal <Wind Rider Master>
					["coord"] = { 46.8, 50.0, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(7822, {	-- A Donation of Mageweave
					["qg"] = 14728,	-- Rumstag Proudstrider
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7823, {	-- A Donation of Runecloth
					["qg"] = 14728,	-- Rumstag Proudstrider
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(7821, {	-- A Donation of Silk
					["qg"] = 14728,	-- Rumstag Proudstrider
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(7820, {	-- A Donation of Wool
					["qg"] = 14728,	-- Rumstag Proudstrider
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(7825, {	-- Additional Runecloth [Thunder Bluff]
					["qg"] = 14728,	-- Rumstag Proudstrider
					["sourceQuest"] = 7823,	-- A Donation of Runecloth
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["maxReputation"] = { 81, EXALTED },	-- Thunder Bluff, Exalted.
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(3762, {	-- Assisting Arch Druid Runetotem (Thunder Bluff)
					["qg"] = 6746,	-- Innkeeper Pala
					["altQuests"] = {
						936,	-- Assisting Arch Druid Runetotem (Orgrimmar)
						3784, 	-- Assisting Arch Druid Runetotem (Undercity)
					},
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
				}),
				q(1845, {	-- Brutal Helm
					["qg"] = 6410,	-- Orm Stonehoof
					["sourceQuest"] = 1844,	-- Chimaeric Horn
					["coord"] = { 39, 55.8, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["groups"] = {
						i(7130),	-- Brutal Helm
					},
				}),
				q(1844, {	-- Chimaeric Horn
					["qg"] = 6410,	-- Orm Stonehoof
					["sourceQuest"] = 1840,	-- Orm Stonehoof and the Brutal Helm
					["coord"] = { 39, 55.8, THUNDER_BLUFF },
					["maps"] = { STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 6840, 1 },	-- Galvanized Horn
					},
					["lvl"] = 20,
				}),
				q(1064, {	-- Forsaken Aid
					["qg"] = 4046,	-- Magatha Grimtotem
					["sourceQuest"] = 1063,	-- The Elder Crone
					["coord"] = { 69.85, 30.91, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
				}),
				q(1136, {	-- Frostmaw
					["qg"] = 3441,	-- Melor Stonehoof
					["coord"] = { 61.52, 80.88, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
					["groups"] = {
						i(6720),	-- Spirit Hunter Headdress
						i(5810),	-- Fresh Carcass
					},
				}),
				q(768, {	-- Gathering Leather
					["qg"] = 3050,	-- Veren Tallstrider
					["requireSkill"] = SKINNING,
					["coord"] = { 44.0, 44.6, THUNDER_BLUFF },
					["cost"] = {
						{ "i", 2318, 12 },	-- Light Leather
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
					["groups"] = {
						i(5936),	-- Animal Skin Belt
						i(4962),	-- Double-layered Gloves
					},
				}),
				q(1130, {	-- Melor Sends Word
					["lvl"] = 20,
					["races"] = HORDE_ONLY,
					["qg"] = 3387,	-- Jorn Skyseer
					["isBreadcrumb"] = true,
				}),
				q(3786, {	-- Morrowgrain Research
					["lvl"] = 47,
					["races"] = HORDE_ONLY,
					["qg"] = 9087,	-- Bashana Runetotem
					["groups"] = {
						i(11887),	-- Cenarion Circle Cache
					},
				}),
				q(3782, {	-- Morrowgrain Research
					["lvl"] = 47,
					["races"] = HORDE_ONLY,
					["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
					["groups"] = {
						i(11022),	-- Packet of Tharlendris Seeds
					},
				}),
				q(3804, {	-- Morrowgrain to Thunder Bluff
					["lvl"] = 47,
					["races"] = HORDE_ONLY,
					["qg"] = 9087,	-- Bashana Runetotem
					["repeatable"] = true,
					["groups"] = {
						i(11887),	-- Cenarion Circle Cache
					},
				}),
				q(744, {	-- Preparation for Ceremony
					["lvl"] = 7,
					["races"] = HORDE_ONLY,
					["qg"] = 2987,	-- Eyahn Eagletalon
					["groups"] = {
						i(4968),	-- Bound Harness
						i(4967),	-- Tribal Warrior's Shield
					},
				}),
				q(1959, {	-- Report to Anastasia
					["qg"] = 3049,	-- Thurston Xane <Mage Trainer>
					["coord"] = { 25, 20.6, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 15,
				}),
				q(860, {	-- Sergra Darkthorn
					["qg"] = 3441,	-- Melor Stonehoof
					["sourceQuest"] = 861,	-- The Hunter's Way
					["coord"] = { 61.52, 80.91, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(1131, {	-- Steelsnap
					["qg"] = 3441,	-- Melor Stonehoof
					["coord"] = { 61.51, 80.88, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(742, {	-- The Ashenvale Hunt
					["qg"] = 10881,	-- Bluff Runner Windstrider
					["coord"] = { 41.4, 54.2, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["altQuests"] = {
						6383,	-- The Ashenvale Hunt
					},
					["lvl"] = 20,
				}),
				q(1086, {	-- The Flying Machine Airport
					["qg"] = 3419,	-- Apothecary Zamah
					["sourceQuest"] = 1067,	-- Return to Thunder Bluff
					["coord"] = { 22.85, 20.90, THUNDER_BLUFF },
					["maps"] = { STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- Place the Toxic Fogger
							["provider"] = { "i", 5638 },	-- Toxic Fogger
							["coord"] = { 66, 45, STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(1195, {	-- The Sacred Flame
					["qg"] = 4721,	-- Zangen Stonehoof
					["coord"] = { 54.97, 51.32, THUNDER_BLUFF },
					["maps"] = { ASHENVALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5868, 1 },	-- Filled Etched Phial
					},
					["lvl"] = 20,
				}),
				q(1196, {	-- The Sacred Flame
					["qg"] = 4721,	-- Zangen Stonehoof
					["sourceQuest"] = 1195,	-- The Sacred Flame
					["coord"] = { 54.97, 51.32, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5868, 1 },	-- Filled Etched Phial
					},
					["lvl"] = 20,
				}),
				q(1197, {	-- The Sacred Flame
					["qg"] = 4722,	-- Rau Cliffrunner
					["coord"] = { 46.13, 51.69, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5868, 1 },	-- Filled Etched Phial
						{ "i", 5869, 1 },	-- Cloven Hoof
					},
					["lvl"] = 20,
					["groups"] = {
						i(6739),	-- Cliffrunner's Aim
						i(6740),	-- Azure Sash
					},
				}),
				q(3761, {	-- Un'Goro Soil
					["lvl"] = 47,
					["races"] = HORDE_ONLY,
					["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
				}),
				q(264, {	-- Until Death Do Us Part
					["coord"] = { 28.19, 25.31, THUNDER_BLUFF },
					["qg"] = 5543,	-- Clarice Foster
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
			}),
			n(VENDORS, {
				n(3019, {	-- Delgo Ragetotem <Axe Merchant>
					["coord"] = { 53.8, 57.2, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12249),	-- Merciless Axe
					},
				}),
				n(8401, {	-- Halpa <Prairie Dog Vendor>
					["coord"] = { 62.2, 58.6, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(10394),	-- Prairie Dog Whistle
					},
				}),
				n(3015, {	-- Kuna Thunderhorn <Bowyer & Fletching Goods>
					["coord"] = { 46.8, 45.8, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11303),	-- Fine Shortbow
						i(11306),	-- Sturdy Recurve
						i(11307),	-- Massive Longbow
					},
				}),
				n(3005, {	-- Mahu <Leatherworking & Tailoring Supplies>
					["coord"] = { 43.8, 44.6, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(10325),	-- Pattern: White Wedding Dress
						i(10311),	-- Pattern: Orange Martial Shirt
						i(5772),	-- Pattern: Red Woolen Bag
						i(5771),	-- Pattern: Red Linen Bag
					},
				}),
				n(3027, {	-- Naal Mistrunner <Cooking Supplier>
					["coord"] = { 51.6, 53.4, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6328),	-- Recipe: Longjaw Mud Snapper
						i(6330),	-- Recipe: Bristle Whisker Catfish
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
				n(3012, {	-- Nata Dawnstrider <Enchanting Supplies>
					["coord"] = { 45.2, 40.0, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- #if BEFORE CATA
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						-- #endif
						i(6349),	-- Formula: Enchant 2H Weapon - Lesser Intellect
						i(6377),	-- Formula: Enchant Boots - Minor Agility
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
				n(8363, {	-- Shadi Mistrunner <Trade Supplies>
					["coord"] = { 40.6, 64.0, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- #if AFTER TBC
						i(21948, {	-- Design: Opal Necklace of Impact
							["isLimited"] = true,
						}),
						-- #endif
					},
				}),
				n(3029, {	-- Sewa Mistrunner <Fishing Supplier>
					["coord"] = { 55.8, 47.6, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6330),	-- Recipe: Bristle Whisker Catfish
					},
				}),
			}),
		},
	}),
}));