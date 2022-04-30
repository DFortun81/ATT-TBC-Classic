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
root("Zones", m(EASTERN_KINGDOMS, {
	m(IRONFORGE, {
		-- #if AFTER CATA
		["lore"] = "Ironforge is the capital city of the dwarves, proud members of the Alliance. It is the ancestral home of the Bronzebeard dwarves. The Council of Three Hammers rules the kingdom of Khaz Modan from the throne room within the city.",
		-- #else
		["lore"] = "Ironforge is the capital city of the dwarves, proud members of the Alliance. It is the ancestral home of the Bronzebeard dwarves. King Bronzebeard rules the kingdom of Khaz Modan from the throne room within the city. The Great Forge area gave the city its name.\n\nCarved into the stone heart of Khaz Modan, the mighty city of Ironforge is a testament to the dwarves' strength and resilience. The city is perhaps the most intricate of the Alliance cities, boasting many small passageways, shops built into the rock walls, and cavernous rooms. The feel of the city is a bustling, rowdy, and somewhat industrial one. However, it is predominantly safe-feeling and cozy; fires roar in the hearths of the inns and shops, and much dwarven laughing and frivolity is to be heard. Also, unlike Stormwind and Darnassus, the city is actually a massive cavern carved into the earth by the dwarves; the ceiling and floor are both hard stone.\n\nMainly because of the Deeprun Tram, linking Ironforge and Stormwind City, and the district of Tinker Town, Ironforge is one of the most racially diverse cities in the Alliance world. Dwarves predominate, of course, but you will find plenty of gnomes even outside of Tinker Town, and probably as many humans. You will find almost no night elves however, as they probably prefer more natural and open spaced environments.",
		-- #endif
		-- #if AFTER WRATH
		["icon"] = "Interface\\Icons\\Inv_misc_tournaments_symbol_dwarf",
		-- #endif
		-- #if AFTER CATA
		["maps"] = { 1361 },	-- Old Ironforge
		-- #endif
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(5847, applyclassicphase(CATA_PHASE_ONE, {	-- Fish or Cut Bait: Ironforge
					["timeline"] = { "added 4.2.0" },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
				})),
				ach(5841, applyclassicphase(CATA_PHASE_ONE, {	-- Let's Do Lunch: Ironforge
					["timeline"] = { "added 4.2.0" },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
				})),
				ach(1837, applyclassicphase(TBC_PHASE_ONE, {	-- Old Ironjaw
					["provider"] = { "i", 34484 },	-- Old Ironjaw
					["requireSkill"] = FISHING,
					-- #if BEFORE WRATH
					["description"] = "Fish up Old Ironjaw in Ironforge.",
					["OnUpdate"] = [[_.CommonAchievementHandlers.ANY_ITEM_PROVIDER]],
					-- #endif
				})),
			}),
			n(FACTIONS, {
				faction(54, {	-- Gnomeregan Exiles
					["icon"] = asset("Achievement_Character_Gnome_Male"),
					-- #if BEFORE CATA
					["OnTooltip"] = OnTooltipForCityFactionReputation,
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
				faction(47, {	-- Ironforge
					["icon"] = asset("Achievement_Character_Dwarf_Male"),
					-- #if BEFORE CATA
					["OnTooltip"] = OnTooltipForCityFactionReputation,
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			applyclassicphase(TBC_PHASE_ONE, prof(FISHING, {
				i(34864),	-- Baby Crocolisk
				i(122204, {	-- Music Roll: Cold Mountain
					["timeline"] = { "added 6.1.0.19480" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(34484, {	-- Old Ironjaw
					-- #if BEFORE WRATH
					["description"] = "Keep this in your bank until Achievements are added otherwise you'll need to fish it up again. Fair warning!",
					-- #elseif BEFORE LEGION
					["description"] = "Keep this in your bank until Transmog is added otherwise you'll need to fish it up again. Fair warning!",
					-- #endif
				}),
			})),
			n(FLIGHT_PATHS, {
				fp(6, {	-- Ironforge, Dun Morogh
					["cr"] = 1573,	-- Gryth Thurden <Gryphon Master>
					["coord"] = { 55.6, 48.0, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(7809, {	-- A Donation of Mageweave
					["qg"] = 14724,	-- Bubulo Acerbus
					["coord"] = { 74.1, 48.1, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4338, 60 },	-- Mageweave Cloth
					},
					["lvl"] = 40,
				}),
				q(7804, {	-- A Donation of Mageweave
					["qg"] = 14723,	-- Mistina Steelshield
					["coord"] = { 43.2, 31.9, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4338, 60 }, 	-- Mageweave Cloth
					},
					["lvl"] = 40,
				}),
				q(7811, {	-- A Donation of Runecloth
					["qg"] = 14724,	-- Bubulo Acerbus
					["coord"] = { 74.1, 48.1, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 14047, 60 },	-- Runecloth
					},
					["lvl"] = 50,
				}),
				q(7805, {	-- A Donation of Runecloth
					["qg"] = 14723,	-- Mistina Steelshield
					["coord"] = { 43.2, 31.9, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 14047, 60 },	-- Runecloth
					},
					["lvl"] = 50,
				}),
				q(7808, {	-- A Donation of Silk
					["qg"] = 14724,	-- Bubulo Acerbus
					["coord"] = { 74.1, 48.1, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4306, 60 },	-- Silk Cloth
					},
					["lvl"] = 26,
				}),
				q(7803, {	-- A Donation of Silk
					["qg"] = 14723,	-- Mistina Steelshield
					["coord"] = { 43.2, 31.9, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4306, 60 }, 	-- Silk Cloth
					},
					["lvl"] = 26,
				}),
				q(7802, {	-- A Donation of Wool
					["qg"] = 14723,	-- Mistina Steelshield
					["coord"] = { 43.2, 31.9, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2592, 60 },	-- Wool Cloth
					},
					["lvl"] = 12,
				}),
				q(7807, {	-- A Donation of Wool
					["qg"] = 14724,	-- Bubulo Acerbus
					["coord"] = { 74.1, 48.1, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2592, 60 },	-- Wool Cloth
					},
					["lvl"] = 12,
				}),
				q(686, {	-- A King's Tribute (1/3)
					["qg"] = 2784,	-- King Magni Bronzebeard
					["sourceQuest"] = 683,	-- Sara Balloo's Plea
					["coord"] = { 39.4, 55.8, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(689, {	-- A King's Tribute (2/3)
					["qg"] = 2790,	-- Grand Mason Marblesten
					["sourceQuest"] = 686,	-- A King's Tribute (1/3)
					["coord"] = { 38.6, 87, IRONFORGE },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4521, 5 },	-- Alterac Granite
					},
					["lvl"] = 25,
				}),
				q(700, {	-- A King's Tribute (3/3)
					["qg"] = 2790,	-- Grand Mason Marblesten
					["sourceQuest"] = 689,	-- A King's Tribute (2/3)
					["coord"] = { 38.6, 87, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						i(4535),	-- Ironforge Memorial Ring
					},
				}),
				q(4512, {	-- A Little Slime Goes a Long Way (1/2)
					["qg"] = 9616,	-- Laris Geardawdle
					["coord"] = { 75.6, 23.5, IRONFORGE },
					["maps"] = { FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11947, 6 },	-- Filled Cursed Ooze Jar
						{ "i", 11949, 6 },	-- Filled Tainted Ooze Jar
					},
					["lvl"] = 48,
					["groups"] = {
						i(11912, {	 -- Package of Empty Ooze Containers
							{
								["itemID"] = 11914,	-- Empty Cursed Ooze Jar
								["cr"] = 7086,	-- Cursed Ooze
								["groups"] = {
									{
										["itemID"] = 11947,	-- Filled Cursed Ooze Jar
										["questID"] = 4512,	-- A Little Slime Goes a Long Way (1/2)
									},
								},
							},
							{
								["itemID"] = 11948,	-- Empty Tainted Ooze Jar
								["cr"] = 7092,	-- Tainted Ooze
								["groups"] = {
									{
										["itemID"] = 11949,	-- Filled Tainted Ooze Jar
										["questID"] = 4512,	-- A Little Slime Goes a Long Way (1/2)
									},
								},
							},
						}),
					},
				}),
				q(4513, {	-- A Little Slime Goes a Long Way (2/2)
					["qg"] = 9616,	-- Laris Geardawdle
					["sourceQuest"] = 4512,	-- A Little Slime Goes a Long Way (1/2)
					["coord"] = { 75.6, 23.5, IRONFORGE },
					["maps"] = { UNGORO_CRATER },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11954, 10 },	-- Filled Pure Sample Jar
					},
					["lvl"] = 40,
					["groups"] = {
						i(11955, {	-- Bag of Empty Ooze Containers
							{
								["itemID"] = 11953,	-- Empty Pure Sample Jar
								["crs"] = {
									6556,	-- Muculent Slime
									6557,	-- Primal Ooze
								},
								["groups"] = {
									{
										["itemID"] = 11954,	-- Filled Pure Sample Jar
										["questID"] = 4513,	-- A Little Slime Goes a Long Way (2/2)
									},
								},
							},
						}),
						i(12050),	-- Hazecover Boots
						i(12051),	-- Brazen Gauntlets
					},
				}),
				q(7806, {	-- Additional Runecloth [Ironforge]
					["qg"] = 14723,	-- Mistina Steelshield
					["sourceQuest"] = 7805,	-- A Donation of Runecloth
					["coord"] = { 43.2, 31.9, IRONFORGE },
					["cost"] = { { "i", 14047, 20 } }, 	-- Runecloth
					["maxReputation"] = { 47, EXALTED },	-- Ironforge, Exalted.
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(7812, {	-- Additional Runecloth [Gnomeregan Exiles]
					["qg"] = 14724,	-- Bubulo Acerbus
					["sourceQuest"] = 7811,	-- A Donation of Runecloth
					["coord"] = { 74.1, 48.1, IRONFORGE },
					["cost"] = { { "i", 14047, 20 } }, 	-- Runecloth
					["maxReputation"] = { 54, EXALTED },	-- Gnomeregan Exiles, Exalted.
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(3450, {	-- An Easy Pickup
					["qg"] = 8507,	-- Tymor
					["sourceQuest"] = 3448,	-- Passing the Burden
					["coord"] = { 31.2, 4.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 45,
				}),
				q(3449, {	-- Arcane Runes
					["qg"] = 8507,	-- Tymor
					["sourceQuest"] = 3448,	-- Passing the Burden
					["coord"] = { 31.2, 4.6, IRONFORGE },
					["maps"] = { AZSHARA },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10563, 1 },	-- Rubbing: Rune of Beth'Amara
						{ "i", 10564, 1 },	-- Rubbing: Rune of Jin'yael
						{ "i", 10565, 1 },	-- Rubbing: Rune of Markri
						{ "i", 10566, 1 },	-- Rubbing: Rune of Sael'hai
					},
					["lvl"] = 45,
					["groups"] = {
						i(10445, {	-- Drawing Kit
							{
								["itemID"] = 10563,	-- Rubbing: Rune of Beth'Amara
								["questID"] = 3449,	-- Arcane Runes
								["coord"] = { 36, 53, AZSHARA },
							},
							{
								["itemID"] = 10564,	-- Rubbing: Rune of Jin'yael
								["questID"] = 3449,	-- Arcane Runes
								["coord"] = { 39, 50, AZSHARA },
							},
							{
								["itemID"] = 10565,	-- Rubbing: Rune of Markri
								["questID"] = 3449,	-- Arcane Runes
								["coord"] = { 39, 55, AZSHARA },
							},
							{
								["itemID"] = 10566,	-- Rubbing: Rune of Sael'hai
								["questID"] = 3449,	-- Arcane Runes
								["coord"] = { 42, 64, AZSHARA },
							},
						}),
						{
							["itemID"] = 10444,	-- Standard Issue Flare Gun
							["questID"] = 3449,	-- Arcane Runes
							["coord"] = { 77, 91, AZSHARA },
							["description"] = "DO NOT LEAVE IRONFORGE WITHOUT THIS.\n - Crieve",
						},
					},
				}),
				q(7342, {	-- Arrows Are For Sissies
					["qg"] = 14183,	-- Artilleryman Sheldonore
					["coord"] = { 19.6, 52.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15997, 200 },	-- Thorium Shells
					},
					["lvl"] = 52,
					["groups"] = {
						i(18042),	-- Thorium Headed Arrow
					},
				}),
				q(2039, {	-- Find Bingles
					["qg"] = 6569,	-- Gnoarn
					["coord"] = { 69.4, 50.8, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 12,
				}),
				q(1717, {	-- Gakin's Summons
					["qg"] = 6120,	-- Lago Blackwrench
					["coord"] = { 47.6, 9.6, IRONFORGE },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1682, {	-- Grey Iron Weapons
					["qg"] = 6031,	-- Tormus Deepforge
					["sourceQuest"] = 1681,	-- Ironband's Compound
					["coord"] = { 49, 42.6, IRONFORGE },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(6978),	-- Umbral Axe
						i(6984),	-- Umbral Sword
						i(6982),	-- Umbral Mace
						i(6981),	-- Umbral Dagger
					},
				}),
				q(6388, {	-- Gryth Thurden
					["providers"] = {
						{ "n", 4256 },	-- Golnir Bouldertoe
						{ "i", 16311 },	-- Honorary Picks
					},
					["sourceQuest"] = 6391,	-- Ride to Ironforge
					["coord"] = { 51, 26, IRONFORGE },
					["races"] = { DARKIRON, DWARF, GNOME },
					-- #if BEFORE 4.0.3
					["lvl"] = 10,
					-- #endif
				}),
				q(6609, {	-- I Got Nothin' Left!
					["qg"] = 5161,	-- Grimnur Stonebrand <Fishing Trainer>
					["description"] = "Requires 225 Fishing to start this quest.",
					["coord"] = { 48.4, 6.4, IRONFORGE },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(1073, {	-- Ineptitude + Chemicals = Fun (1/2)
					["qg"] = 4081,	-- Lomac Gearstrip
					["sourceQuest"] = 1072,	-- An Old Colleague
					["coord"] = { 71.9, 51.9, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2455, 4 },	-- Minor Mana Potion
						{ "i", 2458, 2 },	-- Elixir of Minor Fortitude
					},
					["lvl"] = 17,
				}),
				q(1074, {	-- Ineptitude + Chemicals = Fun (2/2)
					["qg"] = 4081,	-- Lomac Gearstrip
					["sourceQuest"] = 1073,	-- Ineptitude + Chemicals = Fun (1/2)
					["coord"] = { 71.9, 51.9, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5732, 1 },	-- NG-5
					},
					["lvl"] = 17,
				}),
				q(1708, {	-- Iron Coral
					["qg"] = 6169,	-- Klockmort Spannerspan
					["sourceQuest"] = 1704,	-- Klockmort Spannerspan
					["coord"] = { 68.2, 46.2, IRONFORGE },
					["maps"] = { WETLANDS },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6848, 20 },	-- Searing Coral
					},
					["lvl"] = 20,
				}),
				q(707, {	-- Ironband Wants You!
					["qg"] = 1356,	-- Prospector Stormpike
					["coord"] = { 74.64, 11.74, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1681, {	-- Ironband's Compound
					["qg"] = 6031,	-- Tormus Deepforge
					["sourceQuest"] = 1680,	-- Tormus Deepforge
					["coord"] = { 49, 42.6, IRONFORGE },
					["maps"] = { DUN_MOROGH },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6800, 1 },	-- Umbral Ore
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 6800,	-- Umbral Ore
							["questID"] = 1681,	-- Ironband's Compound
							["coord"] = { 77.9, 62.2, DUN_MOROGH },
						},
					},
				}),
				q(2298, {	-- Kingly Shakedown
					["qg"] = 5165,	-- Hulfdan Blackbeard
					["sourceQuest"] = 2299,	-- To Hulfdan!
					["coord"] = { 51.6, 14.8, IRONFORGE },
					["classes"] = { ROGUE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				q(1709, {	-- Klockmort's Creation
					["qg"] = 6169,	-- Klockmort Spannerspan
					["sourceQuest"] = 1708,	-- Iron Coral
					["coord"] = { 68.2, 46.2, IRONFORGE },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(6974),	-- Fire hardened Gauntlets
					},
				}),
				q(1880,	{	-- Mage-tastic Gizmonitor
					["qg"] = 5144,	-- Bink <Mage Trainer>
					["sourceQuest"] = 1879,	-- Speak with Bink
					["coord"] = { 27, 8.2, IRONFORGE },
					["classes"] = { MAGE },
					["races"] = ALLIANCE_ONLY,
					["altQuests"] = {
						1861,	-- Mirror Lake
					},
					["cost"] = {
						{ "i", 7226, 1 },	-- Mage-tastic Gizmonitor
					},
					["lvl"] = 10,
					["groups"] = {
						i(7507),	-- Arcane Orb
						i(9514),	-- Arcane Staff
					},
				}),
				q(3448, {	-- Passing the Burden
					["qg"] = 2916,	-- Historian Karnik
					["coord"] = { 77.2, 11.8, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 45,
				}),
				q(6392, {	-- Return to Brock / Return to Gremlock [CATA+]
					["providers"] = {
						{ "n", 1573 },	-- Gryth Thurden
						{ "i", 16311 },	-- Honorary Picks
					},
					["sourceQuest"] = 6388,	-- Gryth Thurden
					-- #if AFTER 4.0.3
					["coord"] = { 55.8, 47.8, IRONFORGE },
					["maps"] = { DUN_MOROGH },
					-- #else
					["coord"] = { 55.6, 48, IRONFORGE },
					["maps"] = { LOCH_MODAN },
					-- #endif
					["races"] = { DARKIRON, DWARF, GNOME },
					-- #if BEFORE 4.0.3
					["lvl"] = 10,
					-- #endif
				}),
				q(3461, {	-- Return to Tymor
					["qg"] = 8392,	-- Pilot Xiggs Fuselighter
					["sourceQuest"] = 3449,	-- Arcane Runes
					["coord"] = { 77.8, 91.4, AZSHARA },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10445, 1 },	-- Drawing Kit
					},
					["lvl"] = 45,
					["groups"] = {
						i(10707),	-- Steelsmith Greaves
						i(10708),	-- Skullspell Orb
					},
				}),
				q(683, {	-- Sara Balloo's Plea
					["qg"] = 2695,	-- Sara Balloo
					["sourceQuest"] = 637,	-- Sully Balloo's Letter
					["coord"] = { 63.5, 67.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4514, 1 },	-- Sara Balloo's Plea
					},
					["lvl"] = 25,
				}),
				q(3451, {	-- Signal for Pickup (1/2)
					["qg"] = 8517,	-- Xiggs Fuselighter
					["sourceQuest"] = 3450,	-- An Easy Pickup
					["coord"] = { 71, 94.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 45,
					["groups"] = {
						i(10444),	-- Standard Issue Flare Gun
					},
				}),
				q(3483, {	-- Signal for Pickup (2/2)
					["qg"] = 8517,	-- Xiggs Fuselighter
					["sourceQuest"] = 3451,	-- Signal for Pickup (1/2)
					["coord"] = { 71, 94.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 45,
					["groups"] = {
						i(10444),	-- Standard Issue Flare Gun
					},
				}),
				q(2238, {	-- Simple Subterfugin'
					["qg"] = 5165,	-- Hulfdan Blackbeard
					["sourceQuest"] = 2218,	-- Road to Salvation
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 10,
				}),
				q(2041, {	-- Speak with Shoni
					["qg"] = 6569,	-- Gnoarn
					["coord"] = { 69.4, 50.8, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 15,
				}),
				q(1715, {	-- The Slaughtered Lamb
					["qg"] = 6120,	-- Lago Blackwrench
					["coord"] = { 47.6, 9.6, IRONFORGE },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(3681, {	-- The Tome of Divinity
					["qg"] = 5149,	-- Brandur Ironhammer
					["coord"] = { 23.4, 6.2, IRONFORGE },
					["altQuests"] = {
						2998, 	-- The Tome of Divinity
						1787,	-- The Tome of Divinity (8)
					},
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1802, {	-- Tome of the Cabal (2/3 Alliance)
					["qg"] = 6294,	-- Krom Stoutarm
					["sourceQuest"] = 1758,	-- Tome of the Cabal (1/3 Alliance)
					["coord"] = { 74.4, 9.4, IRONFORGE },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6931, 1 },	-- Moldy Tome
						{ "i", 6997, 1 },	-- Tattered Manuscript
					},
					["lvl"] = 30,
				}),
				q(1804, {	-- Tome of the Cabal (3/3 Alliance)
					["qg"] = 6294,	-- Krom Stoutarm
					["sourceQuest"] = 1802,	-- Tome of the Cabal (2/3 Alliance)
					["coord"] = { 74.4, 9.4, IRONFORGE },
					["maps"] = { WETLANDS },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 7006, 1 },	-- Reconstructed Tome
						{ "i", 6930, 3 },	-- Rod of Channeling
					},
					["lvl"] = 30,
				}),
				q(1680, {	-- Tormus Deepforge
					["qg"] = 6114,	-- Muren Stormpike
					["sourceQuest"] = 1678,	-- Vejrek
					["coord"] = { 70.6, 90.4, IRONFORGE },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(1678, {	-- Vejrek
					["qg"] = 6114,	-- Muren Stormpike
					["sourceQuests"] = {
						1638,	-- A Warrior's Training
						1684,	-- Elanaria
						1679,	-- Muren Stormpike
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
					},
					["altQuests"] = {
						1665,	-- Bartleby's Mug
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
						--1678,	-- Vejrek
						1683,	-- Vorlus Vilehoof
					},
					["coord"] = { 70.6, 90.4, IRONFORGE },
					["maps"] = { DUN_MOROGH },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6799, 1 },	-- Vejrek's Head
					},
					["lvl"] = 10,
					["groups"] = {
						i(6799, {	-- Vejrek's Head
							["cr"] = 6113,	-- Vejrek
							["coord"] = { 27.8, 57.4, DUN_MOROGH },
						}),
						-- #if BEFORE CATA
						recipe(71),		-- Defensive Stance
						--recipe(7386),	-- Sunder Armor	[TODO: Users are reporting they can't collect this.]
						recipe(355),	-- Taunt
						-- #endif
					},
				}),
			}),
			n(VENDORS, {
				n(5128, {	-- Bombus Finespindle <Leatherworking Supplies>
					["coord"] = { 40.0, 33.4, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(18731, {	-- Pattern: Heavy Leather Ball
							["isLimited"] = true,
						}),
					},
				}),
				n(5163, {	-- Burbik Gearspanner <Trade Supplies>
					["coord"] = { 46.6, 27.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if AFTER TBC
						i(21948, {	-- Design: Opal Necklace of Impact
							["isLimited"] = true,
						}),
						i(20975, {	-- Design: The Jade Eye
							["isLimited"] = true,
						}),
						-- #endif
					},
				}),
				n(5160, {	-- Emrul Riknussun <Cooking Supplier>
					["coord"] = { 60.6, 38.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
				n(5175, {	-- Gearcutter Cogspinner <Engineering Supplies>
					["coord"] = { 67.9, 42.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(18649, {	-- Schematic: Blue Firework
							["isLimited"] = true,
						}),
						i(7560, {	-- Schematic: Gnomish Universal Remote
							["isLimited"] = true,
						}),
						applyclassicphase(TBC_PHASE_ONE, i(22729, {	-- Schematic: Steam Tonk Controller
							["isLimited"] = true,
						})),
						i(16041, {	-- Schematic: Thorium Grenade
							["isLimited"] = true,
						}),
						i(16042, {	-- Schematic: Thorium Widget
							["isLimited"] = true,
						}),
					},
				}),
				n(8681, {	-- Outfitter Eric <Speciality Tailoring Supplies>
					["coord"] = { 43.2, 29.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(10314, {	-- Pattern: Lavender Mageweave Shirt
							["isLimited"] = true,
						}),
						i(10317, {	-- Pattern: Pink Mageweave Shirt
							["isLimited"] = true,
						}),
						i(10326, {	-- Pattern: Tuxedo Jacket
							["isLimited"] = true,
						}),
						i(10323, {	-- Pattern: Tuxedo Pants
							["isLimited"] = true,
						}),
						i(10321, {	-- Pattern: Tuxedo Shirt
							["isLimited"] = true,
						}),
					},
				}),
				n(5122, {	-- Skolmin Goldfury <Bow Merchant>
					["coord"] = { 71.6, 66.2, IRONFORGE },
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
				n(5178, {	-- Soolie Berryfizz <Alchemy Supplies>
					["coord"] = { 66.6, 54.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(13478, {	-- Recipe: Elixir of Superior Defense
							["isLimited"] = true,
						}),
						i(5642, {	-- Recipe: Free Action Potion
							["isLimited"] = true,
						}),
					},
				}),
				n(5162, {	-- Tansy Puddlefizz <Fishing Supplier>
					["coord"] = { 47.8, 6.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6326),	-- Recipe: Slitherskin Mackerel
						i(6328),	-- Recipe: Longjaw Mud Snapper
						i(6369),	-- Recipe: Rockscale Cod
						i(17062),	-- Recipe: Mithril Head Trout
					},
				}),
				n(5158, {	-- Tilli Thistlefuzz <Enchanting Supplies>
					["coord"] = { 60.8, 44.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if BEFORE CATA
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						-- #endif
						i(6349, {	-- Formula: Enchant 2H Weapon - Lesser Intellect
							["isLimited"] = true,
						}),
						-- #if NOT CLASSIC
						i(20753),	-- Formula: Lesser Wizard Oil
						i(20752),	-- Formula: Minor Mana Oil
						i(20758),	-- Formula: Minor Wizard Oil
						-- #endif
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
			}),
		},
	}),
}));