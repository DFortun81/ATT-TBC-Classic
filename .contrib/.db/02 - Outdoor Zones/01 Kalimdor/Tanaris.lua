---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local OnTooltipForGadgetzhan = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
		if reputation < 0 then
			local repPerKill = isHuman and 2.75 or 2.5;
			local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(84000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Pirates near Ratchet", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			
			local repPerKill = isHuman and 5.5 or 5;
			local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(84000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Southsea Pirates in Tanaris", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		else
			local repPerKill = isHuman and 2.75 or 2.5;
			local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(42000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Pirates near Ratchet", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			
			if reputation < 20999 then
				local repPerKill = isHuman and 5.5 or 5;
				local x, n = math.ceil((20999 - t.reputation) / repPerKill), math.ceil(20999 / repPerKill);
				GameTooltip:AddDoubleLine("Kill Southsea Pirates in Tanaris (To 11999 Honored)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			end
		end
	end
end]];
root("Zones", m(KALIMDOR, {
	m(TANARIS, {
		["lore"] = "The Tanaris Desert is vast and unexplored. It is a land of endless sands and cloudless skies. The southern Tanaris Desert is more mountainous than the north, boasting canyons and high bluffs. Numerous tunnels run beneath the sands, purportedly infested with the mysterious silithid. Other creatures in the desert include tallstriders, lions, kodo beasts, drakes and dragons — many the offspring of mighty Nozdormu, who is said to make this land his home.\n\nThe only bit of civilization is Gadgetzhan, a goblin trading post. Many Ironforge prospectors stock up on supplies here before heading out in search of the lost Titan city of Uldum.",
		["groups"] = {
			applyclassicphase(TBC_PHASE_ONE, m(CAVERNS_OF_TIME, {
				["lore"] = "Located in the eastern part of Tanaris, the Caverns of Time contain various portals to different key historical periods and events in Warcraft history.",
				["maps"] = { 74 },	-- 	Caverns of Time Entrance
				-- #if AFTER WRATH
				["icon"] = 2026009,
				-- #endif
				["groups"] = {
					-- #if AFTER MOP
					filter(BATTLE_PETS, {
						p(1161, {	-- Infinite Whelpling
							["crs"] = { 68820 },	-- Infinite Whelpling
							["description"] = "This pet can be found around the Caverns of Time entrance and the pathway leading to the main chamber.",
						}),
					}),
					-- #endif
					n(FACTIONS, {
						faction(989, {	-- Keepers of Time
							["maps"] = { CAVERNS_OF_TIME_BLACK_MORASS, CAVERNS_OF_TIME_OLD_HILLSBRAD_FOOTHILLS },
						}),
					}),
					n(QUESTS, {
						q(10277, {	-- The Caverns of Time
							["qg"] = 20130,	-- Andormu <Keepers of Time>
							["sourceQuest"] = 10279,	-- To The Master's Lair
							-- #if AFTER CATA
							["coord"] = { 58, 54, TANARIS },
							-- #else
							["coord"] = { 58.4, 54.2, TANARIS },
							-- #endif
							["lvl"] = lvlsquish(66, 66, 15),
						}),
						applyclassicphase(TBC_PHASE_TWO, q(10445, {	-- The Vials of Eternity
							["providers"] = {
								{ "n", 19935 },	-- Soridormi
								{ "n", 19936 },	-- Arazmodu
							},
							["description"] = "The questgiver can be found walking around the Caverns of Time.",
							["timeline"] = { "removed 3.0.2" },
							["maps"] = {
								TEMPEST_KEEP_THE_EYE,
								SERPENTSHRINE_CAVERN,
							},
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Vashj's Vial Remnant
									["provider"] = { "i", 29906 },	-- Vashj's Vial Remnant
								}),
								objective(2, {	-- 0/1 Kael's Vial Remnant
									["provider"] = { "i", 29905 },	-- Kael's Vial Remnant
								}),
							},
						})),
						applyclassicphase(TBC_PHASE_TWO, q(13432, {	-- The Vials of Eternity
							["providers"] = {
								{ "n", 19935 },	-- Soridormi
								{ "n", 19936 },	-- Arazmodu
							},
							["description"] = "The questgiver can be found walking around the Caverns of Time.",
							["altQuests"] = { 10445 },	-- The Vials of Eternity (legacy version)
							["timeline"] = { "added 3.0.2" },
							["maps"] = {
								TEMPEST_KEEP_THE_EYE,
								SERPENTSHRINE_CAVERN,
							},
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Vashj's Vial Remnant
									["provider"] = { "i", 29906 },	-- Vashj's Vial Remnant
								}),
								objective(2, {	-- 0/1 Kael's Vial Remnant
									["provider"] = { "i", 29905 },	-- Kael's Vial Remnant
								}),
							},
						})),
						q(10279, {	-- To The Master's Lair
							["qg"] = 20142,	-- Steward of Time <Keepers of Time>
							-- #if AFTER CATA
							["coord"] = { 65.4, 49.6, TANARIS },
							-- #else
							["coord"] = { 66, 49.6, TANARIS },
							-- #endif
							["lvl"] = lvlsquish(66, 66, 15),
						}),
					}),
					n(VENDORS, {
						applyclassicphase(TBC_PHASE_THREE, n(19932, {	-- Andormu <Keepers of Time>
							i(186683),	-- Formula: Enchant Ring - Stats
							-- #if BEFORE CATA
							i(31737, {	-- Timeless Arrow
								["timeline"] = { "removed 4.0.1.20000" },
							}),
							i(31735, {	-- Timeless Shell
								["timeline"] = { "removed 4.0.1.20000" },
							}),
							-- #endif
						})),
						n(21643, {	-- Alurmi <Keepers of Time Quartermaster>
							["coord"] = { 40.0, 77.2, 74 },
							["groups"] = {
								i(29183),	-- Bindings of the Timewalker
								i(29185),	-- Continuum Blade
								applyclassicphase(TBC_PHASE_TWO, i(35402)),	-- Crusader's Ornamented Chestplate
								applyclassicphase(TBC_PHASE_TWO, i(35414)),	-- Crusader's Scaled Helm
								applyclassicphase(TBC_PHASE_TWO, i(35356)),	-- Dragonhide Gloves
								applyclassicphase(TBC_PHASE_TWO, i(35328)),	-- Dreadweave Gloves
								applyclassicphase(TBC_PHASE_TWO, i(35346)),	-- Evoker's Silk Raiment
								i(31777),	-- Keepers of Time Tabard
								i(30635, {	-- Key of Time
									["timeline"] = { "removed 4.2.0.10000" },
								}),
								applyclassicphase(TBC_PHASE_TWO, i(35363)),	-- Kodohide Legguards
								applyclassicphase(TBC_PHASE_TWO, i(35334)),	-- Mooncloth Legguards
								applyclassicphase(TBC_PHASE_TWO, i(35369)),	-- Opportunist's Leather Spaulders
								i(29182),	-- Riftmaker
								applyclassicphase(TBC_PHASE_TWO, i(35338)),	-- Satin Gloves
								applyclassicphase(TBC_PHASE_TWO, i(35410)),	-- Savage Plate Legguards
								applyclassicphase(TBC_PHASE_TWO, i(35384)),	-- Seer's Linked Leggings
								applyclassicphase(TBC_PHASE_TWO, i(35390)),	-- Seer's Mail Spaulders
								applyclassicphase(TBC_PHASE_TWO, i(35393)),	-- Seer's Ringmail Headpiece
								applyclassicphase(TBC_PHASE_TWO, i(35376)),	-- Stalker's Chain Armor
								i(29181),	-- Timelapse Shard
								i(29184),	-- Timewarden's Leggings
								applyclassicphase(TBC_PHASE_TWO, i(35372)),	-- Wyrmhide Helm
								i(25910),	-- Design: Enigmatic Skyfire Diamond
								i(33160),	-- Design: Facet of Eternity
								i(24181),	-- Design: Living Ruby Serpent
								i(24174),	-- Design: Pendant of Frozen Flame
								i(33158),	-- Design: Stone of Blades
								i(28272),	-- Formula: Enchant Gloves - Major Spellpower
								i(33152),	-- Formula: Enchant Gloves - Superior Agility
								i(22536),	-- Formula: Enchant Ring - Spellpower
								i(29198, {	-- Glyph of Frost Warding
									["timeline"] = { "removed 5.0.4" },
								}),
								i(29186, {	-- Glyph of the Defender
									["timeline"] = { "removed 5.0.4" },
								}),
								i(29713),	-- Pattern: Drums of Panic
								-- #if ANYCLASSIC
								applyclassicphase(TBC_PHASE_FOUR, i(185925)),	-- Pattern: Greater Drums of Panic
								-- #endif
								i(31355),	-- Recipe: Flask of Supreme Power
							},
						}),
						n(155944, {	-- Otela <Time-Lost Baubles>
							["coord"] = { 42.4, 71.6, 74 },
							["timeline"] = { "added 8.2.0.30918" },
							["groups"] = {
								i(170739, {	-- Sunswarmed Sand
									["cost"] = { { "c", 1166, 10 }, },		-- 10x Timewarped Badge
								}),
								i(170380, {	-- Jar of the Sunwarmed Sand (TOY!)
									["cost"] = { { "c", 1166, 1000 }, },	-- 1,000x Timewarped Badge
								}),
							},
						}),
					}),
				},
			})),
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(851, {	-- Explore Tanaris
					-- #if BEFORE WRATH
					["description"] = "Explore Tanaris, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["110:140:611:147"] = 986,	-- Zalashji's Den
				["110:180:473:234"] = 1938,	-- Broken Pillar
				["120:135:533:104"] = 1937,	-- Noonshade Ruins
				["150:160:291:434"] = 990,	-- Valley of the Watchers
				["155:150:561:256"] = 2300,	-- Caverns of Time
				["155:150:592:75"] = 977,	-- Steamwheedle Port
				["160:150:395:346"] = 984,	-- Eastmoon Ruins
				["160:190:629:220"] = 1336,	-- Lost Rigger Cove
				["165:180:509:168"] = 985,	-- Waterspring Field
				["175:165:421:91"] = 976,	-- Gadgetzan
				["180:200:252:199"] = 982,	-- The Noxious Lair
				["185:250:203:286"] = 980,	-- Thistleshrub Valley
				["195:175:299:100"] = 979,	-- Sandsorrow Watch
				["195:210:323:359"] = 992,	-- Southmoon Ruins
				["205:145:325:289"] = 983,	-- Dunemaul Compound
				["205:157:445:511"] = 987,	-- Land's End Beach
				["210:175:254:0"] = 978,	-- Zul'Farrak
				["215:175:499:293"] = 1940,	-- Southbreak Shore
				["215:180:363:194"] = 1939,	-- Abyssal Sands
				["220:210:449:372"] = 981,	-- The Gaping Chasm
				--[[
				[988] = 13,                              -- Wavestrider Beach
				[989] = 14,                              -- Uldum
				[991] = 16,                              -- Gunstan's Post
				[2317] = 24,                             -- South Seas
				[2857] = 25,                             -- The Rumble Cage
				]]--
			})),
			-- #endif
			n(FACTIONS, {
				faction(369, { 	-- Gadgetzan
					["icon"] = icon("INV_Misc_Coin_01"),
					["OnTooltip"] = OnTooltipForGadgetzhan,
					["maps"] = { THE_BARRENS },
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(39, {	-- Gadgetzan, Tanaris
					["cr"] = 7823,	-- Bera Stonehammer <Gryphon Master>
					["coord"] = { 51.0, 29.2, TANARIS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(40, {	-- Gadgetzan, Tanaris
					["cr"] = 7824,	-- Bulkrek Ragefist <Wind Rider Master>
					["coord"] = { 51.6, 26.6, TANARIS },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(2750, {	-- A Bad Egg
					["qg"] = 7763,	-- Curgle Cranklehop
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["coord"] = { 52.2, 26.8, TANARIS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8646, 1 },	-- Bad Egg
					},
					["lvl"] = 42,
				}),
				q(2748, {	-- A Fine Egg
					["qg"] = 7763,	-- Curgle Cranklehop
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["coord"] = { 52.2, 26.8, TANARIS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8644, 1 },	-- Fine Egg
					},
					["lvl"] = 42,
					["groups"] = {
						i(9540),	-- Box of Spells
					},
				}),
				q(2747, {	-- An Extraordinary Egg
					["qg"] = 7763,	-- Curgle Cranklehop
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["coord"] = { 52.2, 26.8, TANARIS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8643, 1 },	-- Extraordinary Egg
					},
					["lvl"] = 42,
					["groups"] = {
						i(9541),	-- Box of Goodies
					},
				}),
				q(2749, {	-- An Ordinary Egg
					["qg"] = 7763,	-- Curgle Cranklehop
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["coord"] = { 52.2, 26.8, TANARIS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8645, 1 },	-- Ordinary Egg
					},
					["lvl"] = 42,
					["groups"] = {
						i(9539),	-- Box of Rations
					},
				}),
				q(841, {	-- Another Power Source?
					["lvl"] = 38,
					["races"] = HORDE_ONLY,
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle
					["repeatable"] = true,
					["groups"] = {
						i(8524),	-- Model 4711-FTZ Power Source
					},
				}),
				q(4496, {	-- Bungle in the Jungle
					["lvl"] = 50,
				}),
				{
					["allianceQuestData"] = q(4508, {	-- Calm Before the Storm (1/2) [A]
						["maps"] = { DARNASSUS },
					}),
					["hordeQuestData"] = q(4509, {	-- Calm Before the Storm (1/2) [H]
						["maps"] = { ORGRIMMAR },
					}),
					["providers"] = {
						{ "n", 5594 },	-- Alchemist Pestlezugg <Alchemy Supplies>
						{ "i", 11844 },	-- Pestlezugg's Un'Goro Report
					},
                    ["sourceQuest"] = 4507,    -- Pawn Captures Queen
                    ["coord"] = { 50.8, 27.0, TANARIS },
                    ["lvl"] = 50,
				},
				q(2882, {	-- Cuergo's Gold
					["coord"] = { 55.4, 92.2, TANARIS },
					["provider"] = { "i", 9254 },	-- Cuergo's Treasure Map
					["repeatable"] = true,
					["cost"] = {
						{ "i", 9275, 1 },	-- Cuergo's Key
						{ "i", 9251, 1 },	-- Upper Map Fragment
						{ "i", 9253, 1 },	-- Middle Map Fragment
						{ "i", 9252, 1 },	-- Lower Map Fragment
					},
					["lvl"] = 40,
					["groups"] = {
						i(9265, {	-- Cuergo's Hidden Treasure
							i(9360),	-- Cuergo's Gold
							i(9361),	-- Cuergo's Gold with Worm
							i(9359),	-- Wirt's Third Leg
						}),
					},
				}),
				q(2874, {	-- Deliver to MacKinley
					["lvl"] = 40,
					["sourceQuest"] = 2873,	-- Stoley's Shipment
					["groups"] = {
						i(9636),	-- Swashbuckler Sash
						i(9637),	-- Shinkicker Boots
					},
				}),
				q(2661, {	-- Delivery for Marin
					["lvl"] = 44,
				}),
				q(351, {	-- Find OOX-17/TN!
					["lvl"] = 43,
					["provider"] = { "i", 8623 },	-- OOX-17/TN Distress Beacon
				}),
				q(992, {	-- Gadgetzan Water Survey
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["coord"] = { 50.2, 27.5, TANARIS },
					["lvl"] = 38,
				}),
				q(3161, {	-- Gahz'ridian
					["lvl"] = 43,
					["groups"] = {
						i(10827),	-- Surveyor's Tunic
						i(10826),	-- Staff of Lore
					},
				}),
				q(3022, {	-- Handle With Care
					["qg"] = 7763,	-- Curgle Cranklehop
					["coord"] = { 52.2, 26.8, TANARIS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 9507, 1 },	-- A Carefully-packed Crate
					},
					["lvl"] = 42,
				}),
				q(2606, {	-- In Good Taste
					["lvl"] = 44,
					["qg"] = 7564,	-- Marin Noggenfogger
					["coord"] = { 51.8, 28.6, TANARIS },
				}),
				q(110, {	-- Insect Part Analysis (1/2)
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["sourceQuest"] = 10,	-- The Scrimshank Redemption
					["coord"] = { 50.2, 27.5, TANARIS },
					["lvl"] = 39,
				}),
				q(113, {	-- Insect Part Analysis (2/2)
					["qg"] = 5594,	-- Alchemist Pestlezugg <Alchemy Supplies>
					["sourceQuest"] = 110,	-- Insect Part Analysis (1/2)
					["coord"] = { 50.9, 27.0, TANARIS },
					["cost"] = {
						{ "i", 8594, 1 },	-- Insect Analysis Report
					},
					["lvl"] = 39,
				}),
				q(3914, {	-- Linken's Sword
					["provider"] = { "o", 148504 },	-- A Conspicuous Gravestone
					["sourceQuest"] = 3913,	-- A Grave Situation
					["coord"] = { 53.9, 29.0, TANARIS },
					["cost"] = {
						{ "i", 11162, 1 },	-- Linken's Superior Sword
					},
					["lvl"] = 47,
				}),
				q(1691, {	-- More Wastewander Justice
					["lvl"] = 40,
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle
					["sourceQuest"] = 1690,	-- Wastewander Justice
					["coord"] = { 52.5, 28.5, TANARIS },
				}),
				q(2662, {	-- Noggenfogger Elixir
					["lvl"] = 44,
					["groups"] = {
						i(8529),	-- Noggenfogger Elixir
					},
				}),
				q(82, {	-- Noxious Lair Investigation
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["sourceQuest"] = 992,	-- Gadgetzan Water Survey
					["coord"] = { 50.2, 27.5, TANARIS },
					["lvl"] = 39,
				}),
				q(4507, {	-- Pawn Captures Queen
					["qg"] = 5594,	-- Alchemist Pestlezugg <Alchemy Supplies>
					["coord"] = { 50.9, 27.0, TANARIS },
					["maps"] = { UNGORO_CRATER },
					["cost"] = {
						{ "i", 11835, 1 },	-- Gorishi Queen Brain
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] =  11833,	-- Gorishi Queen Lure
							["coord"] = { 44.6, 81.6, UNGORO_CRATER },
							["cr"] = 10041,	-- Gorishi Hive Queen
							["groups"] = {
								{
									["itemID"] = 11835,	-- Gorishi Queen Brain
									["questID"] = 4507,	-- Pawn Captures Queen
								},
							},
						},
					},
				}),
				q(8365, {	-- Pirate Hats Ahoy!
					["qg"] = 15165,	-- Haughty Modiste
					["coord"] = { 66.6, 22.3, TANARIS },
					["cost"] = {
						{ "i", 20519, 20 },	-- Southsea Pirate Hat
					},
					["lvl"] = 40,
				}),
				q(648, {	-- Rescue OOX-17/TN!
					["lvl"] = 43,
					["qg"] = 7784,	-- Homing Robot OOX-17/TN
					["sourceQuest"] = 351,	-- Find OOX-17/TN!
					["groups"] = {
						i(9643),	-- Optomatic Deflector
						i(9644),	-- Thermotastic Egg Timer
					},
				}),
				q(864, {	-- Return to Apothecary Zinge
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle <Gadgetzan Water Co.>
					["sourceQuest"] = 654,	-- Tanaris Field Sampling
					["coord"] = { 52.4, 28.4, TANARIS },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8527, 1 },	-- Sealed Field Testing Kit
					},
					["lvl"] = 38,
					["groups"] = {
						i(9634),	-- Skilled Handling Gloves
						i(9635),	-- Master Apothecary Cape
						i(11502),	-- Loreskin Shoulders
					},
				}),
				{
					["allianceQuestData"] = q(162, {	-- Rise of the Silithid [A]
						["maps"] = { DARNASSUS },
					}),
					["hordeQuestData"] = q(32, {	-- Rise of the Silithid [H]
						["maps"] = { ORGRIMMAR },
					}),
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["sourceQuest"] = 113,	-- Insect Part Analysis (2/2)
					["coord"] = { 50.2, 27.5, TANARIS },
					["lvl"] = 39,
				},
				q(3520, {	-- Screecher Spirits
					["qg"] = 8579,	-- Yeh'kinya
					["coord"] = { 67.0, 22.4, TANARIS },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { FERALAS },
					["lvl"] = 40,
				}),
				q(2876, {	-- Ship Schedules
					["provider"] = { "i", 9250 },	-- Ship Schedule
					["lvl"] = 40,
				}),
				q(379, {	-- Slake That Thirst
					["sourceQuest"] = 243,	-- Into the Field
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8483, 5 },	-- Wastewander Water Pouch
					},
					["lvl"] = 38,
					["groups"] = {
						i(8524),	-- Model 4711-FTZ Power Source
					},
				}),
				q(8366, {	-- Southsea Shakedown
					["lvl"] = 40,
					["qg"] = 7882,	-- Security Chief Bilgewhizzle
					["groups"] = {
						i(20640),	-- Southsea Head Bucket
						i(20641),	-- Southsea Mojo Boots
					},
					["coord"] = { 67.1, 23.9, TANARIS },
				}),
				q(2641, {	-- Sprinkle's Secret Ingredient
					["qg"] = 7583,	-- Sprinkle
					["coord"] = { 51.1, 26.9, TANARIS },
					["lvl"] = 44,
				}),
				q(2872, {	-- Stoley's Debt
					["qg"] = 2501,	-- \"Sea Wolf\" MacKinley
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(2873, {	-- Stoley's Shipment
					["lvl"] = 40,
					["qg"] = 7881,	-- Stoley
					["sourceQuest"] = 2872,	-- Stoley's Debt
					["coord"] = { 67.1, 24.0, TANARIS },
				}),
				q(4504, {	-- Super Sticky
					["lvl"] = 48,
					["qg"] = 7876,	-- Tran'rek
					["coord"] = { 51.6, 26.8, TANARIS },
				}),
				q(654, {	-- Tanaris Field Sampling
					["provider"] = { "i", 8524 },	-- Model 4711-FTZ Power Source
					["sourceQuests"] = {
						379,	-- Slake That Thirst
						841,	-- Another Power Source?
					},
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8523, 1 },	-- Field Testing Kit
						{ "i", 9440, 8 },	-- Acceptable Basilisk Sample
						{ "i", 9441, 8 },	-- Acceptable Hyena Sample
						{ "i", 9438, 8 },	-- Acceptable Scorpid Sample
					},
					["lvl"] = 38,
					["groups"] = {
						i(9437),	-- Untested Basilisk Sample
						i(9439),	-- Untested Hyena Sample
					},
				}),
				q(5863, {	-- The Dunemaul Compound
					["lvl"] = 44,
					["qg"] = 11758,	-- Andi Lynn
					["groups"] = {
						i(16738),	-- Witherseed Gloves
						i(16739),	-- Rugwood Mantle
					},
				}),
				q(10, {	-- The Scrimshank Redemption
					["qg"] = 7724,	-- Senior Surveyor Fizzledowser
					["sourceQuest"] = 82,	-- Noxious Lair Investigation
					["coord"] = { 50.2, 27.5, TANARIS },
					["cost"] = {
						{ "i", 8593, 1 },	-- Scrimshank's Surveying Gear
					},
					["lvl"] = 39,
					["groups"] = {
						{
							["itemID"] = 8593,	-- Scrimshank's Surveying Gear
							["questID"] = 10,	-- The Scrimshank Redemption
							["coord"] = { 56, 71, TANARIS },
						},
					},
				}),
				q(8893, {	-- The Super Egg-O-Matic
					["sourceQuest"] = 2741,	-- The Super Egg-O-Matic
					["repeatable"] = true,
					["maps"] = { FERALAS },
					["cost"] = {
						{ "i", 8564, 1 },	-- Hippogryph Egg
					},
					["lvl"] = 42,
					["groups"] = {
						i(8647),	-- Egg Crate
					},
				}),
				q(2741, {	-- The Super Egg-O-Matic
					["maps"] = { FERALAS },
					["cost"] = {
						{ "i", 8564, 1 },	-- Hippogryph Egg
					},
					["lvl"] = 42,
					["groups"] = {
						i(8647),	-- Egg Crate
					},
				}),
				q(2944, {	-- The Super Snapper FX
					["qg"] = 7763,	-- Curgle Cranklehop
					["sourceQuest"] = 2941,	-- The Borrower
					["coord"] = { 52.2, 26.8, TANARIS },
					["maps"] = { THE_HINTERLANDS, TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 42,
					["groups"] = {
						{
							["itemID"] = 9328,	-- Super Snapper FX
							["coord"] = { 79.0, 62.0, THE_HINTERLANDS },
							["groups"] = {
								{
									["itemID"] = 9330,	-- Snapshot of Gammerita
									["questID"] = 2944,	-- The Super Snapper FX
									["cr"] = 7977,	-- Gammerita
								},
							},
						},
					},
				}),
				q(2605, {	-- The Thirsty Goblin
					["lvl"] = 44,
					["qg"] = 7564,	-- Marin Noggenfogger
					["coord"] = { 51.8, 28.6, TANARIS },
				}),
				q(3362, {	-- Thistleshrub Valley
					["lvl"] = 45,
					["qg"] = 7876,	-- Tran'rek
					["coord"] = { 51.6, 26.8, TANARIS },
				}),
				q(1560, {	-- Tooga's Quest
					["lvl"] = 40,
					["qg"] = 5955,	-- Tooga
					["groups"] = {
						i(9638),	-- Chelonian Cuffs
						i(9642),	-- Band of the Great Tortoise
					},
				}),
				q(2864, {	-- Tran'rek
					["qg"] = 773,	-- Krazek
					["coord"] = { 51.6, 26.8, STRANGLETHORN_VALE },
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(2875, {	-- WANTED: Andre Firebeard
					["lvl"] = 40,
					["providers"] = {
						{ "o", 142122 },	-- Wanted Poster
						{ "o", 150075 },	-- Wanted Poster
					},
				}),
				q(2781, {	-- WANTED: Caliph Scorpidsting
					["lvl"] = 39,
					["provider"] = { "o", 142122 },	-- Wanted Poster
				}),
				q(9268, {	-- War at Sea
					["qg"] = 16417,	-- Rumsen Fizzlebrack
					["coord"] = { 50.4, 26.2, TANARIS },
					["maxReputation"] = { 369, NEUTRAL },	-- Gadgetzan, must be less than Neutral
					["cost"] = {
						{ "i", 4338, 40 },	-- Mageweave Cloth
						{ "i", 3466, 4 },	-- Strong Flux
					},
					["repeatable"] = true,
					["lvl"] = 40,
				}),
				q(1690, {	-- Wastewander Justice
					["lvl"] = 40,
					["qg"] = 7407,	-- Chief Engineer Bilgewhizzle
					["coord"] = { 52.5, 28.5, TANARIS },
				}),
				q(1707, {	-- Water Pouch Bounty
					["lvl"] = 40,
					["qg"] = 7408,	-- Spigot Operator Luglunket
					["groups"] = {
						i(8484),	-- Gadgetzan Water Co. Care Package
					},
				}),
				q(1878, {	-- Water Pouch Bounty
					["lvl"] = 40,
					["qg"] = 7408,	-- Spigot Operator Luglunket
					["sourceQuest"] = 1707,	-- Water Pouch Bounty
					["repeatable"] = true,
					["groups"] = {
						i(8484),	-- Gadgetzan Water Co. Care Package
					},
				}),
			}),
			n(RARES, {
				n(8202, {	-- Cyclok the Mad
					["coords"] = {
						{ 39.0, 54.0, TANARIS },
						{ 42.0, 54.0, TANARIS },
						{ 46.0, 66.2, TANARIS },
						{ 40.6, 72.8, TANARIS },
					},
				}),
				n(8207, {	-- Greater Firebird
					["coords"] = {
						{ 42.2, 36.4, TANARIS },
						{ 44.6, 35.6, TANARIS },
						{ 46.4, 33.0, TANARIS },
						{ 48.0, 35.6, TANARIS },
						{ 47.0, 38.8, TANARIS },
						{ 49.6, 38.4, TANARIS },
						{ 50.8, 39.0, TANARIS },
						{ 53.4, 39.4, TANARIS },
					},
				}),
				n(8205, {	-- Haarka the Ravenous
					["coords"] = {
						{ 53.6, 70.2, TANARIS },
						{ 54.6, 73.6, TANARIS },
						{ 56.2, 73.6, TANARIS },
						{ 57.0, 71.4, TANARIS },
						{ 57.0, 68.8, TANARIS },
					},
				}),
				n(8200, {	-- Jin'Zallah the Sandbringer
					["coords"] = {
						{ 37.8, 24.8, TANARIS },
						{ 42.2, 22.6, TANARIS },
						{ 40.0, 28.6, TANARIS },
					},
				}),
				n(8203, {	-- Kregg Keelhaul
					["coords"] = {
						{ 72.8, 46.6, TANARIS },
						{ 74.8, 47.6, TANARIS },
						{ 76.0, 45.0, TANARIS },
					},
				}),
				n(8208, {	-- Murderous Blisterpaw
					["coords"] = {
						{ 48.0, 27.0, TANARIS },
						{ 48.6, 31.6, TANARIS },
						{ 50.0, 32.6, TANARIS },
						{ 52.2, 32.8, TANARIS },
						{ 55.0, 33.4, TANARIS },
						{ 56.4, 36.6, TANARIS },
					},
				}),
				n(8201, {	-- Omgorn the Lost
					["coords"] = {
						{ 38.4, 54.2, TANARIS },
						{ 38.8, 50.6, TANARIS },
						{ 40.0, 49.8, TANARIS },
						{ 42.0, 51.4, TANARIS },
						{ 43.2, 53.6, TANARIS },
						{ 42.4, 56.4, TANARIS },
						{ 39.2, 58.6, TANARIS },
						{ 37.4, 56.2, TANARIS },
						{ 39.8, 71.6, TANARIS },
						{ 41.6, 74.4, TANARIS },
						{ 46.6, 61.8, TANARIS },
						{ 47.0, 63.6, TANARIS },
						{ 48.8, 65.2, TANARIS },
						{ 46.8, 66.8, TANARIS },
						{ 44.0, 66.4, TANARIS },
						{ 45.6, 63.6, TANARIS },
					},
					["groups"] = {
						i(17055),	-- Changuk Smasher
					},
				}),
				n(8204, {	-- Soriid the Devourer
					["coords"] = {
						{ 31.6, 45.0, TANARIS },
						{ 32.6, 44.2, TANARIS },
						{ 34.8, 43.2, TANARIS },
						{ 34.8, 46.0, TANARIS },
					},
				}),
				n(8199, {	-- Warleader Krazzilak
					["coords"] = {
						{ 37.0, 24.2, TANARIS },
						{ 38.6, 24.2, TANARIS },
						{ 41.0, 27.4, TANARIS },
						{ 42.6, 22.8, TANARIS },
						{ 44.2, 24.8, TANARIS },
					},
				}),
			}),
			n(VENDORS, {
				n(5594, {	-- Alchemist Pestlezugg <Alchemy Supplies>
					["coord"] = { 50.9, 27.0, TANARIS },
					["groups"] = {
						i(6057),	-- Recipe: Nature Protection Potion
						i(9303),	-- Recipe: Philosopher's Stone
						i(9304),	-- Recipe: Transmute Iron to Gold
						i(9305),	-- Recipe: Transmute Mithril to Truesilver
						i(12958),	-- Recipe: Transmute Arcanite
					},
				}),
				n(8131, {	-- Blizrik Buckshot <Gunsmith>
					["coord"] = { 50.7, 27.6, TANARIS },
					["groups"] = {
						i(18650),	-- Schematic: EZ-Thro Dynamite II
					},
				}),
				n(8125, {	-- Dirge Quikcleave <Butcher>
					["coord"] = { 52.6, 28.0, TANARIS },
					["groups"] = {
						i(18046),	-- Recipe: Tender Wolf Steak
					},
				}),
				n(8137, {	-- Gikkix <Fisherman>
					["coord"] = { 66.6, 22.1, TANARIS },
					["groups"] = {
						i(13939),	-- Recipe: Spotted Yellowtail
						i(13942),	-- Recipe: Grilled Squid
						i(13945),	-- Recipe: Nightfin Soup
						i(13946),	-- Recipe: Poached Sunscale Salmon
					},
				}),
				-- #if AFTER TBC
				n(15165, {	-- Haughty Modiste <Fashion Designer>
					["coord"] = { 66.6, 22.2, TANARIS },
					["groups"] = {
						i(37915),	-- Dress Shoes
						i(38327),	-- Pattern: Haliscan Jacket
						i(38328),	-- Pattern: Haliscan Pantaloons
					},
				}),
				-- #endif
				n(8139, {	-- Jabbey <General Goods>
					["coord"] = { 67.0, 22.0, TANARIS },
					["groups"] = {
						i(16767),	-- Recipe: Undermine Clam Chowder
					},
				}),
				n(14743, {	-- Jhordy Lapforge
					["requireSkill"] = 20219,	-- Gnomish Engineering
					["description"] = "Gnomish Engineers can speak to Smiles to learn the recipe.",
					["coord"] = { 52.17, 27.88, TANARIS },
					["groups"] = {
						recipe(23489),	-- Ultrasafe Transporter - Gadgetzan
					},
				}),
				n(5411, {	-- Krinkle Goodsteel <Blacksmithing Supplies>
					["coord"] = { 51.5, 28.8, TANARIS },
					["groups"] = {
						i(6047),	-- Plans: Golden Scale Coif
					},
				}),
				n(6568, {	-- Vizzklick <Tailoring Supplies>
					["coord"] = { 51.0, 27.3, TANARIS },
					["groups"] = {
						i(7088),	-- Pattern: Crimson Silk Robe
						i(21358),	-- Pattern: Soul Pouch
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(11206, {	-- Formula: Enchant Cloak - Lesser Agility
					["crs"] = {
						5623,	-- Wastewander Assassin
						7805,	-- Wastewander Scofflaw
					},
				}),
				i(8399, {	-- Pattern: Tough Scorpid Boots
					["cr"] = 5615,	-- Wastewander Rogue
				}),
				i(8397, {	-- Pattern: Tough Scorpid Bracers
					["cr"] = 5617,	-- Wastewander Shadow Mage
				}),
				i(8395, {	-- Pattern: Tough Scorpid Breastplate
					["cr"] = 5618,	-- Wastewander Bandit
				}),
				i(8398, {	-- Pattern: Tough Scorpid Gloves
					["cr"] = 5616,	-- Wastewander Thief
				}),
				i(8402, {	-- Pattern: Tough Scorpid Helm
					["crs"] = {
						7883,	-- Andre Firebeard
						5623,	-- Wastewander Assassin
						7805,	-- Wastewander Scofflaw
					},
				}),
				i(8401, {	-- Pattern: Tough Scorpid Leggings
					["cr"] = 5615,	-- Wastewander Rogue
				}),
				i(8400, {	-- Pattern: Tough Scorpid Shoulders
					["crs"] = {
						7883,	-- Andre Firebeard
						5623,	-- Wastewander Assassin
						7805,	-- Wastewander Scofflaw
					},
				}),
				i(9276, {	-- Pirate's Footlocker
					["crs"] = {
						7857,	-- Southsea Dock Worker
						7856,	-- Southsea Freebooter
						15685,	-- Southsea Kidnapper
						7855,	-- Southsea Pirate
						7858,	-- Southsea Swashbuckler
					},
					["groups"] = {
						i(9359),	-- Wirt's Third Leg
						i(9250, {	-- Ship Schedule
							["questID"] = 2876,	-- Ship Schedules
						}),
						i(9251, {	-- Upper Map Fragment
							["questID"] = 2882,	-- Cuergo's Gold
							["repeatable"] = true,
						}),
						i(9253, {	-- Middle Map Fragment
							["questID"] = 2882,	-- Cuergo's Gold
							["repeatable"] = true,
						}),
						i(9252, {	-- Lower Map Fragment
							["questID"] = 2882,	-- Cuergo's Gold
							["repeatable"] = true,
						}),
						i(9249, {	-- Captain's Key
							["description"] = "Unlocks the Captain's Chest located in the ship at the docks.",
							["coord"] = { 76.5, 45.8, TANARIS },
							["groups"] = {
								i(9359),	-- Wirt's Third Leg
							},
						}),
					},
				}),
				i(20519, {	-- Southsea Pirate Hat
					["questID"] = 8365,	-- Pirate Hats Ahoy!
					["crs"] = {
						7883,	-- Andre Firebeard
						8203,	-- Kregg Keelhaul
						7857,	-- Southsea Dock Worker
						7856,	-- Southsea Freebooter
						15685,	-- Southsea Kidnapper
						7855,	-- Southsea Pirate
						7858,	-- Southsea Swashbuckler
					},
				}),
				i(9437, {	-- Untested Basilisk Sample
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8523, 1 },	-- Field Testing Kit
					},
					["crs"] = {
						5419,	-- Glasshide Basilisk
						5420,	-- Glasshide Gazer
						5421,	-- Glasshide Petrifier
					},
					["groups"] = {
						{
							["itemID"] = 9440,	-- Acceptable Basilisk Sample
							["questID"] = 654,	-- Tanaris Field Sampling
						},
					},
				}),
				i(9439, {	-- Untested Hyena Sample
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8523, 1 },	-- Field Testing Kit
					},
					["crs"] = {
						5426,	-- Blisterpaw Hyena
						8208,	-- Murderous Blisterpaw
						5427,	-- Rabid Blisterpaw
						5425,	-- Starving Blisterpaw
					},
					["groups"] = {
						{
							["itemID"] = 9441,	-- Acceptable Hyena Sample
							["questID"] = 654,	-- Tanaris Field Sampling
						},
					},
				}),
				i(9442, {	-- Untested Scorpid Sample
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8523, 1 },	-- Field Testing Kit
					},
					["crs"] = {
						7803,	-- Scorpid Duneburrower
						5424,	-- Scorpid Dunestalker
						5422,	-- Scorpid Hunter
						5423,	-- Scorpid Tail Lasher
					},
					["groups"] = {
						{
							["itemID"] = 9438,	-- Acceptable Scorpid Sample
							["questID"] = 654,	-- Tanaris Field Sampling
						},
					},
				}),
			}),
		},
	}),
}));