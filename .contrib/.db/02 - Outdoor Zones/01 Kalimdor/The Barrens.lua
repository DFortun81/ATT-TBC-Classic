---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local OnTooltipForRatchet = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
		if reputation < 0 then
			local repPerKill = isHuman and 5.5 or 5;
			local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(84000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Pirates near Ratchet", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			
			local repPerKill = isHuman and 2.75 or 2.5;
			local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(84000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Pirates in Tanaris", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		else
			if reputation < 20999 then
				local repPerKill = isHuman and 5.5 or 5;
				local x, n = math.ceil((20999 - t.reputation) / repPerKill), math.ceil(20999 / repPerKill);
				GameTooltip:AddDoubleLine("Kill Pirates near Ratchet (To 11999 Honored)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			end
			
			local repPerKill = isHuman and 2.75 or 2.5;
			local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(42000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Pirates in Tanaris", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		end
	end
end]];
root("Zones", m(KALIMDOR, {
	m(THE_BARRENS, {
		["lore"] = "The Barrens is a vast, arid savannah. Dust devils swirl across the dry land and canyons cut the earth. Despite its inhospitable nature, numerous trade routes, including the major Gold Road, cross the Barrens. Centaur raiding parties are a constant threat, as are lions and thunder lizards. The orcs and tauren drove the quilboar tribes out of their lands, and the creatures now lair in the Barrens.\n\nIronforge dwarves have discovered a great Titan ruin in this region, and an enormous dig site and settlement has sprung up around it. Called Bael Modan, this fortified city is a common stop for the caravans that trundle across the dusty landscape. The goblin city of Ratchet, full of clanging coins, shining lights and debauchery, sprawls on the Barrens' eastern coast.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(750, {	-- Explore The Barrens
					-- #if BEFORE WRATH
					["description"] = "Explore The Barrens, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["100:165:564:52"] = 379,	-- Far Watch Post
				["115:110:507:294"] = 1697,	-- Raptor Grounds
				["120:110:555:0"] = 381,	-- Boulder Lode Mine
				["120:125:384:115"] = 386,	-- The Forgotten Pools
				["125:115:492:63"] = 1704,	-- Grol'dom Farm
				["125:125:556:189"] = 392,	-- Ratchet
				["125:165:442:298"] = 1698,	-- Bramblescar
				["128:100:412:0"] = 1703,	-- The Mor'shan Rampart
				["128:105:419:63"] = 384,	-- Dreadmist Peak
				["128:128:306:130"] = 1702,	-- Honor's Stand
				["128:128:341:537"] = 1717,	-- Razorfen Kraul
				["128:128:431:479"] = 359,	-- Bael Modan
				["140:128:498:119"] = 1699,	-- Thorn Hill
				["145:125:365:350"] = 378,	-- Camp Taurajo
				["150:120:527:307"] = 385,	-- Northwatch Hold
				["155:115:407:553"] = 1316,	-- Razorfen Downs
				["155:128:335:462"] = 1701,	-- Blackthorn Ridge
				["155:128:481:211"] = 388,	-- The Stagnant Oasis
				["155:155:431:118"] = 380,	-- The Crossroads
				["170:120:456:0"] = 382,	-- The Sludge Fen
				["175:185:365:177"] = 387,	-- Lushwater Oasis
				["200:145:317:29"] = 383,	-- The Dry Hills
				["200:185:340:234"] = 1700,	-- Agama'gor
				["210:150:355:402"] = 390,	-- Field of Giants
				["95:100:581:247"] = 391,	-- The Merchant Coast
				--[[
				[401] = 16,                              -- The Tidus Stair
				[458] = 17,                              -- Gold Road
				[720] = 18,                              -- Fray Island
				[815] = 19,                              -- Southfury River
				[1156] = 21,                             -- Southern Barrens
				[1157] = 22,                             -- Southern Gold Road
				[1599] = 26,                             -- Mor'shan Base Camp
				[1718] = 40,                             -- The Great Lift
				[2138] = 41,                             -- Dreadmist Den
				[2157] = 42,                             -- Bael'dun Keep
				[2319] = 43,                             -- The Great Sea
				[2757] = 44,                             -- Shrine of the Fallen Warrior
				]]--
			})),
			-- #endif
			n(FACTIONS, {
				faction(470, { 	-- Ratchet
					["icon"] = icon("INV_Misc_Coin_01"),
					["OnTooltip"] = OnTooltipForRatchet,
					["maps"] = { TANARIS },
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(77, {	-- Camp Taurajo, The Barrens
					["cr"] = 10378,	-- Omusa Thunderhorn <Wind Rider Master>
					["coord"] = { 44.4, 59.0, THE_BARRENS },
					["races"] = HORDE_ONLY,
				}),
				fp(25, {	-- Crossroads, The Barrens
					["cr"] = 3615,	-- Devrak <Wind Rider Master>
					["coord"] = { 51.4, 30.2, THE_BARRENS },
					["races"] = HORDE_ONLY,
				}),
				fp(80, {	-- Ratchet, The Barrens
					["cr"] = 16227,	-- Bragok <Flight Master>
					["coord"] = { 63.0, 37.0, THE_BARRENS },
				}),
			}),
			n(QUESTS, {
				q(6361, {	-- A Bundle of Hides
					["qg"] = 3079,	-- Varg Windwhisper
					["coord"] = { 45.82, 58.69, MULGORE },
					["races"] = { TAUREN },
					["lvl"] = 10,
				}),
				q(1153, {	-- A New Ore Sample
					["qg"] = 3433,	-- Tatternack Steelforge
					["coord"] = { 45.10, 57.69, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						i(6741),	-- Orcish War Sword
					},
				}),
				q(5043, {	-- Agamaggan's Agility
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["repeatable"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(5042, {	-- Agamaggan's Strength
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["repeatable"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(880, {	-- Altered Beings
					["qg"] = 3448,	-- Tonga Runetotem
					["sourceQuest"] = 877,	-- The Stagnant Oasis
					["coord"] = { 52.26, 31.92, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(853, {	-- Apothecary Zamah
					["qg"] = 3390,	-- Apothecary Helbrim
					["sourceQuest"] = 848,	-- Fungal Spores
					["coord"] = { 51.44, 30.15, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(2458),	-- Elixir of Minor Fortitude
						i(2457),	-- Elixir of Minor Agility
						i(2456),	-- Minor Rejuvenation Potion
						i(2459),	-- Swiftness Potion
						i(5340),	-- Cauldron Stirrer
					},
				}),
				q(879, {	-- Betrayal from Within
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				}),
				q(906, {	-- Betrayal from Within
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 879,	-- Betrayal from Within
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						i(5316),	-- Barkshell Tunic
						i(5317),	-- Dry Moss Tunic
					},
				}),
				q(5052, {	-- Blood Shards of Agamaggan
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 878,	-- Tribes at War
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(1838, {	-- Brutal Armor
					["providers"] = {
						{ "n", 5878 },	-- Thun'grim Firegaze
						{ "i", 7587 },	-- Thun'grim's Instructions
					},
					["sourceQuest"] = 1825,	-- Speak with Thun'grim
					["coord"] = { 57.23, 30.34, THE_BARRENS },
					["maps"] = { HILLSBRAD_FOOTHILLS, RAZORFEN_KRAUL, STONETALON_MOUNTAINS },
					["cost"] = { { "i", 3575, 10 } },	-- Iron Bar
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/15 Smoky Iron Ingot
							["provider"] = { "i", 7126 },	-- Smoky Iron Ingot
							["crs"] = {
								3999,	-- Windshear Digger
								4003,	-- Windshear Geomancer
								4004,	-- Windshear Overlord
								4002,	-- Windshear Stonecutter
								4001,	-- Windshear Tunnel Rat
								3998,	-- Windshear Vermin
							},
						}),
						objective(2, {	-- 0/10 Powdered Azurite
							["provider"] = { "i", 7127 },	-- Powdered Azurite
							["cr"] = 2269,	-- Hillsbrad Miner
						}),
						objective(4, {	-- 0/1 Vial of Phlogiston
							["provider"] = { "i", 6841 },	-- Vial of Phlogiston
							["cr"] = 6168,	-- Roogug
						}),
					},
				}),
				q(1848, {	-- Brutal Hauberk
					["qg"] = 5878,	-- Thun'grim Firegaze
					["sourceQuest"] = 1838,	-- Brutal Armor
					["coord"] = { 57.23, 30.34, THE_BARRENS },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(7133),	-- Brutal Hauberk
					},
				}),
				q(1522, {	-- Call of Fire (1/5) [Orgrimmar]
					["qg"] = 5892,	-- Searn Firewarder
					["coord"] = { 37.8, 37.4, ORGRIMMAR },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(1523, {	-- Call of Fire (1/5) [Thunder Bluff]
					["qg"] = 5906,	-- Xanis Flameweaver
					["coord"] = { 25.2, 21, THUNDER_BLUFF },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(2983, {	-- Call of Fire (1/5) [Durotar]
					["qg"] = 3173,	-- Swart <Shaman Trainer>
					["coord"] = { 54.4, 42.6, DUROTAR },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(2984, {	-- Call of Fire (1/5) [Mulgore]
					["qg"] = 3066,	-- Narm Skychaser <Shaman Trainer>
					["coord"] = { 48.4, 59.2, MULGORE },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(1524, {	-- Call of Fire (2/5)
					["qg"] = 5907,	-- Kranal Fiss
					["sourceQuests"] = {
						1522,	-- Call of Fire (1/5) [Orgrimmar]
						1523,	-- Call of Fire (1/5) [Thunder Bluff]
						2983,	-- Call of Fire (1/5) [Durotar]
						2984,	-- Call of Fire (1/5) [Mulgore]
					},
					["coord"] = { 55.8, 20, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["cost"] = {
						{ "i", 6653, 1 },	-- Torch of the Dormant Flame
					},
					["lvl"] = 10,
				}),
				q(1525, {	-- Call of Fire (3/5)
					["qg"] = 5900,	-- Telf Joolam
					["sourceQuest"] = 1524,	-- Call of Fire (2/5)
					["coord"] = { 38.6, 58.8, DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["cost"] = {
						{ "i", 5026, 1 },	-- Fire Tar
						{ "i", 6652, 1 },	-- Reagent Pouch
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 6636,	-- Fire Sapta
							["questID"] = 1526,	-- Call of Fire (4/5)
						},
					},
				}),
				q(1526, {	-- Call of Fire (4/5)
					["qg"] = 5900,	-- Telf Joolam
					["sourceQuest"] = 1525,	-- Call of Fire (3/5)
					["coord"] = { 38.6, 58.8, DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["cost"] = {
						{ "i", 6655, 1 },	-- Glowing Ember
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 6636,	-- Fire Sapta
							["cr"] = 5893,	-- Minor Manifestation of Fire
							["coord"] = { 38.6, 58.2, DUROTAR },
							["groups"] = {
								{
									["itemID"] = 6655,	-- Glowing Ember
									["questID"] = 1526,	-- Call of Fire (4/5)
								},
							},
						},
					},
				}),
				q(1527, {	-- Call of Fire (5/5)
					["provider"] = { "o", 61934 },	-- Brazier of the Dormant Flame
					["sourceQuest"] = 1526,	-- Call of Fire (4/5)
					["coord"] = { 38.9, 58.2, DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["cost"] = {
						{ "i", 6654, 1 },	-- Torch of the Eternal Flame
					},
					["lvl"] = 10,
					["groups"] = {
						recipe(3599),	-- Searing Totem
						i(5176, {	-- Fire Totem
							["description"] = "You must keep this in your bags forever.",
						}),
					},
				}),
				q(2985, {	-- Call of Water (1/9) [Durotar]
					["qg"] = 3173,	-- Swart <Shaman Trainer>
					["coord"] = { 54.4, 42.6, DUROTAR },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1528, {	-- Call of Water (1/9) [Orgrimmar]
					["qg"] = 5892,	-- Searn Firewarder
					["coord"] = { 38.0, 37.7, ORGRIMMAR },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1529, {	-- Call of Water (1/9) [Thunder Bluff]
					["qg"] = 5906,	-- Xanis Flameweaver
					["coord"] = { 25.2, 20.5, THUNDER_BLUFF },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1530, {	-- Call of Water (2/9)
					["qg"] = 5901,	-- Islen Waterseer
					["sourceQuests"] = {
						2985,	-- Call of Water (1/9) [Durotar]
						1528,	-- Call of Water (1/9) [Orgrimmar]
						1529,	-- Call of Water (1/9) [Thunder Bluff]
					},
					["coord"] = { 65.8, 43.8, THE_BARRENS },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(1535, {	-- Call of Water (3/9)
					["qg"] = 5899,	-- Brine
					["sourceQuest"] = 1530,	-- Call of Water (2/9)
					["coord"] = { 43.4, 77.4, THE_BARRENS },
					["cost"] = {
						{ "i", 7769, 1 },	-- Filled Brown Waterskin
					},
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(7766, {	-- Empty Brown Waterskin
							["coord"] = { 44, 77, THE_BARRENS },
							["groups"] = {
								i(7766),	-- Filled Brown Waterskin
							},
						}),
					},
				}),
				q(1536, {	-- Call of Water (4/9)
					["qg"] = 5899,	-- Brine
					["sourceQuest"] = 1535,	-- Call of Water (3/9)
					["coord"] = { 43.4, 77.4, THE_BARRENS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["cost"] = {
						{ "i", 7771, 1 },	-- Filled Red Waterskin
					},
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(7768, {	-- Empty Red Waterskin
							["coord"] = { 62, 20, HILLSBRAD_FOOTHILLS },
							["groups"] = {
								i(7771),	-- Filled Red Waterskin
							},
						}),
					},
				}),
				q(1534, {	-- Call of Water (5/9)
					["qg"] = 5899,	-- Brine
					["sourceQuest"] = 1536,	-- Call of Water (4/9)
					["coord"] = { 43.4, 77.4, THE_BARRENS },
					["maps"] = { ASHENVALE },
					["cost"] = {
						{ "i", 7770, 1 },	-- Filled Blue Waterskin
					},
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(7767, {	-- Empty Blue Waterskin
							["coord"] = { 33, 67, ASHENVALE },
							["groups"] = {
								i(7770),	-- Filled Blue Waterskin
							},
						}),
					},
				}),
				q(220, {	-- Call of Water (6/9)
					["qg"] = 5899,	-- Brine
					["sourceQuest"] = 1534,	-- Call of Water (5/9)
					["coord"] = { 43.4, 77.4, THE_BARRENS },
					["cost"] = {
						{ "i", 7810, 1 },	-- Vial of Purest Water
					},
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(6637),	-- Water Sapta
					},
				}),
				q(63, {		-- Call of Water (7/9)
					["qg"] = 5901,	-- Islen Waterseer
					["sourceQuest"] = 1534,	-- Call of Water (6/9)
					["coord"] = { 65.8, 43.8, THE_BARRENS },
					["maps"] = { SILVERPINE_FOREST },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Corrupt Manifestation's Bracers
							["provider"] = { "i", 7812 },	-- Corrupt Manifestation's Bracers
							["coord"] = { 38.8, 44.3, SILVERPINE_FOREST },
							["cost"] = { { "i", 7811, 1 } },	-- Remaining Drops of Purest Water
							["cr"] = 5894,	-- Corrupt Minor Manifestation of Water
						}),
					},
				}),
				q(100, {	-- Call of Water (8/9)
					["provider"] = { "o", 113791 },	-- Brazier of Everfount
					["sourceQuest"] = 1534,	-- Call of Water (7/9)
					["coord"] = { 38.3, 44.6, SILVERPINE_FOREST },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(96, {	-- Call of Water (9/9)
					["qg"] = 5895,	-- Minor Manifestation of Water
					["sourceQuest"] = 100,	-- Call of Water (8/9)
					["coord"] = { 38.6, 44.6, SILVERPINE_FOREST },
					["cost"] = {
						{ "i", 7813, 1 },	-- Shard of Water
					},
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						recipe(5394),	-- Healing Stream Totem
						i(5177, {	-- Water Totem
							["description"] = "You must keep this in your bags forever.",
						}),
					},
				}),
				q(1103, {	-- Call of Water (Water Sapta) [Silverpine Forest]
					["qg"] = 7007,	-- Tiev Mordune
					["sourceQuest"] = 100,	-- Call of Water (8/9)
					["coord"] = { 37.3, 44.1, SILVERPINE_FOREST },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 20,
					["groups"] = {
						i(6637),	-- Water Sapta
					},
				}),
				q(855, {	-- Centaur Bracers
					["qg"] = 3389,	-- Regthar Deathgate
					["coord"] = { 45.34, 28.42, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						i(5346),	-- Orcish Battle Bow
						i(5344),	-- Pointed Axe
						i(5345),	-- Stonewood Hammer
					},
				}),
				q(819, {	-- Chen's Empty Keg
					["description"] = "Started by picking up one of the many kegs littered throughout the Barrens.",
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
				}),
				q(821, {	-- Chen's Empty Keg
					["qg"] = 3292,	-- Brewmaster Drohn
					["sourceQuest"] = 819,	-- Chen's Empty Keg
					["coord"] = { 62.27, 38.39, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
					["groups"] = {
						i(4952),	-- Stormstout
					},
				}),
				q(822, {	-- Chen's Empty Keg
					["qg"] = 3292,	-- Brewmaster Drohn
					["sourceQuest"] = 821,	-- Chen's Empty Keg
					["repeatable"] = true,
					["coord"] = { 62.27, 38.39, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
					["groups"] = {
						i(4953),	-- Trogg Brew
					},
				}),
				q(4961, {	-- Cleansing of the Orb of Orahil
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1799,	-- Fragments of the Orb of Orahil
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["classes"] = { WARLOCK },
					["cr"] = 6549,	-- Demon of the Orb
					["cost"] = {
						{ "i", 12642, 1 },	-- Cleansed Infernal Orb
					},
					["lvl"] = 35,
				}),
				q(1796, {	-- Components for the Enchanted Gold Bloodrobe (1/5)
					["qg"] = 6266,	-- Menara Voidrender
					["sourceQuests"] = {
						4736,	-- In Search of Menara Voidrender (Ironforge)
						4737,	-- In Search of Menara Voidrender (Orgrimmar)
						4738,	-- In Search of Menara Voidrender (Stormwind)
						4739,	-- In Search of Menara Voidrender (Undercity)
					},
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 5770, 1 },	-- Robes of Arcana
					},
					["lvl"] = 31,
				}),
				q(4781, {	-- Components for the Enchanted Gold Bloodrobe (2/5)
					["qg"] = 6266,	-- Menara Voidrender
					["sourceQuest"] = 1796,	-- Components for the Enchanted Gold Bloodrobe (1/5)
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 3577, 1 },	-- Gold Bar
					},
					["lvl"] = 31,
				}),
				q(4782, { 	-- Components for the Enchanted Gold Bloodrobe (3/5)
					["qg"] = 2670,	-- Xizk Goodstitch
					["sourceQuest"] = 4781,	-- Components for the Enchanted Gold Bloodrobe (2/5)
					["coord"] = { 28.6, 76.8, STRANGLETHORN_VALE },
					["classes"] = { WARLOCK },
					["lvl"] = 31,
				}),
				q(4783, {	-- Components for the Enchanted Gold Bloodrobe (4/5)
					["qg"] = 6266,	-- Menara Voidrender
					["sourceQuest"] = 4782,	-- Components for the Enchanted Gold Bloodrobe (3/5)
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["maps"] = { DESOLACE },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 6989, 10 },	-- Vial of Hatefury Blood
						{ "i", 6990, 1 },	-- Lesser Infernal Stone
					},
					["lvl"] = 31,
				}),
				q(4784, {	-- Components for the Enchanted Gold Bloodrobe (5/5)
					["qg"] = 6266,	-- Menara Voidrender
					["sourceQuest"] = 4783,	-- Components for the Enchanted Gold Bloodrobe (4/5)
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["maps"] = { ARATHI_HIGHLANDS },
					["cost"] = { { "i", 6265, 1 } },	-- Soul Shard
					["classes"] = { WARLOCK },
					["lvl"] = 31,
					["groups"] = {
						objective(1, {	-- 0/1 Fine Gold Thread
							["provider"] = { "i", 12293 },	-- Fine Gold Thread
						}),
						objective(2, {	-- 0/2 Smoldering Coal
							["provider"] = { "i", 6991 },	-- Smoldering Coal
							["cr"] = 2760,	-- Burning Exile
						}),
					},
				}),
				q(899, {	-- Consumed by Hatred
					["qg"] = 3432,	-- Mankrik
					["coord"] = { 51.95, 31.58, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						i(5314),	-- Boar Hunter's Cape
						i(6477),	-- Grassland Sash
					},
				}),
				q(4021, {	-- Counterattack!
					["qg"] = 3389,	-- Regthar Deathgate
					["sourceQuest"] = 852,	-- Hezrul Bloodmark
					["coord"] = { 45.34, 28.42, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
				}),
				q(913, {	-- Cry of the Thunderhawk
					["qg"] = 3387,	-- Jorn Skyseer
					["sourceQuest"] = 907,	-- Enraged Thunder Lizards
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5302),	-- Cobalt Buckler
						i(5306),	-- Wind Rider Staff
						i(5299),	-- Gloves of the Moon
					},
				}),
				q(6129, {	-- Curing the Sick
					["qg"] = 3448,	-- Tonga Runetotem
					["sourceQuest"] = 6128,	-- Gathering the Cure
					["coord"] = { 52.2, 31.8, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 15826, 1 },	-- Curative Animal Salve
					},
					["lvl"] = 14,
					["groups"] = {
						i(15866),	-- Veildust Medicine Bag
					},
				}),
				q(1069, {	-- Deepmoss Spider Eggs
					["qg"] = 3446,	-- Mebok Mizzyrix
					["cost"] = {
						{ "i", 5570, 15 },	-- Deepmoss Egg
					},
					["coord"] = { 62.37, 37.32, THE_BARRENS },
					["maps"] = { STONETALON_MOUNTAINS },
					["lvl"] = 15,
				}),
				q(871, {	-- Disrupt the Attacks
					["qg"] = 3429,	-- Thork
					["coord"] = { 51.50, 30.86, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(1515, {	-- Dogran's Captivity
					["qg"] = 5911,	-- Grunt Logmar
					["sourceQuest"] = 1511,	-- Ken'zigla's Draught
					["coord"] = { 44.6, 59.2, THE_BARRENS },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 6624, 1 },	-- Ken'zigla's Draught
					},
					["lvl"] = 20,
				}),
				q(6385, {	-- Doras the Wind Rider Master
					["qg"] = 6929,	-- Innkeeper Gryshka
					["sourceQuest"] = 6384,	-- Ride to Orgrimmar
					["coord"] = { 54.09, 68.43, ORGRIMMAR },
					["races"] = { ORC, TROLL },
					["lvl"] = 10,
				}),
				q(881, {	-- Echeyakee
					["qg"] = 3338,	-- Sergra Darkthorn
					["sourceQuest"] = 903,	-- Prowlers of the Barrens
					["coord"] = { 52.23, 31.01, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(868, {	-- Egg Hunt
					["qg"] = 3428,	-- Korran
					["coord"] = { 51.07, 29.62, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						i(6503),	-- Harlequin Robes
						i(6502),	-- Violet Scale Armor
					},
				}),
				q(907, {	-- Enraged Thunder Lizards
					["qg"] = 3387,	-- Jorn Skyseer
					["sourceQuest"] = 882,	-- Ishamuhale
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(4785, {	-- Fine Gold Thread
					["qg"] = 2670,	-- Xizk Goodstitch <Tailoring Supplies>
					["coord"] = { 28.6, 76.8, STRANGLETHORN_VALE },
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { WARLOCK },
					["repeatable"] = true,
					["lvl"] = 31,
					["groups"] = {
						i(12293, {	-- Fine Gold Thread
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(1464, {	-- Fire Sapta
					["qg"] = 5900,	-- Telf Joolam
					["sourceQuest"] = 1525,	-- Call of Fire (3/5)
					["coord"] = { 38.6, 58.8, DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["repeatable"] = true,
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 6636,	-- Fire Sapta
							["questID"] = 1526,	-- Call of Fire (4/5)
						},
					},
				}),
				q(1503, {	-- Forged Steel
					["qg"] = 5878,	-- Thun'grim Firegaze
					["sourceQuest"] = 1502,	-- Thun'grim Firegaze
					["coord"] = { 57.23, 30.34, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 6534, 1 },	-- Forged Steel Bars
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 6534,	-- Forged Steel Bars
							["questID"] = 1503,	-- Forged Steel
							["coord"] = { 55.0, 26.6, THE_BARRENS },
						},
						i(7326),	-- Thun'grim's Axe
						i(7327),	-- Thun'grim's Dagger
						i(7328),	-- Thun'grim's Mace
						i(7329),	-- Thun'grim's Sword
					}
				}),
				q(1799, {	-- Fragments of the Orb of Orahil
					["qg"] = 6266,	-- Menara Voidrender
					["sourceQuests"] = {
						4965,	-- Knowledge of the Orb of Orahil [Ironforge]
						4967,	-- Knowledge of the Orb of Orahil [Orgrimmar]
						4968,	-- Knowledge of the Orb of Orahil [Stormwind]
						4969,	-- Knowledge of the Orb of Orahil [Undercity]
					},
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["maps"] = { DESOLACE, DUSTWALLOW_MARSH },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 7291, 1 },	-- 	Infernal Orb
					},
					["lvl"] = 35,
				}),
				q(898, {	-- Free From the Hold
					["qg"] = 3465,	-- Gilthares Firebough
					["coord"] = { 61.96, 54.97, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						i(5311),	-- Buckled Boots
						i(5312),	-- Riveted Gauntlets
					},
				}),
				q(848, {	-- Fungal Spores
					["qg"] = 3390,	-- Apothecary Helbrim
					["coord"] = { 51.44, 30.15, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(843, {	-- Gann's Reclamation
					["qg"] = 3341,	-- Gann Stonespire
					["coord"] = { 46.08, 76.37, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				}),
				q(6128, {	-- Gathering the Cure
					["qg"] = 3448,	-- Tonga Runetotem
					["sourceQuest"] = 6127,	-- The Principal Source
					["coord"] = { 52.2, 31.8, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 2449, 5 },	-- Earthroot
						{ "i", 15852, 5 },	-- Kodo Horn
					},
					["crs"] = {
						3236,	-- Barrens Kodo
						3234,	-- Lost Barrens Kodo
					},
					["lvl"] = 14,
				}),
				q(875, {	-- Harpy Lieutenants
					["qg"] = 3449,	-- Darsok Swiftdagger
					["sourceQuest"] = 867,	-- Harpy Raiders
					["coord"] = { 51.62, 30.90, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(867, {	-- Harpy Raiders
					["qg"] = 3449,	-- Darsok Swiftdagger
					["coord"] = { 51.62, 30.90, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(1738, {	-- Heartswood
					["qg"] = 6244,	-- Takar the Seer
					["sourceQuest"] = 1716,	-- Devourer of Souls [Stormwind City]
					["coord"] = { 49.2, 57.0, THE_BARRENS },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 6912, 1 },	-- Heartswood
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 6912,	-- Heartswood
							["questID"] = 1738,	-- Heartswood
							["coord"] = { 31, 31, ASHENVALE },
						},
					},
				}),
				q(852, {	-- Hezrul Bloodmark
					["qg"] = 3389,	-- Regthar Deathgate
					["sourceQuest"] = 851,	-- Verog the Dervish
					["coord"] = { 45.34, 28.42, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
					["groups"] = {
						i(5351),	-- Bounty Hunter's Ring
					},
				}),
				q(3514, {	-- Horde Presence
					["qg"] = 8582,	-- Kadrak
					["sourceQuest"] = 3513,	-- The Runed Scroll
					["coord"] = { 48.12, 5.42, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						i(10653),	-- Trailblazer Boots
						i(10654),	-- Jutebraid Gloves
					},
				}),
				q(4736, {	-- In Search of Menara Voidrender (Ironforge)
					["qg"] = 5172,	-- Briarthorn
					["coord"] = { 50.2, 6, IRONFORGE },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 31,
				}),
				q(4737, {	-- In Search of Menara Voidrender (Orgrimmar)
					["qg"] = 3326,	-- Zevrost
					["coord"] = { 48.4, 45.6, ORGRIMMAR },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 31,
				}),
				q(4738, {	-- In Search of Menara Voidrender (Stormwind)
					["qg"] = 461,	-- Demisette Cloyce
					["coord"] = { 25.4, 78.2, STORMWIND_CITY },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 31,
				}),
				q(4739, {	-- In Search of Menara Voidrender (Undercity)
					["qg"] = 4563,	-- Kaal Soulreaper
					["coord"] = { 86, 15.6, UNDERCITY },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 31,
				}),
				q(858, {	-- Ignition
					["qg"] = 3439,	-- Wizzlecrank's Shredder
					["coord"] = { 56.52, 7.45, THE_BARRENS },
					["lvl"] = 13,
				}),
				q(873, {	-- Isha Awak
					["qg"] = 3388,	-- Mahren Skyseer
					["sourceQuest"] = 874,	-- Mahren Skyseer
					["coord"] = { 65.83, 43.85, THE_BARRENS },
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5356),	-- Branding Rod
						i(5357),	-- Ward of the Vale
						i(5355),	-- Beastmaster's Girdle
					},
				}),
				q(882, {	-- Ishamuhale
					["qg"] = 3387,	-- Jorn Skyseer
					["sourceQuest"] = 3261,	-- Jorn Skyseer
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(10338),	-- Fresh Zhevra Carcass
					},
				}),
				q(3261, {	-- Jorn Skyseer
					["qg"] = 3338,	-- Sergra Darkthorn
					["sourceQuest"] = 905,	-- The Angry Scytheclaws
					["coord"] = { 52.23, 31.01, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(854, {	-- Journey to the Crossroads
					["qg"] = 3418,	-- Kirge Sternhorn
					["coord"] = { 44.8, 58.6, THE_BARRENS },
					["races"] = { TAUREN },
					["isBreadcrumb"] = true,
					["lvl"] = 9,
				}),
				q(4967, {	-- Knowledge of the Orb of Orahil [Orgrimmar]
					["qg"] = 3326,	-- Zevrost
					["coord"] = { 48.4, 45.6, ORGRIMMAR },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(4965, {	-- Knowledge of the Orb of Orahil [Ironforge]
					["qg"] = 5172,	-- Briarthorn
					["coord"] = { 50.2, 6, IRONFORGE },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(4968, {	-- Knowledge of the Orb of Orahil [Stormwind]
					["qg"] = 461,	-- Demisette Cloyce
					["coord"] = { 25.4, 78.2, STORMWIND_CITY },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(4969, {	-- Knowledge of the Orb of Orahil [Undercity]
					["qg"] = 4563,	-- Kaal Soulreaper
					["coord"] = { 86, 15.6, UNDERCITY },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(850, {	-- Kolkar Leaders
					["qg"] = 3389,	-- Regthar Deathgate
					["coord"] = { 45.34, 28.42, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
				}),
				q(883, {	-- Lakota'mani
					["cr"] = 3474,	-- Lakota'mani
					["provider"] = { "i", 5099 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1060, {	-- Letter to Jin'Zil
					["qg"] = 3449,	-- Darsok Swiftdagger
					["sourceQuest"] = 876,	-- Serena Bloodfeather
					["coord"] = { 51.62, 30.90, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 15,
				}),
				q(4921, {	-- Lost in Battle
					["qg"] = 3432,	-- Mankrik
					["coord"] = { 51.95, 31.58, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(1512, {	-- Love's Gift
					["qg"] = 5908,	-- Grunt Dogran
					["sourceQuest"] = 1515,	-- Dogran's Captivity
					["coord"] = { 43.2, 47.8, THE_BARRENS },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 6625, 1 },	-- Dirt-caked Pendant
					},
					["lvl"] = 20,
				}),
				q(874, {	-- Mahren Skyseer
					["qg"] = 3387,	-- Jorn Skyseer
					["sourceQuest"] = 913,	-- Cry of the Thunderhawk
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(6365, {	-- Meats to Orgrimmar
					["qg"] = 3489,	-- Zargh
					["coord"] = { 52.62, 29.84, THE_BARRENS },
					["races"] = { ORC, TROLL },
					["lvl"] = 10,
				}),
				q(9267, {	-- Mending Old Wounds
					["qg"] = 16418,	-- Mupsi Shacklefridd
					["coord"] = { 61.22, 37.86, THE_BARRENS },
					["maxReputation"] = { 470, NEUTRAL },	-- Ratchet, must be less than Neutral
					["cost"] = {
						{ "i", 2589, 40 },	-- Linen Cloth
						{ "i", 3371, 4 },	-- Empty Vial
					},
					["repeatable"] = true,
					["lvl"] = 10,
				}),
				q(896, {	-- Miner's Fortune
					["qg"] = 3453,	-- Wharfmaster Dizzywig
					["coord"] = { 63.35, 38.45, THE_BARRENS },
					["lvl"] = 13,
					["groups"] = {
						i(5335, {	-- A Sack of Coins
							i(4957),	-- Old Moneybag
						}),
					},
				}),
				q(2478, {	-- Mission: Possible But Not Probable
					["lvl"] = 20,
					["qg"] = 7233,	-- Taskmaster Fizzule
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { ROGUE },
					["sourceQuest"] = 2458,	-- Deep Cover
					["groups"] = {
						i(18160),	-- Recipe: Thistle Tea
					}
				}),
				q(3301, {	-- Mura Runetotem
					["qg"] = 3448,	-- Tonga Runetotem
					["sourceQuest"] = 880,	-- Altered Beings
					["coord"] = { 52.26, 31.92, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(10820),	-- Jackseed Belt
						i(10821),	-- Sower's Cloak
					},
				}),
				q(1946, {	-- Nether-lace Garment
					["qg"] = 3484,	-- Kil'hala <Journeyman Tailor>
					["sourceQuest"] = 1945,	-- Laughing Sisters
					["coord"] = { 52.2, 31.6, THE_BARRENS },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["lvl"] = 26,
					["groups"] = {
						i(7512),	-- Nether-lace Robe
						i(9515),	-- Nether-lace Tunic
					},
				}),
				q(1510, {	-- News of Dogran (2/2)
					["qg"] = 3464,	-- Gazrog
					["sourceQuest"] = 1509,	-- News of Dogran (1/2)
					["coord"] = { 51.8, 30.2, THE_BARRENS },
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["lvl"] = 20,
				}),
				q(3922, {	-- Nugget Slugs
					["qg"] = 9316,	-- Wenikee Boltbucket
					["sourceQuest"] = 3921,	-- Wenikee Boltbucket
					["coord"] = { 49.05, 11.17, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1840, {	-- Orm Stonehoof and the Brutal Helm
					["qg"] = 5878,	-- Thun'grim Firegaze
					["sourceQuest"] = 1838,	-- Brutal Armor
					["coord"] = { 57.2, 30.2, THE_BARRENS },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
				q(884, {	-- Owatanka
					["cr"] = 3473,	-- Owatanka
					["provider"] = { "i", 5102 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1040, {	-- Passage to Booty Bay
					["qg"] = 3453,	-- Wharfmaster Dizzywig
					["sourceQuest"] = 1039,	-- The Barrens Port(Darnassus)
					["coord"] = { 63.35, 38.45, THE_BARRENS },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(1498, {	-- Path of Defense
					["qg"] = 5810,	-- Uzzek
					["sourceQuest"] = 1505,	-- Veteran Uzzek
					["coord"] = { 61.38, 21.11, THE_BARRENS },
					["description"] = "Completing this quest prevents you from accepting \"Speak with Dillinger\" and \"Ulag the Cleaver\" in Silverpine Forest.",
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 6486, 5 },	-- Singed Scale
					},
					["lvl"] = 10,
				}),
				q(844, {	-- Plainstrider Menace
					["qg"] = 3338,	-- Sergra Darkthorn
					["sourceQuest"] = 860,	-- Sergra Darkthorn
					["coord"] = { 52.23, 31.01, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(2381, {	-- Plundering the Plunderers
					["qg"] = 7161,	-- Wrenix the Wretched
					["sourceQuest"] = 2382,	-- Wrenix of Ratchet
					["coord"] = { 63, 36.4, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 7968, 1 },	-- Southsea Treasure
					},
					["lvl"] = 16,
					["groups"] = {
						{
							["itemID"] = 7968,	-- Southsea Treasure
							["questID"] = 2381,	-- Plundering the Plunderers
							["cr"] = 7168,	-- Polly
							["coord"] = { 64.8, 45.4, THE_BARRENS },
						},
						i(7676),	-- Thistle Tea
					},
				}),
				q(903, {	-- Prowlers of the Barrens
					["qg"] = 3338,	-- Sergra Darkthorn
					["sourceQuest"] = 845,	-- The Zhevra
					["coord"] = { 52.23, 31.01, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(865, {	-- Raptor Horns
					["qg"] = 3446,	-- Mebok Mizzyrix
					["coord"] = { 62.37, 37.32, THE_BARRENS },
					["lvl"] = 13,
					["groups"] = {
						i(5342),	-- Raptor Punch
						i(5343),	-- Barkeeper's Cloak
					},
				}),
				q(869, {	-- Raptor Thieves
					["qg"] = 3464,	-- Gazrog
					["coord"] = { 51.93, 30.32, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5046, {	-- Razorhide
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["repeatable"] = true,
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(6541, {	-- Report to Kadrak
					["qg"] = 3429,	-- Thork
					["coord"] = { 51.50, 30.86, THE_BARRENS },
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				}),
				q(6364, {	-- Return to Jahan
					["qg"] = 2995,	-- Tal
					["sourceQuest"] = 6363,	-- Tal the Wind Rider Master
					["coord"] = { 47.00, 49.84, THUNDER_BLUFF },
					["races"] = { TAUREN },
					["lvl"] = 10,
				}),
				q(6386, {	-- Return to the Crossroads.
					["qg"] = 3310,	-- Doras
					["sourceQuest"] = 6385,	-- Doras the Wind Rider Master
					["coord"] = { 45.21, 63.58, ORGRIMMAR },
					["races"] = { ORC, TROLL },
					["lvl"] = 10,
				}),
				q(4976, {	-- Returning the Cleansed Orb
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 4961,	-- Cleansing of the Orb of Orahil
					["coord"] = { 46, 57, DUSTWALLOW_MARSH },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 12642, 1 },	-- Cleansed Infernal Orb
					},
					["lvl"] = 35,
				}),
				q(849, {	-- Revenge of Gann
					["qg"] = 3341,	-- Gann Stonespire
					["sourceQuest"] = 846,	-- Revenge of Gann
					["coord"] = { 46.08, 76.37, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						i(5313),	-- Totemic Clan Ring
					},
				}),
				q(846, {	-- Revenge of Gann
					["qg"] = 3341,	-- Gann Stonespire
					["sourceQuest"] = 843,	-- Gann's Reclamation
					["coord"] = { 46.08, 76.37, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				}),
				q(6384, {	-- Ride to Orgrimmar
					["qg"] = 3615,	-- Devrak
					["sourceQuest"] = 6365,	-- Meats to Orgrimmar
					["coord"] = { 51.50, 30.34, THE_BARRENS },
					["lvl"] = 10,
					["races"] = { ORC, TROLL },
				}),
				q(6362, {	-- Ride to Thunder Bluff
					["qg"] = 3615,	-- Devrak
					["sourceQuest"] = 6361,	-- A Bundle of Hides
					["coord"] = { 51.50, 30.34, THE_BARRENS },
					["races"] = { TAUREN },
					["lvl"] = 10,
				}),
				q(3923, {	-- Rilli Greasygob
					["qg"] = 9316,	-- Wenikee Boltbucket
					["sourceQuest"] = 3922,	-- Nugget Slugs
					["coord"] = { 49.05, 11.17, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(5045, {	-- Rising Spirit
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["repeatable"] = true,
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(866,	{	-- Root Samples
					["qg"] = 3446,	-- Mebok Mizzyrix
					["coord"] = { 62.4, 37.6, THE_BARRENS },
					["requireSkill"] = HERBALISM,
					["cost"] = {
						{ "i", 5056, 8 },	-- Root Sample
					},
					["lvl"] = 9,
					["groups"] = {
						i(5341),	-- Spore-Covered Tunic
					},
				}),
				q(894, {	-- Samophlange
					["qg"] = 3442,	-- Sputtervalve
					["coord"] = { 62.98, 37.21, THE_BARRENS },
					["lvl"] = 10,
				}),
				q(900, {	-- Samophlange
					["provider"] = { "o", 4141 },	-- Control Console
					["sourceQuest"] = 894,	-- Samophlange
					["coord"] = { 52.41, 11.60, THE_BARRENS },
					["lvl"] = 10,
				}),
				q(901, {	-- Samophlange
					["provider"] = { "o", 4141 },	-- Control Console
					["sourceQuest"] = 900,	-- Samophlange
					["coord"] = { 52.41, 11.60, THE_BARRENS },
					["lvl"] = 10,
				}),
				q(902, {	-- Samophlange
					["provider"] = { "o", 4141 },	-- Control Console
					["sourceQuest"] = 901,	-- Samophlange
					["coord"] = { 52.41, 11.60, THE_BARRENS },
					["lvl"] = 10,
					["groups"] = {
						i(5324),	-- Engineer's Hammer
						i(5325),	-- Welding Shield
					},
				}),
				q(3924, {	-- Samophlange Manual
					["qg"] = 9317,	-- Rilli Greasygob
					["sourceQuest"] = 3923,	-- Rilli Greasygob
					["coord"] = { 76.49, 24.47, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(11855),	-- Tork Wrench
						i(11854),	-- Samophlange Screwdriver
						i(11147),	-- Samophlange Manual Cover
						i(11148),	-- Samophlange Manual Page
					},
				}),
				q(2996, {	-- Seeking Strahad (Orgrimmar)
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["coord"] = { 48.2, 45.6, ORGRIMMAR },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1798, {	-- Seeking Strahad (Stormwind)
					["qg"] = 6122,	-- Gakin the Darkbinder
					-- #if AFTER WRATH
					["coord"] = { 39.2, 85.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 25.4, 78.4, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(3001, {	-- Seeking Strahad (Undercity)
					["qg"] = 5675,	-- Carendin Halgar
					["coord"] = { 85, 25.6, UNDERCITY },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(876, {	-- Serena Bloodfeather
					["qg"] = 3449,	-- Darsok Swiftdagger
					["sourceQuest"] = 875,	-- Harpy Lieutenants
					["coord"] = { 51.62, 30.90, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						i(5321),	-- Elegant Shortsword
						i(5279),	-- Harpy Skinner
						i(5318),	-- Zhovur Axe
					},
				}),
				q(4962, {	-- Shard of a Felhound
					["qg"] = 6254,	-- Acolyte Wytula
					["altQuests"] = { 4963 }, -- Shard of an Infernal
					["coord"] = { 62.5, 35.5, THE_BARRENS },
					["maps"] = { DESOLACE },
					["cost"] = {
						{ "i", 12648, 1 },	-- Imprisoned Felhound Spirit
					},
					["classes"] = { WARLOCK },
					["lvl"] = 35,
					["groups"] = {
						i(12648, {	-- Imprisoned Felhound Spirit
							["coords"] = {
								{ 56.6, 75.6, DESOLACE },
								{ 50.6, 81.6, DESOLACE },
							},
							["cost"] = {
								{ "i", 12647, 1 },	-- Felhas Ruby
							},
							["crs"] = {
								4685,	-- Ley Hunter
								4681,	-- Mage Hunter
							},
						}),
					},
				}),
				q(4963, {   -- Shard of an Infernal
					["qg"] = 6252, -- Acolyte Magaz
					["altQuests"] = { 4962 }, -- Shard of a Felhound
					["coord"] = { 62.6, 35.2, THE_BARRENS },
					["maps"] = { DESOLACE },
					["cost"] = {
						{ "i", 12649, 1 },	-- Imprisoned Infernal Spirit
					},
					["classes"] = { WARLOCK },
					["lvl"] = 35,
					["groups"] = {
						i(12649, {	-- Imprisoned Infernal Spirit
							["coord"] = { 50, 73, DESOLACE },
							["cost"] = {
								{ "i", 12646, 1 },	-- Infus Emerald
							},
							["cr"] = 4676,	-- Lesser Infernal
						}),
					},
				}),
				q(887, {	-- Southsea Freebooters
					["qg"] = 3391,	-- Gazlowe
					["coord"] = {62.68, 36.24, THE_BARRENS },
					["lvl"] = 9,
				}),
				q(1823, {	-- Speak with Ruga
					["qgs"] = {
						3354,	-- Sorek
						3041,	-- Torm Ragetotem
						4595,	-- Baltus Fowler <Warrior Trainer>
					},
					["coords"] = {
						{ 80.2, 32.4, ORGRIMMAR },
						{ 57.4, 87.2, THUNDER_BLUFF },
						{ 47.2, 17, UNDERCITY },
					},
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
				q(1825, {	-- Speak with Thun'grim
					["qg"] = 6394,	-- Ruga Ragetotem
					["sourceQuest"] = 1824,	-- Trial at the Field of Giants
					["coord"] = { 44.68, 59.42, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
				q(889, {	-- Spirit of the Wind
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["repeatable"] = true,
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(888, {	-- Stolen Booty
					["qg"] = 3391,	-- Gazlowe
					["sourceQuest"] = 892,	-- The Missing Shipment
					["coord"] = {62.68, 36.24, THE_BARRENS },
					["lvl"] = 9,
					["groups"] = {
						i(5337),	-- Wayfaring Gloves
						i(5320),	-- Padded Lamellar Boots
					},
				}),
				q(3281, {	-- Stolen Silver
					["qg"] = 3464,	-- Gazrog
					["sourceQuest"] = 869,	-- Raptor Thieves
					["coord"] = { 51.93, 30.32, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						i(11853),	-- Rambling Boots
						i(2694),	-- Settler's Leggings
					},
				}),
				q(4487, {	-- Summon Felsteed (Ironforge)
					["qg"] = 5172,	-- Briarthorn
					["coord"] = { 50.2, 6, IRONFORGE },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(3631, {	-- Summon Felsteed (Orgrimmar)
					["qg"] = 3326,	-- Zevrost
					["coord"] = { 48.4, 45.6, ORGRIMMAR },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(4488, {	-- Summon Felsteed (Stormwind)
					["qg"] = 461,	-- Demisette Cloyce <Warlock Trainer>
					["coord"] = { 25.4, 78.2, STORMWIND_CITY },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(4489, {	-- Summon Felsteed (Undercity)
					["qg"] = 4563,	-- Kaal Soulreaper
					["coord"] = { 86, 15.6, UNDERCITY },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(4490, {	-- Summon Felsteed
					["qg"] = 6251,	-- Strahad Farsan
					["sourceQuests"] = {
						4487,	-- Summon Felsteed (Ironforge)
						3631,	-- Summon Felsteed (Orgrimmar)
						4488,	-- Summon Felsteed (Stormwind)
						4489,	-- Summon Felsteed (Undercity)
					},
					["coord"] = { 62.6, 35.4, THE_BARRENS },
					["classes"] = { WARLOCK },
					["lvl"] = 40,
					["groups"] = {
						mount(5784),	-- Summon Felsteed
					},
				}),
				q(5041, {	-- Supplies for the Crossroads
					["qg"] = 3429,	-- Thork
					["coord"] = { 51.50, 30.86, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(6363, {	-- Tal the Wind Rider Master
					["qg"] = 8359,	-- Ahanu
					["sourceQuest"] = 6362,	-- Ride to Thunder Bluff
					["coord"] = { 45.74, 55.86, THUNDER_BLUFF },
					["races"] = { TAUREN },
					["lvl"] = 10,
				}),
				q(1719, {	-- The Affray
					["lvl"] = 30,
					["classes"] = { WARRIOR },
					["qg"] = 6236,	-- Klannoc Macleod
					["sourceQuest"] = 1718,	-- The Islander
				}),
				q(905, {	-- The Angry Scytheclaws
					["qg"] = 3338,	-- Sergra Darkthorn
					["sourceQuest"] = 881,	-- Echeyakee
					["coord"] = { 52.23, 31.01, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(5165),	-- Sunscale Feather
					},
				}),
				q(6382, {	-- The Ashenvale Hunt
					["qg"] = 3387,	-- Jorn Skyseer
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["altQuests"] = {
						6383,	-- The Ashenvale Hunt
					},
					["lvl"] = 20,
				}),
				q(886, {	-- The Barrens Oases
					["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
					["coord"] = { 78.63, 28.56, THUNDER_BLUFF },
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1795, {	-- The Binding (Felhunter)
					["qg"] = 6251,	-- Strahad Farsan
					["sourceQuests"] = {
						1804,	-- Tome of the Cabal (3/3 Alliance)
						1805,	-- Tome of the Cabal (3/3 Horde)
					},
					["coord"] = { 62.6, 35.4, THE_BARRENS },
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { WARLOCK },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- Summoned Felhunter slain
							["provider"] = { "n", 6268 },	-- Summoned Felhunter
							["cost"] = { { "i", 6999, 1 } },	-- Tome of the Cabal
						}),
						-- #if BEFORE 4.0.3
						recipe(691),	-- Summon Felhunter
						-- #endif
						i(22244, {	-- Box of Souls
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(4964, {	-- The Completed Orb of Dar'Orahil
					["qg"] = 6266,	-- Menara Voidrender
					["altQuests"] = { 4975 },	-- The Completed Orb of Noh'Orahil
					["sourceQuests"] = {
						4976,	-- Returning the Cleansed Orb
						4962,	-- Shard of a Felhound
					},
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["classes"] = { WARLOCK },
					["lvl"] = 35,
					["groups"] = {
						i(15108),	-- Orb of Dar'Orahil
						i(15106),	-- Staff of Dar'Orahil
					},
				}),
				q(4975, {	-- The Completed Orb of Noh'Orahil
					["qg"] = 6266,	-- Menara Voidrender
					["altQuests"] = { 4964 },	-- The Completed Orb of Dar'Orahil
					["sourceQuests"] = {
						4976,	-- Returning the Cleansed Orb
						4963,	-- Shard of an Infernal
					},
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["classes"] = { WARLOCK },
					["lvl"] = 35,
					["groups"] = {
						i(15107),	-- Orb of Noh'Orahil
						i(15105),	-- Staff of Noh'Orahil
					},
				}),
				q(4786, {	-- The Completed Robe
					["qg"] = 6266,	-- Menara Voidrender
					["sourceQuest"] = 4784,	-- Components for the Enchanted Gold Bloodrobe (5/5)
					["coord"] = { 62.4, 35.4, THE_BARRENS },
					["classes"] = { WARLOCK },
					["lvl"] = 31,
					["groups"] = {
						i(6900),	-- Enchanted Gold Bloodrobe
					},
				}),
				q(872, {	-- The Disruption Ends
					["qg"] = 3429,	-- Thork
					["sourceQuest"] = 871,	-- Disrupt the Attacks
					["coord"] = { 51.50, 30.86, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						i(5275),	-- Binding Girdle
						i(5328),	-- Cinched Belt
					},
				}),
				q(863, {	-- The Escape
					["qg"] = 3439,	-- Wizzlecrank's Shredder
					["sourceQuest"] = 858,	-- Ignition
					["coord"] = { 56.52, 7.45, THE_BARRENS },
					["lvl"] = 13,
					["groups"] = {
						i(5326),	-- Flaring Baton
						i(5327),	-- Greasy Tinker's Pants
					},
				}),
				q(870, {	-- The Forgotten Pools
					["qg"] = 3448,	-- Tonga Runetotem
					["sourceQuest"] = 886,	-- The Barrens Oases
					["coord"] = { 52.26, 31.92, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(891, {	-- The Guns of Northwatch
					["qg"] = 3339,	-- Captain Thalo'thas Brightsun
					["coord"] = { 62.29, 39.03, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						i(5309),	-- Privateer Musket
						i(5310),	-- Sea Dog Britches
					},
				}),
				q(897, {	-- The Harvester
					["cr"] = 3253,	-- Silithid Harvester
					["provider"] = { "i", 5138 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1718, {	-- The Islander
					["lvl"] = 30,
					["classes"] = { WARRIOR },
					["qgs"] = {
						3041,	-- Torm Ragetotem
						3354,	-- Sorek
						4595,	-- Baltus Fowler
						5113,	-- Kelv Sternhammer
						5479,	-- Wu Shen
					},
				}),
				q(892, {	-- The Missing Shipment
					["qg"] = 3453,	-- Wharfmaster Dizzywig
					["coord"] = { 63.35, 38.45, THE_BARRENS },
					["sourceQuest"] = 890,	-- The Missing Shipment
					["lvl"] = 9,
				}),
				q(890, {	-- The Missing Shipment
					["qg"] = 3391,	-- Gazlowe
					["sourceQuest"] = 887,	-- Southsea Freebooters
					["coord"] = {62.68, 36.24, THE_BARRENS },
					["lvl"] = 9,
				}),
				q(3513, {	-- The Runed Scroll
					["cr"] = 5797,	-- Aean Swiftriver
					["provider"] = { "i", 10621 },
					["races"] = HORDE_ONLY,
					["lvl"] = 15,
				}),
				q(877, {	-- The Stagnant Oasis
					["qg"] = 3448,	-- Tonga Runetotem
					["sourceQuest"] = 870,	-- The Forgotten Pools
					["coord"] = { 52.26, 31.92, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1145, {	-- The Swarm Grows
					["qg"] = 3428,	-- Korran
					["coord"] = { 51.07, 29.62, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(857, {	-- The Tear of the Moons
					["qg"] = 3421,	-- Feegly the Exiled
					["coord"] = { 48.95, 86.32, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 22,
				}),
				q(6543, {	-- The Warsong Reports
					["qg"] = 8582,	-- Kadrak
					["sourceQuests"] = { 6542, 6541 },	-- Report to Kadrak
					["coord"] = { 48.12, 5.42, THE_BARRENS },
					["maps"] = { ASHENVALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16783, 1 },	-- Bundle of Reports
						{ "i", 16765, 1 },	-- Warsong Outrider Update
						{ "i", 16763, 1 },	-- Warsong Runner Update
						{ "i", 16764, 1 },	-- Warsong Scout Update
					},
					["lvl"] = 17,
				}),
				q(1791, {	-- The Windwatcher
					["lvl"] = 30,
					["classes"] = { WARRIOR },
					["qg"] = 6236,	-- Klannoc Macleod
					["sourceQuest"] = 1719,	-- The Affray
					["isBreadcrumb"] = true,
				}),
				q(845, {	-- The Zhevra
					["qg"] = 3338,	-- Sergra Darkthorn
					["sourceQuest"] = 844,	-- Plainstrider Menace
					["coord"] = { 52.23, 31.01, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1502, {	-- Thun'grim Firegaze
					["qg"] = 5810,	-- Uzzek
					["sourceQuest"] = 1498,	-- Path of Defense
					["coord"] = { 61.38, 21.11, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(1758, {	-- Tome of the Cabal (1/3 Alliance)
					["qg"] = 6251,	-- Strahad Farsan
					["sourceQuest"] = 1798,	-- Seeking Strahad
					["coord"] = { 62.6, 35.4, THE_BARRENS },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["lvl"] = 30,
				}),
				q(1801, {	-- Tome of the Cabal (1/3 Horde)
					["qg"] = 6251,	-- Strahad Farsan
					["sourceQuests"] = {
						2996,	-- Seeking Strahad (Orgrimmar)
						3001,	-- Seeking Strahad (Undercity)
					},
					["coord"] = { 62.6, 35.4, THE_BARRENS },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 30,
				}),
				q(1803, {	-- Tome of the Cabal (2/3 Horde)
					["qg"] = 6293,	-- Jorah Annison
					["sourceQuest"] = 1801,	-- Tome of the Cabal (1/3 Horde)
					["coord"] = { 76.6, 36.8, UNDERCITY },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 6931, 1 },	-- Moldy Tome
						{ "i", 6997, 1 },	-- Tattered Manuscript
					},
					["lvl"] = 30,
				}),
				q(1805, {	-- Tome of the Cabal (3/3 Horde)
					["providers"] = {
						{ "n", 6293 },	-- Jorah Annison
						{ "i", 7006 },	-- Reconstructed Tome
					},
					["sourceQuest"] = 1803,	-- Tome of the Cabal (2/3 Horde)
					["coord"] = { 76.6, 36.8, UNDERCITY },
					["maps"] = { WETLANDS },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/3 Rod of Channeling
							["provider"] = { "i", 6930 },	-- Rod of Channeling
							["crs"] = {
								1057,	-- Dragonmaw Bonewarder
								1038,	-- Dragonmaw Shadowwarder
							},
						}),
					},
				}),
				q(1824, {	-- Trial at the Field of Giants
					["qg"] = 6394,	-- Ruga Ragetotem
					["sourceQuest"] = 1823,	-- Speak with Ruga
					["coord"] = { 44.68, 59.42, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 7119, 5 },	-- Twitching Antenna
					},
					["lvl"] = 20,
					["groups"] = {
						i(7120),	-- Ruga's Bulwark
					},
				}),
				q(878, {	-- Tribes at War
					["qg"] = 3430,	-- Mangletooth
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(959, {	-- Trouble at the Docks
					["qg"] = 3665,	-- Crane Operator Bigglefuzz
					["coord"] = { 63.1, 37.6, THE_BARRENS },
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/1 99-Year-Old Port
							["provider"] = { "i", 5334 },	-- 99-Year-Old Port
							["coord"] = { 45, 35.2, THE_BARRENS },
							["cr"] = 3655,	-- Mad Magglish
						}),
					},
				}),
				q(1839, {	-- Ula'elek and the Brutal Gauntlets
					["qg"] = 5878,	-- Thun'grim Firegaze
					["sourceQuest"] = 1838,	-- Brutal Armor
					["coord"] = { 57.2, 30.2, THE_BARRENS },
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
				q(851, {	-- Verog the Dervish
					["qg"] = 3389,	-- Regthar Deathgate
					["coord"] = { 45.34, 28.42, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
				}),
				q(1505, {	-- Veteran Uzzek
					["qgs"] = {
						3170,	-- Tarshaw Jaggedscar
						3354,	-- Sorek
						3063,	-- Krang Stonehoof
					},
					["coords"] = {
						{ 54.18, 42.47, DUROTAR },
						{ 49.4, 60.4, MULGORE },
						{ 80.3, 32.4, ORGRIMMAR },
					},
					["description"] = "This quest becomes unavailable after completing \"Ulag the Cleaver\" in Tirisfal Glades.",
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(895, {	-- WANTED: Baron Longshore
					["provider"] = { "o", 3972 },
					["coord"] = { 62.59, 37.47, THE_BARRENS },
					["lvl"] = 11,
				}),
				q(885, {	-- Washte Pawne
					["cr"] = 3472,	-- Washte Pawne
					["provider"] = { "i", 5103 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(972, {	-- Water Sapta [The Barrens]
					["qg"] = 5901,	-- Islen Waterseer
					["sourceQuest"] = 220,	-- Call of Water (6/9)
					["coord"] = { 65.8, 43.8, THE_BARRENS },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 20,
					["groups"] = {
						i(6637),	-- Water Sapta
					},
				}),
				q(893, {	-- Weapons of Choice
					["qg"] = 3433,	-- Tatternack Steelforge
					["coord"] = { 45.10, 57.69, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						i(5322),	-- Demolition Hammer
						i(5323),	-- Everglow Lantern
					},
				}),
				q(3921, {	-- Wenikee Boltbucket
					["qg"] = 3442,	-- Sputtervalve
					["sourceQuest"] = 902,	-- Samophlange
					["coord"] = { 62.98, 37.21, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1492, {	-- Wharfmaster Dizzywig
					["qg"] = 3390,	-- Apothecary Helbrim
					["coord"] = { 51.44, 30.15, THE_BARRENS },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5044, {	-- Wisdom of Agamaggan
					["qg"] = 3430,	-- Mangletooth
					["sourceQuest"] = 5052,	-- Blood Shards of Agamaggan
					["repeatable"] = true,
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
			}),
			n(RARES, {
				n(5797, {	-- Aean Swiftriver <Alliance Outrunner>
					["coords"] = {
						{ 45.6, 41.2, THE_BARRENS },
						{ 48.8, 42.6, THE_BARRENS },
						{ 50.4, 43.8, THE_BARRENS },
						{ 50.2, 46.8, THE_BARRENS },
						{ 48.8, 52.4, THE_BARRENS },
						{ 47.6, 55.8, THE_BARRENS },
						{ 45.6, 61.0, THE_BARRENS },
						{ 45.4, 66.8, THE_BARRENS },
						{ 46.6, 72.6, THE_BARRENS },
						{ 48.6, 77.6, THE_BARRENS },
						{ 48.6, 79.6, THE_BARRENS },
						{ 46.4, 81.6, THE_BARRENS },
						{ 46.6, 78.2, THE_BARRENS },
						{ 47.8, 64.2, THE_BARRENS },
						{ 49.4, 61.2, THE_BARRENS },
						{ 46.6, 46.8, THE_BARRENS },
						{ 46.0, 45.6, THE_BARRENS },
					},
					["races"] = HORDE_ONLY,
					["crs"] = {
						5799,	-- Hannah Bladeleaf <Alliance Outrunner>
						5800,	-- Marcus Bel <Alliance Outrunner>
						5798,	-- Thora Feathermoon <Alliance Outrunner>
					},
					["groups"] = {
						{
							["itemID"] = 10621,	-- Runed Scroll
							["questID"] = 3513,	-- The Runed Scroll
						},
					},
				}),
				n(7895, {	-- Ambassador Bloodrage
					["coords"] = {
						{ 46.2, 87.4, THE_BARRENS },
						{ 48.0, 90.4, THE_BARRENS },
						{ 48.6, 95.6, THE_BARRENS },
					},
				}),
				n(5834, {	-- Azzere the Skyblade
					["coords"] = {
						{ 44.6, 62.2, THE_BARRENS },
						{ 46.6, 63.0, THE_BARRENS },
						{ 44.8, 64.0, THE_BARRENS },
					},
				}),
				n(3672, {	-- Boahn <Druid of the Fang>
					["coord"] = { 49.1, 33.9, THE_BARRENS },
					["groups"] = {
						i(5423),  -- Boahn's Fang
						i(5422),  -- Brambleweed Leggings
					},
				}),
				n(5838, {	-- Brokespear
					["coords"] = {
						{ 53.6, 40.0, THE_BARRENS },
						{ 53.0, 44.6, THE_BARRENS },
						{ 54.6, 46.2, THE_BARRENS },
						{ 56.6, 43.6, THE_BARRENS },
						{ 57.2, 41.6, THE_BARRENS },
					},
					["groups"] = {
						i(7559),	-- Runic Cane
					},
				}),
				n(5827, {	-- Brontus
					["coords"] = {
						{ 49.6, 58.0, THE_BARRENS },
						{ 49.0, 60.8, THE_BARRENS },
						{ 48.6, 63.0, THE_BARRENS },
						{ 47.6, 58.8, THE_BARRENS },
						{ 47.4, 65.6, THE_BARRENS },
						{ 46.6, 67.4, THE_BARRENS },
						{ 46.6, 71.6, THE_BARRENS },
						{ 46.0, 75.8, THE_BARRENS },
						{ 44.8, 79.4, THE_BARRENS },
						{ 44.4, 75.6, THE_BARRENS },
					},
				}),
				n(5851, {	-- Captain Gerogg Hammertoe <Bael'dun Captain of the Guard>
					["coord"] = { 49.6, 83.8, THE_BARRENS },
				}),
				n(5849, {	-- Digger Flameforge <Excavation Specialist>
					["coord"] = { 47.6, 85.6, THE_BARRENS },
					["groups"] = {
						i(4785),	-- Brimstone Belt
					},
				}),
				n(5865, {	-- Dishu
					["coords"] = {
						{ 49.6, 15.8, THE_BARRENS },
						{ 51.0, 20.6, THE_BARRENS },
						{ 49.8, 27.6, THE_BARRENS },
						{ 51.6, 26.8, THE_BARRENS },
					},
				}),
				n(3270, {	-- Elder Mystic Razorsnout
					["coords"] = {
						{ 58.6, 26.8, THE_BARRENS },
						{ 59.0, 24.6, THE_BARRENS },
					},
					["groups"] = {
						i(4768),	-- Adept's Gloves
						i(4771),	-- Harvest Cloak
					},
				}),
				n(5836, {	-- Engineer Whirleygig
					["coord"] = { 56.2, 8.6, THE_BARRENS },
				}),
				n(5835, {	-- Foreman Grills
					["coord"] = { 56.6, 8.6, THE_BARRENS },
				}),
				n(5863, {	-- Geopriest Gukk'rok
					["coords"] = {
						{ 41.2, 45.6, THE_BARRENS },
						{ 42.6, 47.2, THE_BARRENS },
						{ 43.8, 48.4, THE_BARRENS },
						{ 43.6, 52.2, THE_BARRENS },
						{ 45.6, 52.4, THE_BARRENS },
					},
					["groups"] = {
						i(1539),	-- Gnarled Hermit's Staff
					},
				}),
				n(3398, {	-- Gesharahan
					["coord"] = { 46.6, 39.6, THE_BARRENS },
					["groups"] = {
						i(5183),	-- Pulsating Hydra Heart
						i(5182),	-- Shiver Blade
					},
				}),
				n(5859, {	-- Hagg Taurenbane <Razormane Champion>
					["coords"] = {
						{ 41.6, 78.8, THE_BARRENS },
						{ 42.0, 81.6, THE_BARRENS },
						{ 43.4, 84.0, THE_BARRENS },
						{ 45.0, 84.6, THE_BARRENS },
						{ 44.8, 79.6, THE_BARRENS },
					},
				}),
				n(5847, {	-- Heggin Stonewhisker <Bael'dun Chief Engineer>
					["coord"] = { 47.0, 83.8, THE_BARRENS },
					["groups"] = {
						i(2035),	-- Sword of the Night Sky
					},
				}),
				n(5828, {	-- Humar the Pridelord
					["coord"] = { 62.0, 33.6, THE_BARRENS },
				}),
				n(5848, {	-- Malgin Barleybrew <Bael'dun Morale Officer>
					["coord"] = { 49.4, 84.4, THE_BARRENS },
				}),
				n(3470, {	-- Rathorian
					["coord"] = { 47.6, 19.2, THE_BARRENS },
					["groups"] = {
						i(5111),  -- Rathorian's Cape
						i(5112),  -- Ritual Blade
					},
				}),
				n(5841, {	-- Rocklance
					["coords"] = {
						{ 53.4, 37.4, THE_BARRENS },
						{ 53.8, 41.2, THE_BARRENS },
						{ 53.0, 44.6, THE_BARRENS },
						{ 54.6, 48.0, THE_BARRENS },
						{ 55.4, 45.6, THE_BARRENS },
						{ 56.8, 41.8, THE_BARRENS },
						{ 55.6, 39.0, THE_BARRENS },
					},
				}),
				n(3253, {	-- Silithid Harvester
					["coords"] = {
						{ 42.6, 70.6, THE_BARRENS },
						{ 44.6, 70.0, THE_BARRENS },
						{ 44.4, 74.0, THE_BARRENS },
						{ 47.8, 70.2, THE_BARRENS },
					},
					["groups"] = {
						{
							["itemID"] = 5138,	-- Harvester's Head
							["questID"] = 897,	-- The Harvester
							["races"] = HORDE_ONLY,
						},
					},
				}),
				n(5830, {	-- Sister Rathtalon
					["coords"] = {
						{ 39.6, 12.8, THE_BARRENS },
						{ 39.0, 16.2, THE_BARRENS },
						{ 40.6, 17.8, THE_BARRENS },
					},
				}),
				n(3295, {	-- Sludge Beast
					["coords"] = {
						{ 56.6, 7.4, THE_BARRENS },
						{ 56.2, 9.6, THE_BARRENS },
					},
				}),
				n(5829, {	-- Snort the Heckler
					["coords"] = {
						{ 41.8, 20.4, THE_BARRENS },
						{ 40.8, 23.4, THE_BARRENS },
						{ 41.4, 27.2, THE_BARRENS },
					},
				}),
				n(5837, {	-- Stonearm
					["coords"] = {
						{ 46.6, 23.0, THE_BARRENS },
						{ 42.2, 24.6, THE_BARRENS },
					},
					["groups"] = {
						i(1355),	-- Buckskin Cape
					},
				}),
				n(5831, {	-- Swiftmane
					["coords"] = {
						{ 60.6, 30.4, THE_BARRENS },
						{ 59.2, 32.6, THE_BARRENS },
						{ 61.8, 33.8, THE_BARRENS },
					},
				}),
				n(5864, {	-- Swinegart Spearhide
					["coords"] = {
						{ 41.4, 45.6, THE_BARRENS },
						{ 42.2, 48.0, THE_BARRENS },
						{ 45.2, 49.0, THE_BARRENS },
					},
				}),
				n(5842, {	-- Takk the Leaper
					["coords"] = {
						{ 58.2, 7.6, THE_BARRENS },
						{ 60.6, 10.0, THE_BARRENS },
						{ 61.0, 13.6, THE_BARRENS },
					},
				}),
				n(5832, {	-- Thunderstomp
					["coords"] = {
						{ 47.0, 77.2, THE_BARRENS },
						{ 46.4, 78.6, THE_BARRENS },
						{ 48.0, 80.8, THE_BARRENS },
					},
				}),
				n(3652, {	-- Trigore the Lasher
					["description"] = "Inside the pool of water outside the Wailing Caverns dungeon portal.",
					["groups"] = {
						i(5425),	-- Runescale Girdle
						i(5426),	-- Serpent's Kiss
					},
				}),
			}),
			n(VENDORS, {
				n(3495, {	-- Gagsprocket <Engineering Goods>
					["coord"] = { 62.7, 36.3, THE_BARRENS },
					["groups"] = {
						i(18648, {	-- Schematic: Green Firework
							["isLimited"] = true,
						}),
						-- #if AFTER TBC
						i(14639, {	-- Schematic: Minor Recombobulator
							["isLimited"] = true,
						}),
						-- #endif
					},
				}),
				n(3493, {	-- Grazlix <Armorer & Shieldcrafter>
					["coord"] = { 62.2, 38.4, THE_BARRENS },
					["groups"] = {
						i(4797),	-- Fiery Cloak
						i(4798),	-- Heavy Runed Cloak
						i(4799),	-- Antiquated Cloak
						i(4800),	-- Mighty Chain Pants
						i(4816),	-- Legionnaire's Leggings
						i(4820),	-- Guardian Buckler
						i(4821),	-- Bear Buckler
						i(4822),	-- Owl's Disk
					},
				}),
				-- #if AFTER WRATH
				n(3443, {	-- Grub
					["coord"] = { 55.2, 31.8, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(44977),	-- Recipe: Dig Rat Stew
					},
				}),
				-- #endif
				n(3486, {	-- Halija Whitestrider <Clothier>
					["coord"] = { 52.2, 31.8, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4781),	-- Whispering Vest
						i(4782),	-- Solstice Robe
						i(4786),	-- Wise Man's Belt
						i(4790),	-- Inferno Cloak
						i(4792),	-- Spirit Cloak
						i(4793),	-- Sylvan Cloak
					},
				}),
				n(3490, {	-- Hula'mahi <Reagents and Herbs>
					["coord"] = { 51.4, 30.2, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6053),	-- Recipe: Holy Protection Potion
					},
				}),
				n(3683, {	-- Kiknikle <Stylish Clothier>
					["coord"] = { 41.8, 38.6, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4781),	-- Whispering Vest
						i(4782),	-- Solstice Robe
						i(4786),	-- Wise Man's Belt
						i(5772),	-- Pattern: Red Woolen Bag
					},
				}),
				n(3497, {	-- Kilxx <Fisherman>
					["coord"] = { 62.8, 38.2, THE_BARRENS },
					["groups"] = {
						i(6330),	-- Recipe: Bristle Whisker Catfish
						i(6368),	-- Recipe: Rainbow Fin Albacore
					},
				}),
				n(3658, {	-- Lizzarik <Weapon Dealer>
					["coords"] = {
						{ 52.4, 30.6, THE_BARRENS },
						{ 61.8, 38.2, THE_BARRENS },
					},
					["groups"] = {
						i(4765),	-- Enamelled Broadsword
						i(4766),	-- Feral Blade
						i(4777),	-- Ironwood Maul
						i(4778),	-- Heavy Spiked Mace
					},
				}),
				n(3479, {	-- Nargal Deatheye <Weaponsmith>
					["coord"] = { 51.2, 29.2, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4765),	-- Enamelled Broadsword
						i(4766),	-- Feral Blade
					},
				}),
				n(3684, {	-- Pizznukle <Leather Armor Merchant>
					["coord"] = { 41.8, 38.6, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4788),	-- Agile Boots
						i(4789),	-- Stable Boots
					},
				}),
				-- #if AFTER WRATH
				n(3392, {	-- Prospector Khazgorm <Explorers' League>
					["coord"] = { 47.8, 85.6, THE_BARRENS },
					["timeline"] = { "removed 4.3.0.2000" },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(44977),	-- Recipe: Dig Rat Stew
					},
				}),
				-- #endif
				n(3499, {	-- Ranik <Trade Supplies>
					["coord"] = { 61.9, 38.7, THE_BARRENS },
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, i(20855)),	-- Design: Wicked Moonstone Ring
						i(5640),	-- Recipe: Rage Potion
						i(6272),	-- Pattern: Blue Linen Robe
						i(6275),	-- Pattern: Greater Adept's Robe
					},
				}),
				n(8307, {	-- Tarban Hearthgrain <Baker>
					["coord"] = { 55.0, 32.0, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
				n(3482, {	-- Tari'qa <Trade Supplies>
					["coord"] = { 51.6, 30.0, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5486),	-- Recipe: Strider Stew
						i(5488),	-- Recipe: Crispy Lizard Tail
					},
				}),
				n(3488, {	-- Uthrok <Bowyer & Gunsmith>
					["coord"] = { 51.0, 29.0, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11304, {	-- Fine Longbow
							["isLimited"] = true,
						}),
					},
				}),
				n(3492, {	-- Vexspindle <Cloth & Leather Armor Merchant>
					["coord"] = { 62.2, 38.4, THE_BARRENS },
					["groups"] = {
						i(4794),	-- Wolf Bracers
						i(4795),	-- Bear Bracers
						i(4796),	-- Owl Bracers
					},
				}),
				n(3682, {	-- Vrang Wildgore <Weaponsmith & Armorcrafter>
					["coord"] = { 43.8, 12.2, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4765),	-- Enamelled Broadsword
						i(4766),	-- Feral Blade
						i(4777),	-- Ironwood Maul
						i(4778),	-- Heavy Spiked Mace
						i(4797),	-- Fiery Cloak
						i(4798),	-- Heavy Runed Cloak
						i(4799),	-- Antiquated Cloak
						i(4800),	-- Mighty Chain Pants
						i(4816),	-- Legionnaire's Leggings
					},
				}),
				n(5944, {	-- Yonada <Tailoring & Leatherworking Supplies>
					["coord"] = { 45.0, 59.2, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5772),	-- Pattern: Red Woolen Bag
						i(6274),	-- Pattern: Blue Overalls
					},
				}),
				n(3489, {	-- Zargh <Butcher>
					["coord"] = { 52.6, 29.8, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(3735),	-- Recipe: Hot Lion Chops
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(5107, {	-- Deckhand's Shirt
					["crs"] = {
						3381,	-- Southsea Brigand
						3382,	-- Southsea Cannoneer
						3383,	-- Southsea Cutthroat
						3384,	-- Southsea Privateer
					},
				}),
				i(5051, {	-- Dig Rat
					["coord"] = { 48.8, 84.8, THE_BARRENS },
					["cr"] = 3444,	-- Dig Rat
				}),
				i(5026, {	-- Fire Tar
					["questID"] = 1525,	-- Call of Fire (3/5)
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["crs"] = {
						3269,	-- Razormane Geomancer
						3271,	-- Razormane Mystic
						3268,	-- Razormane Thornweaver
						3267,	-- Razormane Water Seeker
					},
				}),
				i(5055, {	-- Intact Raptor Horn
					["questID"] = 865,	-- Raptor Horns
					["crs"] = {
						3257,	-- Ishamuhale
						3256,	-- Sunscale Scytheclaw
						5842,	-- Takk the Leaper
					},
				}),
				-- #if AFTER 4.2.0.10000
				-- #if BEFORE 4.3.0.10000
				i(44977, {	-- Recipe: Dig Rat Stew
					["crs"] = {
						39153,	-- Excavation Raider
						3376,	-- Bael'dun Soldier
						3378,	-- Bael'dun Officer
						3377,	-- Bael'dun Rifleman
					},
				}),
				-- #endif
				-- #endif
				i(6663),	-- Recipe: Elixir of Giant Growth
				i(6661),	-- Recipe: Savory Deviate Delight
				i(7119, {	-- Twitching Antenna
					["questID"] = 1824,	-- Trial at the Field of Giants
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["crs"] = {
						3250,	-- Silithid Creeper
						3251,	-- Silithid Grub
						3253,	-- Silithid Harvester
						3503,	-- Silithid Protector
						3252,	-- Silithid Swarmer
					},
				}),
				i(5086, {	-- Zhevra Hooves
					["questID"] = 845,	-- The Zhevra
					["races"] = HORDE_ONLY,
					["crs"] = {
						5831,	-- Swiftmane
						3426,	-- Zhevra Charger
						3466,	-- Zhevra Courser
						3242,	-- Zhevra Runner
					},
				}),
			}),
		},
	}),
}));