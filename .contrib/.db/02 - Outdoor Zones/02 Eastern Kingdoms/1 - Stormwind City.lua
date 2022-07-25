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
				q(58983, {	-- Battle for Azeroth: Tides of War (Shadowlands version)
					["qg"] = 163219,	-- Captain Garrick
					["sourceQuest"] = 58912,	-- An Urgent Meeting
					["altQuests"] = { 46727 },	-- Tides of War
					["coord"] = { 85.2, 32.1, STORMWIND_CITY },
					["timeline"] = { "added 9.0.1.36228" },
					["races"] = ALLIANCE_ONLY,
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
					["sourceQuest"] = 1717,	-- Gakin's Summons
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
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				q(1782, {	-- Furen's Armor
					["qg"] = 5413,	-- Furen Longbeard
					["sourceQuest"] = 1701,	-- Fire Hardened Mail
					-- #if AFTER WRATH
					["coord"] = { 64.6, 37.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 58.0, 16.8, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["groups"] = {
						i(6972),	-- Fire Hardened Hauberk
					},
				}),
				q(1685, {	-- Gakin's Summons
					["qg"] = 6121,	-- Remen Marcot
					["altQuests"] = { 1715 }, -- The Slaughtered Lamb
					["coord"] = { 44.4, 66.2, ELWYNN_FOREST },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(1717, {	-- Gakin's Summons
					["qg"] = 6120,	-- Lago Blackwrench
					["coord"] = { 47.6, 9.6, IRONFORGE },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1921, {	-- Gathering Materials
					["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
					["sourceQuest"] = 1920,	-- Investigate the Blue Recluse
					["coord"] = { 38.6, 79.6, STORMWIND_CITY },
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
				q(1700, {	-- Grimand Elmore
					["qg"] = 5413,	-- Furen Longbeard
					["sourceQuest"] = 1701,	-- Fire Hardened Mail
					-- #if AFTER WRATH
					["coord"] = { 64.6, 37.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 58.0, 16.8, STORMWIND_CITY },
					-- #endif
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
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["groups"] = {
						i(6971),	-- Fire Hardened Coif
					},
				}),
				q(333, {	-- Harlan Needs a Resupply
					["qg"] = 1427,	-- Harlan Bagley
					["coord"] = { 55.1, 56.0, STORMWIND_CITY },
					["cost"] = {
						{ "i", 2724, 1 },	-- Cloth Request
					},
					["races"] = ALLIANCE_ONLY,
				}),
				q(1939, {	-- High Sorcerer Andromath
					["qgs"] = {
						5144,	-- Bink <Mage Trainer>
						5497,	-- Jennea Cannon <Mage Trainer>
					},
					["coords"] = {
						{ 27.0, 8.2, IRONFORGE },
						{ 38.6, 79.6, STORMWIND_CITY },
					},
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 26,
				}),
				q(6183, {	-- Honor the Dead
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 6182,	-- The First and the Last
					-- #if AFTER WRATH
					["coord"] = { 78.3, 70.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				q(399, {	-- Humble Beginnings
					["qg"] = 1646,	-- Baros Alexston <City Architect>
					-- #if AFTER WRATH
					["coord"] = { 57.7, 47.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 49, 30.2, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				});
				q(1448, {	-- In Search of The Temple
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					["coord"] = { 70.0, 55.0, SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(2745, {	-- Infiltrating the Castle
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["sourceQuest"] = 350,	-- Look to an Old Friend
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(2746, {	-- Items of Some Consequence
					["qg"] = 7766,	-- Tyrion
					["sourceQuest"] = 2745,	-- Infiltrating the Castle
					["timeline"] = { "removed 4.0.3" },
					["cost"] = {
						{ "i", 4306, 3 },	-- Silk Cloth
						{ "i", 8683, 2 },	-- Clara's Fresh Apple
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(1920, {	-- Investigate the Blue Recluse
					["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
					["sourceQuest"] = 1919,	-- Report to Jennea
					["coord"] = { 38.6, 79.6, STORMWIND_CITY },
					["cost"] = {
						{ "i", 7308, 1 },	-- Cantation of Manifestation
						{ "i", 7292, 3 },	-- Filled Containment Coffer
					},
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["lvl"] = 15,
					["groups"] = {
						{
							["itemID"] = 7247,	-- Chest of Containment Coffers
							["coord"] = { 39.4, 83.3, STORMWIND_CITY },
							["groups"] = {
								{
									["itemID"] = 7292,	-- Filled Containment Coffer
									["questID"] = 1920,	-- Investigate the Blue Recluse
								},
							},
						},
					},
				}),
				q(1704, {	-- Klockmort Spannerspan
					["qg"] = 5413,	-- Furen Longbeard
					["sourceQuest"] = 1701,	-- Fire Hardened Mail
					-- #if AFTER WRATH
					["coord"] = { 64.6, 37.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 58.0, 16.8, STORMWIND_CITY },
					-- #endif
					["cost"] = {
						{ "i", 6926, 1 },	-- Furen's Notes
					},
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
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
				q(1941, {	-- Manaweave Robe
					["qg"] = 1309,	-- Wynne Larson <Robe Merchant>
					["sourceQuest"] = 1921,	-- Gathering Materials
					["coord"] = { 41.8, 76.4, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["lvl"] = 15,
					["groups"] = {
						i(7509, {	-- Manaweave Robe
							["timeline"] = { "removed 4.0.3" },
						}),
					},
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
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 20,
				}),
				q(1363, {	-- Mazen's Behest (1/2)
					["qg"] = 338,	-- Mazen Mac'Nadir
					["coord"] = { 41.4, 64.2, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
				}),
				q(1364, {	-- Mazen's Behest (2/2)
					["qg"] = 5386,	-- Acolyte Dellis
					["sourceQuest"] = 1363,	-- Mazen's Behest (1/2)
					["coord"] = { 40.8, 64, STORMWIND_CITY },
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
					["coord"] = { 38.6, 79.4, STORMWIND_CITY },
					["cost"] = {
						{ "i", 7207, 1 },	-- Jennea's Flask
						{ "i", 7206, 1 },	-- Mirror Lake Water Sample
					},
					["maps"] = { ELWYNN_FOREST },
					["classes"] = { MAGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(7508),	-- Ley Orb
						i(9513),	-- Ley Staff
					},
				}),
				q(6187, {	-- Order Must Be Restored
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["sourceQuest"] = 6186,	-- The Blightcaller Cometh
					["coord"] = { 78, 18, STORMWIND_CITY },
					["maps"] = { EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["cr"] = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
					["lvl"] = 56,
					["groups"] = {
						i(16996),	-- Gorewood Bow
						i(16997),	-- Stormrager
						i(16998),	-- Sacred Protector
					},
				}),
				q(334, {	-- Package for Thurman
					["qg"] = 1428,	-- Rema Schneider
					["sourceQuest"] = 333,	-- Harlan Needs a Resupply
					["coord"] = { 49.5, 55.3, STORMWIND_CITY },
					["cost"] = {
						{ "i", 2760, 1 },	-- Thurman's Sewing Kit
					},
					["races"] = ALLIANCE_ONLY,
				}),
				q(1940, {	-- Pristine Spider Silk
					["qg"] = 5694,	-- High Sorcerer Andromath
					["sourceQuest"] = 1938,	-- Ur's Treatise on Shadow Magic
					["coord"] = { 37.6, 81.6, STORMWIND_CITY },
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
				q(2281, {	-- Redridge Rendezvous
					["qg"] = 6946,	-- Renzik "The Shiv"
					["sourceQuests"] = {
						2260,	-- Erion's Behest(Darnassus)
						2298,	-- Kingly Shakedown(Ironforge)
						2300,	-- SI:7(Elwynn Forest)
					},
					["coord"] = { 75.9, 60.3, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 16,
				}),
				q(1919, {	-- Report to Jennea
					["qg"] = 7312,	-- Dink <Mage Trainer>
					["coord"] = { 26.8, 8.6, IRONFORGE },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 15,
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
				q(393, {	-- Shadow of the Past
					["qg"] = 1646,	-- Baros Alexston <City Architect>
					["sourceQuest"] = 392,	-- The Curious Visitor
					-- #if AFTER WRATH
					["coord"] = { 57.7, 47.9, STORMWIND_CITY },
					-- #else
					["coord"] = { 49, 30.2, STORMWIND_CITY },
					-- #endif
					["timeline"] = { "removed 4.0.3" },
					["cost"] = {
						{ "i", 8687, 1},	-- Sealed Description of Thredd's Visitor
					},
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
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
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
					["qg"] = 1416,	-- Grimand Elmore
					["sourceQuest"] = 1097,	-- Elmore's Task
					-- #if AFTER WRATH
					["coord"] = { 59.7, 33.8, STORMWIND_CITY },
					-- #else
					["coord"] = { 51.6, 12.2, STORMWIND_CITY },
					-- #endif
					["cost"] = {
						{ "i", 2806, 1 },	-- Package for Stormpike
					},
					["races"] = ALLIANCE_ONLY,
				}),
				q(579, {	-- Stormwind Library
					["qg"] = 2504,	-- Donyal Tovald <Librarian>
					["coord"] = { 71.6, 7.6, STORMWIND_CITY },
					["cost"] = {
						{ "i", 3898, 1 },	-- Library Scrip
					},
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(3899),	-- Legends of the Gurubashi, Volume 3
						i(2154),	-- The Story of Morgan Ladimore
					},
				}),
				q(1688, {	-- Surena Caledon
					["qg"] = 6122,	-- Gakin the Darkbinder
					["sourceQuest"] = 1685,	-- Gakin's Summons
					-- #if AFTER WRATH
					["coord"] = { 39.2, 85.2, STORMWIND_CITY },
					-- #else
					["coord"] = { 25.4, 78.4, STORMWIND_CITY },
					-- #endif
					["cost"] = {
						{ "i", 6810, 1 },	 -- Surena's Choker
					},
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["maps"] = { ELWYNN_FOREST },
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 6810,	-- Surena's Choker
							["questID"] = 1688,	-- Surena Caledon
							["cr"] = 881,	-- Surena Caledon
							["coord"] = { 71.0, 80.6, ELWYNN_FOREST },
						},
					},
				}),
				q(434, {	-- The Attack!
					["qg"] = 7766,	-- Tyrion
					["sourceQuest"] = 2746,	-- Items of Some Consequence
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
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
				q(392, {	-- The Curious Visitor
					["qg"] = 1719,	-- Warden Thelwater
					["sourceQuest"] = 391,	-- The Stockage Riots
					["timeline"] = { "removed 4.0.3" },
					["cost"] = {
						{ "i", 8687, 1},	-- Sealed Description of Thredd's Visitor
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(3765, {  -- The Corruption Abroad
					["qg"] = 4984,  -- Argos Nightwhisper
					["coord"] = { 21.6, 55.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(6182, {	-- The First and the Last
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["coord"] = { 78, 18, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				q(394, {	-- The Head of the Beast
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["sourceQuest"] = 434,	-- The Attack!
					["timeline"] = { "removed 4.0.3" },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(1274, {	-- The Missing Diplomat (1/17)
					["qg"] = 4982,	-- Thomas <Altar Boy>
					["coord"] = { 39.8, 28.3, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1241, {	-- The Missing Diplomat (2/17)
					["qg"] = 4960,	-- Bishop DeLavey
					["sourceQuest"] = 1274,	-- The Missing Diplomat (1/17)
					["coord"] = { 78.4, 25.4, STORMWIND_CITY },
					["cost"] = {
						{ "i", 5948, 1 },	-- Letter to Jorgen
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1242, {	-- The Missing Diplomat (3/17)
					["qg"] = 4959,	-- Jorgen
					["sourceQuest"] = 1241,	-- The Missing Diplomat (2/17)
					["coord"] = { 73.2, 78.6, STORMWIND_CITY },
					["cost"] = {
						{ "i", 5946, 1 },	-- Sealed Note to Elling
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1243, {	-- The Missing Diplomat (4/17)
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["sourceQuest"] = 1242,	-- The Missing Diplomat (3/17)
					["description"] = "Elling Trias is located on the 2nd floor of Trias' Cheese.",
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					["cost"] = {
						{ "i", 5960, 1 },	-- Sealed Note to Watcher Backus
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1244, {	-- The Missing Diplomat (5/17)
					["qg"] = 840,	-- Watcher Backus
					["sourceQuest"] = 1243,	-- The Missing Diplomat (4/17)
					["coord"] = { 73.21, 38.81, DUSKWOOD },
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
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1246, {	-- The Missing Diplomat (7/17)
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["sourceQuest"] = 1245,	-- The Missing Diplomat (6/17)
					["description"] = "Elling Trias is located on the 2nd floor of Trias' Cheese.",
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1447, {	-- The Missing Diplomat (8/17)
					["qg"] = 4961,	-- Dashel Stonefist
					["sourceQuest"] = 1246,	-- The Missing Diplomat (7/17)
					["description"] = "Dashel Stonefist will spawn 2 level 26 adds to fight alongside him.",
					["coord"] = { 70.5, 44.9, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1247, {	-- The Missing Diplomat (9/17)
					["qg"] = 4961,	-- Dashel Stonefist
					["sourceQuest"] = 1447,	-- The Missing Diplomat (8/17)
					["coord"] = { 70.5, 44.9, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1248, {	-- The Missing Diplomat (10/17)
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["sourceQuest"] = 1247,	-- The Missing Diplomat (9/17)
					["description"] = "Elling Trias is located on the 2nd floor of Trias' Cheese.",
					["coord"] = { 60.0, 64.3, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(543, {	-- The Perenolde Tiara
					["qg"] = 2285,	-- Count Remington Ridgewell
					["coord"] = { 74, 30, STORMWIND_CITY },
					["maps"] = { ALTERAC_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3684, 1 },	-- Perenolde Tiara
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 3684,	-- Perenolde Tiara
							["questID"] = 543,	-- The Perenolde Tiara
							["cr"] = 2417,	-- Grel'borg the Miser
							["coord"] = { 39.6, 52.8, ALTERAC_MOUNTAINS },
						},
					},
				}),
				q(1790, {	-- The Symbol of Life
					["qg"] = 6171,	-- Duthorian Rall
					["description"] = "This quest is repeatable, but can only be completed while you have the quest \"The Tome of Divinity\" (Quest #1786) in your quest log.",
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["repeatable"] = true,
					["lvl"] = 12,
					["groups"] = {
						i(6866),	-- Symbol of Life
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
					["coord"] = { 40, 29.8, STORMWIND_CITY },
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
					["coord"] = { 40, 29.8, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1643, {	-- The Tome of Divinity (4/10)
					["qg"] = 6171,	-- Duthorian Rall
					["sourceQuest"] = 1642,	-- The Tome of Divinity (3/10)
					["coord"] = { 40, 29.8, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1644, {	-- The Tome of Divinity (5/10)
					["qg"] = 6174,	-- Stephanie Turner
					["sourceQuest"] = 1643,	-- The Tome of Divinity (4/10)
					["coord"] = { 57, 61.8, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["cost"] = { { "i", 2589, 10 } },	-- Linen Cloth
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1780, {	-- The Tome of Divinity (6/10)
					["qg"] = 6174,	-- Stephanie Turner
					["sourceQuest"] = 1644,	-- The Tome of Divinity (5/10)
					["coord"] = { 57, 61.8, STORMWIND_CITY },
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
					["coord"] = { 40, 29.8, STORMWIND_CITY },
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
					["coord"] = { 38.6, 26.6, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1787, {	-- The Tome of Divinity (9/10)
					["qg"] = 6172,	-- Henze Faulk
					["sourceQuest"] = 1786,	-- The Tome of Divinity (8/10)
					["coord"] = { 72.6, 51.6, STORMWIND_CITY },
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
					["coord"] = { 38.6, 26.6, STORMWIND_CITY },
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
				q(4485, {	-- The Tome of Nobility
					["qg"] = 5491,	-- Arthur the Faithful <Paladin Trainer>
					["coord"] = { 38.7, 32.9, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(4486, {	-- The Tome of Nobility
					["qg"] = 5149,	-- Brandur Ironhammer <Paladin Trainer>
					["coord"] = { 23.6, 6.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(1661, {	-- The Tome of Nobility
					["qg"] = 6171,	-- Duthorian Rall
					["sourceQuests"] = {
						4485,	-- The Tome of Nobility
						4486,	-- The Tome of Nobility
					},
					["coord"] = { 40, 29.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 40,
					["groups"] = {
						mount(13819),	-- Summon Warhorse
					},
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
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["classes"] = { PALADIN },
					["races"] = { HUMAN },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1649, {	-- The Tome of Valor (1/4)
					["qg"] = 6171,	-- Duthorian Rall
					["sourceQuests"] = {
						1794,	-- The Tome of Valor [Dwarf]
						1793,	-- The Tome of Valor [Human]
					},
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
					["timeline"] = { "removed 4.0.3" },
					["cost"] = {
						{ "i", 6776, 1 },	-- Tome of Valor
					},
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 20,
				}),
				q(1650, {	-- The Tome of Valor (2/4)
					["qg"] = 6171,	-- Duthorian Rall
					["sourceQuest"] = 1649,	-- The Tome of Valor (1/4)
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
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
					["coord"] = { 39.8, 30.8, STORMWIND_CITY },
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
				q(2607, {	-- The Touch of Zanzil
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 2359,	-- Klaven's Tower
					-- #if AFTER WRATH
					["coord"] = { 78.3, 70.7, STORMWIND_CITY },
					-- #else
					["coord"] = { 75.8, 59.8, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 20,
				}),
				q(2608, {	-- The Touch of Zanzil
					["qg"] = 7207,	-- Doc Mixilpixil
					["sourceQuest"] = 2607,	-- The Touch of Zanzil
					["description"] = "Doc Mixilpixil is located in the basement of the SI:7 building.\n\nType /lay to lie down for the operation.",
					["coord"] = { 78.0, 59.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 20,
				}),
				q(2609, {	-- The Touch of Zanzil
					["qg"] = 7207,	-- Doc Mixilpixil
					["sourceQuest"] = 2608,	-- The Touch of Zanzil
					["description"] = "Simple Wildflowers are sold by Florist Gump on the Trade District side of the Canal near Old Town (64.4, 60.8).\nLeaded Vial can by purchased from any Trade Goods Vendor.\nBronze Tube can be purchased in limited supply from Engineering Vendors, or you can get an Engineer to craft you one.\nA Spool of Chartruese Thread is on the floor of the Finest Thread, which is on the Cathedral Square side of the Canal near The Park (39.9, 46.3).",
					["coord"] = { 78.0, 59.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 3421, 1 },	-- Simple Wildflowers
						{ "i", 3372, 1 },	-- Leaded Vial
						{ "i", 4371, 1 },	-- Bronze Tube
						{ "i", 8431, 1 },	-- Spool of Light Chartreuse Silk Thread
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 8431,	-- Spool of Light Chartreuse Silk Thread
							["questID"] = 2609,	-- The Touch of Zanzil
							["coord"] = { 39.9, 46.3, STORMWIND_CITY },
						},
						i(8432),	-- Eau de Mixilpixil
					},
				}),
				q(1449, {	-- To The Hinterlands
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					["sourceQuest"] = 1448,	-- In Search of The Temple
					["coord"] = { 64.3, 20.7, STORMWIND_CITY },
					["maps"] = { THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(1938, {	-- Ur's Treatise on Shadow Magic
					["qg"] = 5694,	-- High Sorcerer Andromath
					["sourceQuest"] = 1939,	-- High Sorcerer Andromath
					["coord"] = { 37.6, 81.6, STORMWIND_CITY },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 7266, 1 },	-- Ur's Treatise on Shadow Magic
					},
					["lvl"] = 26,
					["groups"] = {
						{
							["itemID"] = 7266,	-- Ur's Treatise on Shadow Magic
							["coord"] = { 79.0, 37.6, REDRIDGE_MOUNTAINS },
							["description"] = "Located in one of the bookshelves at the top of the tower.",
						},
					},
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
				q(332, {	-- Wine Shop Advert
					["qg"] = 1432,	-- Renato Gallina
					["sourceQuest"] = 61,	-- Shipment to Stormwind
					["coord"] = { 57.0, 63.4, STORMWIND_CITY },
					["cost"] = {
						{ "i", 2722, 1 },	-- Wine Ticket
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2723),	-- Bottle of Dalaran Noir
					},
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