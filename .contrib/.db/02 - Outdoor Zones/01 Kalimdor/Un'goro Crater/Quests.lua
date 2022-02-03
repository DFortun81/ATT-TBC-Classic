---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(UNGORO_CRATER, {
			n(QUESTS, {
				q(3941, {	-- A Gnome's Assistance
					["qg"] = 8737,	-- Linken
					["sourceQuest"] = 3914,	-- Linken's Sword
					["coord"] = { 44.6, 8.2, UNGORO_CRATER },
					["lvl"] = 47,
				}),
				q(3913, {	-- A Grave Situation
					["qg"] = 9299,	-- Gaeriyan
					["sourceQuest"] = 3912,	-- Meet at the Grave
					["coord"] = { 54.0, 23.4, TANARIS },
					["maps"] = { TANARIS },
					["cost"] = {
						{ "i", 11136, 1 },	-- Linken's Tempered Sword
					},
					["lvl"] = 47,
				}),
				q(4491, {	-- A Little Help From My Friends
					["sourceQuest"] = 4492,	-- Lost!
					["lvl"] = 50,
					["groups"] = {
						i(11910),	-- Bejeweled Legguards
						i(11911),	-- Treetop Leggings
						i(11913),	-- Clayridge Helm
					},
				}),
				q(4142, {	-- A Visit to Gregan
					["qg"] = 9119,	-- Muigin
					["sourceQuest"] = 4141,	-- Muigin and Larion
					["coord"] = { 42.9, 9.6, UNGORO_CRATER },
					["maps"] = { FERALAS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11316, 1 },	-- Bloodpetal
					},
					["lvl"] = 47,
				}),
				q(3883, {	-- Alien Ecology
					["qg"] = 9271,	-- Hol'anyee Marshal
					["lvl"] = 48,
				}),
				q(4501, {	-- Beware of Pterrordax
					["provider"] = { "o", 174682 },	-- Beware of Pterrordax
					["coord"] = { 43.6, 8.4, UNGORO_CRATER },
					["lvl"] = 49,
					["groups"] = {
						i(11918),	-- Grotslab Gloves
						i(11919),	-- Cragplate Greaves
					},
				}),
				q(9052, {	-- Bloodpetal Poison
					["qg"] = 9619,	-- Torwa Pathfinder
					["sourceQuest"] = 9063,  -- Torwa Pathfinder
					["coord"] = { 71.6, 76.0, UNGORO_CRATER },
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 22434, 8 },	-- Bloodcap
						{ "i", 22435, 8 },	-- Gorishi Sting
					},
					["lvl"] = 50,
				}),
				q(4144, {	-- Bloodpetal Sprouts
					["qg"] = 9119,	-- Muigin
					["sourceQuest"] = 4143,	-- Haze of Evil
					["coord"] = { 42.9, 9.6, UNGORO_CRATER },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 47,
				}),
				q(4148, {	-- Bloodpetal Zapper
					["qg"] = 9118,	-- Larion
					["sourceQuest"] = 4146,	-- Zapper Fuel
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
					["groups"] = {
						i(11320),	-- Bloodpetal Zapper
					},
				}),
				q(4243, {	-- Chasing A-Me 01
					["qg"] = 9618,	-- Karna Remtravel
					["coord"] = { 46.4, 13.5, UNGORO_CRATER },
					["lvl"] = 48,
				}),
				q(4244, {	-- Chasing A-Me 01
					["qg"] = 9623,	-- A-Me 01
					["sourceQuest"] = 4243,	-- Chasing A-Me 01
					["coord"] = { 67.6, 16.8, UNGORO_CRATER },
					["lvl"] = 48,
				}),
				q(4245, {	-- Chasing A-Me 01
					["qg"] = 9623,	-- A-Me 01
					["sourceQuest"] = 4244,	-- Chasing A-Me 01
					["coord"] = { 67.6, 16.8, UNGORO_CRATER },
					["lvl"] = 48,
				}),
				q(4385, {	-- Crystal Charge
					["repeatable"] = true,
					["lvl"] = 47,
					["groups"] = {
						i(11566),	-- Crystal Charge
					},
				}),
				q(4382, {	-- Crystal Force
					["repeatable"] = true,
					["lvl"] = 47,
					["groups"] = {
						i(11563),	-- Crystal Force
					},
				}),
				q(4381, {	-- Crystal Restore
					["repeatable"] = true,
					["lvl"] = 47,
					["groups"] = {
						i(11562),	-- Crystal Restore
					},
				}),
				q(4386, {	-- Crystal Spire
					["repeatable"] = true,
					["lvl"] = 47,
					["groups"] = {
						i(11567),	-- Crystal Spire
					},
				}),
				q(4383, {	-- Crystal Ward
					["repeatable"] = true,
					["lvl"] = 47,
					["groups"] = {
						i(11564),	-- Crystal Ward
					},
				}),
				q(4384, {	-- Crystal Yield
					["repeatable"] = true,
					["lvl"] = 47,
					["groups"] = {
						i(11565),	-- Crystal Yield
					},
				}),
				q(4284, {	-- Crystals of Power
					["qg"] = 9117,	-- J.D. Collie
					["lvl"] = 47,
				}),
				q(5150, {	-- Dadanga is Hungry!
					["qg"] = 9274,	-- Dadanga
					["coord"] = { 43.6, 7.2, UNGORO_CRATER },
					["repeatable"] = true,
					["lvl"] = 47,
					["groups"] = {
						i(15699, {	-- Small Brown-wrapped Package
							i(13481),	-- Recipe: Elixir of Brute Force
						}),
					},
				}),
				q(3881, {	-- Expedition Salvation
					["qg"] = 9270,	-- Williden Marshal
					["coord"] = { 43.9, 7.1, UNGORO_CRATER },
					["description"] = "The crate can be found at 68.5, 36.5.",
					["lvl"] = 48,
				}),
				q(974, {	-- Finding the Source
					["qg"] = 10302,	-- Krakle
					["cost"] = {
						{ "i", 12472, 1 },	-- Krackle's Thermometer
					},
					["lvl"] = 51,
				}),
				q(3962, {	-- It's Dangerous to Go Alone
					["qg"] = 8737,	-- Linken
					["sourceQuest"] = 3961,	-- Linken's Adventure
					["description"] = "Use the Silter Totem of Aquementas on Blazerunner to remove his protective barrier.",
					["coord"] = { 44.6, 8.2, UNGORO_CRATER },
					["cost"] = {
						{ "i", 11522, 1 },	-- Silver Totem of Aquementas
						{ "i", 11179, 1 },	-- Golden Flame
					},
					["lvl"] = 47,
					["groups"] = {
						{
							["itemID"] = 11179,	-- Golden Flame
							["questID"] = 3962,	-- It's Dangerous to Go Alone
							["cr"] = 9376,	-- Blazerunner
							["coord"] = { 49.6, 49.6, UNGORO_CRATER },
						},
						i(11905),	-- Linken's Boomerang
						i(11902),	-- Linken's Sword of Mastery
						i(11904),	-- Spirit of Aquementas
					},
				}),
				q(3844, {	-- It's a Secret to Everybody
					["provider"] = { "o", 161505 },	-- A Wrecked Raft
					["coord"] = { 63.1, 68.5, UNGORO_CRATER },
					["lvl"] = 47,
				}),
				q(3845, {	-- It's a Secret to Everybody
					["provider"] = { "o", 161504 },	-- A Small Pack
					["sourceQuest"] = 3844,	-- It's a Secret to Everybody
					["coord"] = { 63.1, 68.5, UNGORO_CRATER },
					["cost"] = {
						{ "i", 11106, 1 },	-- Lion-headed Key
						{ "i", 11105, 1 },	-- Curled Map Parchment
						{ "i", 11104, 1 },	-- Large Compass
					},
					["lvl"] = 30,
				}),
				q(3908, {	-- It's a Secret to Everybody
					["qg"] = 8737,	-- Linken
					["sourceQuest"] = 3845,	-- It's a Secret to Everybody
					["coord"] = { 44.6, 8.2, UNGORO_CRATER },
					["cost"] = {
						{ "i", 11133, 1 },	-- Linken's Training Sword
					},
					["lvl"] = 47,
				}),
				q(4145, {	-- Larion and Muigin
					["qg"] = 9118,	-- Larion
					["coord"] = { 45.6, 8.6, UNGORO_CRATER },
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
				}),
				q(3961, {	-- Linken's Adventure
					["qg"] = 9117,	-- J.D. Collie
					["sourceQuest"] = 4005,	-- Aquementas
					["coord"] = { 41.8, 2.6, UNGORO_CRATER },
					["cost"] = {
						{ "i", 11522, 1 },	-- Silver Totem of Aquementas
					},
					["lvl"] = 47,
				}),
				q(3942, {	-- Linken's Memory
					["qg"] = 9117,	-- J.D. Collie
					["coord"] = { 41.8, 2.6, UNGORO_CRATER },
					["maps"] = { FELWOOD },
					["lvl"] = 47,
				}),
				q(4492, {	-- Lost!
					["qg"] = 9997,	-- Spraggle Frock
					["coord"] = { 43.6, 8.5, UNGORO_CRATER },
					["lvl"] = 50,
				}),
				q(4321, {	-- Making Sense of It
					["qg"] = 9117,	-- J.D. Collie
					["lvl"] = 47,
					["groups"] = {
						i(11482),	-- Crystal Pylon User's Manual
					},
				}),
				q(4147, {	-- Marvon's Workshop
					["qg"] = 9118,	-- Larion
					["sourceQuest"] = 4145,	-- Larion and Muigin
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
				}),
				q(3912, {	-- Meet at the Grave
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 3909,	-- The Videre Elixir
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["maps"] = { WINTERSPRING },
					["cost"] = {
						{ "i", 11243, 1 },	-- Videre Elixir
						{ "i", 11136, 1 },	-- Linken's Tempered Sword
					},
					["lvl"] = 47,
				}),
				q(4141, {	-- Muigin and Larion
					["qg"] = 9119,	-- Muigin
					["coord"] = { 42.9, 9.6, UNGORO_CRATER },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11316, 15 },	-- Bloodpetal
					},
					["lvl"] = 47,
				}),
				q(3882, {	-- Roll the Bones
					["lvl"] = 49,
					["qg"] = 9272,	-- Spark Nilminer
					["coord"] = { 43.6, 7.4, UNGORO_CRATER },
					["cost"] = {
						{ "i", 11114, 8 },	-- Dinosaur Bone
					},
					["groups"] = {
						i(11908),	-- Archaeologist's Quarry Boots
						i(11909),	-- Excavator's Utility Belt
					},
				}),
				q(4503, {	-- Shizzle's Flyer
					["qg"] = 9998,	-- Shizzle
					["coord"] = { 44.2, 11.6, UNGORO_CRATER },
					["cost"] = {
						{ "i", 11830, 8 },	-- Webbed Diemetradon Scale
						{ "i", 11831, 8 },	-- Webbed Pterrordax Scale
					},
					["lvl"] = 49,
					["groups"] = {
						i(11915),	-- Shizzle's Drizzle Blocker
						i(11916),	-- Shizzle's Muzzle
						i(11917),	-- Shizzle's Nozzle Wiper
					},
				}),
				q(4289, {	-- The Apes of Un'Goro
					["qg"] = 9619,	-- Torwa Pathfinder
					["coord"] = { 71.6, 76.0, UNGORO_CRATER },
					["lvl"] = 47,
				}),
				q(4292, {	-- The Bait for Lar'korwi
					["qg"] = 9619,	-- Torwa Pathfinder
					["coord"] = { 71.6, 76.0, UNGORO_CRATER },
					["cost"] = {
						{ "i", 11510, 1 },	-- Lar'korwi's Head
					},
					["lvl"] = 48,
					["groups"] = {
						i(11568, {	-- Torwa's Pouch
							{
								["itemID"] = 11570,	-- Preserved Pheromone Mixture
								["questID"] = 4292,	-- The Bait for Lar'korwi
							},
							{
								["itemID"] = 11569,	-- Preserved Threshadon Meat
								["questID"] = 4292,	-- The Bait for Lar'korwi
							},
						}),
						{
							["itemID"] = 11510,	-- Lar'korwi's Head
							["questID"] = 4292,	-- The Bait for Lar'korwi
							["cr"] = 9684,	-- Lar'korwi
							["coord"] = { 79.9, 49.9, UNGORO_CRATER },
						},
						i(11876),	-- Plainstalker Tunic
						i(11882),	-- Outrider Leggings
					},
				}),
				q(4287, {	-- The Eastern Pylon
					["qg"] = 9117,	-- J.D. Collie
					["lvl"] = 47,
				}),
				q(4290, {	-- The Fare of Lar'korwi
					["lvl"] = 48,
				}),
				q(4301, {	-- The Mighty U'cha
					["qg"] = 9619,	-- Torwa Pathfinder
					["coord"] = { 71.6, 76.0, UNGORO_CRATER },
					["lvl"] = 50,
					["groups"] = {
						i(11906),	-- Beastsmasher
						i(11907),	-- Beastslayer
					},
				}),
				q(980, {	-- The New Springs
					["qg"] = 10302,	-- Krakle
					["lvl"] = 51,
				}),
				q(4285, {	-- The Northern Pylon
					["qg"] = 9117,	-- J.D. Collie
					["lvl"] = 47,
				}),
				q(4291, {	-- The Scent of Lar'korwi
					["qg"] = 9619,	-- Torwa Pathfinder
					["coord"] = { 71.6, 76.0, UNGORO_CRATER },
					["lvl"] = 48,
				}),
				q(3909, {	-- The Videre Elixir
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 3908,	-- It's a Secret to Everybody
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["cost"] = {
						{ "i", 11141, 1 },	-- Bait
						{ "i", 11242, 1 },	-- Evoroot
					},
					["lvl"] = 47,
					["groups"] = {
						i(11243),	-- Videre Elixir
					},
				}),
				q(4288, {	-- The Western Pylon
					["qg"] = 9117,	-- J.D. Collie
					["lvl"] = 47,
				}),
				applyclassicphase(WRATH_PHASE_ONE, q(13906, {	-- They Grow Up So Fast
					["qg"] = 11701,	-- Mor'vek <Ravasaur Trainers>
					["coord"] = { 71.2, 73.7, UNGORO_CRATER },
					["timeline"] = { "added 3.2.0.10026" },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 14047, 20 },	-- Runecloth
						{ "i", 8170, 20 },	-- Rugged Leather
						{ "g", 800000 },	-- 80g
					},
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/20 Venomhide Baby Tooth
							["provider"] = { "i", 47196 },	-- Venomhide Baby Tooth
							["cost"] = { { "i", 46362, 1 } },	-- Venomhide Hatchling
						}),
						removeclassicphase(ach(3357, {	-- Venomhide Ravasaur
							["provider"] = { "i", 46102 },	-- Whistle of the Venomhide Ravasaur
							["timeline"] = { "added 3.2.0.10026" },
							["races"] = HORDE_ONLY,
							-- #if BEFORE WRATH
							["description"] = "Obtain a Venomhide Ravasaur.",
							["OnUpdate"] = [[function(t)
								local collected = false;
								for i,provider in ipairs(t.providers) do
									if provider[1] == "i" and GetItemCount(provider[2], true) > 0 then
										collected = true;
										break;
									end
								end
								t.SetAchievementCollected(t.achievementID, collected);
							end]],
							-- #endif
						})),
						i(46102, {	-- Whistle of the Venomhide Ravasaur
							["timeline"] = { "added 3.2.0.10026" },
							["races"] = HORDE_ONLY,
						}),
					},
				})),
				q(9063, {	-- Torwa Pathfinder
					["qgs"] = {
						4218,	-- Denatharion <Druid Trainer>
						12042,	-- Loganaar <Druid Trainer>
						3033,	-- Turak Runetotem <Druid Trainer>
					},
					["coords"] = {
						{ 34.8, 8.6, DARNASSUS },
						{ 52.4, 40.6, MOONGLADE },
						{ 76.6, 27.6, THUNDER_BLUFF },
					},
					["maps"] = { DARNASSUS, MOONGLADE, THUNDER_BLUFF },
					["classes"] = { DRUID },
					["lvl"] = 50,
				}),
				q(9051, {	-- Toxic Test
					["qg"] = 9619,	-- Torwa Pathfinder
					["coord"] = { 71.6, 76.0, UNGORO_CRATER },
					["sourceQuest"] = 9052,  -- Bloodpetal Poison
					["classes"] = { DRUID },
					["lvl"] = 50,
				}),
				q(4502, {	-- Volcanic Activity
					["qg"] = 8496,	-- Liv Rizzlefix
					["lvl"] = 49,
				}),
				q(3884, {	-- Williden's Journal
					["provider"] = { "i", 11116 },	-- A Mangled Journal
					["lvl"] = 48,
				}),
			}),
		}),
	}),
};

-- #if AFTER WRATH
-- These quests never made it in.
_.NeverImplemented = bubbleDown({ ["u"] = NEVER_IMPLEMENTED }, {
	n(QUESTS, {
		q(13908),	-- Gearing Up To Ride
	}),
});
-- #endif