---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(SILITHUS, {
			n(RARES, {
				o(180456, {	-- Lesser Wind Stone
					["cost"] = {
						{ "i", 20408, 1 },	-- Twilight Cultist Cowl
						{ "i", 20406, 1 },	-- Twilight Cultist Mantle
						{ "i", 20407, 1 },	-- Twilight Cultist Robe
					},
					["coords"] = {
						{ 20.5, 86.2, SILITHUS },
						{ 18.2, 81.1, SILITHUS },
						{ 39.0, 42.4, SILITHUS },
						{ 38.3, 46.5, SILITHUS },
						{ 27.9, 30.6, SILITHUS },
						{ 24.4, 36.0, SILITHUS },
					},
					["groups"] = {
						i(20513, {	-- Abyssal Crest
							["crs"] = {
								15211,	-- Azure Templar <Abyssal Council>
								15209,	-- Crimson Templar <Abyssal Council>
								15307,	-- Earthen Templar <Abyssal Council>
								15212,	-- Hoary Templar <Abyssal Council>
							},
						}),
						n(15211, {	-- Azure Templar <Abyssal Council>
							i(20654),	-- Amethyst War Staff
							i(20652),	-- Abyssal Cloth Slippers
							i(20653),	-- Abyssal Plate Gauntlets
						}),
						n(15209, {	-- Crimson Templar <Abyssal Council>
							i(20657),	-- Crystal Tipped Stiletto
							i(20655),	-- Abyssal Cloth Handwraps
							i(20656),	-- Abyssal Mail Sabatons
						}),
						n(15307, {	-- Earthen Templar <Abyssal Council>
							i(20663),	-- Deep Strike Bow
							i(20661),	-- Abyssal Leather Gloves
							i(20662),	-- Abyssal Plate Greaves
						}),
						n(15212, {	-- Hoary Templar <Abyssal Council>
							i(20660),	-- Stonecutting Glaive
							i(20658),	-- Abyssal Leather Boots
							i(20659),	-- Abyssal Mail Handguards
						}),
					},
				}),
				o(180461, {	-- Wind Stone
					["cost"] = {
						{ "i", 20422, 1 },	-- Twilight Cultist Medallion of Station
						{ "i", 20408, 1 },	-- Twilight Cultist Cowl
						{ "i", 20406, 1 },	-- Twilight Cultist Mantle
						{ "i", 20407, 1 },	-- Twilight Cultist Robe
					},
					["coords"] = {
						{ 17.2, 84.8, SILITHUS },
						{ 37.6, 44.8, SILITHUS },
						{ 24.7, 32.7, SILITHUS },
					},
					["groups"] = {
						i(20514, {	-- Abyssal Signet
							["crs"] = {
								15206,	-- The Duke of Cynders <Abyssal Council>
								15207,	-- The Duke of Fathoms <Abyssal Council>
								15208,	-- The Duke of Shards <Abyssal Council>
								15220,	-- The Duke of Zephyrs <Abyssal Council>
							},
						}),
						n(15206, {	-- The Duke of Cynders <Abyssal Council>
							["cost"] = { { "i", 20432, 1 } },	-- Signet of Beckoning: Fire
							["groups"] = {
								un(PHASE_FIVE, i(21989)),	-- Cinder of Cynders
								i(20666),	-- Hardened Steel Warhammer
								i(20664),	-- Abyssal Cloth Sash
								i(20665),	-- Abyssal Leather Leggings
							},
						}),
						n(15207, {	-- The Duke of Fathoms <Abyssal Council>
							["cost"] = { { "i", 20436, 1 } },	-- Signet of Beckoning: Water
							["groups"] = {
								i(20669),	-- Darkstone Claymore
								i(20667),	-- Abyssal Leather Belt
								i(20668),	-- Abyssal Mail Legguards
							},
						}),
						n(15208, {	-- The Duke of Shards <Abyssal Council>
							["cost"] = { { "i", 20435, 1 } },	-- Signet of Beckoning: Stone
							["groups"] = {
								i(20672),	-- Sparkling Crystal Wand
								i(20670),	-- Abyssal Mail Clutch
								i(20671),	-- Abyssal Plate Legplates
							},
						}),
						n(15220, {	-- The Duke of Zephyrs <Abyssal Council>
							["cost"] = { { "i", 20433, 1 } },	-- Signet of Beckoning: Thunder
							["groups"] = {
								i(20675),	-- Soulrender
								i(20674),	-- Abyssal Cloth Pants
								i(20673),	-- Abyssal Plate Girdle
							},
						}),
					},
				}),
				o(180466, {	-- Greater Wind Stone
					["cost"] = {
						{ "i", 20451, 1 },	-- Twilight Cultist Ring of Lordship
						{ "i", 20422, 1 },	-- Twilight Cultist Medallion of Station
						{ "i", 20408, 1 },	-- Twilight Cultist Cowl
						{ "i", 20406, 1 },	-- Twilight Cultist Mantle
						{ "i", 20407, 1 },	-- Twilight Cultist Robe
					},
					["coords"] = {
						{ 18.6, 83.5, SILITHUS },
						{ 39.6, 45.1, SILITHUS },
						{ 25.6, 34.0, SILITHUS },
					},
					["groups"] = {
						i(20515, {	-- Abyssal Scepter
							["crs"] = {
								15205,	-- Baron Kazum <Abyssal High Council>
								15204,	-- High Marshal Whirlaxis <Abyssal High Council>
								15305,	-- Lord Skwol <Abyssal High Council>
								15203,	-- Prince Skaldrenox <Abyssal High Council>
							},
						}),
						n(15205, {	-- Baron Kazum <Abyssal High Council>
							i(20688),	-- Earthen Guard
							i(20686),	-- Abyssal Cloth Amice
							i(20687),	-- Abyssal Plate Vambraces
						}),
						n(15204, {	-- High Marshal Whirlaxis <Abyssal High Council>
							i(20691),	-- Windshear Cape
							i(20690),	-- Abyssal Cloth Wristbands
							i(20689),	-- Abyssal Leather Shoulders
						}),
						n(15305, {	-- Lord Skwol <Abyssal High Council>
							i(20685),	-- Wavefront Necklace
							i(20684),	-- Abyssal Mail Armguards
							i(20683),	-- Abyssal Plate Epaulets
						}),
						n(15203, {	-- Prince Skaldrenox <Abyssal High Council>
							i(20682),	-- Elemental Focus Band
							i(20681),	-- Abyssal Leather Bracers
							i(20680),	-- Abyssal Mail Pauldrons
						}),
					},
				}),
				n(14472, {	-- Gretheer
					["coords"] = {
						{ 28.8, 42.2, SILITHUS },
						{ 39.8, 55.2, SILITHUS },
						{ 48.8, 62.6, SILITHUS },
						{ 61.8, 64.4, SILITHUS },
					},
				}),
				n(14477, {	-- Grubthor
					["coords"] = {
						{ 27.2, 82.0, SILITHUS },
						{ 36.2, 71.6, SILITHUS },
						{ 48.6, 67.2, SILITHUS },
						{ 44.8, 80.2, SILITHUS },
					},
				}),
				n(14478, {	-- Huricanian
					["coords"] = {
						{ 29.4, 24.4, SILITHUS },
						{ 29.8, 19.8, SILITHUS },
						{ 28.2, 16.0, SILITHUS },
						{ 27.0, 13.8, SILITHUS },
						{ 24.2, 13.0, SILITHUS },
						{ 21.4, 17.0, SILITHUS },
						{ 21.4, 22.6, SILITHUS },
						{ 22.2, 26.2, SILITHUS },
						{ 23.0, 28.8, SILITHUS },
						{ 26.0, 26.8, SILITHUS },
					},
				}),
				n(14476, {	-- Krellack
					["coords"] = {
						{ 59.8, 19.6, SILITHUS },
						{ 65.8, 30.0, SILITHUS },
						{ 62.8, 42.4, SILITHUS },
						{ 69.6, 41.0, SILITHUS },
					},
				}),
				n(14473, {	-- Lapress
					["coords"] = {
						{ 54.4, 83.8, SILITHUS },
						{ 55.2, 89.8, SILITHUS },
						{ 63.8, 91.6, SILITHUS },
						{ 61.6, 84.0, SILITHUS },
						{ 64.2, 83.6, SILITHUS },
						{ 64.8, 82.4, SILITHUS },
						{ 64.2, 79.4, SILITHUS },
					},
				}),
				n(14475, {	-- Rex Ashil
					["coords"] = {
						{ 47.2, 23.8, SILITHUS },
						{ 47.6, 26.6, SILITHUS },
						{ 46.0, 28.4, SILITHUS },
					},
				}),
				n(14471, {	-- Setis
					["coords"] = {
						{ 48.0, 82.6, SILITHUS },
						{ 22.2, 80.6, SILITHUS },
						{ 27.8, 86.6, SILITHUS },
						{ 22.6, 87.2, SILITHUS },
					},
				}),
				n(14454, { 	-- The Windreaver
					["description"] = "This is only available during an Elemental Invasion.",
					["coords"] = {
						{ 17.6, 27.0, SILITHUS },
						{ 26.6, 29.6, SILITHUS },
						{ 31.0, 23.6, SILITHUS },
						{ 32.2, 17.2, SILITHUS },
					},
					["groups"] = {
						i(18676),	-- Sash of the Windreaver
						i(18677),	-- Zephyr Cloak
						i(21548),	-- Pattern: Stormshroud Gloves
						un(PHASE_THREE, i(19268)),	-- Ace of Elementals
					},
				}),
				n(14474, {	-- Zora
					["coords"] = {
						{ 20.2, 58.2, SILITHUS },
						{ 23.6, 61.8, SILITHUS },
						{ 17.6, 65.8, SILITHUS },
						{ 24.0, 71.2, SILITHUS },
					},
				}),
			}),
		}),
	}),
};