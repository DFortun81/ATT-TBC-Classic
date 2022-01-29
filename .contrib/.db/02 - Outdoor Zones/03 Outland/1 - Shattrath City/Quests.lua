---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(SHATTRATH_CITY, {
			n(QUESTS, {
				q(10552, {	-- Allegiance to the Scryers
					["sourceQuest"] = 10211,	-- City of Light
					["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
					["provider"] = { "n", 18166 },	-- Archmage Khadgar
				}),
				q(10553, {	-- Voren'thal the Seer
					["sourceQuest"] = 10552,	-- Allegiance to the Scryers
					["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
					["provider"] = { "n", 18166 },	-- Archmage Khadgar
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
				}),
				q(10412, {	-- Firewing Signets
					["sourceQuest"] = 10552,	-- Allegiance to the Scryers
					["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
					["provider"] = { "n", 18531 },	-- Magistrix Fyalenn
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
				}),
				q(10414, {	-- Single Firewing Signet
					["description"] = "Gives reputation through Honored.",
					["sourceQuest"] = 10412,	-- Firewing Signets
					["repeatable"] = true,
					["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
					["provider"] = { "n", 18531 },	-- Magistrix Fyalenn
					["maxReputation"] = { 934, HONORED },	-- The Scryers, Honored.
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
				}),
				q(10415, {	-- More Firewing Signets
					["description"] = "Gives reputation through Honored.",
					["sourceQuest"] = 10412,	-- Firewing Signets
					["repeatable"] = true,
					["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
					["provider"] = { "n", 18531 },	-- Magistrix Fyalenn
					["maxReputation"] = { 934, HONORED },	-- The Scryers, Honored.
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
				}),
				q(10656, {	-- Sunfury Signets
					["sourceQuest"] = 10552,	-- Allegiance to the Scryers
					["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
					["provider"] = { "n", 18531 },	-- Magistrix Fyalenn
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
				}),
				q(10659, {	-- Single Sunfury Signet
					["description"] = "Gives reputation through Exalted.",
					["sourceQuest"] = 10656,	-- Sunfury Signets
					["repeatable"] = true,
					["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
					["provider"] = { "n", 18531 },	-- Magistrix Fyalenn
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
				}),
				q(10658, {	-- More Sunfury Signets
					["description"] = "Gives reputation through Exalted.",
					["sourceQuest"] = 10656,	-- Sunfury Signets
					["repeatable"] = true,
					["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
					["provider"] = { "n", 18531 },	-- Magistrix Fyalenn
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
				}),
				q(10416, {	-- Synthesis of Power
					["sourceQuest"] = 10552,	-- Allegiance to the Scryers
					["coord"] = { 42.6, 91.4, SHATTRATH_CITY },
					["provider"] = { "n", 18530 },	-- Voren'thal the Seer
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
				}),
				q(10419, {	-- Arcane Tomes
					["sourceQuest"] = 10416,	-- Synthesis of Power
					["repeatable"] = true,
					["coord"] = { 42.6, 91.4, SHATTRATH_CITY },
					["provider"] = { "n", 18530 },	-- Voren'thal the Seer
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
				}),
				q(11039, {	-- Report to Spymaster Thalodien
					["isBreadcrumb"] = true,	-- for Manaforge B'naar
					["sourceQuest"] = 10552,	-- Allegiance to the Scryers
					["coords"] = {
						{ 44.6, 76.2, SHATTRATH_CITY },
						{ 60.6, 63.2, SHATTRATH_CITY },
					},
					["providers"] = {
						{ "n", 23273 }, 	-- Arcanist Raestan
						{ "n", 23272 },	-- Arcanist Savan
					},
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
				}),
				q(10024, {	-- Voren'thal's Visions
					["description"] = "If you want to switch from Aldor to Scryers, use these quests to regain lost Scryers reputation.",
					["repeatable"] = true,
					["provider"] = { "n", 18596 },	-- Arcanist Adyria
				}),
				q(10025, {	-- More Basilisk Eyes
					["sourceQuests"] = { 10024 },	-- Voren'thal's Visions
					["description"] = "If you want to switch from Aldor to Scryers, use these quests to regain lost Scryers reputation.",
					["repeatable"] = true,
					["provider"] = { "n", 18596 },	-- Arcanist Adyria
				}),
				q(11482, {	-- Duty Calls
					["isBreadcrumb"] = true,
					["provider"] = { "n", 18594 },	-- Dathris Sunstriker
					["coord"] = { 54.6, 80.8, SHATTRATH_CITY },
					["lvl"] = 70,
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
				}),
				q(10551, {	-- Allegiance to the Aldor
					["sourceQuest"] = 10211,	-- City of Light
					["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
					["provider"] = { "n", 18166 },	-- Archmage Khadgar
				}),
				q(10554, {	-- Ishanah
					["sourceQuests"] = { 10551 },	-- Allegiance to the Aldor
					["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
					["provider"] = { "n", 18166 },	-- Archmage Khadgar
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
				}),
				q(10021, {	-- Restoring the Light
					["sourceQuests"] = { 10551 },	-- Allegiance to the Aldor
					["coord"] = { 24.2, 29.8, SHATTRATH_CITY },
					["provider"] = { "n", 18538 },	-- Ishanah
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
				}),
				q(10325, {	-- Marks of Kil'jaeden
					["qg"] = 18537,	-- Adyen the Lightwarden
					["sourceQuest"] = 10551,	-- Allegiance to the Aldor
					["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
				}),
				q(10327, {	-- Single Mark of Kil'jaeden
					["sourceQuest"] = 10325,	-- Marks of Kil'jaeden
					["repeatable"] = true,
					["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
					["provider"] = { "n", 18537 },	-- Adyen the Lightwarden
					["maxReputation"] = { 932, HONORED },	-- The Aldor, Honored.
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
				}),
				q(10326, {	-- More Marks of Kil'jaeden
					["sourceQuest"] = 10325,	-- Marks of Kil'jaeden
					["repeatable"] = true,
					["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
					["provider"] = { "n", 18537 },	-- Adyen the Lightwarden
					["maxReputation"] = { 932, HONORED },	-- The Aldor, Honored.
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
				}),
				q(10653, {	-- Marks of Sargeras
					["sourceQuests"] = { 10551 },	-- Allegiance to the Aldor
					["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
					["provider"] = { "n", 18537 },	-- Adyen the Lightwarden
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
				}),
				q(10655, {	-- Single Mark of Sargeras
					["sourceQuests"] = { 10653 },	-- Marks of Sargeras
					["repeatable"] = true,
					["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
					["provider"] = { "n", 18537 },	-- Adyen the Lightwarden
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
				}),
				q(10654, {	-- More Marks of Sargeras
					["sourceQuests"] = { 10653 },	-- Marks of Sargeras
					["repeatable"] = true,
					["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
					["provider"] = { "n", 18537 },	-- Adyen the Lightwarden
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
				}),
				q(10420, {	-- A Cleansing Light
					["sourceQuests"] = { 10551 },	-- Allegiance to the Aldor
					["coord"] = { 24.2, 29.8, SHATTRATH_CITY },
					["provider"] = { "n", 18538 },	-- Ishanah
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
				}),
				q(10421, {	-- Fel Armaments
					["description"] = "Gives reputation through Exalted.",
					["sourceQuest"] = 10420,	-- A Cleansing Light
					["repeatable"] = true,
					["coord"] = { 24.2, 29.8, SHATTRATH_CITY },
					["provider"] = { "n", 18538 },	-- Ishanah
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
				}),
				q(10020, {	-- A Cure for Zahlia
					["sourceQuests"] = { 10551 },	-- Allegiance to the Aldor
					["provider"] = { "n", 18597 },	-- Sha'nir
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
				}),
				applyclassicphase(TBC_PHASE_FIVE, q(11481, {	-- Crisis at the Sunwell (may be able to be picked up in Netherstorm)
					["isBreadcrumb"] = true,
					["sourceQuests"] = { 10551 },	-- Allegiance to the Aldor
					["provider"] = { "n", 18537 },	-- Adyen the Lightwarden
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
				})),
				q(11038, {	-- Assist Exarch Orelis
					["isBreadcrumb"] = true,	-- for "Distraction at Manaforge B'naar," unavailable if you did any Netherstorm breadcrumb quest
					["sourceQuests"] = { 10551 },	-- Allegiance to the Aldor
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
					["coords"] = {
						{ 35.0, 32.6, SHATTRATH_CITY },
						{ 47.4, 26.4, SHATTRATH_CITY },
					},
					["providers"] = {
						{ "n", 23271 },	-- Vindicator Kaan
						{ "n", 23270 },	-- Vindicator Aeus
					},
				}),
				q(10017, {	-- Strained Supplies
					["description"] = "If you want to switch from Scryers to Aldor, use these quests to regain lost Aldor reputation.",
					["repeatable"] = true,
					["provider"] = { "n", 18597 },	-- Sha'nir
				}),
				q(10019, {	-- More Venom Sacs
					["sourceQuests"] = { 10017 },	-- Strained Supplies
					["description"] = "If you want to switch from Scryers to Aldor, use these quests to regain lost Aldor reputation.",
					["repeatable"] = true,
					["provider"] = { "n", 18597 },	-- Sha'nir
				}),
				q(11877, {	-- Sunfury Attack Plans
					["provider"] = { "n", 25140 },	-- Lord Torvos
					["repeatable"] = true,
				}),
				q(11880, {	-- The Multiphase Survey
					["provider"] = { "n", 19475 },	-- Harbinger Haronem
					["repeatable"] = true,
				}),
				q(11875, {	-- Gaining the Advantage
					["provider"] = { "n", 19202 },	-- Emissary Mordin
					["repeatable"] = true,
					["description"] = "This daily quest is only available to characters with Herbalism, Mining, or Skinning.",
				}),
				applyclassicphase(TBC_PHASE_FIVE, q(11513, {	-- Intercepting the Mana Cells
					["sourceQuests"] = { 11534 },	-- Report to Nasuun
					["provider"] = { "n", 24932 },	-- Exarch Nasuun
					["isDaily"] = true,
					["coord"] = { 49.8, 42.6, SHATTRATH_CITY },
				})),
				applyclassicphase(TBC_PHASE_FIVE, q(11514, {	-- Maintaining the Sunwell Portal
					["provider"] = { "n", 24932 },	-- Exarch Nasuun
					["coord"] = { 49.8, 42.6, SHATTRATH_CITY },
					["repeatable"] = true,
				})),
				applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11096, {	-- Threat from Above
					["coord"] = { 64.0, 42.0, SHATTRATH_CITY },
					["provider"] = { "n", 23449 },	-- Yuula
				})),
				applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11098, {	-- To Skettis!
					["sourceQuest"] = 11096,	-- Threat From Above
					["coord"] = { 64.0, 42.0, SHATTRATH_CITY },
					["provider"] = { "n", 23449 },	-- Yuula
				})),
				q(10984, {	-- Speak with the Ogre
					["isBreadcrumb"] = true,
					["coord"] = { 56.4, 49.2, SHATTRATH_CITY },
					["provider"] = { "n", 22497 },	-- V'eru
				}),
				q(10917, {  -- The Outcast's Plight
					["provider"] = { "n", 22429 },	-- Vekax
					["coord"] = { 47.7, 18.8, SHATTRATH_CITY },
					["g"] = {
						i(31800, {  -- Outcasts Cache
							i(28495),	-- Windwalker's Sash
							i(28496),	-- Talonite's Belt
							i(28497),	-- Dreadhawk's Girdle
							i(28498),	-- Ravenguard's Baldric
							i(28491),	-- Windwalker's Footwraps
							i(28493),	-- Dreadhawk's Schynbald
							i(28492),	-- Talonite's Boots
							i(28494),	-- Ravenguard's Greaves
						}),
					},
				}),
				q(10918, {  -- More Feathers
					["maxReputation"] = { 1011, HONORED },
					["sourceQuests"] = { 10917 },	-- The Outcast's Plight
					["repeatable"] = true,
					["provider"] = { "n", 22429 },	-- Vekax
					["coord"] = { 47.7, 18.8, SHATTRATH_CITY },
					["cost"] = { { "i", 25719, 30 } },	-- 30x Arakkoa Feather
					["g"] = {
						i(31800, {  -- Outcasts Cache
							i(28495),	-- Windwalker's Sash
							i(28496),	-- Talonite's Belt
							i(28497),	-- Dreadhawk's Girdle
							i(28498),	-- Ravenguard's Baldric
							i(28491),	-- Windwalker's Footwraps
							i(28493),	-- Dreadhawk's Schynbald
							i(28492),	-- Talonite's Boots
							i(28494),	-- Ravenguard's Greaves
						}),
					},
				}),
				q(57581, {	-- Plucking Plumes
					["minReputation"] = { 1011, HONORED },
					["repeatable"] = true,
					["provider"] = { "n", 22429 },	-- Vekax
					["coord"] = { 47.7, 18.8, SHATTRATH_CITY },
					["cost"] = { { "i", 25719, 30 } },	-- 30x Arakkoa Feather
					["timeline"] = { "added 8.2.5.31960" },
					["g"] = {
						i(31800, {  -- Outcasts Cache
							i(28495),	-- Windwalker's Sash
							i(28496),	-- Talonite's Belt
							i(28497),	-- Dreadhawk's Girdle
							i(28498),	-- Ravenguard's Baldric
							i(28491),	-- Windwalker's Footwraps
							i(28493),	-- Dreadhawk's Schynbald
							i(28492),	-- Talonite's Boots
							i(28494),	-- Ravenguard's Greaves
						}),
					},
				}),
				applyclassicphase(TBC_PHASE_THREE_NETHERWING, q(11109, {	-- Jorus the Cobalt Netherwing Drake
					-- ["provider"] = { "n",  },	-- 
					["sourceQuests"] = { 11107 },	-- Bow to the Highlord
					-- ["coord"] = { , SHATTRATH_CITY },
					["g"] = {
						i(32859),	-- Reins of the Cobalt Netherwing Drake Mount
					},
				})),
				applyclassicphase(TBC_PHASE_THREE_NETHERWING, q(11110, {	-- Malfas the Purple Netherwing Drake
					-- ["provider"] = { "n",  },	-- 
					["sourceQuests"] = { 11107 },	-- Bow to the Highlord
					-- ["coord"] = { , SHATTRATH_CITY },
					["g"] = {
						i(32860),	-- Reins of the Purple Netherwing Drake Mount
					},
				})),
				applyclassicphase(TBC_PHASE_THREE_NETHERWING, q(11111, {	-- Onyxien the Onyx Netherwing Drake
					-- ["provider"] = { "n",  },	-- 
					["sourceQuests"] = { 11107 },	-- Bow to the Highlord
					-- ["coord"] = { , SHATTRATH_CITY },
					["g"] = {
						i(32857),	-- Reins of the Onyx Netherwing Drake Mount
					},
				})),
				applyclassicphase(TBC_PHASE_THREE_NETHERWING, q(11112, {	-- Suraku the Azure Netherwing Drake
					-- ["provider"] = { "n",  },	-- 
					["sourceQuests"] = { 11107 },	-- Bow to the Highlord
					-- ["coord"] = { , SHATTRATH_CITY },
					["g"] = {
						i(32858),	-- Reins of the Azure Netherwing Drake Mount
					},
				})),
				applyclassicphase(TBC_PHASE_THREE_NETHERWING, q(11113, {	-- Voranaku the Violet Netherwing Drake
					-- ["provider"] = { "n",  },	-- 
					["sourceQuests"] = { 11107 },	-- Bow to the Highlord
					-- ["coord"] = { , SHATTRATH_CITY },
					["g"] = {
						i(32862),	-- Reins of the Violet Netherwing Drake Mount
					},
				})),
				applyclassicphase(TBC_PHASE_THREE_NETHERWING, q(11114, {	-- Zoya the Veridian Netherwing Drake
					-- ["provider"] = { "n",  },	-- 
					["sourceQuests"] = { 11107 },	-- Bow to the Highlord
					-- ["coord"] = { , SHATTRATH_CITY },
					["g"] = {
						i(32861),	-- Reins of the Veridian Netherwing Drake Mount
					},
				})),
				q(10210, {	-- A'dal
					["provider"] = { "n", 19684 },	-- Haggard War Veteran
					["coord"] = { 59.6, 41.4, SHATTRATH_CITY },
				}),
				q(10211, {	-- City of Light
					["provider"] = { "n", 18166 },	-- Archmage Khadgar
					["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
					["sourceQuests"] = { 10210 },	-- A'dal
				}),
				q(11046, {	-- Chief Apothecary Hildagard
					["provider"] = { "n", 19678 },	-- Fantei
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,	-- for "A Haunted History" in Shadowmoon Valley
				}),
				q(44863, {	-- Clearing the Air
					["qg"] = 115546,	-- Lunelli
					["requireSkill"] = BLACKSMITHING,
					["coord"] = { 64.1, 71.5, SHATTRATH_CITY },
					["timeline"] = { "added 7.0.3.21655" },
					["groups"] = {
						i(142279),	-- Plans: Windforged Rapier
						i(142283),	-- Plans: Skyforged Great Axe
						i(142282),	-- Plans: Stormforged Axe
					},
				}),
				q(10009, {	-- Crackin' Some Skulls
					["provider"] = { "n", 18584 },	-- Sal'salabim
					["sourceQuests"] = { 10004 },	-- Patience and Understanding *UNTESTED*
				}),
				q(47523, {	-- Disturbance Detected: Black Temple (EVENT: TIMEWALKING)
					["provider"] = { "n", 123252 },	-- Vormu
					["isWeekly"] = true,
					["description"] = "This quest is only available during BC Timewalking.",
					["timeline"] = { "added 7.2.5.23910" },
				}),
				q(41160, {	-- Earth to Earth
					["requireSkill"] = BLACKSMITHING,
					["coord"] = { 64.1, 71.5, SHATTRATH_CITY },
					["provider"] = { "n", 115546 },	-- Lunelli
					["timeline"] = { "added 7.0.3.21655" },
					["g"] = {
						i(142284),	-- Plans: Stoneforged Claymore
						i(142287),	-- Plans: Great Earthforged Hammer
						i(142286),	-- Plans: Lavaforged Warhammer
					},
				}),
				q(10010, {	-- It's Just That Easy?
					["provider"] = { "n", 18584 },	-- Sal'salabim
					["sourceQuests"] = { 10009 },	-- Crackin' Some Skulls *UNTESTED*
				}),
				q(10037, {	-- Rather Be Fishin'
					["provider"] = { "n", 18653 },	-- Seth
					["g"] = {
						i(25978)	-- Seth's Graphite Fishing Pole
					},
				}),
				applyclassicphase(WRATH_PHASE_ONE, q(13082, {	-- The Boon of A'dal
					["provider"] = { "n", 18481 },	-- A'dal
					["sourceQuests"] = { 13081 },	-- The Will of the Naaru *UNTESTED*
					["timeline"] = { "added 3.0.3" },
				})),
				q(10550, {	-- The Bundle of Bloodthistle
					["provider"] = { "n", 21411 },	-- Tobias the Filth Gorger
					["sourceQuests"] = { 10547 },	-- Of Thistleheads and Eggs...
					["coord"] = { 63.8, 69.7, SHATTRATH_CITY },
				}),
				q(10251, {	-- The Master's Grand Design?
					["coord"] = { 43.6, 29.6, SHATTRATH_CITY },
					["provider"] = { "n", 19720 },	-- "Dirty" Larry <Ruffian>
					["sourceQuest"] = 10231,	-- What Book? I Don't See Any Book.
				}),
				q(10883, {	-- The Tempest Key
					["provider"] = { "n", 18166 },	-- Archmage Khadgar
					["sourceQuests"] = { 10588 },	-- The Cipher of Damnation
				}),
				-- TODO: https://wowwiki-archive.fandom.com/wiki/Wind_Trader_Zhareem
				q(11369, {	-- WANTED: A Black Stalker Egg
					["qg"] = 24369,	-- Wind Trader Zhareem
					["coord"] = { 75, 37, SHATTRATH_CITY },
					["maps"] = { COILFANG_RESERVOIR_UNDERBOG },
					["isDaily"] = true,
					["lvl"] = 70,
					["cost"] = {
						{ "i", 33826, 1 },	-- Black Stalker Egg
					},
				}),
				q(11389, {	-- Wanted: Arcatraz Sentinels
					["provider"] = { "n", 24370 },	-- Nether-Stalker Mah'duun
					["isDaily"] = true,
					["g"] = {
						i(29460),	-- Ethereum Prison Key
					},
				}),
				q(11371, {	-- Wanted: Coilfang Myrmidons
					["provider"] = { "n", 24370 },	-- Nether-Stalker Mah'duun
					["isDaily"] = true,
					["g"] = {
						i(29460),	-- Ethereum Prison Key
					},
				}),
				q(11376, {	-- Wanted: Malicious Instructors
					["provider"] = { "n", 24370 },	-- Nether-Stalker Mah'duun
					["isDaily"] = true,
					["g"] = {
						i(29460),	-- Ethereum Prison Key
					},
				}),
				q(11354, {	-- WANTED: Nazan's Riding Crop
					["provider"] = { "n", 24369 },	-- Wind Trader Zhareem
					["coord"] = { 75, 37, SHATTRATH_CITY },
					["maps"] = { HELLFIRE_CITADEL_RAMPARTS },
					["isDaily"] = true,
					["cost"] = {
						{ "i", 33833, 1 },	-- Nazan's Riding Crop
					},
				}),
				q(11383, {	-- Wanted: Rift Lords
					["provider"] = { "n", 24370 },	-- Nether-Stalker Mah'duun
					["isDaily"] = true,
					["g"] = {
						i(29460),	-- Ethereum Prison Key
					},
				}),
				q(11364, {	-- Wanted: Shattered Hand Centurions
					["provider"] = { "n", 24370 },	-- Nether-Stalker Mah'duun
					["isDaily"] = true,
					["g"] = {
						i(29460),	-- Ethereum Prison Key
					},
				}),
				applyclassicphase(TBC_PHASE_FIVE, q(11500, {	-- Wanted: Sisters of Torment
					["provider"] = { "n", 24370 },	-- Nether-Stalker Mah'duun
					["maps"] = { MAGISTERS_TERRACE },
					["isDaily"] = true,
					["g"] = {
						i(29460),	-- Ethereum Prison Key
					},
				})),
				q(11385, {	-- Wanted: Sunseeker Channelers
					["provider"] = { "n", 24370 },	-- Nether-Stalker Mah'duun
					["isDaily"] = true,
					["g"] = {
						i(29460),	-- Ethereum Prison Key
					},
				}),
				q(11387, {	-- Wanted: Tempest-Forge Destroyers
					["provider"] = { "n", 24370 },	-- Nether-Stalker Mah'duun
					["isDaily"] = true,
					["g"] = {
						i(29460),	-- Ethereum Prison Key
					},
				}),
				q(10231, {	-- What Book? I Don't See Any Book.
					["coord"] = { 59.3, 35.6, SHATTRATH_CITY },
					["provider"] = { "n", 19715 },	-- Ezekiel
					["description"] = "Walks around the |cFFFFD700Terrace of Light|r.",
					["sourceQuest"] = 10228,	-- Ezekiel
				}),
				q(11045, {	-- Zorus the Judicator
					["provider"] = { "n", 19678 },	-- Fantei
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,	-- for "A Ghost in the Machine" in SMV, mutually exclusive w/other bcrumbs
				}),
				
				-- Scourge Invasion (Wrath Quests) -- TODO: Move these!
				applyclassicphase(WRATH_PHASE_ONE, q(12753, {	-- A Desperate Alliance
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { DWARF },
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12753, {	-- A Desperate Alliance
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { NIGHTELF },
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12775, {	-- A Desperate Alliance
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { HUMAN },
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12777, {	-- A Desperate Alliance
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { DRAENEI },
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12808, {	-- A Desperate Alliance
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { GNOME },
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12773, {	-- Darnassus
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { NIGHTELF },
					["provider"] = { "n", 29087 },	-- Bishop Lazaril
					["sourceQuest"] = 12753,	-- A Desperate Alliance
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12783, {	-- Desperate Research
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { TROLL },
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12752, {	-- Desperate Research
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { UNDEAD },
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12782, {	-- Desperate Research
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { BLOODELF },
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12784, {	-- Desperate Research
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { TAUREN },
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12811, {	-- Desperate Research
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { ORC },
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12771, {	-- Ironforge (Dwarf)
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { DWARF },
					["provider"] = { "n", 29087 },	-- Bishop Lazaril
					["sourceQuest"] = 12753,	-- A Desperate Alliance
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12809, {	-- Ironforge (Gnome)
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { GNOME },
					["provider"] = { "n", 29087 },	-- Bishop Lazaril
					["sourceQuest"] = 12808,	-- A Desperate Alliance
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12785, {	-- Orgrimmar (Troll)
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { TROLL },
					["provider"] = { "n", 28318 },	-- Grand Apothecary Putress
					["sourceQuest"] = 12783,	-- Desperate Research
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12812, {	-- Orgrimmar (Orc)
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { ORC },
					["provider"] = { "n", 28318 },	-- Grand Apothecary Putress
					["sourceQuest"] = 12811,	-- Desperate Research
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12788, {	-- Silvermoon
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { BLOODELF },
					["provider"] = { "n", 28318 },	-- Grand Apothecary Putress
					["sourceQuest"] = 12782,	-- Desperate Research
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12774, {	-- Stormwind
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { HUMAN },
					["provider"] = { "n", 29087 },	-- Bishop Lazaril
					["sourceQuest"] = 12775,	-- A Desperate Alliance
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12776, {	-- The Exodar
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { DRAENEI },
					["provider"] = { "n", 29087 },	-- Bishop Lazaril
					["sourceQuest"] = 12777,	-- A Desperate Alliance
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12787, {	-- The Undercity
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { UNDEAD },
					["provider"] = { "n", 28318 },	-- Grand Apothecary Putress
					["sourceQuest"] = 12752,	-- Desperate Research
				})),
				applyclassicphase(WRATH_PHASE_ONE, q(12786, {	-- Thunder Bluff
					["timeline"] = { "added 3.0.2", "removed 3.1.0" },
					["races"] = { TAUREN },
					["provider"] = { "n", 28318 },	-- Grand Apothecary Putress
					["sourceQuest"] = 12784,	-- Desperate Research
				})),
			}),
			n(REWARDS, {
				i(33844, {	-- Barrel of Fish
					i(33869),	-- Recipe: Broiled Bloodfin
					-- #if AFTER 3.2.0
					i(34834),	-- Recipe: Captain Rumsey's Lager
					-- #endif
					i(33925),	-- Recipe: Delicious Chocolate Cake
					i(33875),	-- Recipe: Kibler's Bits
					i(33870),	-- Recipe: Skullfish Soup
					i(33871),	-- Recipe: Stormchops
				}),
				i(33857, {	-- Crate of Meat
					-- #if AFTER 3.2.0
					i(34834),	-- Recipe: Captain Rumsey's Lager
					-- #endif
					i(33925),	-- Recipe: Delicious Chocolate Cake
					i(33875),	-- Recipe: Kibler's Bits
					i(33873),	-- Recipe: Spicy Hot Talbuk
					i(33871),	-- Recipe: Stormchops
				}),
			}),
		}),
	})),
};