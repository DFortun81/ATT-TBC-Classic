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