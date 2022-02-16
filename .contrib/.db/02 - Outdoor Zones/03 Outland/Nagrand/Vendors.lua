---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(NAGRAND, {
			n(VENDORS, {
				n(21485, {	-- Aldraan <Blade Merchant>
					["description"] = "This vendor is only accessible when the Alliance controls Halaa.",
					["coord"] = { 42.8, 42.6, NAGRAND },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(24208, {	-- Design: Mystic Dawnstone
							["isLimited"] = true,
						}),
						i(30598, {	-- Don Amancio's Heart
							["isLimited"] = true,
						}),
						-- #if BEFORE MOP
						i(30599, {	-- Avenging Blades
							["timeline"] = { "removed 5.0.4.10000" },
						}),
						-- #endif
						i(30597, {	-- Halaani Claymore
							["isLimited"] = true,
						}),
						i(28915, {	-- Reins of the Dark Riding Talbuk
							["cost"] = {
								{ "i", 26045, 70 },	-- 70x Halaa Battle Token
								{ "i", 26044, 15 },	-- 15x Halaa Research Token
							},
						}),
						i(29228, {	-- Reins of the Dark War Talbuk
							["cost"] = {
								{ "i", 26045, 100 },	-- 100x Halaa Battle Token
								{ "i", 26044, 20 },		-- 20x Halaa Research Token
							},
						}),
					},
				}),
				-- #if BEFORE CATA
				n(21488, {	-- Banro <Ammunition>
					["coord"] = { 41.6, 43.8, NAGRAND },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(30612, {	-- Halaani Grimshot
							["timeline"] = { "removed 4.0.1.10000" },
						}),
						i(30611, {	-- Halaani Razorshaft
							["timeline"] = { "removed 4.0.1.10000" },
						}),
					},
				}),
				-- #endif
				n(19017, {	-- Borto <Trade Supplies>
					["coord"] = { 53.2, 71.8, NAGRAND },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21894, {	-- Pattern: Bolt of Soulcloth
							["isLimited"] = true,
						}),
						i(21902, { 	-- Pattern: Soulcloth Gloves
							["isLimited"] = true,
						}),
					},
				}),
				n(21474, {	-- Coreiel <Blade Merchant>
					["description"] = "This vendor is only accessible when the Horde controls Halaa.",
					["coord"] = { 42.8, 42.6, NAGRAND },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(30570, {	-- Arkadian Claymore
							["isLimited"] = true,
						}),
						i(24208, {	-- Design: Mystic Dawnstone
							["isLimited"] = true,
						}),
						i(30571, {	-- Don Rodrigo's Heart
							["isLimited"] = true,
						}),
						-- #if BEFORE MOP
						i(30568, {	-- The Sharp Cookie
							["timeline"] = { "removed 5.0.4.10000" },
						}),
						-- #endif
						i(28915, {	-- Reins of the Dark Riding Talbuk
							["cost"] = {
								{ "i", 26045, 70 },	-- 70x Halaa Battle Token
								{ "i", 26044, 15 },	-- 15x Halaa Research Token
							},
						}),
						i(29228, {	-- Reins of the Dark War Talbuk
							["cost"] = {
								{ "i", 26045, 100 },	-- 100x Halaa Battle Token
								{ "i", 26044, 20 },		-- 20x Halaa Research Token
							},
						}),
					},
				}),
				-- #if AFTER 7.0.3.22248
				n(18072, {	-- Elementalist Sharvak <The Earthen Ring>
					["coord"] = { 60.6, 22.1, NAGRAND },
					["groups"] = {
						i(136934, {	-- Raging Elemental Stone (TOY!)
							["timeline"] = { "added 7.0.3.22248" },
							["classes"] = { SHAMAN },
						}),
						i(136935, {	-- Tadpole Cloudseeder (TOY!)
							["timeline"] = { "added 7.0.3.22248" },
							["classes"] = { SHAMAN },
						}),
						i(141059, {	-- Technique: Glyph of Flickering
							["description"] = "Currently this Technique can only be learned by Shamans.  We suggest submitting a bug report to Blizzard to have it usuable by all scribes.",
							["timeline"] = { "added 7.0.3.22248" },
							["classes"] = { SHAMAN },
						}),
						i(136938, {	-- Tome of Hex: Compy
							["timeline"] = { "added 7.0.3.22248" },
							["spellID"] = 210873,	-- Hex (Compy)
							["classes"] = { SHAMAN },
						}),
						i(136937, {	-- Vol'jin's Serpent Totem (TOY!)
							["timeline"] = { "added 7.0.3.22248" },
							["classes"] = { SHAMAN },
						}),
						i(138490, {	-- Waterspeaker's Totem (TOY!)
							["timeline"] = { "added 7.0.3.22248" },
							["classes"] = { SHAMAN },
						}),
					},
				}),
				-- #endif
				n(19015, {	-- Mathar G'ochar <Trade Supplies>
					["description"] = "This vendor pats around Garadar.",
					["coords"] = {
						{ 55.2, 37.0, NAGRAND },
						{ 57.0, 40.0, NAGRAND },
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21894, {	-- Pattern: Bolt of Soulcloth
							["isLimited"] = true,
						}),
						i(21893),	-- Pattern: Imbued Netherweave Bag
						i(21902, { 	-- Pattern: Soulcloth Gloves
							["isLimited"] = true,
						}),
					},
				}),
				n(20097, {	-- Nula the Butcher <Cooking Supplies>
					["coord"] = { 58.0, 35.6, NAGRAND },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(27697),	-- Recipe: Grilled Mudfish
						i(27698),	-- Recipe: Poached Bluefish
						i(27691),	-- Recipe: Roasted Clefthoof
						i(27693),	-- Recipe: Talbuk Steak
					},
				}),
				n(23007, {	-- Paulsta'ats <Consortium Quartermaster>
					["coord"] = { 30.5, 56.9, NAGRAND },
					["groups"] = {
						i(29115),	-- Consortium Blaster
						i(31776),	-- Consortium Tabard
						i(33156),	-- Design: Crimson Sun
						i(23134),	-- Design: Delicate Blood Garnet
						i(33305),	-- Design: Don Julio's Heart
						-- #if BEFORE CATA
						i(23136),	-- Design: Luminous Flame Spessarite [TBC] / Design: Reckless Flame Spessarite [Cata+]
						i(23155),	-- Design: Lustrous Azure Moonstone [TBC] / Design: Sparkling Azure Moonstone [Cata+]
						-- #endif
						i(24178),	-- Design: Pendant of the Null Rune
						-- #if AFTER CATA
						i(23136),	-- Design: Reckless Flame Spessarite [Cata+] / Design: Luminous Flame Spessarite [TBC]
						-- #endif
						i(33622),	-- Design: Relentless Earthstorm Diamond
						i(23146),	-- Design: Shifting Shadow Draenite
						-- #if AFTER CATA
						i(23155),	-- Design: Sparkling Azure Moonstone [Cata+] / Design: Lustrous Azure Moonstone [TBC]
						i(23150),	-- Design: Subtle Golden Draenite [Cata+] / Design: Thick Golden Draenite [TBC]
						-- #endif
						i(25908),	-- Design: Swift Skyfire Diamond
						-- #if BEFORE CATA
						i(23150),	-- Design: Thick Golden Draenite [TBC] / Design: Subtle Golden Draenite [Cata+]
						-- #endif
						i(28274),	-- Formula: Enchant Cloak - Spell Penetration [TBC] / Formula: Enchant Cloak - PvP Power [Cata+]
						applyclassicphase(TBC_PHASE_THREE, i(22552)),	-- Formula: Enchant Weapon - Major Striking
						i(29456),	-- Gift of the Ethereal
						i(29121),	-- Guile of Khoraazi
						i(29119),	-- Haramad's Bargain
						i(138796, {	-- Illusion: Executioner
							["timeline"] = { "added 7.0.3.22248" },
						}),
						i(29122),	-- Nether Runner's Cowl
						i(29457),	-- Nethershard
						i(29116),	-- Nomad's Leggings
						i(24314),	-- Pattern: Bag of Jewels
						i(25733), 	-- Pattern: Fel Leather Boots
						i(25732), 	-- Pattern: Fel Leather Gloves
						i(25734), 	-- Pattern: Fel Leather Leggings
						i(23874),	-- Schematic: Elemental Seaforium Charge
						i(29118, {	-- Smuggler's Ammo Pouch
							["timeline"] = { "removed 4.0.1.12941" },
						}),
						i(29117),	-- Stormspire Vest
					},
				}),
				n(20241, {	-- Provisioner Nasela <Mag'har Quartermaster>
					["coord"] = { 55.8, 37.8, NAGRAND },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(29145),	-- Band of Ancestral Spirits
						i(29139),	-- Ceremonial Cover
						i(29143, {	-- Clefthoof Hide Quiver
							["timeline"] = { "removed 4.0.1.12941" },
						}),
						i(29135),	-- Earthcaller's Headdress
						i(29137),	-- Hellscream's Will
						i(31773),	-- Mag'har Tabard
						i(34174),	-- Pattern: Drums of Restoration
						i(34172),	-- Pattern: Drums of Speed
						-- #if ANYCLASSIC
						applyclassicphase(TBC_PHASE_FIVE, i(185924)),	-- Pattern: Greater Drums of Restoration
						applyclassicphase(TBC_PHASE_FIVE, i(185923)),	-- Pattern: Greater Drums of Speed
						-- #endif
						i(25741),	-- Pattern: Netherfury Belt
						i(25743),	-- Pattern: Netherfury Boots
						i(25742),	-- Pattern: Netherfury Leggings
						i(29664),	-- Pattern: Reinforced Mining Bag
						i(22917),	-- Recipe: Transmute Primal Fire to Earth
						i(31829),	-- Reins of the Cobalt Riding Talbuk
						i(29102),	-- Reins of the Cobalt War Talbuk
						i(31831),	-- Reins of the Silver Riding Talbuk
						i(29104),	-- Reins of the Silver War Talbuk
						i(31833),	-- Reins of the Tan Riding Talbuk
						i(29105),	-- Reins of the Tan War Talbuk
						i(31835),	-- Reins of the White Riding Talbuk
						i(29103),	-- Reins of the White War Talbuk
						i(29147),	-- Talbuk Hide Spaulders
						i(29141),	-- Tempest Leggings
					},
				}),
				n(18822, {	-- Quartermaster Davian Vaclav
					["description"] = "This NPC is only accessible when the Alliance controls Halaa.",
					["coord"] = { 41.2, 44.2, NAGRAND },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(27654, {	-- Avenger's Legplates
							["cost"] = {
								{ "i", 26045, 40 },	-- 40x Halaa Battle Token
								{ "i", 26044, 2 },	-- 2x Halaa Research Token
							},
						}),
						i(27644, {	-- Avenger's Waistguard
							["cost"] = {
								{ "i", 26045, 20 },	-- Halaa Battle Token
								{ "i", 26044, 1 },	-- Halaa Research Token
							},
						}),
						i(33783, {	-- Design: Steady Talasite
							["cost"] = { { "i", 26044, 4 }, },	-- 4x Halaa Research Token
						}),
						i(27648, {	-- Dreamstalker Leggings
							["cost"] = {
								{ "i", 26045, 40 },	-- 40x Halaa Battle Token
								{ "i", 26044, 2 },	-- 2x Halaa Research Token
							},
						}),
						i(27645, {	-- Dreamstalker Sash
							["cost"] = {
								{ "i", 26045, 20 },	-- Halaa Battle Token
								{ "i", 26044, 1 },	-- Halaa Research Token
							},
						}),
						i(27680, {	-- Halaani Bag
							["cost"] = { { "i", 26044, 8 }, },	-- 8x Halaa Research Token
						}),
						i(27649, {	-- Hierophant's Leggings
							["cost"] = {
								{ "i", 26045, 40 },	-- 40x Halaa Battle Token
								{ "i", 26044, 2 },	-- 2x Halaa Research Token
							},
						}),
						i(27638, {	-- Hierophant's Sash
							["cost"] = {
								{ "i", 26045, 20 },	-- Halaa Battle Token
								{ "i", 26044, 1 },	-- Halaa Research Token
							},
						}),
						i(27646, {	-- Marksman's Belt
							["cost"] = {
								{ "i", 26045, 20 },	-- Halaa Battle Token
								{ "i", 26044, 1 },	-- Halaa Research Token
							},
						}),
						i(27647, {	-- Marksman's Legguards
							["cost"] = {
								{ "i", 26045, 40 },	-- 40x Halaa Battle Token
								{ "i", 26044, 2 },	-- 2x Halaa Research Token
							},
						}),
						i(32071, {	-- Recipe: Elixir of Ironskin
							["cost"] = { { "i", 26044, 2 }, },	-- 2x Halaa Research Token
						}),
						i(27650, {	-- Shadowstalker's Leggings
							["cost"] = {
								{ "i", 26045, 40 },	-- 40x Halaa Battle Token
								{ "i", 26044, 2 },	-- 2x Halaa Research Token
							},
						}),
						i(27637, {	-- Shadowstalker's Sash
							["cost"] = {
								{ "i", 26045, 20 },	-- Halaa Battle Token
								{ "i", 26044, 1 },	-- Halaa Research Token
							},
						}),
						i(27653, {	-- Slayer's Leggings
							["cost"] = {
								{ "i", 26045, 40 },	-- 40x Halaa Battle Token
								{ "i", 26044, 2 },	-- 2x Halaa Research Token
							},
						}),
						i(27639, {	-- Slayer's Waistguard
							["cost"] = {
								{ "i", 26045, 20 },	-- Halaa Battle Token
								{ "i", 26044, 1 },	-- Halaa Research Token
							},
						}),
						i(27643, {	-- Stormbreaker's Girdle
							["cost"] = {
								{ "i", 26045, 20 },	-- Halaa Battle Token
								{ "i", 26044, 1 },	-- Halaa Research Token
							},
						}),
						i(27652, {	-- Stormbreaker's Leggings
							["cost"] = {
								{ "i", 26045, 40 },	-- 40x Halaa Battle Token
								{ "i", 26044, 2 },	-- 2x Halaa Research Token
							},
						}),
					},
				}),
				n(18821, {	-- Quartermaster Jaffrey Noreliqe
					["description"] = "This NPC is only accessible when the Horde controls Halaa.",
					["coord"] = { 41.2, 44.2, NAGRAND },
					["races"] = HORDE_ONLY,
					["groups"]= {
						i(27654, {	-- Avenger's Legplates
							["cost"] = {
								{ "i", 26045, 40 },	-- 40x Halaa Battle Token
								{ "i", 26044, 2 },	-- 2x Halaa Research Token
							},
						}),
						i(27644, {	-- Avenger's Waistguard
							["cost"] = {
								{ "i", 26045, 20 },	-- Halaa Battle Token
								{ "i", 26044, 1 },	-- Halaa Research Token
							},
						}),
						i(33783, {	-- Design: Steady Talasite
							["cost"] = { { "i", 26044, 4 }, },	-- 4x Halaa Research Token
						}),
						i(27648, {	-- Dreamstalker Leggings
							["cost"] = {
								{ "i", 26045, 40 },	-- 40x Halaa Battle Token
								{ "i", 26044, 2 },	-- 2x Halaa Research Token
							},
						}),
						i(27645, {	-- Dreamstalker Sash
							["cost"] = {
								{ "i", 26045, 20 },	-- Halaa Battle Token
								{ "i", 26044, 1 },	-- Halaa Research Token
							},
						}),
						i(27680, {	-- Halaani Bag
							["cost"] = { { "i", 26044, 8 }, },	-- 8x Halaa Research Token
						}),
						i(27649, {	-- Hierophant's Leggings
							["cost"] = {
								{ "i", 26045, 40 },	-- 40x Halaa Battle Token
								{ "i", 26044, 2 },	-- 2x Halaa Research Token
							},
						}),
						i(27638, {	-- Hierophant's Sash
							["cost"] = {
								{ "i", 26045, 20 },	-- Halaa Battle Token
								{ "i", 26044, 1 },	-- Halaa Research Token
							},
						}),
						i(27646, {	-- Marksman's Belt
							["cost"] = {
								{ "i", 26045, 20 },	-- Halaa Battle Token
								{ "i", 26044, 1 },	-- Halaa Research Token
							},
						}),
						i(27647, {	-- Marksman's Legguards
							["cost"] = {
								{ "i", 26045, 40 },	-- 40x Halaa Battle Token
								{ "i", 26044, 2 },	-- 2x Halaa Research Token
							},
						}),
						i(32071, {	-- Recipe: Elixir of Ironskin
							["cost"] = { { "i", 26044, 2 }, },	-- 2x Halaa Research Token
						}),
						i(27650, {	-- Shadowstalker's Leggings
							["cost"] = {
								{ "i", 26045, 40 },	-- 40x Halaa Battle Token
								{ "i", 26044, 2 },	-- 2x Halaa Research Token
							},
						}),
						i(27637, {	-- Shadowstalker's Sash
							["cost"] = {
								{ "i", 26045, 20 },	-- Halaa Battle Token
								{ "i", 26044, 1 },	-- Halaa Research Token
							},
						}),
						i(27653, {	-- Slayer's Leggings
							["cost"] = {
								{ "i", 26045, 40 },	-- 40x Halaa Battle Token
								{ "i", 26044, 2 },	-- 2x Halaa Research Token
							},
						}),
						i(27639, {	-- Slayer's Waistguard
							["cost"] = {
								{ "i", 26045, 20 },	-- Halaa Battle Token
								{ "i", 26044, 1 },	-- Halaa Research Token
							},
						}),
						i(27643, {	-- Stormbreaker's Girdle
							["cost"] = {
								{ "i", 26045, 20 },	-- Halaa Battle Token
								{ "i", 26044, 1 },	-- Halaa Research Token
							},
						}),
						i(27652, {	-- Stormbreaker's Leggings
							["cost"] = {
								{ "i", 26045, 40 },	-- 40x Halaa Battle Token
								{ "i", 26044, 2 },	-- 2x Halaa Research Token
							},
						}),
					},
				}),
				-- #if BEFORE CATA
				n(21483, {	-- Tasaldan <Ammunition>
					["coord"] = { 41.6, 44.0, NAGRAND },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(30612, {	-- Halaani Grimshot
							["timeline"] = { "removed 4.0.1.10000" },
						}),
						i(30611, {	-- Halaani Razorshaft
							["timeline"] = { "removed 4.0.1.10000" },
						}),
					},
				}),
				-- #endif
				n(20240, {	-- Trader Narasu <Kurenai Quartermaster>
					["coord"] = { 54.5, 75.1, NAGRAND },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(29138),	-- Arechron's Gift
						i(29146),	-- Band of Elemental Spirits
						i(29148),	-- Blackened Leather Spaulders
						i(29140),	-- Cloak of the Ancient Spirit
						i(29136),	-- Far Seer's Helm
						i(29142),	-- Kurenai Kilt
						i(31774),	-- Kurenai Tabard
						i(34175),	-- Pattern: Drums of Restoration
						i(34173),	-- Pattern: Drums of Speed
						-- #if ANYCLASSIC
						applyclassicphase(TBC_PHASE_FIVE, i(187048)),	-- Pattern: Greater Drums of Restoration
						applyclassicphase(TBC_PHASE_FIVE, i(187049)),	-- Pattern: Greater Drums of Speed
						-- #endif
						i(29217),	-- Pattern: Netherfury Belt
						i(29218),	-- Pattern: Netherfury Boots
						i(29219),	-- Pattern: Netherfury Leggings
						i(30444),	-- Pattern: Reinforced Mining Bag
						i(30443),	-- Recipe: Transmute Primal Fire to Earth
						i(31830),	-- Reins of the Cobalt Riding Talbuk
						i(29227),	-- Reins of the Cobalt War Talbuk
						i(31832),	-- Reins of the Silver Riding Talbuk
						i(29229),	-- Reins of the Silver War Talbuk
						i(31834),	-- Reins of the Tan Riding Talbuk
						i(29230),	-- Reins of the Tan War Talbuk
						i(31836),	-- Reins of the White Riding Talbuk
						i(29231),	-- Reins of the White War Talbuk
						i(29144, {	-- Worg Hide Quiver
							["timeline"] = { "removed 4.0.1.12941" },
						}),
					},
				}),
				n(20096, {	-- Uriku <Cooking Supplies>
					["coord"] = { 56.2, 73.2, NAGRAND },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(27697),	-- Recipe: Grilled Mudfish
						i(27698),	-- Recipe: Poached Bluefish
						i(27691),	-- Recipe: Roasted Clefthoof
						i(27693),	-- Recipe: Talbuk Steak
					},
				}),
			}),
		}),
	})),
};