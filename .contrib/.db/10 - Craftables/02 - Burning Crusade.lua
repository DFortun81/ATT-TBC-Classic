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
			applyclassicphase(TBC_PHASE_FIVE, i(35751)),	-- Assassin's Alchemist Stone
			applyclassicphase(TBC_PHASE_FIVE, i(35748)),	-- Guardian's Alchemist Stone
			applyclassicphase(TBC_PHASE_FIVE, i(35750)),	-- Redeemer's Alchemist Stone
			applyclassicphase(TBC_PHASE_FIVE, i(35749)),	-- Sorcerer's Alchemist Stone
		}),
		category(643, {	-- Oils
			
		}),
	}),
	prof(BLACKSMITHING, {
		prof(9788, {	-- Armorsmith
			["description"] = "These items can only be crafted by Blacksmiths who have completed the Art of the Armorsmith quest chain.",
			["groups"] = {
				category(220, {	-- Chest
					applyclassicphase(TBC_PHASE_ONE, i(28483, {	-- Breastplate of Kings
						["timeline"] = {
							"added 2.1.0.6655",
							"removed 4.0.1.13287",
						},
					})),
					applyclassicphase(TBC_PHASE_ONE, i(28484, {	-- Bulwark of Kings
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					})),
					applyclassicphase(TBC_PHASE_ONE, i(28485, {	-- Bulwark of the Ancient Kings
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					})),
					applyclassicphase(TBC_PHASE_ONE, i(23565, {	-- Embrace of the Twisting Nether
						["timeline"] = {
							"added 2.1.0.6692",
							"removed 4.0.1.13287",
						},
					})),
					applyclassicphase(TBC_PHASE_ONE, i(30074, {	-- Heavy Earthforged Breastplate
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					})),
					applyclassicphase(TBC_PHASE_ONE, i(23563, {	-- Nether Plate Shirt
						["timeline"] = {
							"added 2.1.0.6655",
							"removed 4.0.1.13287",
						},
					})),
					applyclassicphase(TBC_PHASE_ONE, i(30076, {	-- Stormforged Hauberk
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					})),
					applyclassicphase(TBC_PHASE_ONE, i(23564, {	-- Twisting Nether Plate Shirt
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					})),
				}),
				category(224, {	-- Legs
					applyclassicphase(TBC_PHASE_ONE, i(30069, {	-- Earthforged Leggings
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					})),
					applyclassicphase(TBC_PHASE_ONE, i(30070, {	-- Windforged Leggings
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					})),
				}),
			},
		}),
		prof(9787, {	-- Weaponsmith
			["description"] = "These items can only be crafted by Blacksmiths who have completed the Way of the Weaponsmith quest chain.",
			["groups"] = {
				prof(17041, {	-- Master Axesmith
					["description"] = "These items can only be crafted by Master Axesmith specialized Weaponsmiths.",
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, i(28432, {	-- Black Planar Edge
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(28436, {	-- Bloodmoon
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(28434, {	-- Lunar Crescent
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(28435, {	-- Mooncleaver
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(30088, {	-- Skyforged Great Axe
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
								"added 7.1.5.23360",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(30087, {	-- Stormforged Axe
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
								"added 7.1.5.23360",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(28431, {	-- The Planar Edge
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(28433, {	-- Wicked Edge of the Planes
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
					},
				}),
				prof(17040, {	-- Master Hammersmith
					["description"] = "These items can only be crafted by Master Hammersmith specialized Weaponsmiths.",
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, i(28441, {	-- Deep Thunder
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(28438, {	-- Dragonmaw
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(28439, {	-- Dragonstrike
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(28437, {	-- Drakefist Hammer
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(30093, {	-- Great Earthforged Hammer
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
								"added 7.1.5.23360",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(30089, {	-- Lavaforged Warhammer
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
								"added 7.1.5.23360",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(28442, {	-- Stormherald
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(28440, {	-- Thunder
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
					},
				}),
				prof(17039, {	-- Master Swordsmith
					["description"] = "These items can only be crafted by Master Swordsmith specialized Weaponsmiths.",
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, i(28427, {	-- Blazefury
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(28426, {	-- Blazeguard
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(28425, {	-- Fireguard
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(28428, {	-- Lionheart Blade
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(28429, {	-- Lionheart Champion
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(28430, {	-- Lionheart Executioner
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(30086, {	-- Stoneforged Claymore
							["timeline"] = {
								"added 2.1.0.6692",
								"removed 4.0.1.13287",
								"added 7.1.5.23360",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(30077, {	-- Windforged Rapier
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
								"added 7.1.5.23360",
							},
						})),
					},
				}),
				category(227, {	-- Weapons
					["description"] = "These can be crafted by any Weaponsmith.",
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, i(30071, {	-- Light Earthforged Blade
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
								"added 7.1.5.23360",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(30073, {	-- Light Emberforged Hammer
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
						applyclassicphase(TBC_PHASE_ONE, i(30072, {	-- Light Skyforged Axe
							["timeline"] = {
								"added 2.0.1.6180",
								"removed 4.0.1.13287",
							},
						})),
					},
				}),
			},
		}),
		-- #if BEFORE 5.0.4
		category(215, {	-- Materials
			i(25844),	-- Adamantite Rod
			i(25845),	-- Eternium Rod
			i(25843),	-- Fel Iron Rod
		}),
		-- #endif
		category(216, {	-- Weapon Mods
			i(33185),	-- Adamantite Weapon Chain
			i(23529),	-- Adamantite Sharpening Stone
			i(28421),	-- Adamantite Weightstone
			i(23528),	-- Fel Sharpening Stone
			i(28420),	-- Fel Weightstone
		}),
		category(217, {	-- Armor Mods
			i(23530),	-- Felsteel Shield Spike
			i(25521),	-- Greater Rune of Warding
			i(23576),	-- Greater Ward of Shielding
			i(23559),	-- Lesser Rune of Warding
			i(23575),	-- Lesser Ward of Shielding
		}),
		category(218, {	-- Helms
			i(23493),	-- Fel Iron Chain Coif
			i(23519),	-- Felsteel Helm
			i(23516),	-- Flamebane Helm
			i(23535),	-- Helm of the Stalwart Defender
			i(31371),	-- Iceguard Helm
			i(23536),	-- Oathkeepers Helm
			i(23521),	-- Ragesteel Helm
			i(23534),	-- Storm Helm
			i(31368),	-- Wildguard Helm
		}),
		category(219, {	-- Shoulders
			applyclassicphase(TBC_PHASE_THREE, i(32573)),	-- Dawnsteel Shoulders
			i(33173),	-- Ragesteel Shoulders
			applyclassicphase(TBC_PHASE_THREE, i(32570)),	-- Swiftsteel Shoulders
		}),
		category(222, {	-- Bracers
			i(23506),	-- Adamantite Plate Bracers
			i(23537),	-- Black Felsteel Bracers
			i(23539),	-- Blessed Bracers
			i(23538),	-- Bracers of the Green Fortress
			applyclassicphase(TBC_PHASE_THREE, i(32571)),	-- Dawnsteel Bracers
			i(23494),	-- Fel Iron Chain Bracers
			i(23515),	-- Flamebane Bracers
			applyclassicphase(TBC_PHASE_THREE, i(32403)),	-- Shadesteel Bracers
			applyclassicphase(TBC_PHASE_THREE, i(32568)),	-- Swiftsteel Bracers
		}),
		category(221, {	-- Gauntlets
			i(23508),	-- Adamantite Plate Gloves
			i(23491),	-- Fel Iron Chain Gloves
			i(23482),	-- Fel Iron Plate Gloves
			i(23531),	-- Felfury Gauntlets
			i(23517),	-- Felsteel Gloves
			i(23514),	-- Flamebane Gloves
			i(23532),	-- Gauntlets of the Iron Tower
			applyclassicphase(TBC_PHASE_FIVE, i(34378)),	-- Hard Khorium Battlefists
			i(23520),	-- Ragesteel Gloves
			i(23533),	-- Steelgrip Gauntlets
			applyclassicphase(TBC_PHASE_FIVE, i(34380)),	-- Sunblessed Gauntlets
			i(23526),	-- Swiftsteel Gloves
		}),
		category(220, {	-- Chest
			i(23507),	-- Adamantite Breastplate
			i(23527),	-- Earthpeace Breastplate
			i(23509),	-- Enchanted Adamantite Breastplate
			i(23489),	-- Fel Iron Breastplate
			i(23490),	-- Fel Iron Chain Tunic
			i(23513),	-- Flamebane Breastplate
			applyclassicphase(TBC_PHASE_FIVE, i(34377)),	-- Hard Khorium Battleplate
			i(31369),	-- Iceguard Breastplate
			i(23522),	-- Ragesteel Breastplate
			applyclassicphase(TBC_PHASE_FIVE, i(34379)),	-- Sunblessed Breastplate
			i(31364),	-- Wildguard Breastplate
		}),
		category(223, {	-- Belts
			applyclassicphase(TBC_PHASE_TWO, i(30034)),	-- Belt of the Guardian
			i(23510),	-- Enchanted Adamantite Belt
			i(23484),	-- Fel Iron Plate Belt
			i(23524),	-- Khorium Belt
			applyclassicphase(TBC_PHASE_TWO, i(30032)),	-- Red Belt of Battle
			applyclassicphase(TBC_PHASE_THREE, i(32401)),	-- Shadesteel Girdle
		}),
		category(224, {	-- Legs
			i(23512),	-- Enchanted Adamantite Leggings
			i(23488),	-- Fel Iron Plate Pants
			i(23518),	-- Felsteel Leggings
			i(31370),	-- Iceguard Leggings
			i(23523),	-- Khorium Pants
			applyclassicphase(TBC_PHASE_THREE, i(32404)),	-- Shadesteel Greaves
			i(31367),	-- Wildguard Leggings
			
		}),
		category(225, {	-- Boots
			applyclassicphase(TBC_PHASE_TWO, i(30033)),	-- Boots of the Protector
			i(23511),	-- Enchanted Adamantite Boots
			i(23487),	-- Fel Iron Plate Boots
			i(23525),	-- Khorium Boots
			applyclassicphase(TBC_PHASE_TWO, i(30031)),	-- Red Havoc Boots
			applyclassicphase(TBC_PHASE_THREE, i(32402)),	-- Shadesteel Sabots
		}),
		category(227, {	-- Weapons
			i(23503),	-- Adamantite Cleaver
			i(23504),	-- Adamantite Dagger
			i(23502),	-- Adamantite Maul
			i(23505),	-- Adamantite Rapier
			i(23555),	-- Dirge
			i(23554),	-- Eternium Runed Blade
			i(23542),	-- Fel Edged Battleaxe
			i(23546),	-- Fel Hardened Maul
			i(23499),	-- Fel Iron Greatsword
			i(23498),	-- Fel Iron Hammer
			i(23497),	-- Fel Iron Hatchet
			i(23540),	-- Felsteel Longblade
			i(23543),	-- Felsteel Reaper
			-- #if BEFORE MOP
			i(29204, {	-- Felsteel Whisper Knives
				["timeline"] = { "removed 5.0.4.10000" },
			}),
			-- #endif
			i(32854),	-- Hammer of Righteous Might
			i(23556),	-- Hand of Eternity
			i(23541),	-- Khorium Champion
			i(23544),	-- Runic Hammer
		}),
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
		applyclassicphase(LEGION_PHASE_ONE, category(705, {	-- Illusions
			i(138789, {	-- Tome of Illusions: Outland
				ill(5390),	-- Battlemaster
				ill(2674),	-- Spellsurge
				ill(5864),	-- Netherflame
			}),
		})),
		category(697, {	-- Rods
			i(22462, {	-- Runed Adamantite Rod
				["timeline"] = { "removed 5.0.4.10000" },
			}),
			i(22463, {	-- Runed Eternium Rod
				["timeline"] = { "removed 5.0.4.10000" },
			}),
			i(22461, {	-- Runed Fel Iron Rod
				["timeline"] = { "removed 5.0.4.10000" },
			}),
		}),
		category(680, {	-- Reagents
			i(22445),	-- Arcane Dust
			i(22446),	-- Greater Planar Essence
			i(22449),	-- Large Prismatic Shard
			i(22447),	-- Lesser Planar Essence
			i(22448),	-- Small Prismatic Shard
			i(22450),	-- Void Crystal
		}),
		category(688, {	-- Oils
			i(22521),	-- Superior Mana Oil
			i(22522),	-- Superior Wizard Oil
		}),
		category(689, {	-- Other
			i(22460),	-- Prismatic Sphere
			i(22459),	-- Void Sphere
		}),
	}),
	prof(ENGINEERING, {
		prof(20219, {	-- Gnomish Engineering
			["description"] = "These items can only be crafted by Engineers who have completed the Gnomish Engineering quest chain.",
			["groups"] = {
				category(188, {	-- Devices
					i(23841),	-- Gnomish Flame Turret
					i(23835),	-- Gnomish Poultryizer
					i(23825),	-- Nigh-Invulnerability Belt
					i(30544),	-- Ultrasafe Transporter: Toshley's Station
				}),
				category(185, {	-- Goggles
					i(23829),	-- Gnomish Battle Goggles
					i(23828),	-- Gnomish Power Goggles
				}),
			},
		}),
		prof(20222, {	-- Goblin Engineering
			["description"] = "These items can only be crafted by Engineers who have completed the Goblin Engineering quest chain.",
			["groups"] = {
				category(188, {	-- Devices
					i(30542),	-- Dimensional Ripper - Area 52
					i(23836),	-- Goblin Rocket Launcher
				}),
				category(185, {	-- Goggles
					i(23838),	-- Foreman's Enchanted Helmet
					i(23839),	-- Foreman's Reinforced Helmet
				}),
				category(184, {	-- Explosives
					i(23827),	-- Super Sapper Charge
					i(23826),	-- The Bigger One
				}),
			},
		}),
		-- #if BEFORE 4.0.1
		category(1, {	-- Bullets
			applyclassicphase(TBC_PHASE_TWO, i(23773)),	-- Adamantite Shells
			applyclassicphase(TBC_PHASE_TWO, i(33803)),	-- Adamantite Stinger
			i(23772),	-- Fel Iron Shells
		}),
		-- #endif
		category(750, {	-- Reagents
			i(23784),	-- Adamantite Frame
			i(23781),	-- Elemental Blasting Powder
			i(23782),	-- Fel Iron Casing
			i(23787),	-- Felsteel Stabilizer
			i(23783),	-- Handful of Fel Iron Bolts
			i(23785),	-- Hardened Adamantite Tube
			i(32423),	-- Icy Blasting Primers
			i(23786),	-- Khorium Power Core
		}),
		category(751, {	-- Explosives
			i(23737),	-- Adamantite Grenade
			i(23819),	-- Elemental Seaforium Charge
			i(23736),	-- Fel Iron Bomb
			i(32413),	-- Frost Grenade
		}),
		category(752, {	-- Goggles
			applyclassicphase(TBC_PHASE_FIVE, i(34847)),	-- Annihilator Holo-Gogs
			i(23758),	-- Cogspinner Goggles
			applyclassicphase(TBC_PHASE_TWO, i(32478)),		-- Deathblow X11 Goggles
			applyclassicphase(TBC_PHASE_TWO, i(32494)),		-- Destruction Holo-Gogs
			applyclassicphase(TBC_PHASE_TWO, i(32461)),		-- Furious Gizmatic Goggles
			applyclassicphase(TBC_PHASE_TWO, i(32476)),		-- Gadgetstorm Goggles
			applyclassicphase(TBC_PHASE_FIVE, i(34357)),	-- Hard Khorium Goggles
			applyclassicphase(TBC_PHASE_FIVE, i(35182)),	-- Hyper-Magnified Moon Specs
			i(23763),	-- Hyper-Vision Goggles
			applyclassicphase(TBC_PHASE_TWO, i(32472)),		-- Justicebringer 2000 Specs
			applyclassicphase(TBC_PHASE_FIVE, i(35185)),	-- Justicebringer 3000 Specs
			applyclassicphase(TBC_PHASE_FIVE, i(34355)),	-- Lightning Etched Specs
			applyclassicphase(TBC_PHASE_TWO, i(32475)),		-- Living Replicator Specs
			applyclassicphase(TBC_PHASE_TWO, i(32480)),		-- Magnified Moon Specs
			applyclassicphase(TBC_PHASE_FIVE, i(34354)),	-- Mayhem Projection Goggles
			i(23761),	-- Power Amplification Goggles
			applyclassicphase(TBC_PHASE_TWO, i(32495)),		-- Powerheal 4000 Lens
			applyclassicphase(TBC_PHASE_FIVE, i(35181)),	-- Powerheal 9000 Lens
			applyclassicphase(TBC_PHASE_FIVE, i(35184)),	-- Primal-Attuned Goggles
			applyclassicphase(TBC_PHASE_FIVE, i(34353)),	-- Quad Deathblow X44 Goggles
			applyclassicphase(TBC_PHASE_TWO, i(32474)),		-- Surestrike Goggles v2.0
			applyclassicphase(TBC_PHASE_FIVE, i(34356)),	-- Surestrike Goggles v3.0
			applyclassicphase(TBC_PHASE_TWO, i(32473)),		-- Tankatronic Goggles
			i(23762),	-- Ultra-Spectropic Detection Goggles
			applyclassicphase(TBC_PHASE_TWO, i(32479)),		-- Wonderheal XT40 Shades
			applyclassicphase(TBC_PHASE_FIVE, i(35183)),	-- Wonderheal XT68 Shades
		}),
		category(753, {	-- Devices
			-- #if BEFORE 4.0.1
			applyclassicphase(TBC_PHASE_TWO, i(20475)),	-- Adamantite Arrow Maker
			applyclassicphase(TBC_PHASE_TWO, i(34504)),	-- Adamantite Shell Machine
			-- #endif
			i(23767),	-- Crashin' Thrashin' Robot
			i(23774),	-- Fel Iron Toolbox
			i(34113),	-- Field Repair Bot 110G
			i(33092),	-- Healing Potion Injector
			i(33093),	-- Mana Potion Injector
			i(23824),	-- Rocket Boots Xtreme
			i(35581),	-- Rocket Boots Xtreme Lite
			i(23821),	-- Zapthrottle Mote Extractor
		}),
		category(754, {	-- Weapons
			i(23746),	-- Adamantite Rifle
			i(23742),	-- Fel Iron Musket
			i(23747),	-- Felsteel Boomstick
			applyclassicphase(TBC_PHASE_THREE, i(32756)),	-- Gyro-Balanced Khorium Destroyer
			i(23748),	-- Ornate Khorium Rifle
		}),
		category(755, {	-- Scopes
			i(23764),	-- Adamantite Scope
			i(23765),	-- Khorium Scope
			i(23766),	-- Stabilized Eternium Scope
		}),
		category(756, {	-- Mounts
			i(34060),	-- Flying Machine
			i(34061),	-- Turbo-Charged Flying Machine
		}),
		category(757, {	-- Fireworks
			i(23771),	-- Green Smoke Flare
			i(25886),	-- Purple Smoke Flare
			i(23768),	-- White Smoke Flare
		}),
	}),
	prof(FIRST_AID, {
		i(21990),	-- Netherweave Bandage
		i(21991),	-- Heavy Netherweave Bandage
	}),
	prof(FISHING, {
		i(27422),	-- Barbed Gill Trout
		i(33823),	-- Bloodfin Catfish
		i(33824),	-- Crescent-Tail Skullfish
		i(27513),	-- Curious Crate
		i(27516),	-- Enormous Barbed Gill Trout
		i(27435),	-- Figluster's Mudfish
		i(27439),	-- Furious Crawdad
		i(27438),	-- Golden Darter
		i(27481),	-- Heavy Supply Crate
		i(27515),	-- Huge Spotted Feltail
		i(27437),	-- Icefin Bluefish
		i(27511),	-- Inscribed Scrollcase
		i(27425),	-- Spotted Feltail
		i(27429),	-- Zangarian Sporefish
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
		prof(10656, {	-- Dragonscale Leatherworking
			["description"] = "These items can only be crafted by Leatherworkers who have completed the associated quest.",
			["groups"] = {
				category(932, {	-- Chest
					applyclassicphase(TBC_PHASE_ONE, i(29515, {	-- Ebon Netherscale Breastplate
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					})),
					-- #if BEFORE CATA
					applyclassicphase(TBC_PHASE_ONE, i(29975)),	-- Golden Dragonstrike Breastplate
					-- #endif
					applyclassicphase(TBC_PHASE_ONE, i(29519, {	-- Netherstrike Breastplate
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					})),
				}),
				category(933, {	-- Bracers
					applyclassicphase(TBC_PHASE_ONE, i(29517, {	-- Ebon Netherscale Bracers
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					})),
					applyclassicphase(TBC_PHASE_ONE, i(29521, {	-- Netherstrike Bracers
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					})),
				}),
				category(935, {	-- Belts
					applyclassicphase(TBC_PHASE_ONE, i(29516, {	-- Ebon Netherscale Belt
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					})),
					applyclassicphase(TBC_PHASE_ONE, i(29520, {	-- Netherstrike Belt
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					})),
				}),
				-- #if BEFORE CATA
				category(936, {	-- Pants
					applyclassicphase(TBC_PHASE_ONE, i(29971)),	-- Dragonstrike Leggings
				}),
				-- #endif
			},
		}),
		prof(10658, {	-- Elemental Leatherworking
			["description"] = "These items can only be crafted by Leatherworkers who have completed the associated quest.",
			["groups"] = {
				category(932, {	-- Chest
					-- #if BEFORE CATA
					applyclassicphase(TBC_PHASE_ONE, i(29973)),	-- Primalstorm Breastplate
					-- #endif
					applyclassicphase(TBC_PHASE_ONE, i(29525, {	-- Primalstrike Vest
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					})),
				}),
				category(933, {	-- Bracers
					applyclassicphase(TBC_PHASE_ONE, i(29527, {	-- Primalstrike Bracers
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					})),
				}),
				category(935, {	-- Belts
					applyclassicphase(TBC_PHASE_ONE, i(29526, {	-- Primalstrike Belt
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					})),
				}),
				-- #if BEFORE CATA
				category(936, {	-- Pants
					applyclassicphase(TBC_PHASE_ONE, i(29964)),	-- Blackstorm Leggings
				}),
				-- #endif
			},
		}),
		prof(10660, {	-- Tribal Leatherworking
			["description"] = "These items can only be crafted by Leatherworkers who have completed the associated quest.",
			["groups"] = {
				category(932, {	-- Chest
					-- #if BEFORE CATA
					applyclassicphase(TBC_PHASE_ONE, i(29974)),	-- Living Crystal Breastplate
					-- #endif
					applyclassicphase(TBC_PHASE_ONE, i(29522, {	-- Windhawk Hauberk
						["timeline"] = {
							"added 2.0.1.6180",
							"removed 4.0.1.13287",
						},
					})),
				}),
				category(933, {	-- Bracers
					applyclassicphase(TBC_PHASE_ONE, i(29523, {	-- Windhawk Bracers
						["timeline"] = {
							"added 2.1.0.6655",
							"removed 4.0.1.13287",
						},
					})),
				}),
				category(935, {	-- Belts
					applyclassicphase(TBC_PHASE_ONE, i(29524, {	-- Windhawk Belt
						["timeline"] = {
							"added 2.1.0.6655",
							"removed 4.0.1.13287",
						},
					})),
				}),
				-- #if BEFORE CATA
				category(936, {	-- Pants
					applyclassicphase(TBC_PHASE_ONE, i(29970)),	-- Wildfeather Leggings
				}),
				-- #endif
			},
		}),
		category(927, {	-- Materials
			i(23793),	-- Heavy Knothide Leather
			i(21887),	-- Knothide Leather
		}),
		category(928, {	-- Armor Kits
			i(29488, {	-- Arcane Armor Kit
				["timeline"] = { "removed 5.0.4.10000" },
			}),
			i(29534),	-- Clefthide Leg Armor
			i(29533),	-- Cobrahide Leg Armor
			i(25679),	-- Comfortable Insoles
			i(29485, {	-- Flame Armor Kit
				["timeline"] = { "removed 5.0.4.10000" },
			}),
			i(29486, {	-- Frost Armor Kit
				["timeline"] = { "removed 5.0.4.10000" },
			}),
			i(34207),	-- Glove Reinforcements
			i(34330),	-- Heavy Knothide Armor Kit
			i(25650),	-- Knothide Armor Kit
			i(25652),	-- Magister's Armor Kit
			i(29487, {	-- Nature Armor Kit
				["timeline"] = { "removed 5.0.4.10000" },
			}),
			i(29536),	-- Nethercleft Leg Armor
			i(29535),	-- Nethercobra Leg Armor
			i(29483, {	-- Shadow Armor Kit
				["timeline"] = { "removed 5.0.4.10000" },
			}),
			i(25651),	-- Vindicator's Armor Kit
		}),
		category(929, {	-- Bags
			i(34490),	-- Bag of Many Hides
			applyclassicphase(TBC_PHASE_THREE, i(34099, {	-- Knothide Ammo Pouch
				["timeline"] = {
					"added 2.3.0.7382",
					"removed 4.0.1.13287",
				},
			})),
			applyclassicphase(TBC_PHASE_THREE, i(34100, {	-- Knothide Quiver
				["timeline"] = {
					"added 2.3.0.7382",
					"removed 4.0.1.13287",
				},
			})),
			i(34482),	-- Leatherworker's Satchel
			applyclassicphase(TBC_PHASE_THREE, i(34106, {	-- Netherscale Ammo Pouch
				["timeline"] = {
					"added 2.3.0.7382",
					"removed 4.0.1.13287",
				},
			})),
			applyclassicphase(TBC_PHASE_THREE, i(34105, {	-- Quiver of a Thousand Feathers
				["timeline"] = {
					"added 2.3.0.7382",
					"removed 4.0.1.13287",
				},
			})),
			i(29540),	-- Reinforced Mining Bag
		}),
		category(930, {	-- Helms
			i(29502),	-- Cobrascale Hood
			i(29505),	-- Hood of Primal Life
			i(29508),	-- Living Dragonscale Helm
			i(29510),	-- Netherdrake Helm
			i(25681),	-- Stylin' Adventure Hat
			i(25683),	-- Stylin' Crimson Hat
			i(25682),	-- Stylin' Jungle Hat
			i(25680),	-- Stylin' Purple Hat
			i(29504),	-- Windscale Hood
		}),
		category(931, {	-- Shoulders
			applyclassicphase(TBC_PHASE_THREE, i(32579)),	-- Living Earth Shoulders
			applyclassicphase(TBC_PHASE_THREE, i(32583)),	-- Shoulderpads of Renewed Life
			applyclassicphase(TBC_PHASE_THREE, i(32575)),	-- Shoulders of Lightning Reflexes
			applyclassicphase(TBC_PHASE_THREE, i(32581)),	-- Swiftstrike Shoulders
		}),
		category(932, {	-- Chest
			applyclassicphase(TBC_PHASE_FIVE, i(34369)),	-- Carapace of Sun and Shadow
			applyclassicphase(TBC_PHASE_FIVE, i(34373)),	-- Embrace of the Phoenix
			i(25657),	-- Felscale Breastplate
			i(25696),	-- Felstalker Breastplate
			-- #if AFTER CATA
			applyclassicphase(TBC_PHASE_ONE, i(29975)),	-- Golden Dragonstrike Breastplate
			-- #endif
			i(25689),	-- Heavy Clefthoof Vest
			applyclassicphase(TBC_PHASE_FIVE, i(34371)),	-- Leather Chestguard of the Sun
			-- #if AFTER CATA
			applyclassicphase(TBC_PHASE_ONE, i(29974)),	-- Living Crystal Breastplate
			applyclassicphase(TBC_PHASE_ONE, i(29973)),	-- Primalstorm Breastplate
			-- #endif
			i(25660),	-- Scaled Draenic Vest
			applyclassicphase(TBC_PHASE_THREE, i(33204)),	-- Shadowprowler's Chestguard
			applyclassicphase(TBC_PHASE_FIVE, i(34375)),	-- Sun-Drenched Scale Chestguard
			i(25671),	-- Thick Draenic Vest
			i(29514),	-- Thick Netherscale Breastplate
			i(25676),	-- Wild Draenish Vest
		}),
		category(933, {	-- Bracers
			applyclassicphase(TBC_PHASE_THREE, i(32574)),	-- Bindings of Lightning Reflexes
			applyclassicphase(TBC_PHASE_THREE, i(32582)),	-- Bracers of Renewed Life
			applyclassicphase(TBC_PHASE_THREE, i(32399)),	-- Bracers of Shackled Souls
			i(25697),	-- Felstalker Bracers
			applyclassicphase(TBC_PHASE_THREE, i(32577)),	-- Living Earth Bindings
			applyclassicphase(TBC_PHASE_THREE, i(32395)),	-- Redeemed Soul Wristguards
			applyclassicphase(TBC_PHASE_THREE, i(32580)),	-- Swiftstrike Bracers
		}),
		category(934, {	-- Gloves
			i(29503),	-- Cobrascale Gloves
			i(29496),	-- Enchanted Clefthoof Gloves
			i(29490),	-- Enchanted Felscale Gloves
			i(25685),	-- Fel Leather Gloves
			i(25654),	-- Felscale Gloves
			applyclassicphase(TBC_PHASE_FIVE, i(34374)),	-- Fletcher's Gloves of the Phoenix
			applyclassicphase(TBC_PHASE_FIVE, i(34370)),	-- Gloves of Immortal Dusk
			i(29506),	-- Gloves of the Living Touch
			applyclassicphase(TBC_PHASE_FIVE, i(34372)),	-- Leather Gauntlets of the Sun
			i(29511),	-- Netherdrake Gloves
			i(25661),	-- Scaled Draenic Gloves
			applyclassicphase(TBC_PHASE_FIVE, i(34376)),	-- Sun-Drenched Scale Gloves
			i(25669),	-- Thick Draenic Gloves
			i(25674),	-- Wild Draenish Gloves
			i(29507),	-- Windslayer Wraps
			i(29509),	-- Windstrike Gloves
		}),
		category(935, {	-- Belts
			applyclassicphase(TBC_PHASE_TWO, i(30040)),	-- Belt of Deep Shadow
			applyclassicphase(TBC_PHASE_TWO, i(30042)),	-- Belt of Natural Power
			applyclassicphase(TBC_PHASE_TWO, i(30046)),	-- Belt of the Black Eagle
			i(29500),	-- Blastguard Belt
			i(25695),	-- Felstalker Belt
			i(29494),	-- Flamescale Belt
			applyclassicphase(TBC_PHASE_TWO, i(30044)),	-- Monsoon Belt
			i(25694),	-- Netherfury Belt
			applyclassicphase(TBC_PHASE_THREE, i(32393)),	-- Redeemed Soul Cinch
			applyclassicphase(TBC_PHASE_THREE, i(32397)),	-- Waistguard of Shackled Souls
		}),
		category(936, {	-- Pants
			-- #if AFTER CATA
			applyclassicphase(TBC_PHASE_ONE, i(29964)),	-- Blackstorm Leggings
			-- #endif
			i(29498),	-- Blastguard Pants
			-- #if AFTER CATA
			applyclassicphase(TBC_PHASE_ONE, i(29971)),	-- Dragonstrike Leggings
			-- #endif
			i(29495),	-- Enchanted Clefthoof Leggings
			i(29489),	-- Enchanted Felscale Leggings
			i(25687),	-- Fel Leather Leggings
			i(25656),	-- Felscale Pants
			i(29492),	-- Flamescale Leggings
			applyclassicphase(TBC_PHASE_THREE, i(32400)),	-- Greaves of Shackled Souls
			i(25690),	-- Heavy Clefthoof Leggings
			i(25692),	-- Netherfury Leggings
			applyclassicphase(TBC_PHASE_THREE, i(32396)),	-- Redeemed Soul Legguards
			i(25662),	-- Scaled Draenic Pants
			i(25670),	-- Thick Draenic Pants
			i(25675),	-- Wild Draenish Leggings
			-- #if AFTER CATA
			applyclassicphase(TBC_PHASE_ONE, i(29970)),	-- Wildfeather Leggings
			-- #endif
		}),
		category(937, {	-- Boots
			i(29499),	-- Blastguard Boots
			applyclassicphase(TBC_PHASE_TWO, i(30041)),	-- Boots of Natural Grace
			applyclassicphase(TBC_PHASE_THREE, i(32398)),	-- Boots of Shackled Souls
			applyclassicphase(TBC_PHASE_TWO, i(30045)),	-- Boots of the Crimson Hawk
			applyclassicphase(TBC_PHASE_TWO, i(30039)),	-- Boots of Utter Darkness
			i(29512),	-- Earthen Netherscale Boots
			i(29497),	-- Enchanted Clefthoof Boots
			i(29491),	-- Enchanted Felscale Boots
			i(25686),	-- Fel Leather Boots
			i(25655),	-- Felscale Boots
			i(29493),	-- Flamescale Boots
			i(25691),	-- Heavy Clefthoof Boots
			applyclassicphase(TBC_PHASE_TWO, i(30043)),	-- Hurricane Boots
			i(25693),	-- Netherfury Boots
			applyclassicphase(TBC_PHASE_THREE, i(32394)),	-- Redeemed Soul Moccasins
			i(25659),	-- Scaled Draenic Boots
			i(25668),	-- Thick Draenic Boots
			i(25673),	-- Wild Draenish Boots
		}),
		category(938, {	-- Cloaks
			applyclassicphase(TBC_PHASE_THREE, i(33122)),	-- Cloak of Darkness
		}),
		category(939, {	-- Special
			i(25653),	-- Riding Crop
		}),
		category(940, {	-- Drums
			i(29529),	-- Drums of Battle
			i(29532),	-- Drums of Panic
			i(29531),	-- Drums of Restoration
			i(29530),	-- Drums of Speed
			i(29528),	-- Drums of War
			-- #if ANYCLASSIC
			applyclassicphase(TBC_PHASE_FIVE, i(185848)),	-- Greater Drums of Battle
			applyclassicphase(TBC_PHASE_FIVE, i(185849)),	-- Greater Drums of Panic
			applyclassicphase(TBC_PHASE_FIVE, i(185850)),	-- Greater Drums of Restoration
			applyclassicphase(TBC_PHASE_FIVE, i(185851)),	-- Greater Drums of Speed
			applyclassicphase(TBC_PHASE_FIVE, i(185852)),	-- Greater Drums of War
			-- #endif
		}),
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
		-- #if BEFORE 4.0.1.12984
		prof(26798, {	-- Mooncloth Tailoring
			["description"] = "These items can only be crafted by Tailorings that have completed the Becoming a Mooncloth Tailor quest in Shattrath.\n\nNOTE: You may only have one of these specializations active per character.",
			["groups"] = {
				i(21873),	-- Primal Mooncloth Belt
				i(21875),	-- Primal Mooncloth Robe
				i(21874),	-- Primal Mooncloth Shoulders
			},
		}),
		prof(26801, {	-- Shadoweave Tailoring
			["description"] = "These items can only be crafted by Tailorings that have completed the Becoming a Shadoweave Tailor quest in Shattrath.\n\nNOTE: You may only have one of these specializations active per character.",
			["groups"] = {
				i(21869),	-- Frozen Shadoweave Shoulders
				i(21871),	-- Frozen Shadoweave Robe
				i(21870),	-- Frozen Shadoweave Boots
			},
		}),
		prof(26797, {	-- Spellfire Tailoring
			["description"] = "These items can only be crafted by Tailorings that have completed the Becoming a Spellfire Tailor quest in Shattrath.\n\nNOTE: You may only have one of these specializations active per character.",
			["groups"] = {
				i(21846),	-- Spellfire Belt
				i(21847),	-- Spellfire Gloves
				i(21848),	-- Spellfire Robe
			},
		}),
		-- #endif
		category(1000, {	-- Materials
			i(21842),	-- Bolt of Imbued Netherweave
			i(21840),	-- Bolt of Netherweave
			i(21844),	-- Bolt of Soulcloth
			i(21845),	-- Primal Mooncloth
			i(24272),	-- Shadowcloth
			i(24271),	-- Spellcloth
		}),
		category(1001, {	-- Spellthreads
			i(24276),	-- Golden Spellthread
			i(24273),	-- Mystic Spellthread
			i(24274),	-- Runic Spellthread
			i(24275),	-- Silver Spellthread
		}),
		category(1002, {	-- Bags
			i(24270),	-- Bag of Jewels
			i(21872),	-- Ebon Shadowbag
			i(21843),	-- Imbued Netherweave Bag
			i(38225),	-- Mycah's Botanical Bag
			i(21841),	-- Netherweave Bag
			i(21876),	-- Primal Mooncloth Bag
			i(21858),	-- Spellfire Bag
		}),
		category(1003, {	-- Hats & Hoods
			i(24267),	-- Battlecast Hood
			i(24266),	-- Spellstrike Hood
			i(24264),	-- Whitemend Hood
		}),
		category(1004, {	-- Shoulders
			-- #if AFTER 4.0.1.12984
			i(21869),	-- Frozen Shadoweave Shoulders
			-- #endif
			applyclassicphase(TBC_PHASE_THREE, i(32587)),	-- Mantle of Nimble Thought
			-- #if AFTER 4.0.1.12984
			i(21874),	-- Primal Mooncloth Shoulders
			-- #endif
			i(21864),	-- Soulcloth Shoulders
			applyclassicphase(TBC_PHASE_THREE, i(32585)),	-- Swiftheal Mantle
		}),
		category(1005, {	-- Robes & Tunics
			i(21868),	-- Arcanoweave Robe
			i(30839),	-- Flameheart Vest
			-- #if AFTER 4.0.1.12984
			i(21871),	-- Frozen Shadoweave Robe
			-- #endif
			i(21861),	-- Imbued Netherweave Robe
			i(21862),	-- Imbued Netherweave Tunic
			i(21854),	-- Netherweave Robe
			i(21855),	-- Netherweave Tunic
			-- #if AFTER 4.0.1.12984
			i(21875),	-- Primal Mooncloth Robe
			-- #endif
			applyclassicphase(TBC_PHASE_FIVE, i(34365)),	-- Robe of Eternal Light
			i(21865),	-- Soulcloth Vest
			-- #if AFTER 4.0.1.12984
			i(21848),	-- Spellfire Robe
			-- #endif
			applyclassicphase(TBC_PHASE_FIVE, i(34364)),	-- Sunfire Robe
		}),
		category(1006, {	-- Bracers
			i(21866),	-- Arcanoweave Bracers
			i(24251),	-- Blackstrike Bracers
			i(24250),	-- Bracers of Havok
			applyclassicphase(TBC_PHASE_THREE, i(32586)),	-- Bracers of Nimble Thought
			i(30837),	-- Flameheart Bracers
			i(21849),	-- Netherweave Bracers
			applyclassicphase(TBC_PHASE_THREE, i(32392)),	-- Soulguard Bracers
			applyclassicphase(TBC_PHASE_THREE, i(32584)),	-- Swiftheal Wraps
			i(24249),	-- Unyielding Bracers
		}),
		category(1007, {	-- Belts
			applyclassicphase(TBC_PHASE_TWO, i(30038)),	-- Belt of Blasting
			applyclassicphase(TBC_PHASE_TWO, i(30036)),	-- Belt of the Long Road
			i(24257),	-- Black Belt of Knowledge
			i(24256),	-- Girdle of Ruination
			i(21850),	-- Netherweave Belt
			-- #if AFTER 4.0.1.12984
			i(21873),	-- Primal Mooncloth Belt
			-- #endif
			applyclassicphase(TBC_PHASE_THREE, i(32390)),	-- Soulguard Girdle
			-- #if AFTER 4.0.1.12984
			i(21846),	-- Spellfire Belt
			-- #endif
			i(24255),	-- Unyielding Girdle
		}),
		category(1008, {	-- Gloves
			i(30838),	-- Flameheart Gloves
			applyclassicphase(TBC_PHASE_FIVE, i(34367)),	-- Hands of Eternal Light
			i(21851),	-- Netherweave Gloves
			i(21863),	-- Soulcloth Gloves
			-- #if AFTER 4.0.1.12984
			i(21847),	-- Spellfire Gloves
			-- #endif
			applyclassicphase(TBC_PHASE_FIVE, i(34366)),	-- Sunfire Handwraps
		}),
		category(1009, {	-- Pants
			i(24263),	-- Battlecast Pants
			i(21859),	-- Imbued Netherweave Pants
			i(21852),	-- Netherweave Pants
			applyclassicphase(TBC_PHASE_THREE, i(32389)),	-- Soulguard Leggings
			i(24262),	-- Spellstrike Pants
			i(24261),	-- Whitemend Pants
		}),
		category(1010, {	-- Boots
			i(21867),	-- Arcanoweave Boots
			applyclassicphase(TBC_PHASE_TWO, i(30037)),	-- Boots of Blasting
			applyclassicphase(TBC_PHASE_TWO, i(30035)),	-- Boots of the Long Road
			-- #if AFTER 4.0.1.12984
			i(21870),	-- Frozen Shadoweave Boots
			-- #endif
			i(21860),	-- Imbued Netherweave Boots
			i(21853),	-- Netherweave Boots
			applyclassicphase(TBC_PHASE_THREE, i(32391)),	-- Soulguard Slippers
		}),
		category(1011, {	-- Cloaks
			i(30831),	-- Cloak of Arcane Evasion
			i(24253),	-- Cloak of Eternity
			i(24252),	-- Cloak of the Black Void
			i(24260),	-- Manaweave Cloak
			applyclassicphase(TBC_PHASE_THREE, i(32420)),	-- Night's End
			i(24258),	-- Resolute Cape
			i(24259),	-- Vengeance Wrap
			i(24254),	-- White Remedy Cape
		}),
		category(1012, {	-- Nets
			i(24268),	-- Netherweave Net
		}),
	}),
}))};