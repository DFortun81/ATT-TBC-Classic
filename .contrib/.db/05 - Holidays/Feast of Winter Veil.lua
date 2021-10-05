--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
local HUGE_SNOWBALL = i(35557);	-- Huge Snowball
_.Holidays = { applyholiday(FEAST_OF_WINTER_VEIL, {
	-- #if ANYCLASSIC
	["npcID"] = -61,
	-- #else
	["holidayID"] = 235485,
	-- #endif
	["groups"] = {
		-- #if AFTER 7.3.0.24727
		filter(BATTLE_PETS, {
			n(128156, {	-- Globe Yeti
				["description"] = "This pet spawns inside the globe located in Orgrimmar or Ironforge, and since 2019 its spawn rate has been greatly increased. Only one yeti is up at a time. When it spawns it will be a Level 1-3 Yeti by itself so be prepared. If you have a hard time competing with others for the pet you can make a macro that does the following:\n\n|cFFFFFFFF/tar globe yeti|r\n\n Spam this macro along with an |cFFFFFFFFInteract With Target|r key bind.\n\nYou can also try doing it while in War Mode since there are usually less people.",
				["timeline"] = { "added 7.3.0.24727" },
				["maps"] = {
					ORGRIMMAR,
					IRONFORGE,
				},
				["groups"] = {
					p(2114),	-- Globe Yeti
				},
			}),
		}),
		-- #endif
		n(COMMON_BOSS_DROPS, {
			-- #if AFTER LEGION
			i(139300, {	-- Finely-Tailored Green Holiday Hat
				["description"] = "In order to mark this item as collected you will need to do a Shift+Click on the header.",
				["maps"] = {
					909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920,	-- Antorus
					751, 752, 753, 754, 755, 756,	-- Black Rook Hold
					713,	-- Eye of Azshara
					-- #if AFTER BFA
					1038,	-- Temple of Sethraliss
					1043,	-- Atrium of Sethraliss
					-- Waycrest Manor
					1015,	-- The Grand Foyer
					1016,	-- The Cellar
					1017,	-- Catacombs
					1018,	-- The Rupture
					1029,	-- Waycrest Dimension
					1512, 1513, 1514, 1515, 1516, 1517, 1518, 1519, 1520,	-- The Eternal Palace
					-- #endif
				},
				["crs"] = {
					125075,	-- Varimathras
					98696,	-- Illysanna Ravencrest
					91797,	-- King Deepbeard
					-- #if AFTER BFA
					133944,	-- Aspix
					131863,	-- Raal the Gluttonous
					150653,	-- Blackwater Behemoth
					-- #endif
				},
			}),
			i(139299, {	-- Finely-Tailored Red Holiday Hat
				["description"] = "In order to mark this item as collected you will need to do a Shift+Click on the header.",
				["maps"] = {
					764, 765, 766, 767, 768, 769, 770, 771, 772,	-- Nighthold
					761, 763,	-- Court of Stars
					903,	-- The Seat of the Triumvirate
					-- #if AFTER BFA
					1148,	-- Ruin's Descent
					1149,	-- Hall of Sanitation
					1150,	-- Ring of Containment
					1151,	-- Archives of Eternity
					1152,	-- Plague Vault
					1153,	-- Gallery of Failures
					1154,	-- The Oblivion Door
					1155,	-- The Festering Core
					934,	-- Atal'Dazar
					935,	-- Sacrificial Pits
					936,	-- Freehold
					-- #endif
				},
				["crs"] = {
					101002,	-- Krosus
					104217,	-- Talixae Flamewreath
					122316,	-- Saprish
					-- #if AFTER BFA
					133298,	-- Fetid Devourer
					122965,	-- Vol'kaal
					126832,	-- Skycap'n Kragg
					-- #endif
				},
			}),
			-- #endif
			i(21525, {	-- Green Winter Hat
				["maps"] = {
					-- #if AFTER SHADOWLANDS
					-- Castle Nathria
					1735,	-- The Grand Walk
					1744,	-- The Purloined Stores
					1745,	-- Halls of the Faithful
					1746,	-- Pride's Prison
					1747,	-- Nightcloak Sanctum
					1748,	-- The Observatorium
					1750,	-- Feast of Arrogance
					-- #endif
					-- #if AFTER WOD
					593,	-- Auchindoun
					595,	-- Iron Docks
					610, 611, 612, 613, 614, 615,	-- Highmaul
					596, 597, 598, 599, 600,	-- Blackrock Foundry
					661, 662, 663, 664, 665, 666, 667, 668, 669, 670,	-- Hellfire Citadel
					-- #endif
					-- #if AFTER MOP
					556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570,	-- Siege of Orgrimmar
					-- #endif
					-- #if AFTER CATA
					293,	-- Grim Batol
					SHADOWFANG_KEEP,
					SHADOWFANG_KEEP_LEVEL2,
					SHADOWFANG_KEEP_LEVEL3,
					SHADOWFANG_KEEP_LEVEL4,
					SHADOWFANG_KEEP_LEVEL5,
					SHADOWFANG_KEEP_LEVEL6,
					SHADOWFANG_KEEP_LEVEL7,
					-- #endif
					-- #if AFTER WRATH
					142, 143, 144, 145, 146,	-- The Oculus
					-- #else
					BLACKROCK_SPIRE,
					DIRE_MAUL,
					SCHOLOMANCE,
					-- #if AFTER TBC
					AUCHINDOUN_AUCHENAI_CRYPTS,
					HELLFIRE_CITADEL_SHATTERED_HALLS,
					AUCHINDOUN_SHADOW_LABYRINTH,
					-- #endif
					-- #endif
				},
				["crs"] = {
					-- #if AFTER SHADOWLANDS
					166969,	-- Baroness Frieda
					-- #endif
					-- #if AFTER WOD
					76177,	-- Soulbinder Nyami
					79852,	-- Oshir
					77404,	-- The Butcher
					76865,	-- Beastlord Darmac
					93439,	-- Tyrant Velhari
					-- #endif
					-- #if AFTER MOP
					72249,	-- Galakras <The Last Brood of Galakrond>
					-- #endif
					-- #if AFTER CATA
					40319,	-- Drahga Shadowburner
					46964,	-- Lord Godfrey
					-- #endif
					-- #if AFTER WRATH
					27655,	-- Mage-Lord Urom
					-- #else
					1853,	-- Darkmaster Gandling
					10899,	-- Goraluk Anvilcrack <Blackhand Legion Armorsmith>
					11486,	-- Prince Tortheldrin
					-- #if AFTER TBC
					10429,	-- Warchief Rend Blackhand (TBC only)
					18373,	-- Exarch Maladaar
					16807,	-- Grand Warlock Nethekurse
					18732,	-- Grandmaster Vorpil
					-- #endif
					-- #endif
				},
			}),
			i(21524, {	-- Red Winter Hat
				["maps"] = {
					-- #if AFTER SHADOWLANDS
					-- Castle Nathria
					1735,	-- The Grand Walk
					1744,	-- The Purloined Stores
					1745,	-- Halls of the Faithful
					1746,	-- Pride's Prison
					1747,	-- Nightcloak Sanctum
					1748,	-- The Observatorium
					1750,	-- Feast of Arrogance
					1674,	-- Plaguefall
					1697,	-- Plaguefall
					1692,	-- Honor's Ascent
					1693,	-- Gardens of Repose
					1694,	-- Font of Fealty
					1695,	-- Seat of the Archon
					-- #endif
					-- #if AFTER WOD
					573,	-- Bloodmaul Slag Mines
					BLACKROCK_SPIRE, 617, 618,	-- Upper Blackrock Spire
					596, 597, 598, 599, 600,	-- Blackrock Foundry
					661, 662, 663, 664, 665, 666, 667, 668, 669, 670,	-- Hellfire Citadel
					-- #endif
					-- #if AFTER MOP
					556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570,	-- Siege of Orgrimmar
					-- #endif
					-- #if AFTER CATA
					291, 292,	-- Deadmines
					283, 284,	-- Blackrock Caverns
					324,	-- The Stonecore
					-- #endif
					-- #if AFTER WRATH
					129,	-- The Nexus
					132,	-- Ahn'kahet: The Old Kingdom
					-- #else
					BLACKROCK_DEPTHS,
					BLACKROCK_SPIRE,
					STRATHOLME,
					-- #if AFTER TBC
					CAVERNS_OF_TIME_OLD_HILLSBRAD_FOOTHILLS,
					TEMPEST_KEEP_BOTANICA,
					TEMPEST_KEEP_MECHANAR,
					-- #endif
					-- #endif
				},
				["crs"] = {
					-- #if AFTER SHADOWLANDS
					166969,	-- Baroness Frieda
					167406,	-- Sire Denathrius
					164255,	-- Globgrog
					162061,	-- Devos <Paragon of Doubt>
					-- #endif
					-- #if AFTER WOD
					74790,	-- Gug'rokk
					79912,	-- Commander Tharbek
					76814,	-- Flamebender Ka'graz
					90284,	-- Iron Reaver
					-- #endif
					-- #if AFTER MOP
					71515,	-- General Nazgrim
					-- #endif
					-- #if AFTER CATA
					47626,	-- Admiral Ripsnarl
					39679,	-- Corla, Herald of Twilight
					42333,	-- High Priestess Azil
					-- #endif
					-- #if AFTER WRATH
					26731,	-- Grand Magus Telestra
					29310,	-- Jedoga Shadowseeker
					-- #else
					10997,	-- Cannon Master Willey
					9019,	-- Emperor Dagran Thaurissan
					9237,	-- War Master Voone
					-- #if AFTER TBC
					17862,	-- Captain Skarloc
					17975,	-- High Botanist Freywinn
					19221,	-- Nethermancer Sepethrea
					-- #endif
					-- #endif
				},
			}),
		}),
		n(MAILBOX, {
			i(17724),	-- Pattern: Green Holiday Shirt
			i(17712, {	-- Winter Veil Disguise Kit
				["description"] = "Greatfather Winter will mail this toy to you 24 hours after you complete the 'A Smokywood Pastures Thank You!' quest.",
			}),
		}),
		n(QUESTS, {
			q(8744, { 	-- A Carefully Wrapped Present
				["isYearly"] = true,
				["groups"] = {
					i(21191, {  -- Carefully Wrapped Present
						i(21254),  -- Winter Veil Cookie
					}),
				},
			}),
			q(8803, { 	-- A Festive Gift
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(21363, {  -- Festive Gift
						i(21328),  -- Wand of Holiday Cheer
					}),
				},
			}),
			q(8768, { 	-- A Gaily Wrapped Present
				["isYearly"] = true,
				["lvl"] = 20,
				["groups"] = {
					i(21310, {  -- Gaily Wrapped Present
						i(21301),  -- Green Helper Box
						i(21309),  -- Snowman Kit
					}),
				},
			}),
			q(8767, { 	-- A Gently Shaken Gift
				["isYearly"] = true,
				["altQuests"] = {
					8788, 	-- A Gently Shaken Gift
				},
				["groups"] = {
					i(21270, {  -- Gently Shaken Gift
						i(21235),  -- Winter Veil Roast
					}),
				},
			}),
			q(8788, { 	-- A Gently Shaken Gift
				["isYearly"] = true,
				["altQuests"] = {
					8767, 	-- A Gently Shaken Gift
				},
				["groups"] = {
					i(21270, {  -- Gently Shaken Gift
						i(21235),  -- Winter Veil Roast
					}),
				},
			}),
			q(8769, { 	-- A Ticking Present
				["isYearly"] = true,
				["lvl"] = 40,
				["groups"] = {
					i(21327, {  -- Ticking Present
						i(17720),  -- Schematic: Snowmaster 9000
						i(21213),  -- Preserved Holly
						i(21325),  -- Mechanical Greench
					}),
				},
			}),
			q(6984, {	-- A Smokywood Pastures' Thank You! (Horde)
				["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					i(17726),	-- Smokywood Pastures Special Gift
				},
			}),
			q(7045, {	-- A Smokywood Pastures' Thank You! (Alliance)
				["isYearly"] = true,
				["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					i(17726, {	-- Smokywood Pastures Special Gift
						i(17725),	-- Formula: Enchant Weapon - Winter's Might
						i(17722),	-- Pattern: Gloves of the Greatfather
						i(17706),	-- Plans: Edge of Winter
						i(17709),	-- Recipe: Elixir of Frost Power
						i(17720),	-- Schematic: Snowmaster 9000
					}),
				},
			}),
			q(6961, {	-- Greatfather Winter is Here!
				["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
				["races"] = HORDE_ONLY,
				["lvl"] = 10,
				["altQuests"] = {
					7021,  -- Greatfather Winter is Here!
					7124,  -- Greatfather Winter is Here!
				},
			}),
			q(7021, {	-- Greatfather Winter is Here!
				["qg"] = 13431,	-- Whulwert Copperpinch <Smokywood Pastures>
				["races"] = HORDE_ONLY,
				["lvl"] = 10,
				["altQuests"] = {
					6961,  -- Greatfather Winter is Here!
					7124,  -- Greatfather Winter is Here!
				},
			}),
			q(7024, {	-- Greatfather Winter is Here!
				["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
				["races"] = HORDE_ONLY,
				["lvl"] = 10,
				["altQuests"] = {
					6961,  -- Greatfather Winter is Here!
					7021,  -- Greatfather Winter is Here!
				},
			}),
			q(7022, {	-- Greatfather Winter is Here!
				["isYearly"] = true,
				["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
			}),
			q(7023, {	-- Greatfather Winter is Here!
				["isYearly"] = true,
				["qg"] = 13435,	-- Khole Jinglepocket <Smokywood Pastures>
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
			}),
			q(8746, {	-- Metzen the Reindeer (Horde)
				["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
				["races"] = HORDE_ONLY,
				["lvl"] = 40,
				["groups"] = {
					i(21213),  -- Preserved Holly
				},
			}),
			q(8762, {	-- Metzen the Reindeer (Alliance)
				["isYearly"] = true,
				["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 40,
				["groups"] = {
					i(21213),  -- Preserved Holly
				},
			}),
			{
				["allianceQuestID"] = 8860,	-- New Year Celebrations!
				["hordeQuestID"] = 8861,	-- New Year Celebrations!
				["qg"] = 15732,	-- Wonderform Operator <Smokywood Pastures>
				["isYearly"] = true,
				["cost"] = {
					{ "i", 21545, 1 },	-- Smokywood Supplies
				},
			},
			q(6963, {	-- Stolen Winter Veil Treats (Horde)
				["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
				["isYearly"] = true,
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
			}),
			q(7042, {	-- Stolen Winter Veil Treats (Alliance)
				["isYearly"] = true,
				["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
			}),
			q(7061, {	-- The Feast of Winter Veil
				["isYearly"] = true,
				["qg"] = 13417,	-- Sagorne Creststrider <Shaman Trainer>
				["races"] = HORDE_ONLY,
				["lvl"] = 10,
			}),
			q(7063, {	-- The Feast of Winter Veil
				["isYearly"] = true,
				["qg"] = 2916,	-- Historian Karnik
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
			}),
			q(8763, {	-- The Hero of the Day
				["isYearly"] = true,
				["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
				["description"] = 'Requires Cooking Skill Level 300',
				["requireSkill"] = COOKING,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 40,
				["groups"] = {
					i(21213),  -- Preserved Holly
				},
			}),
			q(6964, {	-- The Reason for the Season (Horde)
				["isYearly"] = true,
				["qg"] = 1365,	-- Goli Krumn
				["races"] = HORDE_ONLY,
				["lvl"] = 10,
			}),
			q(7062, {	-- The Reason for the Season (Alliance)
				["isYearly"] = true,
				["qg"] = 1365,	-- Goli Krumn
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
			}),
			q(6962, {	-- Treats for Greatfather Winter (Horde)
				["isYearly"] = true,
				["qg"] = 13445,	-- Great-father Winter
				["races"] = HORDE_ONLY,
				["lvl"] = 10,
				["groups"] = {
					i(17727),	-- Smokywood Pastures Special Gift
				},
			}),
			q(7025, {	-- Treats for Greatfather Winter (Alliance)
				["isYearly"] = true,
				["qg"] = 13444,	-- Greatfather Winter
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
				["groups"] = {
					i(17727, {	-- Smokywood Pastures Special Gift
						i(17725),	-- Formula: Enchant Weapon - Winter's Might
						i(17722),	-- Pattern: Gloves of the Greatfather
						i(17706),	-- Plans: Edge of Winter
						i(17709),	-- Recipe: Elixir of Frost Power
						i(17720),	-- Schematic: Snowmaster 9000
					}),
				},
			}),
			{	-- You're a Mean One...
				["qg"] = 13636,	-- Strange Snowman
				["allianceQuestID"] = 7043,	-- You're a Mean One... (Alliance)
				["hordeQuestID"] = 6983,	-- You're a Mean One... (Horde)
				["sourceQuests"] = {
					7042,	-- Stolen Winter Veil Treats (Alliance)
					6963,	-- Stolen Winter Veil Treats (Horde)
				},
				["coord"] = { 35.4, 72.6, ALTERAC_MOUNTAINS },
				["isYearly"] = true,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Stolen Treats
						["provider"] = { "i", 17662 },	-- Stolen Treats
						["cr"] = 13602,	-- The Abominable Greench
					}),
				},
			},
			{	-- Winter's Presents
				["qg"] = 15732,	-- Wonderform Operator <Smokywood Pastures>
				["allianceQuestID"] = 8827,	-- Winter's Presents (Alliance)
				["hordeQuestID"] = 8828,	-- Winter's Presents (Horde)
				["isBreadcrumb"] = true,
				["isYearly"] = true,
			},
		}),
		n(VENDORS, {
			n(13433, {	-- Wulmort Jinglepocket <Smokywood Pastures>
				["coord"] = { 33.6, 66.8, IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(17201),	-- Recipe: Egg Nog
					i(17200),	-- Recipe: Gingerbread Cookie
				},
			}),
		}),
		n(ZONE_DROPS, {
			o(178609, {	-- Holiday Snow
				i(17202),	-- Snowball
			}),
			o(243911, {	-- Snow Mound
				["timeline"] = { "added 6.2.2.20395" },
				["maps"] = { FROSTFIRE_RIDGE },
				["groups"] = {
					i(128770, {	-- Grumpling
						["timeline"] = { "added 6.2.2.20395" },
					}),
					HUGE_SNOWBALL,
					i(128632, {	-- Savage Snowball
						["timeline"] = { "added 6.2.2.20395" },
					}),
					i(17202),	-- Snowball
					i(128648, {	-- Yellow Snowball
						["timeline"] = { "added 6.2.2.20395" },
					}),
				},
			}),
		}),
		i(37710),	-- Crashin' Thrashin' Racer Controller
	},
})};

-- Remove the holiday flag.
HUGE_SNOWBALL.u = nil;