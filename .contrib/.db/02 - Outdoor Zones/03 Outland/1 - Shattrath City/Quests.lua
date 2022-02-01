---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(SHATTRATH_CITY, {
			n(QUESTS, {
				q(10552, {	-- Allegiance to the Scryers
					["qg"] = 18166,	-- Archmage Khadgar
					["sourceQuest"] = 10211,	-- City of Light
					["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
				}),
				q(10553, {	-- Voren'thal the Seer
					["qg"] = 18166,	-- Archmage Khadgar
					["sourceQuest"] = 10552,	-- Allegiance to the Scryers
					["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
				}),
				q(10412, {	-- Firewing Signets
					["qg"] = 18531,	-- Magistrix Fyalenn
					["sourceQuest"] = 10552,	-- Allegiance to the Scryers
					["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
					["cost"] = { { "i", 29426, 10 } },	-- Firewing Signet
				}),
				q(10414, {	-- Single Firewing Signet
					["qg"] = 18531,	-- Magistrix Fyalenn
					["sourceQuest"] = 10412,	-- Firewing Signets
					["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
					["maxReputation"] = { 934, HONORED },	-- The Scryers, Honored.
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
					["cost"] = { { "i", 29426, 1 } },	-- Firewing Signet
					["repeatable"] = true,
				}),
				q(10415, {	-- More Firewing Signets
					["qg"] = 18531,	-- Magistrix Fyalenn
					["sourceQuest"] = 10412,	-- Firewing Signets
					["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
					["maxReputation"] = { 934, HONORED },	-- The Scryers, Honored.
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
					["cost"] = { { "i", 29426, 10 } },	-- Firewing Signet
					["repeatable"] = true,
				}),
				q(10656, {	-- Sunfury Signets
					["qg"] = 18531,	-- Magistrix Fyalenn
					["sourceQuest"] = 10552,	-- Allegiance to the Scryers
					["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
					["cost"] = { { "i", 30810, 10 } },	-- Sunfury Signet
				}),
				q(10659, {	-- Single Sunfury Signet
					["qg"] = 18531,	-- Magistrix Fyalenn
					["sourceQuests"] = { 10824, 10656 },	-- Sunfury Signets (SMV or Shattrath)
					["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
					["maxReputation"] = { 934, EXALTED },	-- The Scryers, Exalted.
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
					["cost"] = { { "i", 30810, 1 } },	-- Sunfury Signet
					["repeatable"] = true,
				}),
				q(10658, {	-- More Sunfury Signets
					["qg"] = 18531,	-- Magistrix Fyalenn
					["sourceQuests"] = { 10824, 10656 },	-- Sunfury Signets (SMV or Shattrath)
					["coord"] = { 45.1, 81.4, SHATTRATH_CITY },
					["maxReputation"] = { 934, EXALTED },	-- The Scryers, Exalted.
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
					["cost"] = { { "i", 30810, 10 } },	-- Sunfury Signet
					["repeatable"] = true,
				}),
				q(10416, {	-- Synthesis of Power
					["qg"] = 18530,	-- Voren'thal the Seer
					["sourceQuest"] = 10552,	-- Allegiance to the Scryers
					["coord"] = { 42.6, 91.4, SHATTRATH_CITY },
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
					["cost"] = { { "i", 29739, 1 } },	-- Arcane Tome
				}),
				q(10419, {	-- Arcane Tomes
					["qg"] = 18530,	-- Voren'thal the Seer
					["sourceQuest"] = 10416,	-- Synthesis of Power
					["coord"] = { 42.6, 91.4, SHATTRATH_CITY },
					["maxReputation"] = { 934, EXALTED },	-- The Scryers, Exalted.
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
					["cost"] = { { "i", 29739, 1 } },	-- Arcane Tome
					["repeatable"] = true,
				}),
				q(11039, {	-- Report to Spymaster Thalodien
					["providers"] = {
						{ "n", 23273 },	-- Arcanist Raestan
						{ "n", 23272 },	-- Arcanist Savan
					},
					["sourceQuest"] = 10552,	-- Allegiance to the Scryers
					["coords"] = {
						{ 44.6, 76.2, SHATTRATH_CITY },
						{ 60.6, 63.2, SHATTRATH_CITY },
					},
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
					["isBreadcrumb"] = true,	-- for Manaforge B'naar
				}),
				q(10024, {	-- Voren'thal's Visions
					["qg"] = 18596,	-- Arcanist Adyria
					["description"] = "If you want to switch from Aldor to Scryers, use this quest to regain lost Scryers reputation.",
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
					["cost"] = { { "i", 25744, 8 } },	-- Dampscale Basilisk Eye
				}),
				q(10025, {	-- More Basilisk Eyes
					["qg"] = 18596,	-- Arcanist Adyria
					["sourceQuest"] = 10024,	-- Voren'thal's Visions
					["description"] = "If you want to switch from Aldor to Scryers, use this quest to regain lost Scryers reputation.",
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
					["cost"] = { { "i", 25744, 8 } },	-- Dampscale Basilisk Eye
					["repeatable"] = true,
				}),
				q(11482, {	-- Duty Calls
					["qg"] = 18594,	-- Dathris Sunstriker
					["coord"] = { 54.6, 80.8, SHATTRATH_CITY },
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
					["isBreadcrumb"] = true,
					["lvl"] = 70,
				}),
				q(10551, {	-- Allegiance to the Aldor
					["qg"] = 18166,	-- Archmage Khadgar
					["sourceQuest"] = 10211,	-- City of Light
					["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
				}),
				q(10554, {	-- Ishanah
					["qg"] = 18166,	-- Archmage Khadgar
					["sourceQuest"] = 10551,	-- Allegiance to the Aldor
					["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
				}),
				q(10021, {	-- Restoring the Light
					["qg"] = 18538,	-- Ishanah
					["sourceQuest"] = 10551,	-- Allegiance to the Aldor
					["coord"] = { 24.2, 29.8, SHATTRATH_CITY },
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
				}),
				q(10325, {	-- Marks of Kil'jaeden
					["qg"] = 18537,	-- Adyen the Lightwarden
					["sourceQuest"] = 10551,	-- Allegiance to the Aldor
					["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
					["cost"] = { { "i", 29425, 10 } },	-- Mark of Kil'jaeden
				}),
				q(10327, {	-- Single Mark of Kil'jaeden
					["qg"] = 18537,	-- Adyen the Lightwarden
					["sourceQuest"] = 10325,	-- Marks of Kil'jaeden
					["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
					["maxReputation"] = { 932, HONORED },	-- The Aldor, Honored.
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
					["cost"] = { { "i", 29425, 1 } },	-- Mark of Kil'jaeden
					["repeatable"] = true,
				}),
				q(10326, {	-- More Marks of Kil'jaeden
					["qg"] = 18537,	-- Adyen the Lightwarden
					["sourceQuest"] = 10325,	-- Marks of Kil'jaeden
					["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
					["maxReputation"] = { 932, HONORED },	-- The Aldor, Honored.
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
					["cost"] = { { "i", 29425, 10 } },	-- Mark of Kil'jaeden
					["repeatable"] = true,
				}),
				q(10653, {	-- Marks of Sargeras
					["qg"] = 18537,	-- Adyen the Lightwarden
					["sourceQuest"] = 10551,	-- Allegiance to the Aldor
					["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
					["cost"] = { { "i", 30809, 10 } },	-- Mark of Sargeras
				}),
				q(10655, {	-- Single Mark of Sargeras
					["qg"] = 18537,	-- Adyen the Lightwarden
					["sourceQuests"] = { 10826, 10653 },	-- Marks of Sargeras (SMV or Shattrath)
					["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
					["maxReputation"] = { 932, EXALTED },	-- The Aldor, Exalted.
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
					["cost"] = { { "i", 30809, 1 } },	-- Mark of Sargeras
					["repeatable"] = true,
				}),
				q(10654, {	-- More Marks of Sargeras
					["qg"] = 18537,	-- Adyen the Lightwarden
					["sourceQuests"] = { 10826, 10653 },	-- Marks of Sargeras (SMV or Shattrath)
					["coord"] = { 30.7, 34.6, SHATTRATH_CITY },
					["maxReputation"] = { 932, EXALTED },	-- The Aldor, Exalted.
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
					["cost"] = { { "i", 30809, 10 } },	-- Mark of Sargeras
					["repeatable"] = true,
				}),
				q(10420, {	-- A Cleansing Light
					["qg"] = 18538,	-- Ishanah
					["sourceQuest"] = 10551,	-- Allegiance to the Aldor
					["coord"] = { 24.2, 29.8, SHATTRATH_CITY },
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
					["cost"] = { { "i", 29740, 1 } },	-- Fel Armament
				}),
				q(10421, {	-- Fel Armaments
					["qg"] = 18538,	-- Ishanah
					["sourceQuest"] = 10420,	-- A Cleansing Light
					["coord"] = { 24.2, 29.8, SHATTRATH_CITY },
					["maxReputation"] = { 932, EXALTED },	-- The Aldor, Exalted.
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
					["cost"] = { { "i", 29740, 1 } },	-- Fel Armament
					["repeatable"] = true,
				}),
				q(10020, {	-- A Cure for Zahlia
					["qg"] = 18597,	-- Sha'nir
					["sourceQuest"] = 10551,	-- Allegiance to the Aldor
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
				}),
				applyclassicphase(TBC_PHASE_FIVE, q(11481, {	-- Crisis at the Sunwell (may be able to be picked up in Netherstorm)
					["qg"] = 18537,	-- Adyen the Lightwarden
					["sourceQuest"] = 10551,	-- Allegiance to the Aldor
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
					["isBreadcrumb"] = true,
				})),
				q(11038, {	-- Assist Exarch Orelis
					["providers"] = {
						{ "n", 23271 },	-- Vindicator Kaan
						{ "n", 23270 },	-- Vindicator Aeus
					},
					["sourceQuest"] = 10551,	-- Allegiance to the Aldor
					["coords"] = {
						{ 35.0, 32.6, SHATTRATH_CITY },
						{ 47.4, 26.4, SHATTRATH_CITY },
					},
					["minReputation"] = { 932, NEUTRAL },	-- The Aldor, Neutral.
					["isBreadcrumb"] = true,	-- for "Distraction at Manaforge B'naar," unavailable if you did any Netherstorm breadcrumb quest
				}),
				q(10017, {	-- Strained Supplies
					["qg"] = 18597,	-- Sha'nir
					["description"] = "If you want to switch from Scryers to Aldor, use this quest to regain lost Aldor reputation.",
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
					["cost"] = { { "i", 25802, 8 } },	-- Dreadfang Venom Sac
				}),
				q(10019, {	-- More Venom Sacs
					["qg"] = 18597,	-- Sha'nir
					["sourceQuest"] = 10017,	-- Strained Supplies
					["description"] = "If you want to switch from Scryers to Aldor, use this quest to regain lost Aldor reputation.",
					["minReputation"] = { 934, NEUTRAL },	-- The Scryers, Neutral.
					["cost"] = { { "i", 25802, 8 } },	-- Dreadfang Venom Sac
					["repeatable"] = true,
				}),
				q(11877, {	-- Sunfury Attack Plans
					["qg"] = 25140,	-- Lord Torvos
					["repeatable"] = true,
				}),
				q(11880, {	-- The Multiphase Survey
					["qg"] = 19475,	-- Harbinger Haronem
					["repeatable"] = true,
				}),
				q(11875, {	-- Gaining the Advantage
					["qg"] = 19202,	-- Emissary Mordin
					["description"] = "This daily quest is only available to characters with Herbalism, Mining, or Skinning.",
					["repeatable"] = true,
				}),
				applyclassicphase(TBC_PHASE_FIVE, q(11513, {	-- Intercepting the Mana Cells
					["qg"] = 24932,	-- Exarch Nasuun
					["sourceQuest"] = 11534,	-- Report to Nasuun
					["coord"] = { 49.8, 42.6, SHATTRATH_CITY },
					["isDaily"] = true,
				})),
				applyclassicphase(TBC_PHASE_FIVE, q(11514, {	-- Maintaining the Sunwell Portal
					["qg"] = 24932,	-- Exarch Nasuun
					["coord"] = { 49.8, 42.6, SHATTRATH_CITY },
					["repeatable"] = true,
				})),
				applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11096, {	-- Threat from Above
					["qg"] = 23449,	-- Yuula
					["coord"] = { 64.0, 42.0, SHATTRATH_CITY },
				})),
				applyclassicphase(TBC_PHASE_TWO_SKYGUARD, q(11098, {	-- To Skettis!
					["qg"] = 23449,	-- Yuula
					["sourceQuest"] = 11096,	-- Threat From Above
					["coord"] = { 64.0, 42.0, SHATTRATH_CITY },
				})),
				q(10984, {	-- Speak with the Ogre
					["qg"] = 22497,	-- V'eru
					["coord"] = { 56.4, 49.2, SHATTRATH_CITY },
					["isBreadcrumb"] = true,
				}),
				q(10917, {  -- The Outcast's Plight
					["qg"] = 22429,	-- Vekax
					["coord"] = { 47.7, 18.8, SHATTRATH_CITY },
					["cost"] = { { "i", 25719, 30 } },	-- 30x Arakkoa Feather
					["groups"] = {
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
					["qg"] = 22429,	-- Vekax
					["sourceQuest"] = 10917,	-- The Outcast's Plight
					["coord"] = { 47.7, 18.8, SHATTRATH_CITY },
					["maxReputation"] = { 1011, HONORED },	-- Lower City, Honored.
					["cost"] = { { "i", 25719, 30 } },	-- 30x Arakkoa Feather
					["repeatable"] = true,
					["groups"] = {
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
					["qg"] = 22429,	-- Vekax
					["coord"] = { 47.7, 18.8, SHATTRATH_CITY },
					["timeline"] = { "added 8.2.5.31960" },
					["minReputation"] = { 1011, HONORED },	-- Lower City, Honored.
					["cost"] = { { "i", 25719, 30 } },	-- 30x Arakkoa Feather
					["repeatable"] = true,
					["groups"] = {
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
					["qg"] = 23462,	-- Jorus
					["sourceQuest"] = 11107,	-- Bow to the Highlord
					["coord"] = { 67.8, 17.2, SHATTRATH_CITY },
					["groups"] = {
						i(32859),	-- Reins of the Cobalt Netherwing Drake Mount
					},
				})),
				applyclassicphase(TBC_PHASE_THREE_NETHERWING, q(11110, {	-- Malfas the Purple Netherwing Drake
					["qg"] = 23464,	-- Malfas
					["sourceQuest"] = 11107,	-- Bow to the Highlord
					["coord"] = { 67.8, 18.0, SHATTRATH_CITY },
					["groups"] = {
						i(32860),	-- Reins of the Purple Netherwing Drake Mount
					},
				})),
				applyclassicphase(TBC_PHASE_THREE_NETHERWING, q(11111, {	-- Onyxien the Onyx Netherwing Drake
					["qg"] = 23463,	-- Onyxien
					["sourceQuest"] = 11107,	-- Bow to the Highlord
					["coord"] = { 67.6, 18.4, SHATTRATH_CITY },
					["groups"] = {
						i(32857),	-- Reins of the Onyx Netherwing Drake Mount
					},
				})),
				applyclassicphase(TBC_PHASE_THREE_NETHERWING, q(11112, {	-- Suraku the Azure Netherwing Drake
					["qg"] = 23461,	-- Suraku
					["sourceQuest"] = 11107,	-- Bow to the Highlord
					["coord"] = { 66.8, 18.4, SHATTRATH_CITY },
					["groups"] = {
						i(32858),	-- Reins of the Azure Netherwing Drake Mount
					},
				})),
				applyclassicphase(TBC_PHASE_THREE_NETHERWING, q(11113, {	-- Voranaku the Violet Netherwing Drake
					["qg"] = 23466,	-- Voranaku
					["sourceQuest"] = 11107,	-- Bow to the Highlord
					["coord"] = { 66.6, 17.8, SHATTRATH_CITY },
					["groups"] = {
						i(32862),	-- Reins of the Violet Netherwing Drake Mount
					},
				})),
				applyclassicphase(TBC_PHASE_THREE_NETHERWING, q(11114, {	-- Zoya the Veridian Netherwing Drake
					["qg"] = 23465,	-- Zoya
					["sourceQuest"] = 11107,	-- Bow to the Highlord
					["coord"] = { 66.6, 18.6, SHATTRATH_CITY },
					["groups"] = {
						i(32861),	-- Reins of the Veridian Netherwing Drake Mount
					},
				})),
				q(10210, {	-- A'dal
					["qg"] = 19684,	-- Haggard War Veteran
					["coord"] = { 59.6, 41.4, SHATTRATH_CITY },
				}),
				q(10211, {	-- City of Light
					["qg"] = 18166,	-- Archmage Khadgar
					["sourceQuest"] = 10210,	-- A'dal
					["coord"] = { 54.7, 44.3, SHATTRATH_CITY },
				}),
				q(11046, {	-- Chief Apothecary Hildagard
					["qg"] = 19678,	-- Fantei
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,	-- for "A Haunted History" in Shadowmoon Valley
				}),
				q(44863, {	-- Clearing the Air
					["qg"] = 115546,	-- Lunelli
					["coord"] = { 64.1, 71.5, SHATTRATH_CITY },
					["timeline"] = { "added 7.0.3.21655" },
					["requireSkill"] = BLACKSMITHING,
					["groups"] = {
						i(142279),	-- Plans: Windforged Rapier
						i(142283),	-- Plans: Skyforged Great Axe
						i(142282),	-- Plans: Stormforged Axe
					},
				}),
				q(10009, {	-- Crackin' Some Skulls
					["qg"] = 18584,	-- Sal'salabim
					["sourceQuest"] = 10004,	-- Patience and Understanding *UNTESTED*
				}),
				q(47523, {	-- Disturbance Detected: Black Temple (EVENT: TIMEWALKING)
					["qg"] = 123252,	-- Vormu
					["description"] = "This quest is only available during BC Timewalking.",
					["timeline"] = { "added 7.2.5.23910" },
					["isWeekly"] = true,
				}),
				q(41160, {	-- Earth to Earth
					["qg"] = 115546,	-- Lunelli
					["coord"] = { 64.1, 71.5, SHATTRATH_CITY },
					["timeline"] = { "added 7.0.3.21655" },
					["requireSkill"] = BLACKSMITHING,
					["groups"] = {
						i(142284),	-- Plans: Stoneforged Claymore
						i(142287),	-- Plans: Great Earthforged Hammer
						i(142286),	-- Plans: Lavaforged Warhammer
					},
				}),
				q(10010, {	-- It's Just That Easy?
					["qg"] = 18584,	-- Sal'salabim
					["sourceQuest"] = 10009,	-- Crackin' Some Skulls
				}),
				q(10037, {	-- Rather Be Fishin'
					["qg"] = 18653,	-- Seth
					["groups"] = {
						i(25978)	-- Seth's Graphite Fishing Pole
					},
				}),
				applyclassicphase(WRATH_PHASE_ONE, q(13082, {	-- The Boon of A'dal
					["qg"] = 18481,	-- A'dal
					["sourceQuest"] = 13081,	-- The Will of the Naaru *UNTESTED*
					["timeline"] = { "added 3.0.3" },
				})),
				q(10550, {	-- The Bundle of Bloodthistle
					["qg"] = 21411,	-- Tobias the Filth Gorger
					["sourceQuest"] = 10547,	-- Of Thistleheads and Eggs...
					["coord"] = { 63.8, 69.7, SHATTRATH_CITY },
				}),
				q(10251, {	-- The Master's Grand Design?
					["qg"] = 19720,	-- "Dirty" Larry <Ruffian>
					["coord"] = { 43.6, 29.6, SHATTRATH_CITY },
					["sourceQuest"] = 10231,	-- What Book? I Don't See Any Book.
				}),
				q(10883, {	-- The Tempest Key
					["qg"] = 18166,	-- Archmage Khadgar
					["sourceQuest"] = 10588,	-- The Cipher of Damnation
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
					["qg"] = 24370,	-- Nether-Stalker Mah'duun
					["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
					["isDaily"] = true,
					["groups"] = {
						i(29460),	-- Ethereum Prison Key
					},
				}),
				q(11371, {	-- Wanted: Coilfang Myrmidons
					["qg"] = 24370,	-- Nether-Stalker Mah'duun
					["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
					["isDaily"] = true,
					["groups"] = {
						i(29460),	-- Ethereum Prison Key
					},
				}),
				q(11376, {	-- Wanted: Malicious Instructors
					["qg"] = 24370,	-- Nether-Stalker Mah'duun
					["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
					["isDaily"] = true,
					["groups"] = {
						i(29460),	-- Ethereum Prison Key
					},
				}),
				q(11354, {	-- WANTED: Nazan's Riding Crop
					["qg"] = 24369,	-- Wind Trader Zhareem
					["coord"] = { 75, 37, SHATTRATH_CITY },
					["maps"] = { HELLFIRE_CITADEL_RAMPARTS },
					["isDaily"] = true,
					["cost"] = {
						{ "i", 33833, 1 },	-- Nazan's Riding Crop
					},
				}),
				q(11383, {	-- Wanted: Rift Lords
					["qg"] = 24370,	-- Nether-Stalker Mah'duun
					["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
					["isDaily"] = true,
					["groups"] = {
						i(29460),	-- Ethereum Prison Key
					},
				}),
				q(11364, {	-- Wanted: Shattered Hand Centurions
					["qg"] = 24370,	-- Nether-Stalker Mah'duun
					["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
					["isDaily"] = true,
					["groups"] = {
						i(29460),	-- Ethereum Prison Key
					},
				}),
				applyclassicphase(TBC_PHASE_FIVE, q(11500, {	-- Wanted: Sisters of Torment
					["qg"] = 24370,	-- Nether-Stalker Mah'duun
					["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
					["maps"] = { MAGISTERS_TERRACE },
					["isDaily"] = true,
					["groups"] = {
						i(29460),	-- Ethereum Prison Key
					},
				})),
				q(11385, {	-- Wanted: Sunseeker Channelers
					["qg"] = 24370,	-- Nether-Stalker Mah'duun
					["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
					["isDaily"] = true,
					["groups"] = {
						i(29460),	-- Ethereum Prison Key
					},
				}),
				q(11387, {	-- Wanted: Tempest-Forge Destroyers
					["qg"] = 24370,	-- Nether-Stalker Mah'duun
					["coord"] = { 75.4, 37.6, SHATTRATH_CITY },
					["isDaily"] = true,
					["groups"] = {
						i(29460),	-- Ethereum Prison Key
					},
				}),
				q(10231, {	-- What Book? I Don't See Any Book.
					["qg"] = 19715,	-- Ezekiel
					["sourceQuest"] = 10228,	-- Ezekiel
					["coord"] = { 59.3, 35.6, SHATTRATH_CITY },
					["description"] = "Walks around the |cFFFFD700Terrace of Light|r.",
				}),
				q(11045, {	-- Zorus the Judicator
					["qg"] = 19678,	-- Fantei
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