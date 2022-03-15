-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
_.Instances = { tier(CLASSIC_TIER, {
	map(BLACKROCK_SPIRE, {
		["lore"] = "The mighty fortress carved within the fiery bowels of Blackrock Mountain was designed by the master dwarf-mason, Franclorn Forgewright. Intended to be the symbol of Dark Iron power, the fortress was held by the sinister dwarves for centuries. However, Nefarian - the cunning son of the dragon, Deathwing - had other plans for the great keep. He and his draconic minions took control of the upper Spire and made war on the dwarves' holdings in the mountain's volcanic depths. Realizing that the dwarves were led by the mighty fire elemental, Ragnaros - Nefarian vowed to crush his enemies and claim the whole of Blackrock mountain for himself.",
		["lvl"] = 50,
		["groups"] = {
			n(QUESTS, {
				q(6601, {	-- Ascension...
					["qg"] = 10321,	-- Emberstrife
					["sourceQuest"] = 6585,	-- The Test of Skulls, Axtroz
					["coord"] = { 56.8, 87.4, DUSTWALLOW_MARSH },
					["maps"] = { DESOLACE },
					["cost"] = { { "i", 16888, 1 } },	-- Dull Drakefire Amulet
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
				}),
				q(5001, {	-- Bijou's Belongings (A)
					["qg"] = 10257,	-- Bijou
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Bijou's Belongings
							["provider"] = { "i", 12345 },	-- Bijou's Belongings
						}),
					},
				}),
				q(4982, {	-- Bijou's Belongings (H)
					["qg"] = 10257,	-- Bijou
					["sourceQuest"] = 4981,	-- Operative Bijou
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Bijou's Belongings
							["provider"] = { "i", 12345 },	-- Bijou's Belongings
						}),
					},
				}),
				q(4983, {	-- Bijou's Reconnaissance Report
					["qg"] = 10257,	-- Bijou
					["sourceQuest"] = 4982,	-- Bijou's Belongings (H)
					["cost"] = { { "i", 12652, 1 } },	-- Bijou's Reconnaissance Report
					["maps"] = { BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						i(15858),	-- Freewind Gloves
						i(15859),	-- Seapost Girdle
					},
				}),
				q(7761, {	-- Blackhand's Command
					["qg"] = 9046,	-- Scarshield Quartermaster <Scarshield Legion>
					["provider"] = { "i", 18987 },	-- Blackhand's Command
					["coord"] = { 34.9, 27.9, BURNING_STEPPES },
					["maps"] = { BLACKROCK_MOUNTAIN },
					["lvl"] = 55,
				}),
				q(6602, {	-- Blood of the Black Dragon Champion
					["qg"] = 10182,	-- Rexxar [Classic] / Rokaro [TBC+] <Champion of the Horde>
					["sourceQuest"] = 6601,	-- Ascension...
					["coords"] = {
						{ 54.0, 3.2, DESOLACE },
						{ 62.8, 22.6, DESOLACE },
						{ 59.8, 37.6, DESOLACE },
						{ 52.0, 39.4, DESOLACE },
						{ 49.6, 56.4, DESOLACE },
						{ 55.6, 66.6, DESOLACE },
						{ 50.6, 75.2, DESOLACE },
						{ 40.8, 78.6, DESOLACE },
						{ 42.4, 96.8, DESOLACE },
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Blood of the Black Dragon Champion
							["provider"] = { "i", 16663 },	-- Blood of the Black Dragon Champion
						}),
						i(16309, {	-- Drakefire Amulet
							["timeline"] = { "removed 3.0.2" },
						}),
					},
				}),
				q(5068, {	-- Breastplate of Bloodthirst
					["qg"] = 10637,	-- Malyfous Darkhammer
					["sourceQuest"] = 5047,	-- Pip Quickwit, At Your Service!
					["coord"] = { 61, 38.8, WINTERSPRING },
					["maps"] = { SCHOLOMANCE, STRATHOLME },
					["cost"] = {
						{ "i", 12731, 1 },	-- Pristine Hide of the Beast
						{ "i", 12735, 10 },	-- Frayed Abomination Stitching
						{ "i", 12360, 5 },	-- Arcanite Bar
						{ "i", 12753, 5 },	-- Skin of Shadow
						{ "g", 500000 },	-- 50 Gold
					},
					["repeatable"] = true,
					["lvl"] = 57,
					["groups"] = {
						i(12757), 	-- Breastplate of Bloodthirst
					},
				}),
				q(5166, {	-- Breastplate of the Chromatic Flight
					["provider"] = { "o", 176192 },	-- Catalogue of the Wayward
					["sourceQuest"] = 5164,	-- Catalogue of the Wayward
					["coord"] = { 39.4, 66.7, WESTERN_PLAGUELANDS },
					["maps"] = { STRATHOLME, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12871, 1 },	-- Chromatic Carapace
						{ "i", 12607, 10 },	-- Brilliant Chromatic Scale
						{ "i", 12735, 10 },	-- Frayed Abomination Stitching
						{ "i", 12938, 10 },	-- Blood of Heroes
					},
					["lvl"] = 57,
					["groups"] = {
						i(12895),	-- Breastplate of the Chromatic Flight
					},
				}),
				q(5063, {	-- Cap of the Scarlet Savant
					["qg"] = 10637,	-- Malyfous Darkhammer
					["sourceQuest"] = 5047,	-- Pip Quickwit, At Your Service!
					["coord"] = { 61, 38.8, WINTERSPRING },
					["maps"] = { STRATHOLME },
					["cost"] = {
						{ "i", 12731, 1 },	-- Pristine Hide of the Beast
						{ "i", 12735, 5 },	-- Frayed Abomination Stitching
						{ "i", 12363, 8 },	-- Arcanite Crystal
						{ "i", 12734, 5 },	-- Enchanted Scarlet Thread
						{ "g", 500000 },	-- 50 Gold
					},
					["repeatable"] = true,
					["lvl"] = 57,
					["groups"] = {
						i(12752), 	-- Cap of the Scarlet Savant
					},
				}),
				q(5164, {	-- Catalogue of the Wayward
					["qg"] = 10976,	-- Jeziba
					["sourceQuest"] = 5162,	-- Wrath of the Blue Flight (2/2)
					["coord"] = { 39.4, 66.8, WESTERN_PLAGUELANDS },
					["lvl"] = 57,
				}),
				q(8181, {	-- Confront Yeh'kinya
					["qg"] = 10460,	-- Prospector Ironboot
					["sourceQuest"] = 4788,	-- The Final Tablets
					["coord"] = { 66.8, 24.0, TANARIS },
					["lvl"] = 40,
					["groups"] = {
						i(20218),	-- Faded Hakkari Cloak
						i(20219),	-- Tattered Hakkari Cape
					},
				}),
				q(4765, {	-- Delivery to Ridgewell
					["qg"] = 9565,	-- Mayara Brightwing
					["sourceQuest"] = 4764,	-- Doomrigger's Clasp
					["coord"] = { 84.8, 69, BURNING_STEPPES },
					["cost"] = { { "i", 12437, 1 } },	-- Ridgewell's Crate
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 57,
					["groups"] = {
						i(15860),	-- Blinkstrike Armguards
						i(15861),	-- Swiftfoot Treads
					},
				}),
				q(4764, {	-- Doomrigger's Clasp
					["sourceQuest"] = 4766,	-- Mayara Brightwing
					["qg"] = 9565,	-- Mayara Brightwing
					["coord"] = { 84.8, 69, BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 57,
					["groups"] = {
						objective(1, {	-- 0/1 Doomrigger's Clasp
							["provider"] = { "i", 12352 },	-- Doomrigger's Clasp
						}),
					},
				}),
				q(4735, {	-- Egg Collection
					["qg"] = 10267,	-- Tinkee Steamboil
					["sourceQuest"] = 4734,	-- Egg Freezing
					["coord"] = { 65.2, 23.8, BURNING_STEPPES },
					["lvl"] = 57,
					["groups"] = {
						objective(1, {	-- 0/8 Collected Dragon Egg
							["provider"] = { "i", 12241 },	-- Collected Dragon Egg
							["cost"] = {
								{ "i", 12144, 1 },	-- Eggscilloscope
								{ "i", 12287, 1 },	-- Collectronic Module
							},
						}),
					},
				}),
				q(4734, {	-- Egg Freezing
					["qg"] = 10267,	-- Tinkee Steamboil
					["sourceQuest"] = 4907,	-- Tinkee Steamboil
					["coord"] = { 65.2, 23.8, BURNING_STEPPES },
					["lvl"] = 57,
					["groups"] = {
						objective(1, {	-- 	Test the Eggscilliscope Prototype
							["provider"] = { "i", 12286 },	-- Eggscilloscope Prototype
						}),
						i(12144, {	-- Eggscilloscope
							["description"] = "You don't need to keep this, but it might be nice to have just in case someone doesn't quite grasp the 'don't touch the eggs' rule.",
						}),
					},
				}),
				q(4941, {	-- Eitrigg's Wisdom
					["qg"] = 9077,	-- Warlord Goretooth <Kargath Expeditionary Force>
					["sourceQuest"] = 4903,	-- Warlord's Command
					["coord"] = { 5.8, 47.6, BADLANDS },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- Council with Eitrigg.
							["provider"] = { "n", 3144 },	-- Eitrigg
							["coord"] = { 34.4, 38.4, ORGRIMMAR },
						}),
					},
				}),
				q(6570, {	-- Emberstrife
					["qg"] = 11872,	-- Myranda the Hag
					["sourceQuest"] = 6569,	-- Oculus Illusions
					["coord"] = { 50.8, 77.8, WESTERN_PLAGUELANDS },
					["maps"] = { DUSTWALLOW_MARSH },
					["cost"] = { { "i", 16787, 1 } },	-- Amulet of Draconic Subversion
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
				}),
				q(4862, {	-- En-Ay-Es-Tee-Why
					["qg"] = 10260,	-- Kibler
					["coord"] = { 65.8, 22.0, BURNING_STEPPES },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/15 Spire Spider Egg
							["provider"] = { "i", 12530 },	-- Spire Spider Egg
						}),
						i(12529),	-- Smolderweb Carrier
					},
				}),
				q(4974, {	-- For The Horde!
					["qg"] = 4949,	-- Thrall <Warchief>
					["sourceQuest"] = 4941,	-- Eitrigg's Wisdom
					["coord"] = { 32.0, 37.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Rend Blackhand
							["provider"] = { "i", 12630 },	-- Head of Rend Blackhand
						}),
						i(13965),	-- Blackhand's Breadth
						i(13968),	-- Eye of the Beast
						i(13966),	-- Mark of Tyranny
					},
				}),
				q(5089, {	-- General Drakkisath's Command
					["provider"] = { "i", 12780 },	-- General Drakkisath's Command
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 55,
				}),
				q(5102, {	-- General Drakkisath's Demise
					["qg"] = 9560,	-- Marshal Maxwell
					["sourceQuest"] = 5089,	-- General Drakkisath's Command
					["coord"] = { 84.6, 68.8, BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 General Drakkisath slain
							["provider"] = { "n", 10363 },	-- General Drakkisath
						}),
						i(13965),	-- Blackhand's Breadth
						i(13968),	-- Eye of the Beast
						i(13966),	-- Mark of Tyranny
					},
				}),
				q(4729, {	-- Kibler's Exotic Pets
					["qg"] = 10260,	-- Kibler
					["coord"] = { 65.8, 22.0, BURNING_STEPPES },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Caged Worg Pup
							["provider"] = { "i", 12263 },	-- Caged Worg Pup
						}),
						i(12264),	-- Worg Carrier (PET!)
					},
				}),
				q(5067, {	-- Leggings of Arcana
					["qg"] = 10637,	-- Malyfous Darkhammer
					["sourceQuest"] = 5047,	-- Pip Quickwit, At Your Service!
					["coord"] = { 61, 38.8, WINTERSPRING },
					["maps"] = { SCHOLOMANCE, STRATHOLME },
					["cost"] = {
						{ "i", 12731, 1 },	-- Pristine Hide of the Beast
						{ "i", 12735, 5 },	-- Frayed Abomination Stitching
						{ "i", 12360, 5 },	-- Arcanite Bar
						{ "i", 12736, 5 },	-- Frostwhisper's Embalming Fluid
						{ "g", 500000 },	-- 50 Gold
					},
					["repeatable"] = true,
					["lvl"] = 57,
					["groups"] = {
						i(12756),	-- Leggings of Arcana
					},
				}),
				q(5167, {	-- Legplates of the Chromatic Defier
					["provider"] = { "o", 176192 },	-- Catalogue of the Wayward
					["sourceQuest"] = 5164,	-- Catalogue of the Wayward
					["coord"] = { 39.4, 66.7, WESTERN_PLAGUELANDS },
					["maps"] = { SCHOLOMANCE, STRATHOLME, EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 12871, 1 },	-- Chromatic Carapace
						{ "i", 12607, 10 },	-- Brilliant Chromatic Scale
						{ "i", 12938, 10 },	-- Blood of Heroes
						{ "i", 12753, 5 },	-- Skin of Shadow
					},
					["lvl"] = 57,
					["groups"] = {
						i(12903), 	-- Legguards of the Chromatic Defier
						i(12945),	-- Legplates of the Chromatic Defier
					},
				}),
				q(5126, {	-- Lorax's Tale
					["qg"] = 10918,	-- Lorax
					["coord"] = { 63.8, 73.8, WINTERSPRING },
					["requireSkill"] = BLACKSMITHING,
					["lvl"] = 55,
				}),
				q(5081, {	-- Maxwell's Mission
					["qg"] = 9560,	-- Marshal Maxwell
					["sourceQuest"] = 5002,	-- Message to Maxwell
					["coord"] = { 84.6, 68.8, BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 War Master Voone slain
							["provider"] = { "n", 9237 },	-- War Master Voone
						}),
						objective(2, {	-- 0/1 Highlord Omokk slain
							["provider"] = { "n", 9196 },	-- Highlord Omokk
						}),
						objective(3, {	-- 0/1 Overlord Wyrmthalak slain
							["provider"] = { "n", 9568 },	-- Overlord Wyrmthalak
						}),
						i(13961),	-- Halycon's Muzzle
						i(13958),	-- Wyrmthalak's Shackles
						i(13963),	-- Voone's Vice Grips
						i(13959),	-- Omokk's Girth Restrainer
						i(13962),	-- Vosh'gajin's Strand
					},
				}),
				q(4766, {	-- Mayara Brightwing
					["qg"] = 2285,	-- Count Remington Ridgewell <House of Nobles>
					["altQuests"] = {
						4764,	-- Doomrigger's Clasp [NOT SURE, but this quest constantly resets to Not Complete on Blizzard's Side.]
					},
					["coord"] = { 74, 30, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 57,
				}),
				q(5002, {	-- Message to Maxwell
					["qg"] = 10257,	-- Bijou
					["sourceQuest"] = 5001,	-- Bijou's Belongings (A)
					["maps"] = { BURNING_STEPPES },
					["cost"] = { { "i", 12770, 1 } },	-- Bijou's Information
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 55,
				}),
				-- #if AFTER TBC
				q(6568, {	-- Mistress of Deception
					["providers"] = {
						{ "n", 10182 },	-- Rokaro <Champion of the Horde>
						{ "i", 16785 },	-- Rokaro's Letter
					},
					["sourceQuest"] = 6567,	-- The Champion of the Horde
					["coords"] = {
						{ 54.0, 3.2, DESOLACE },
						{ 62.8, 22.6, DESOLACE },
						{ 59.8, 37.6, DESOLACE },
						{ 52.0, 39.4, DESOLACE },
						{ 49.6, 56.4, DESOLACE },
						{ 55.6, 66.6, DESOLACE },
						{ 50.6, 75.2, DESOLACE },
						{ 40.8, 78.6, DESOLACE },
						{ 42.4, 96.8, DESOLACE },
					},
					["maps"] = { WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
				}),
				-- #endif
				q(4866, {	-- Mother's Milk
					["qg"] = 9563,	-- Ragged John
					["description"] = "You need to setup a coordinated group ONLY for this. If the healer or ANYONE removes the poison, you have to reset and try again.\n\nBefore the group starts, set your hearth to Stormwind or have a mage for a quick port to Stormwind after the group has gotten their bites.",
					["coord"] = { 65, 23.6, BURNING_STEPPES },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- Milked
							["provider"] = { "n", 10596 },	-- Mother Smolderweb
						}),
						i(15873),	-- Ragged John's Neverending Cup
					},
				}),
				q(6569, {	-- Oculus Illusions
					["qg"] = 11872,	-- Myranda the Hag
					["sourceQuest"] = 6568,	-- The Testament of Rexxar
					["coord"] = { 50.8, 77.8, WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/20 Black Dragonspawn Eye
							["provider"] = { "i", 16786 },	-- Black Dragonspawn Eye
						}),
					},
				}),
				q(4981, {	-- Operative Bijou
					["qg"] = 9080,	-- Lexlort <Kargath Expeditionary Force>
					["coord"] = { 5.8, 47.6, BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
				}),
				q(5047, {	-- Pip Quickwit, At Your Service!
					["qg"] = 10776,	-- Pip Quickwit
					["description"] = "Kill The Beast in UBRS. Using Pip's Skinner and a 300 Skill Skinner, skin the boss and Pip Quickwit will appear. Everyone in the raid can pick up this quest at that time.",
					["maps"] = { WINTERSPRING },
					["cost"] = { { "i", 12710, 1 } },	-- Glowing Hunk of the Beast's Flesh
					["cr"] = 10430,	-- The Beast
					["lvl"] = 57
				}),
				q(4701, {	-- Put Her Down
					["qg"] = 9562,	-- Helendis Riverhorn
					["coord"] = { 85.6, 69, BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Halycon slain
							["provider"] = { "n", 10220 },	-- Halycon
						}),
						i(15824),	-- Astoria Robes
						i(15827),	-- Jadescale Breastplate
						i(15825),	-- Traphook Jerkin
					},
				}),
				q(4742, {	-- Seal of Ascension (1/2)
					["qg"] = 10299,	-- Scarshield Infiltrator <Scarshield Legion>
					["description"] = "Pickup this quest by going up to the hidden ledge in LBRS and speaking to the Infiltrator.",
					["cost"] = {
						{ "i", 12336, 1 },	-- Gemstone of Spirestone
						{ "i", 12335, 1 },	-- Gemstone of Smolderthorn
						{ "i", 12337, 1 },	-- Gemstone of Bloodaxe
						{ "i", 12219, 1 },	-- Unadorned Seal of Ascension
					},
					["lvl"] = 57,
				}),
				q(4743, {	-- Seal of Ascension (2/2)
					["qg"] = 10299,	-- Scarshield Infiltrator <Scarshield Legion>
					["sourceQuest"] = 4742,	-- Seal of Ascension (1/2)
					["description"] = "Ask your party to come with you to Dustwallow Marsh. You will not be able to solo this quest.\n\nOnly one person can complete this quest per Emberstrife cooldown. Your party will need to kill Emberstrife to reset the cooldown. (Respawn is about 5 minutes.)",
					["lvl"] = 57,
					["groups"] = {
						objective(1, {	-- 0/1 Forged Seal of Ascension
							["provider"] = { "i", 12324 },	-- Forged Seal of Ascension
							["cost"] = {
								{ "i", 12323, 1 },	-- Unforged Seal of Ascension
								{ "i", 12300, 1 },	-- Orb of Draconic Energy
							},
							["cr"] = 10321,	-- Emberstrife
						}),
						i(12339, {	-- Vaelan's Gift
							i(12323, {	-- Unforged Seal of Ascension
								["description"] = "Use this once the dragon reaches 10-20% health.",
							}),
							i(12300, {	-- Orb of Draconic Energy
								["description"] = "Use this once the dragon reaches 10% health. Instruct your party NOT to kill Emberstrife.",
							}),
						}),
						i(12344, {	-- Seal of Ascension
							["description"] = "This item must be in your bags to open the door to UBRS.",
						}),
					},
				}),
				q(6567, {	-- The Champion of the Horde
					["qg"] = 4949,	-- Thrall <Warchief>
					["sourceQuest"] = 6566,	-- What the Wind Carries
					["coord"] = { 32.0, 37.8, ORGRIMMAR },
					["maps"] = { DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
				}),
				q(4768, {	-- The Darkstone Tablet
					["qg"] = 9078,	-- Shadowmage Vivian Lagrave <Kargath Expeditionary Force>
					["sourceQuest"] = 4769,	-- Vivian Lagrave and the Darkstone Tablet
					["coord"] = { 3, 47.6, BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 57,
					["groups"] = {
						objective(1, {	-- 0/1 Darkstone Tablet
							["provider"] = { "i", 12358 },	-- Darkstone Tablet
						}),
						i(15860),	-- Blinkstrike Armguards
						i(15861),	-- Swiftfoot Treads
					},
				}),
				q(5127, {	-- The Demon Forge
					["qg"] = 10918,	-- Lorax
					["sourceQuest"] = 5126,	-- Lorax's Tale
					-- #if BEFORE TBC
					["requireSkill"] = 9788,	-- Armorsmith
					-- #else
					["requireSkill"] = BLACKSMITHING,
					-- #endif
					["coord"] = { 63.8, 73.8, WINTERSPRING },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Soul Stained Pike
							["provider"] = { "i", 12847 },	-- Soul Stained Pike
							["cost"] = { { "i", 12848, 1 } },	-- Blood Stained Pike
							["cr"] = 10899,	-- Goraluk Anvilcrack
						}),
						objective(2, {	-- 0/1 Unforged Rune Covered Breastplate
							["provider"] = { "i", 12806 },	-- Unforged Rune Covered Breastplate
						}),
						i(12696),	-- Plans: Demon Forged Breastplate
						i(9224),	-- Elixir of Demonslaying
						i(12849),	-- Demon Kissed Sack
					},
				}),
				q(4788, {	-- The Final Tablets
					["qg"] = 10460,	-- Prospector Ironboot
					["sourceQuest"] = 5065,	-- The Lost Tablets of Mosh'aru
					["coord"] = { 66.8, 24.0, TANARIS },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Fifth Mosh'aru Tablet
							["provider"] = { "i", 12740 },	-- Fifth Mosh'aru Tablet
						}),
						objective(1, {	-- 0/1 Sixth Mosh'aru Tablet
							["provider"] = { "i", 12741 },	-- Sixth Mosh'aru Tablet
						}),
					},
				}),
				q(8182, {	-- The Hand of Rastakhan
					["qg"] = 10460,	-- Prospector Ironboot
					["sourceQuest"] = 8181,	-- Confront Yeh'kinya
					["coord"] = { 66.8, 24, TANARIS },
					["lvl"] = 40,
				}),
				q(5065, {	-- The Lost Tablets of Mosh'aru
					["qg"] = 10460,	-- Prospector Ironboot
					["sourceQuest"] = 3528,	-- The God Hakkar
					["coord"] = { 66.8, 24.0, TANARIS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Third Mosh'aru Tablet
							["provider"] = { "i", 12411 },	-- Third Mosh'aru Tablet
							["coord"] = { 72.4, 13, EASTERN_PLAGUELANDS },
						}),
						objective(1, {	-- 0/1 Fourth Mosh'aru Tablet
							["provider"] = { "i", 12412 },	-- Fourth Mosh'aru Tablet
							["coord"] = { 72.7, 15.7, EASTERN_PLAGUELANDS },
						}),
					},
				}),
				q(5160, {	-- The Matron Protectorate
					["providers"] = {
						{ "n", 10740 },	-- Awbee
						{ "i", 12923 },	-- Awbee's Scale
					},
					["description"] = "Speak with Awbee in UBRS to accept this quest. Most tanks skip the two mobs near Awbee, so you should mention it to them.",
					["maps"] = { WINTERSPRING },
					["lvl"] = 57,
				}),
				q(4724, {	-- The Pack Mistress
					["qg"] = 9081,	-- Galamav the Marksman <Kargath Expeditionary Force>
					["coord"] = { 5.8, 47.6, BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Halycon slain
							["provider"] = { "n", 10220 },	-- Halycon
						}),
						i(15824),	-- Astoria Robes
						i(15827),	-- Jadescale Breastplate
						i(15825),	-- Traphook Jerkin
					},
				}),
				q(6585, {	-- The Test of Skulls, Axtroz
					["qg"] = 10321,	-- Emberstrife
					["sourceQuests"] = {
						6584,	-- The Test of Skulls, Chronalis
						6582,	-- The Test of Skulls, Scryer
						6583,	-- The Test of Skulls, Somnus
					},
					["coord"] = { 56.8, 87.4, DUSTWALLOW_MARSH },
					["maps"] = { WETLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 The Skull of Axtroz
							["provider"] = { "i", 16872 },	-- The Skull of Axtroz
							["coord"] = { 83.4, 49.6, WETLANDS },
							["cr"] = 12899,	-- Axtroz
						}),
					},
				}),
				q(6584, {	-- The Test of Skulls, Chronalis
					["qg"] = 10321,	-- Emberstrife
					["sourceQuest"] = 6570,	-- Emberstrife
					["coord"] = { 56.8, 87.4, DUSTWALLOW_MARSH },
					["maps"] = { TANARIS },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 The Skull of Chronalis
							["provider"] = { "i", 16871 },	-- The Skull of Chronalis
							["coord"] = { 64.4, 50.6, TANARIS },
							["qg"] = 8197,	-- Chronalis
						}),
					},
				}),
				q(6582, {	-- The Test of Skulls, Scryer
					["qg"] = 10321,	-- Emberstrife
					["sourceQuest"] = 6570,	-- Emberstrife
					["coord"] = { 56.8, 87.4, DUSTWALLOW_MARSH },
					["maps"] = { WINTERSPRING },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 The Skull of Scryer
							["provider"] = { "i", 16869 },	-- The Skull of Scryer
							["coord"] = { 53.6, 55.8, WINTERSPRING },
							["qg"] = 10664,	-- Scryer
						}),
					},
				}),
				q(6583, {	-- The Test of Skulls, Somnus
					["qg"] = 10321,	-- Emberstrife
					["sourceQuest"] = 6570,	-- Emberstrife
					["coord"] = { 56.8, 87.4, DUSTWALLOW_MARSH },
					["maps"] = { SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 The Skull of Somnus
							["provider"] = { "i", 16870 },	-- The Skull of Somnus
							["coord"] = { 80.2, 57.2, SWAMP_OF_SORROWS },
							["qg"] = 12900,	-- Somnus
						}),
					},
				}),
				-- #if BEFORE TBC
				q(6568, {	-- The Testament of Rexxar
					["providers"] = {
						{ "n", 10182 },	-- Rexxar <Champion of the Horde>
						{ "i", 16785 },	-- Rexxar's Testament
					},
					["sourceQuest"] = 6567,	-- The Champion of the Horde
					["coords"] = {
						{ 54.0, 3.2, DESOLACE },
						{ 62.8, 22.6, DESOLACE },
						{ 59.8, 37.6, DESOLACE },
						{ 52.0, 39.4, DESOLACE },
						{ 49.6, 56.4, DESOLACE },
						{ 55.6, 66.6, DESOLACE },
						{ 50.6, 75.2, DESOLACE },
						{ 40.8, 78.6, DESOLACE },
						{ 42.4, 96.8, DESOLACE },
					},
					["maps"] = { WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
				}),
				-- #endif
				q(4907, {	-- Tinkee Steamboil
					["qg"] = 10468,	-- Felnok Steelspring
					["sourceQuest"] = 4810,	-- Return to Tinkee
					["coord"] = { 61.6, 38.6, WINTERSPRING },
					["isBreadcrumb"] = true,
					["lvl"] = 57,
				}),
				q(4867, {	-- Urok Doomhowl
					["providers"] = {
						{ "n", 10799 },	-- Warosh <The Cursed>
						{ "i", 12730 },	-- Warosh's Scroll
					},
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Warosh's Mojo
							["provider"] = { "i", 12712 },	-- Warosh's Mojo
						}),
						i(15867),	-- Prismcharm
					},
				}),
				q(4769, {	-- Vivian Lagrave and the Darkstone Tablet
					["qg"] = 5204,	-- Apothecary Zinge <Royal Apothecary Society>
					["coord"] = { 49.8, 68.2, UNDERCITY },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 57,
				}),
				q(4903, {	-- Warlord's Command
					["qg"] = 9077,	-- Warlord Goretooth <Kargath Expeditionary Force>
					["provider"] = { "i", 12563 },	-- Warlord Goretooth's Command
					["description"] = "Talk to Warlord Goretooth and read through his full dialog for the item that starts the quest to be given to you.",
					["coord"] = { 5.8, 47.6, BADLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Overlord Wyrmthalak slain
							["provider"] = { "n", 9568 },	-- Overlord Wyrmthalak
						}),
						objective(2, {	-- 0/1 Highlord Omokk slain
							["provider"] = { "n", 9196 },	-- Highlord Omokk
						}),
						objective(3, {	-- 0/1 War Master Voone slain
							["provider"] = { "n", 9237 },	-- War Master Voone
						}),
						objective(4, {	-- 0/1 Important Blackrock Documents
							["provider"] = { "n", 12562 },	-- Important Blackrock Documents
							["description"] = "On the ground next to Overlord Wyrmthalak.",
						}),
						i(13961),	-- Halycon's Muzzle
						i(13958),	-- Wyrmthalak's Shackles
						i(13963),	-- Voone's Vice Grips
						i(13959),	-- Omokk's Girth Restrainer
						i(13962),	-- Vosh'gajin's Strand
					},
				}),
				q(6566, {	-- What the Wind Carries
					["qg"] = 4949,	-- Thrall <Warchief>
					["sourceQuest"] = 4974,	-- For The Horde!
					["coord"] = { 32.0, 37.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
				}),
				q(5161, {	-- Wrath of the Blue Flight (1/2)
					["qg"] = 10929,	-- Haleh
					["sourceQuest"] = 5160,	-- The Matron Protectorate
					["coord"] = { 54.4, 51.2, WINTERSPRING },
					["lvl"] = 57,
				}),
				q(5162, {	-- Wrath of the Blue Flight (2/2)
					["qg"] = 10929,	-- Haleh
					["sourceQuest"] = 5161,	-- Wrath of the Blue Flight (1/2)
					["coord"] = { 54.4, 51.2, WINTERSPRING },
					["maps"] = { WESTERN_PLAGUELANDS },
					["lvl"] = 57,
				}),
			}),
			n(ZONE_DROPS, {
				applyclassicphase(PHASE_FIVE, i(22138)),	-- Blackrock Bracer
				i(16786),	-- Black Dragonspawn Eye
				i(12219),	-- Unadorned Seal of Ascension
				i(16247, {	-- Formula: Enchant 2H Weapon - Superior Impact
					["cr"] = 10317,	-- Blackhand Elite <Blackhand Legion>
				}),
				i(16244, {	-- Formula: Enchant Gloves - Greater Strength
					["cr"] = 9198,	-- Spirestone Mystic
				}),
				i(16250, {	-- Formula: Enchant Weapon - Superior Striking
					["cr"] = 9216,	-- Spirestone Warlord
				}),
				applyclassicphase(PHASE_SIX, i(24102, {	-- Manual of Eviscerate IX
					["spellID"] = 31016,	-- Eviscerate IX
					["classes"] = { ROGUE },
					["rank"] = 9,
					["cr"] = 10318,	-- Blackhand Assassin <Blackhand Legion>
				})),
				i(14513, {	-- Pattern: Robe of the Archmage
					["cr"] = 9264,	-- Firebrand Pyromancer
				}),
				i(15749, {	-- Pattern: Volcanic Breastplate
					["cr"] = 9259,	-- Firebrand Grunt
				}),
				i(15775, {	-- Pattern: Volcanic Shoulders
					["cr"] = 9260,	-- Firebrand Legionnaire
				}),
				i(13494, {	-- Recipe: Greater Fire Protection Potion
					["crs"] = {
						9262,	-- Firebrand Invoker
						9264,	-- Firebrand Pyromancer
					},
				}),
				i(16680),	-- Beaststalker's Belt
				i(16681, {	-- Beaststalker's Bindings
					["timeline"] = { "removed 4.0.3" },
					["cr"] = 9096,	-- Rage Talon Dragonspawn
				}),
				i(16736),	-- Belt of Valor
				i(16735),	-- Bracers of Valor
				i(16673), 	-- Cord of Elements
				i(16696),	-- Devout Belt
				i(16703),	-- Dreadmist Bracers
				i(16685, {	-- Magister's Belt
					["timeline"] = { "removed 4.0.3" },
					["cr"] = 9239,	-- Smolderthorn Mystic
				}),
				i(16683),	-- Magister's Bindings
				i(16713),	-- Shadowcraft Belt
				i(16716),	-- Wildheart Belt
				i(16717),	-- Wildheart Gloves
				i(13260),	-- Wind Dancer Boots
				i(13371),	-- Father Flame
				applyclassicphase(PHASE_FIVE, i(21982, {	-- Ogre Warbeads
					["crs"] = {
						9196,	-- Highlord Omokk
						10584,	-- Urok Doomhowl
						9218,	-- Spirestone Battle Lord
						9197,	-- Spirestone Battle Mage
						9199,	-- Spirestone Enforcer
						9217,	-- Spirestone Lord Magus
						9198,	-- Spirestone Mystic
						9201,	-- Spirestone Ogre Magus
						9200,	-- Spirestone Reaver
						9216,	-- Spirestone Warlord
					},
				})),
			}),
			prof(SKINNING, {
				["crs"] = {
					10447,	-- Chromatic Dragonspawn
					10814,	-- Chromatic Elite Guard
					10442,	-- Chromatic Whelp
				},
				["groups"] = {
					i(12607),	-- Brilliant Chromatic Scale
				},
			}),
			n(-27, {	-- Lower
				n(9257, {	-- Scarshield Warlock
					["description"] = "DO NOT KILL this mob if you are trying to get the Burning Felguard to spawn.",
					["groups"] = {
						i(9214, {	-- Grimoire of Inferno
							["spellID"] = 1122,	-- Inferno
							["classes"] = { WARLOCK },
						}),
						n(10263, {	-- Burning Felguard
							["description"] = "This mob is infinitely farmable if you don't kill all of the Scarshield Warlocks.",
							["groups"] = {
								i(13181),	-- Demonskin Gloves
								i(13182),	-- Phase Blade
							},
						}),
					},
				}),
				i(12533, {	-- Roughshod Pike
					["description"] = "This item can be found along the back wall as you cross the 2nd bridge to the sleeping orc encampment just after Vorash.",
				}),
				n(9218, {	-- Spirestone Battle Lord (Rare)
					["description"] = "This is a rare that is not always present.",
					["groups"] = {
						i(13285),	-- The Blackrock Slicers
						i(13284),	-- Swiftdart Battleboots
					},
				}),
				n(9219, {	-- Spirestone Butcher (Rare)
					["description"] = "This is a rare that is not always present.",
					["groups"] = {
						i(13286),	-- Rivenspike
						i(12608),	-- Butcher's Apron
					},
				}),
				n(9217, {	-- Spirestone Lord Magus (Rare)
					["description"] = "This is a rare that is not always present.",
					["groups"] = {
						i(13261),	-- Globe of D'sak
						i(13282),	-- Ogreseer Tower Boots
						i(13283),	-- Magus Ring
					},
				}),
				n(9196, {	-- Highlord Omokk
					i(12534),	-- Omokk's Head
					i(12336),	-- Gemstone of Spirestone
					i(13167),	-- Fist of Omokk
					i(13166),	-- Slamshot Shoulders
					i(13168),	-- Plate of the Shaman King
					i(13170),	-- Skyshroud Leggings
					i(13169),	-- Tressermane Leggings
					i(16670),	-- Boots of Elements
				}),
				n(9236, {	-- Shadow Hunter Vosh'gajin
					i(12740, {	-- Fifth Mosh'aru Tablet
						["description"] = "Located directly behind the boss.",
					}),
					i(13352),	-- Vosh'gajin's Snakestone
					i(12651),	-- Blackcrow
					i(12653),	-- Riphook
					i(13257),	-- Demonic Runed Spaulders
					i(12626),	-- Funeral Cuffs
					i(13255),	-- Trueaim Gauntlets
					i(16712), 	-- Shadowcraft Gloves
					i(12654),	-- Doomshot
				}),
				n(9237, {	-- War Master Voone
					i(12741, {	-- Sixth Mosh'aru Tablet
						["description"] = "Located directly behind the boss.",
					}),
					i(12335),	-- Gemstone of Smolderthorn
					i(12582),	-- Keris of Zul'Serak
					i(13175),	-- Voone's Twitchbow
					i(13177),	-- Talisman of Evasion
					i(13179),	-- Brazecore Armguards
					i(16676),	-- Beaststalker's Gloves
					i(22231),	-- Kayser's Boots of Precision
					-- #if BEFORE MOP
					i(13173, {	-- Flightblade Throwing Axe [Classic] / Broken Flightblade Throwing Axe [TBC]
						["timeline"] = {
							"added 1.11.1.5462",
							"removed 2.0.1.5678"
						},
					}),
					un(TBC_PHASE_ONE, i(28972, {	-- Flightblade Throwing Axe [TBC]
						["timeline"] = { "removed 5.0.4.10000" },
					})),
					-- #endif
				}),
				applyclassicphase(PHASE_FIVE, n(16080, {	-- Mor Grayhoof
					["description"] = "This boss can be summoned using the Brazier of Beckoning or the Brazier of Invocation, which can summon any of the spirits.",
					["cost"] = {
						{ "i", 22049, 1 },	-- Brazier of Beckoning [Mor Grayhoof]
						{ "i", 22057, 1 },	-- Brazier of Invocation
					},
					["groups"] = bubbleDown({ ["u"] = PHASE_FIVE }, {
						i(21984),	-- Left Piece of Lord Valthalak's Amulet
						i(22046),	-- Right Piece of Lord Valthalak's Amulet
						i(22322),	-- The Jaw Breaker
						i(22319),	-- Tome of Divine Right
						i(22325),	-- Belt of the Trickster
						i(22306),	-- Ironweave Belt
						i(22398),	-- Idol of Rejuvenation
					}),
				})),
				n(9596, {	-- Bannok Grimaxe (Rare)
					["description"] = "This is a rare that is not always present.",
					["groups"] = {
						i(12838),	-- Plans: Arcanite Reaper
						i(12621),	-- Demonfork
						i(12637),	-- Backusarian Gauntlets
						i(12634),	-- Chiselbrand Girdle
					},
				}),
				o(175606, {	-- Spire Spider Egg
					["description"] = "Interacting with a spider egg may spawn baby spiders, beware!",
					["groups"] = {
						i(12530),	-- Spire Spider Egg
					},
				}),
				n(10376, {	-- Crystal Fang (Rare)
					["description"] = "This is a rare that is not always present.",
					["groups"] = {
						i(13218),	-- Fang of the Crystal Spider
						i(13185),	-- Sunderseer Mantle
						i(13184),	-- Fallbrush Handgrips
					},
				}),
				n(10596, {	-- Mother Smolderweb
					i(13183),	-- Venomspitter
					i(13213),	-- Smolderweb's Eye
					i(13244),	-- Gilded Gauntlets
					i(16715),	-- Wildheart Boots
				}),
				n(10584, {	-- Urok Doomhowl
					["description"] = "Summonable Boss. Loot a Roughshod Pike, found on the left wall after crossing the second bridge before heading to Highlord Omokk. Kill Highlord Omokk and loot his head. After killing Mother Smolderweb, head up and use the pike at the pile of skulls located at the corner of the square platform. This will summon waves of enemies and finally the boss.",
					["cost"] = {
						{ "i", 12533, 1 },	-- Roughshod Pike
						{ "i", 12534, 1 },	-- Omokk's Head
					},
					["groups"] = {
						i(12712),	-- Warosh's Mojo
						i(18784),	-- Top Half of Advanced Armorsmithing: Volume III
						i(13258),	-- Slaghide Gauntlets
						applyclassicphase(PHASE_FIVE, i(22232)),	-- Marksman's Girdle
						i(13259),	-- Ribsteel Footguards
						i(13178),	-- Rosewine Circle
					},
				}),
				n(9736, {	-- Quartermaster Zigris
					applyclassicphase(TBC_PHASE_ONE, i(21955)),	-- Design: Black Diamond Crab
					i(12835),	-- Plans: Annihilator
					i(13253),	-- Hands of Power
					i(13252),	-- Cloudrunner Girdle
					i(13247, {	-- Quartermaster Zigris' Footlocker
						["description"] = "Contains a random green item.",
					}),
				}),
				n(10221, {	-- Bloodaxe Worg Pup
					["description"] = "Can be pulled outside of the room without engaging the boss.",
					["cost"] = { { "i", 12262, 1 } },	-- Empty Worg Pup Cage
					["groups"] = {
						i(12263),	-- Caged Worg Pup
					},
				}),
				n(10220, {	-- Halycon
					i(13212),	-- Halcyon's Spiked Collar
					applyclassicphase(PHASE_FIVE, i(22313)),	-- Ironweave Bracers
					i(13211),	-- Slashclaw Bracers
					i(13210),	-- Pads of the Dread Wolf
				}),
				n(10268, {	-- Gizrul the Slavener
					["description"] = "Summoned immediately after Halycon is defeated.",
					["groups"] = {
						i(13205),	-- Rhombeard Protector
						i(16718),	-- Wildheart Spaulders
						i(13208),	-- Bleak Howler Armguards
						i(13206),	-- Wolfshear Leggings
					},
				}),
				n(9718, {	-- Ghok Bashguud <Bloodaxe Champion>
					["description"] = "This is a rare that is not always present.",
					["groups"] = {
						i(13204),	-- Bashguuder
						i(13198),	-- Hurd Smasher
						i(13203),	-- Armswake Cloak
					},
				}),
				n(9568, {	-- Overlord Wyrmthalak
					removeclassicphase(ach(643, {	-- Lower Blackrock Spire
						-- #if BEFORE 3.0.1
						["sourceQuests"] = {
							5089,	-- General Drakkisath's Command
							5081,	-- Maxwell's Mission
							4742,	-- Seal of Ascension
							4903,	-- Warlord's Command
						},
						["OnUpdate"] = [[function(t) t.SetAchievementCollected(t.achievementID, C_QuestLog.IsQuestFlaggedCompleted(5089) or C_QuestLog.IsQuestFlaggedCompleted(5081) or C_QuestLog.IsQuestFlaggedCompleted(4742) or C_QuestLog.IsQuestFlaggedCompleted(4903)); end]],
						-- #endif
					})),
					i(12780),	-- General Drakkisath's Command
					i(12337),	-- Gemstone of Bloodaxe
					i(13148), 	-- Chillpike
					i(13163),	-- Relentless Scythe
					i(13161),	-- Trindlehaven Staff
					i(13162),	-- Reiver Claws
					i(16679),	-- Beaststalker's Mantle
					i(13143),	-- Mark of the Dragon Lord
					i(13164),	-- Heart of the Scale
					applyclassicphase(PHASE_FIVE, i(22321)),	-- Heart of Wyrmthalak
				}),
			}),
			n(-28, {	-- Upper
				["description"] = "One member of your group must have completed the Seal of Ascension quest chain in order for the fires to light and the door to open to this portion of the instance.",
				["cost"] = {
					{ "i", 12344, 1 },	-- Seal of Ascension
				},
				["groups"] = {
					n(9816, { 	-- Pyroguard Emberseer
						applyclassicphase(PHASE_FIVE, i(21988)),	-- Ember of Emberseer
						i(17322),	-- Eye of the Emberseer
						i(12929),	-- Emberfury Talisman
						i(12905), 	-- Wildfire Cape
						i(12927),	-- Truestrike Shoulders
						i(16672),	-- Gauntlets of Elements
						i(12926),	-- Flaming Band
						applyclassicphase(PHASE_SIX, {
							["itemID"] = 23320,		-- Tablet of Flame Shock VI
							["spellID"] = 29228,	-- Flame Shock VI
							["classes"] = { SHAMAN },
							["rank"] = 6,
						}),
					}),
					n(10264, { 	-- Solakar Flamewreath
						["description"] = "This is spawned by clicking on the Father Flame and killing 8 waves of drake adds in the Leeroy Jenkins room.",
						["groups"] = {
							i(12358, {	-- Darkstone Tablet
								["description"] = "This is the white tablet leaning up against the wall in the Whelp Room.",
								["races"] = HORDE_ONLY,
							}),
							i(12352, {	-- Doomrigger's Clasp
								["description"] = "Can be found in a coffer in the Whelp Room behind a fallen column to the left of the ramp leading to the next room.\nNOTE: Most groups skip this room, so ask your group to clear to the column.",
								["races"] = ALLIANCE_ONLY,
							}),
							i(18657),	-- Schematic: Hyper-Radiant Flame Reflector
							i(16695), 	-- Devout Mantle
							i(12603),	-- Nightbrace Tunic
							i(12609),	-- Polychromatic Visionwrap
							i(12606), 	-- Crystallized Girdle
							i(12589),	-- Dustfeather Sash
						},
					}),
					n(10509, { 	-- Jed Runewatcher
						["description"] = "This is a rare that is not always present.",
						["groups"] = {
							i(12605),	-- Serpentine Skuller
							i(12604),	-- Starfire Tiara
							i(12930),	-- Briarwood Reed
						},
					}),
					n(10899, {	-- Goraluk Anvilcrack
						i(18779),	-- Bottom Half of Advanced Armorsmithing: Volume I
						i(12848, {	-- Unforged Rune Covered Breastplate
							["description"] = "Found on the rack behind Anvilcrack in Upper Blackrock Spire.",
						}),
						i(12834),	-- Plans: Arcanite Champion
						i(12728),	-- Plans: Invulnerable Mail
						i(12837),	-- Plans: Masterwork Stormhammer
						i(18048), 	-- Mastersmith's Hammer
						i(13502), 	-- Handcrafted Mastersmith Girdle
						i(13498), 	-- Handcrafted Mastersmith Leggings
						i(18047), 	-- Flame Walkers
					}),
					n(10339, { 	-- Gyth <Rend Blackhand's Mount>
						i(13522),	-- Recipe: Flask of Chromatic Resistance
						i(12871),	-- Chromatic Carapace
						i(12953),	-- Dragoneye Coif
						applyclassicphase(PHASE_FIVE, i(22225)), 	-- Dragonskin Cowl
						i(12952),	-- Gyth's Skull
						i(12960),	-- Tribal War Feathers
						i(16669), 	-- Pauldrons of Elements
					}),
					n(10429, { 	-- Warchief Rend Blackhand
						i(12630),	-- Head of Rend Blackhand
						i(12583),	-- Blackhand Doomsaw
						i(12940),	-- Dal'Rend's Sacred Charge
						i(12939), 	-- Dal'Rend's Tribal Guardian
						i(12590),	-- Felstriker
						i(12587),	-- Eye of Rend
						i(12588),	-- Bonespike Shoulder
						i(16733),	-- Spaulders of Valor
						i(12936), 	-- Battleborn Armbraces
						i(18104),	-- Feralsurge Girdle
						i(12935),	-- Warmaster Legguards
						i(18102),	-- Dragonrider Boots
						applyclassicphase(PHASE_FIVE, i(22247)),	-- Faith Healer's Boots
						i(18103),	-- Band of Rumination
					}),
					n(10430, { 	-- The Beast
						applyclassicphase(PHASE_SIX, {
							["itemID"] = 24101,		-- Book of Ferocious Bite V
							["spellID"] = 31018,	-- Ferocious Bite V
							["classes"] = { DRUID },
							["rank"] = 5,
						}),
						i(12709),	-- Finkle's Skinner
						i(12969), 	-- Seeping Willow
						i(12967),	-- Bloodmoon Cloak
						i(12968),	-- Frostweaver Cape
						i(16729),	-- Lightforge Spaulders
						i(12966),	-- Blackmist Armguards
						i(12963),	-- Blademaster Leggings
						i(12965),	-- Spiritshroud Leggings
						i(12964),	-- Tristam Legguards
						applyclassicphase(PHASE_FIVE, i(22311)),	-- Ironweave Boots
						applyclassicphase(PHASE_THREE, i(19227)),	-- Ace of Beasts
						prof(SKINNING, {
							["description"] = "You must have 315 Skinning skill. This can only be accomplished with the Zulian Slicer or Finkle's Skinner.",
							["groups"] = {
								i(12731),	-- Pristine Hide of the Beast
							},
						}),
					}),
					applyclassicphase(PHASE_FIVE, n(16042, { 	-- Lord Valthalak
						["description"] = "This boss can be summoned using the Brazier of Beckoning or the Brazier of Invocation, which can summon any of the spirits.",
						["cost"] = {
							{ "i", 22056, 1 },	-- Brazier of Beckoning [Lord Valthalak]
							{ "i", 22057, 1 },	-- Brazier of Invocation
						},
						["groups"] = bubbleDown({ ["u"] = PHASE_FIVE }, {
							i(22336), 	-- Draconian Aegis of the Legion
							i(22335), 	-- Lord Valthalak's Staff of Command
							i(22302),	-- Ironweave Cowl
							i(22340),	-- Pendant of Celerity
							i(22337),	-- Shroud of Domination
							i(22343),	-- Handguards of Savagery
							i(22342),	-- Leggings of Torment
							i(22339),	-- Rune Band of Wizardry
						}),
					})),
					n(10363, { 	-- General Drakkisath
						removeclassicphase(ach(1307, {	-- Upper Blackrock Spire
							-- #if BEFORE 3.0.1
							["sourceQuests"] = {
								6602,	-- Blood of the Black Dragon Champion
								6502,	-- Drakefire Amulet
								5102,	-- General Drakkisath's Demise
							},
							["OnUpdate"] = [[function(t) t.SetAchievementCollected(t.achievementID, C_QuestLog.IsQuestFlaggedCompleted(6602) or C_QuestLog.IsQuestFlaggedCompleted(6502) or C_QuestLog.IsQuestFlaggedCompleted(5102)); end]],
							-- #endif
						})),
						i(16663),	-- Blood of the Black Dragon Champion
						i(15730),	-- Pattern: Red Dragonscale Breastplate
						i(13519),	-- Recipe: Flask of the Titans
						i(12592),	-- Blackblade of Shahram
						i(12602),	-- Draconian Deflector
						applyclassicphase(PHASE_FIVE, i(22253)),	-- Tome of the Lost
						applyclassicphase(PHASE_FIVE, i(22267)),	-- Spellweaver's Turban
						i(13141),	-- Tooth of Gnarr
						i(16674),	-- Beaststalker's Tunic
						i(16730),	-- Breastplate of Valor
						i(16690),	-- Devout Robe
						i(16700),	-- Dreadmist Robe
						i(16726),	-- Lightforge Breastplate
						i(16688),	-- Magister's Robe
						i(16721),	-- Shadowcraft Tunic
						i(16666),	-- Vest of Elements
						i(16706),	-- Wildheart Vest
						applyclassicphase(PHASE_FIVE, i(22269)),	-- Shadow Prowler's Cloak
						i(13142),	-- Brigam Girdle
						i(13098),	-- Painweaver Band
						applyclassicphase(PHASE_FIVE, i(22268)),	-- Draconic Infused Emblem
					}),
				},
			}),
		},
	}),
})};