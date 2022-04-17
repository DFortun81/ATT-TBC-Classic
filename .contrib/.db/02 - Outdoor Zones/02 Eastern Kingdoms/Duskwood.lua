---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(DUSKWOOD, {
		["lore"] = "Duskwood is located in the southern-central part of Azeroth, south of Elwynn Forest, east of Westfall, west of Deadwind Pass, and north of Stranglethorn Vale. Technically part of the Alliance and under Stormwind's protection, its distance from the mighty fortress and its close proximity to more malevolent forces in the south and east make it a realm of horror.[1] Due to events central to the Scythe of Elune, Duskwood is a cursed, dying land. Beneath the eternal blanket of darkness which gave Duskwood its current name, the Scythe's effects have transformed what was once a beautiful part of Elwynn Forest into a land covered in gnarled trees and inhabited by the hideous undead and extradimensional Worgen, brought along with the black fog hanging over the woods. Ogres moving in from Deadwind Pass have brought up even more problems.\n\nLong betrayed and abandoned by Stormwind, Duskwood is inhabited by a defiant people who still cling to their holdings in the face of overwhelming adversity. On all sides lurk dangerous creatures, from skeletal warriors and ghouls to ferocious worgen and some of the most powerful members of the Defias Brotherhood. The militia of Duskwood, known as the Night Watch, patrol the main thoroughfare and protect Darkshire, wary of anything moving through the shadows.\n\nThe most prominent geographical feature of Duskwood is an ancient and long-dead volcano crater. The crater teems with life, and features one of the Great Trees with a portal leading into the Emerald Dream. The sleeping druids' influence can be seen on the surrounding land, which is cloaked in a twilight quite different from the rest of Duskwood. The woods also feature several abandoned farmsteads, as well as the prominent Raven Hill Cemetery, which holds the graves of the numerous people who have been killed by wild beasts and undead since the darkness fell.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(778, {	-- Explore Duskwood
					-- #if BEFORE WRATH
					["description"] = "Explore Duskwood, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["160:330:19:132"] = 1097,	-- The Hushed Bank
				["195:145:102:302"] = 94,	-- Raven Hill
				["200:175:653:120"] = 1098,	-- Manor Mistmantle
				["220:220:690:353"] = 121,	-- Tranquil Gardens Cemetery
				["220:340:504:117"] = 242,	-- Brightwood Grove
				["235:250:390:382"] = 245,	-- The Yorgen Farmstead
				["250:230:539:369"] = 241,	-- The Rotting Orchard
				["255:285:243:348"] = 93,	-- Vul'Gol Ogre Mound
				["275:250:55:342"] = 536,	-- Addle's Stead
				["315:280:631:162"] = 42,	-- Darkshire
				["350:300:85:149"] = 492,	-- Raven Hill Cemetery
				["360:420:298:79"] = 856,	-- Twilight Grove
				["910:210:89:31"] = 799,	-- The Darkened Bank
				--[[
				[13] = 1,                                -- The World Tree
				[32] = 2,                                -- The Cemetary
				[243] = 9,                               -- Forlorn Rowe
				[244] = 10,                              -- The Whipple Estate
				[576] = 14,                              -- Beggar's Haunt
				[2098] = 19,                             -- Dawning Wood Catacombs
				[2161] = 20,                             -- Roland's Doom
				]]--
			})),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(12, {	-- Darkshire, Duskwood
					["cr"] = 2409,	-- Felicia Maline <Gryphon Master>
					["coord"] = { 77.6, 44.4, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(231, {	-- A Daughter's Love
					["qg"] = 576,	-- Watcher Ladimore
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2162, 1 },	-- Sarah's Ring
					},
					["lvl"] = 28,
					["groups"] = {
						i(2000),	-- Archeus
					},
				}),
				q(337, {	-- An Old History Book
					["provider"] = { "i", 2794 },
					["maps"] = { STORMWIND_CITY },
					["description"] = "The item that starts this quest can drop from most of the mobs in the zone, but seem to drop more often from the Worgen.",
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(1044, {	-- Answered Questions
					["qg"] = 661,	-- Jonathan Carevin
					["sourceQuest"] = 1043,	-- The Scythe of Elune
					["coord"] = { 75.3, 49.2, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						i(5817),	-- Lunaris Bow
						i(5818),	-- Moonbeam Wand
					},
				}),
				q(325, {	-- Armed and Ready
					["qg"] = 1416,	-- Grimand Elmore
					["sourceQuest"] = 322,	-- Blessed Arm
					["coord"] = { 51.8, 12.1, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 7297, 1 },	-- Morbent's Bane
					},
					["lvl"] = 20,
				}),
				q(322, {	-- Blessed Arm
					["qg"] = 1217,	-- Glorin Steelbrow
					["sourceQuests"] = {
						526,	-- Lightforge Ingots
						324,	-- The Lost Ingots
					},
					["coord"] = { 10.6, 60.5, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2712, 1 },	-- Crate of Lightforge Ingots
					},
					["lvl"] = 20,
				}),
				q(253, {	-- Bride of the Embalmer
					["qg"] = 263,	-- Lord Ello Ebonlocke
					["coord"] = { 71.9, 46.5, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2382, 1 },	-- The Embalmer's Heart
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 2382,	-- The Embalmer's Heart
							["questID"] = 253,	-- Bride of the Embalmer
							["cr"] = 314,	-- Eliza <Bride of the Embalmer>
							["coord"] = { 28.8, 31.2, DUSKWOOD },
						},
						i(3560),	-- Mantle of Honor
						i(6223),	-- Crest of Darkshire
					},
				}),
				q(157, {	-- Deliver the Thread
					["qg"] = 265,	-- Madame Eva
					["sourceQuest"] = 154,	-- Return the Comb
					["coord"] = { 75.8, 45.3, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1596, 1 },	-- Ghost Hair Thread
					},
					["lvl"] = 20,
				}),
				q(164, {	-- Deliveries to Sven
					["qg"] = 633,	-- Elaine Carevin
					["coord"] = { 75.3, 48.7, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["cost"] = {
						{ "i", 1922, 1 },	-- Supplies for Sven
					},
					["lvl"] = 17,
				}),
				q(254, {	-- Digging Through the Dirt
					["provider"] = { "o", 51708 },	-- Eliza's Grave Dirt
					["altQuests"] = { 253 },	-- Bride of the Embalmer
					["description"] = "This quest is repeatable, but can only be completed while you have the quest \"Bride of the Embalmer\" in your quest log.",
					["coord"] = { 28.8, 30.8, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 20,
				}),
				q(93, {	-- Dusky Crab Cakes
					["qg"] = 272,	-- Chef Grual
					["coord"] = { 73.8, 43.5, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2251, 6 },	-- Gooey Spider Leg
					},
					["lvl"] = 17,
					["groups"] = {
						i(3683),	-- Recipe: Gooey Spider Cake
					},
				}),
				q(245, {	-- Eight-Legged Menaces
					["qg"] = 888,	-- Watcher Dodds
					["coord"] = { 45.1, 67.0, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						i(3559),	-- Night Watch Gauntlets
					},
				}),
				q(453, {	-- Finding the Shadowy Figure
					["qg"] = 273,	-- Tavernkeep Smitts
					["sourceQuest"] = 266,	-- Inquire at the Inn
					["coord"] = { 73.8, 44.4, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2161, 1 },	-- Book from Sven's Farm
					},
					["lvl"] = 20,
				}),
				q(156, {	-- Gather Rot Blossoms
					["qg"] = 273,	-- Tavernkeep Smitts
					["coord"] = { 73.8, 44.4, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1598, 8 },	-- Rot Blossom
					},
					["lvl"] = 20,
				}),
				q(149, {	-- Ghost Hair Thread
					["qg"] = 265,	-- Madame Eva
					["sourceQuest"] = 148,	-- Supplies from Darkshire
					["coord"] = { 75.8, 45.3, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1453, 1 },	-- Spectral Comb
					},
					["lvl"] = 20,
				}),
				q(133, {	-- Ghoulish Effigy
					["qg"] = 289,	-- Abercrombie
					["sourceQuest"] = 159,	-- Juice Delivery
					["coord"] = { 28.0, 31.5, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 884, 7 },	-- Ghoul Rib
					},
					["lvl"] = 20,
				}),
				q(266, {	-- Inquire at the Inn
					["qg"] = 267,	-- Clerk Daltry
					["sourceQuest"] = 265,	-- The Shadowy Search Continues
					["coord"] = { 72.6, 46.9, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2161, 1 },	-- Book from Sven's Farm
					},
					["lvl"] = 20,
				}),
				q(5, {	-- Jitters' Growling Gut
					["qg"] = 288,	-- Jitters
					["coord"] = { 18.2, 56.3, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(159, {	-- Juice Delivery
					["qg"] = 273,	-- Tavernkeep Smitts
					["sourceQuest"] = 156,	-- Gather Rot Blossoms
					["coord"] = { 73.8, 44.4, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1451, 1 },	-- Bottle of Zombie Juice
					},
					["lvl"] = 20,
				}),
				q(174, {	-- Look To The Stars
					["qg"] = 276,	-- Viktori Prism'Antras
					["coord"] = { 79.8, 48.0, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4371, 1 },	-- Bronze Tube
					},
					["lvl"] = 20,
				}),
				q(175, {	-- Look To The Stars
					["qg"] = 276,	-- Viktori Prism'Antras
					["sourceQuest"] = 174,	-- Look To The Stars
					["coord"] = { 79.8, 48.0, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(177, {	-- Look To The Stars
					["qg"] = 302,	-- Blind Mary
					["sourceQuest"] = 175,	-- Look To The Stars
					["coord"] = { 81.9, 59.1, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1946, 1 },	-- Mary's Looking Glass
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 1946,	-- Mary's Looking Glass
							["questID"] = 177,	-- Look To The Stars
							["cr"] = 511,	-- Insane Ghoul
							["coord"] = { 80.8, 71.6, DUSKWOOD },
						},
					},
				}),
				q(181, {	-- Look To The Stars
					["qg"] = 276,	-- Viktori Prism'Antras
					["sourceQuest"] = 177,	-- Look To The Stars
					["coord"] = { 79.8, 48.0, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1968, 1 },	-- Ogre's Monocle
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 1968,	-- Ogre's Monocle
							["questID"] = 181,	-- Look To The Stars
							["cr"] = 300,	-- Zzarc' Vul
							["coord"] = { 37.0, 82.4, DUSKWOOD },
						},
						i(7106),	-- Zodiac Gloves
						i(7107),	-- Belt of the Stars
					},
				}),
				q(228, {	-- Mor'Ladim
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, DUSKWOOD },
					["cost"] = {
						{ "i", 3514, 1 },	-- Mor'Ladim's Skull
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						{
							["itemID"] = 3514,	-- Mor'Ladim's Skull
							["questID"] = 228,	-- Mor'Ladim
							["cr"] = 522,	-- Mor'Ladim
							["coord"] = { 19.4, 34.6, DUSKWOOD },
						},
					},
				}),
				q(55, {	-- Morbent Fel
					["qg"] = 311,	-- Sven Yorgen
					["sourceQuest"] = 325,	-- Armed and Ready
					["coord"] = { 7.8, 34.0, DUSKWOOD },
					["cr"] = 1200,	-- Morbent Fel
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 7297, 1 },	-- Morbent's Bane
					},
					["lvl"] = 20,
					["groups"] = {
						i(2954),	-- Night Watch Pantaloons
						i(2953),	-- Watch Master's Cloak
						i(1282),	-- Sparkmetal Coif
						i(7344),	-- Torch of Holy Flame
					},
				}),
				q(227, {	-- Morgan Ladimore
					["qg"] = 268,	-- Sirra Von'Indi
					["coord"] = { 72.6, 47.7, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						i(2154),	-- The Story of Morgan Ladimore
					},
				}),
				q(160, {	-- Note to the Mayor
					["qg"] = 289,	-- Abercrombie
					["coord"] = { 28.0, 31.5, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(1372, {	-- Nothing But The Truth
					["qg"] = 5418,	-- Deathstalker Zraedus
					["coord"] = { 87.6, 35.6, DUSKWOOD },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				}),
				q(1383, {	-- Nothing But The Truth
					["qg"] = 5414,	-- Apothecary Faustin <Royal Apothecary Society>
					["sourceQuest"] = 1372,	-- Nothing But The Truth
					["coord"] = { 87.4, 35.4, DUSKWOOD },
					["maps"] = { DESOLACE, SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6080, 5 },	-- Shadow Panther Heart
						{ "i", 6081, 1 },	-- Mire Lord Fungus
						{ "i", 6082, 1 },	-- Deepstrider Tumor
					},
					["lvl"] = 37,
					["groups"] = {
						i(6832),	-- Cloak of Blight
						i(11265),	-- Cragwood Maul
					},
				}),
				q(1388, {	-- Nothing But The Truth
					["qg"] = 5414,	-- Apothecary Faustin <Royal Apothecary Society>
					["sourceQuest"] = 1383,	-- Nothing But The Truth
					["coord"] = { 87.4, 35.4, DUSKWOOD },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6086, 1 },	-- Faustin's Truth Serum
					},
					["lvl"] = 37,
				}),
				q(1391, {	-- Nothing But The Truth
					["qg"] = 5418,	-- Deathstalker Zraedus
					["sourceQuest"] = 1388,	-- Nothing But The Truth
					["coord"] = { 87.6, 35.6, DUSKWOOD },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6089, 1 },	-- Zraedus's Brew
					},
					["lvl"] = 37,
				}),
				q(134, {	-- Ogre Thieves
					["qg"] = 289,	-- Abercrombie
					["coord"] = { 28.0, 31.5, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(323, {	-- Proving Your Worth
					["qg"] = 311,	-- Sven Yorgen
					["coord"] = { 7.8, 34.0, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(163, {	-- Raven Hill
					["qg"] = 633,	-- Elaine Carevin
					["coord"] = { 75.3, 48.7, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 17,
				}),
				q(154, {	-- Return the Comb
					["qg"] = 302,	-- Blind Mary
					["sourceQuest"] = 149,	-- Ghost Hair Thread
					["coord"] = { 81.9, 59.1, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1518, 1 },	-- Ghost Hair Comb
					},
					["lvl"] = 20,
				}),
				q(240, {	-- Return to Jitters
					["qg"] = 272,	-- Chef Grual
					["sourceQuest"] = 93,	-- Dusky Crab Cakes
					["coord"] = { 73.8, 43.5, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2250, 1 },	-- Dusky Crab Cakes
					},
					["lvl"] = 17,
				}),
				q(268, {	-- Return to Sven
					["qg"] = 288,	-- Jitters
					["coord"] = { 18.2, 56.3, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(90, {	-- Seasoned Wolf Kabobs
					["qg"] = 272,	-- Chef Grual
					["coord"] = { 73.8, 43.5, DUSKWOOD },
					["description"] = "Buy the Stormwind Seasoning Herbs from Felicia Gump in Stormwind at 64.3, 60.5.",
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1015, 10 },	-- Lean Wolf Flank
						{ "i", 2665, 1 },	-- Stormwind Seasoning Herbs
					},
					["lvl"] = 18,
					["groups"] = {
						i(1017),	-- Seasoned Wolf Kabob
						i(2701),	-- Recipe: Seasoned Wolf Kabob
					},
				}),
				q(269, {	-- Seeking Wisdom
					["qg"] = 311,	-- Sven Yorgen
					["coord"] = { 7.8, 34.0, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				un(NEVER_IMPLEMENTED, q(402, {	-- Sirra is Busy
					["lvl"] = 20,
				})),
				q(1395, {	-- Supplies for Nethergarde
					["qg"] = 5464,	-- Watchmaster Sorigal
					["sourceQuest"] = 1477,	-- Vital Supplies
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(148, {	-- Supplies from Darkshire
					["qg"] = 289,	-- Abercrombie
					["sourceQuest"] = 165,	-- The Hermit
					["coord"] = { 28.0, 31.5, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(230, {	-- Sven's Camp
					["provider"] = { "o", 59 },	-- Mound of loose dirt
					["sourceQuest"] = 95,	-- Sven's Revenge
					["coord"] = { 49.9, 77.7, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2161, 1 },	-- Book from Sven's Farm
					},
					["lvl"] = 20,
				}),
				q(95, {	-- Sven's Revenge
					["qg"] = 311,	-- Sven Yorgen
					["coord"] = { 7.8, 34.0, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(1042, {	-- The Carevin Family
					["qg"] = 267,	-- Clerk Daltry
					["sourceQuest"] = 1041,	-- The Caravan Road (Straglethorn Vale)
					["coord"] = { 72.6, 46.9, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(229, {	-- The Daughter Who Lived
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(270, {	-- The Doomed Fleet
					["qg"] = 1212,	-- Bishop Farthing
					["sourceQuest"] = 269,	-- Seeking Wisdom (Duskwood)
					["coord"] = { 39.3, 27.9, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(165, {	-- The Hermit
					["qg"] = 633,	-- Elaine Carevin
					["coord"] = { 75.3, 48.7, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 17,
				}),
				q(80, {	-- The Legend of Stalvan
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 939, 1 },	-- A Bloodstained Journal Page
					},
					["lvl"] = 22,
				}),
				q(68, {	-- The Legend of Stalvan
					["provider"] = { "o", 3643 },	-- Old Footlocker
					["coord"] = { 41.5, 66.7, WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 889, 1 },	-- A Dusty Unsent Letter
					},
					["lvl"] = 22,
				}),
				q(79, {	-- The Legend of Stalvan
					["qg"] = 273,	-- Tavernkeep Smitts
					["coord"] = { 73.8, 44.4, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 938, 1 },	-- Muddy Journal Pages
					},
					["lvl"] = 22,
					["groups"] = {
						i(939),	-- A Bloodstained Journal Page
					},
				}),
				q(97, {	-- The Legend of Stalvan
					["qg"] = 267,	-- Clerk Daltry
					["coord"] = { 72.6, 46.9, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(78, {	-- The Legend of Stalvan
					["qg"] = 294,	-- Marshal Haggard
					["coord"] = { 84.6, 69.3, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 921, 1 },	-- A Faded Journal Page
					},
					["lvl"] = 22,
				}),
				q(69, {	-- The Legend of Stalvan
					["qg"] = 267,	-- Clerk Daltry
					["coord"] = { 72.6, 46.9, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(75, {	-- The Legend of Stalvan
					["qg"] = 294,	-- Marshal Haggard
					["coord"] = { 84.6, 69.3, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 921, 1 },	-- A Faded Journal Page
					},
					["lvl"] = 22,
				}),
				q(72, {	-- The Legend of Stalvan
					["qg"] = 297,	-- Caretaker Folsom
					["coord"] = { 29.6, 61.9, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(67, {	-- The Legend of Stalvan
					["qg"] = 267,	-- Clerk Daltry
					["coord"] = { 72.6, 46.9, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(74, {	-- The Legend of Stalvan
					["provider"] = { "o", 1561 },	-- Sealed Crate
					["coord"] = { 29.6, 61.9, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 916, 1 },	-- A Torn Journal Page
					},
					["lvl"] = 22,
				}),
				q(98, {	-- The Legend of Stalvan
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3629, 1 },	-- Mistmantle Family Ring
					},
					["lvl"] = 22,
					["groups"] = {
						{
							["itemID"] = 3629,	-- Mistmantle Family Ring
							["questID"] = 98,	-- The Legend of Stalvan
							["cr"] = 315,	-- Stalvan Mistmantle
							["coord"] = { 77.6, 34.8, DUSKWOOD },
						},
						i(2044),	-- Crescent of Forlorn Spirits
						i(2043),	-- Ring of Forlorn Spirits
					},
				}),
				q(70, {	-- The Legend of Stalvan
					["qg"] = 295,	-- Innkeeper Farley
					["coord"] = { 43.8, 65.9, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 910, 1 },	-- An Undelivered Letter
					},
					["lvl"] = 22,
				}),
				q(66, {	-- The Legend of Stalvan
					["qg"] = 265,	-- Madame Eva
					["coord"] = { 75.8, 45.3, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(1244, {	-- The Missing Diplomat (5/17)
					["qg"] = 840,	-- Watcher Backus
					["sourceQuest"] = 1243,	-- The Missing Diplomat (4/17)
					["coord"] = { 73.21, 38.81, DUSKWOOD },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						{
							["itemID"] = 5947,	-- Defias Docket
							["questID"] = 1244,	-- The Missing Diplomat (5/17)
							["coord"] = { 24.0, 72.1, DUSKWOOD },
						},
					},
				}),
				q(1245, {	-- The Missing Diplomat (6/17)
					["qg"] = 840,	-- Watcher Backus
					["sourceQuest"] = 1244,	-- The Missing Diplomat (5/17)
					["coord"] = { 73.21, 38.81, DUSKWOOD },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5947, 1 },	-- Defias Docket
					},
					["lvl"] = 28,
				}),
				q(57, {	-- The Night Watch
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(56, {	-- The Night Watch
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(58, {	-- The Night Watch
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						i(3604),	-- Bandolier of the Night Watch
						i(3605),	-- Quiver of the Night Watch
						i(1729),	-- Gunnysack of the Night Watch
					},
				}),
				q(1043, {	-- The Scythe of Elune
					["qg"] = 661,	-- Jonathan Carevin
					["sourceQuest"] = 1042,	-- The Carevin Family
					["coord"] = { 75.3, 49.2, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(262, {	-- The Shadowy Figure
					["qg"] = 311,	-- Sven Yorgen
					["sourceQuest"] = 230,	-- Sven's Camp
					["coord"] = { 7.8, 34.0, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2161, 1 },	-- Book from Sven's Farm
					},
					["lvl"] = 20,
				}),
				q(265, {	-- The Shadowy Search Continues
					["qg"] = 265,	-- Madame Eva
					["sourceQuest"] = 262,	-- The Shadowy Figure
					["coord"] = { 75.8, 45.3, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2161, 1 },	-- Book from Sven's Farm
					},
					["lvl"] = 20,
				}),
				q(101, {	-- The Totem of Infliction
					["qg"] = 265,	-- Madame Eva
					["coord"] = { 75.8, 45.3, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1129, 10 },	-- Ghoul Fang
						{ "i", 2378, 10 },	-- Skeleton Finger
						{ "i", 1130, 5 },	-- Vial of Spider Venom
					},
					["lvl"] = 18,
					["groups"] = {
						i(1131),	-- Totem of Infliction
					},
				}),
				q(225, {	-- The Weathered Grave
					["provider"] = { "o", 61 },	-- A Weathered Grave
					["coord"] = { 17.7, 29.2, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(251, {	-- Translate Abercrombie's Note
					["qg"] = 263,	-- Lord Ello Ebonlocke
					["coord"] = { 71.9, 46.5, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(252, {	-- Translation to Ello
					["qg"] = 268,	-- Sirra Von'Indi
					["coord"] = { 72.6, 47.7, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(3248),	-- Translated Letter from The Embalmer
					},
				}),
				q(401, {	-- Wait for Sirra to Finish
					["qg"] = 268,	-- Sirra Von'Indi
					["coord"] = { 72.6, 47.7, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(226, {	-- Wolves at Our Heels
					["qg"] = 893,	-- Lars
					["coord"] = { 7.7, 33.4, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						i(1127),	-- Flash Bundle
					},
				}),
				q(221, {	-- Worgen in the Woods
					["qg"] = 663,	-- Calor
					["coord"] = { 75.3, 48.0, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 23,
				}),
				q(222, {	-- Worgen in the Woods
					["qg"] = 663,	-- Calor
					["coord"] = { 75.3, 48.0, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 23,
				}),
				q(223, {	-- Worgen in the Woods
					["qg"] = 663,	-- Calor
					["coord"] = { 75.3, 48.0, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						i(2902),	-- Cloak of the Faith
						i(1547),	-- Shield of the Faith
						i(5244),	-- Consecrated Wand
					},
				}),
				q(173, {	-- Worgen in the Woods
					["qg"] = 663,	-- Calor
					["coord"] = { 75.3, 48.0, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 23,
				}),
				q(158, {	-- Zombie Juice
					["qg"] = 289,	-- Abercrombie
					["coord"] = { 28.0, 31.5, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
			}),
			n(RARES, {
				n(771, {  -- Commander Felstrom
					["description"] = "Spawns in the Dawning Wood Catacombs",
					["coords"] = {
						{ 18.0, 38.0, DUSKWOOD },
					},
					["groups"] = {
						i(4465),	-- Bonefist Gauntlets
						i(4464),	-- Trouncing Boots
					},
				}),
				n(507, {  -- Fenros
					["description"] = "Patrol between the coordinates",
					["coords"] = {
						{ 59.8, 26.8, DUSKWOOD },
						{ 63.8, 51.6, DUSKWOOD },
					},
					["groups"] = {
						i(4474),	-- Ravenwood Bow
						i(6204),	-- Tribal Worg Helm
					},
				}),
				n(503, {  -- Lord Malathrom
					["description"] = "Spawns in the Dawning Wood Catacombs",
					["coords"] = {
						{ 25.6, 30.2, DUSKWOOD },
					},
					["groups"] = {
						i(4462),	-- Cloak of Rot
						i(1187),	-- Spiked Collar
					},
				}),
				n(521, {  -- Lupos
					["description"] = "Spawns randomly in the north",
					["coords"] = {
						{ 20.0, 25.4, DUSKWOOD },
						{ 38.4, 26.2, DUSKWOOD },
						{ 60.2, 24.4, DUSKWOOD },
						{ 71.0, 24.4, DUSKWOOD },
					},
					["groups"] = {
						i(3018),	-- Hide of Lupos
						i(3227),	-- Nightbane Staff
					},
				}),
				n(574, {  -- Naraxis
					["description"] = "Spawns randomly in the east",
					["coord"] = { 86.6, 49.6, DUSKWOOD },
					["groups"] = {
						i(4448),	-- Husk of Naraxis
						i(4449),	-- Naraxis' Fang
					},
				}),
				n(534, {  -- Nefaru
					["description"] = "Spawns randomly in the south",
					["coord"] = { 63.6, 82.4, DUSKWOOD },
					["groups"] = {
						i(4477),	-- Nefarious Buckler
						i(4476),	-- Beastwalker Robe
					},
				}),
			}),
			n(VENDORS, {
				n(844, {	-- Antonio Perelli <Traveling Salesman>
					["coords"] = {
						{ 19.6, 60.6, DUSKWOOD },
						{ 50.8, 66.6, DUSKWOOD },
						{ 75.0, 46.4, DUSKWOOD },
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4817),	-- Blessed Claymore
						i(4818),	-- Executioner's Sword
						i(4778),	-- Heavy Spiked Mace
						i(4777),	-- Ironwood Maul
						i(4795),	-- Bear Bracers
						i(4796),	-- Owl Bracers
						i(4794),	-- Wolf Bracers
					},
				}),
				n(228, {	-- Avette Fellwood <Bowyer>
					["coord"] = { 73.2, 44.8, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11304),	-- Fine Longbow
					},
				}),
				n(274, {	-- Barkeep Hann <Bartender>
					["coord"] = { 73.8, 44.2, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						{
							["itemID"] = 1942,	-- Bottle of Moonshine
							["questID"] = 116,	-- Dry Times
							["races"] = ALLIANCE_ONLY,
						},
					},
				}),
				n(2481, {	-- Bliztik <Alchemy Supplies>
					["coord"] = { 18.0, 54.4, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6068),	-- Recipe: Shadow Oil
					},
				}),
				n(2668, {	-- Danielle Zipstitch <Tailoring Supplies>
					["coord"] = { 75.8, 45.4, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(14627),	-- Pattern: Bright Yellow Shirt
					},
				}),
				n(225, {	-- Gavin Gnarltree <Weaponsmith>
					["coord"] = { 73.7, 49.9, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12247),	-- Broad Bladed Knife
						i(12249),	-- Merciless Axe
					},
				}),
				n(3134, {	-- Kzixx <Rare Goods>
					["coord"] = { 81.8, 19.8, DUSKWOOD },
					["groups"] = {
						i(4836),	-- Fireproof Orb
						i(4838),	-- Orb of Power
						i(4837),	-- Strength of Will
						i(4829),	-- Dreamer's Belt
						i(4828),	-- Nightwind Belt
						i(4827),	-- Wizard's Belt
						i(6053),	-- Recipe: Holy Protection Potion
						i(7561),	-- Schematic: Goblin Jumper Cables
					},
				}),
				n(226, {	-- Morg Gnarltree <Armorer>
					["coord"] = { 73.9, 48.9, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4797),	-- Fiery Cloak
						i(4798),	-- Heavy Runed Cloak
						i(4799),	-- Antiquated Cloak
						i(4800),	-- Mighty Chain Pants
						i(4816),	-- Legionnaire's Leggings
					},
				}),
				n(2669, {	-- Sheri Zipstitch <Tailoring Supplies>
					["coord"] = { 75.6, 45.4, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6401),	-- Pattern: Dark Silk Shirt
						i(6275),	-- Pattern: Greater Adept's Robe
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(885, {	-- Black Metal Axe
					["cr"] = 3,	-- Flesh Eater
				}),
				i(2014, {	-- Black Metal Greatsword
					["cr"] = 1270,	-- Fetid Corpse
				}),
				i(886, {	-- Black Metal Shortsword
					["cr"] = 210,	-- Bone Chewer
				}),
				i(2015, {	-- Black Metal War Axe
					["cr"] = 570,	-- Brain Eater
				}),
				{
					["itemID"] = 6844,	-- Burning Blood
					["coord"] = { 74.2, 77.8, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["crs"] = {
						205,	-- Nightbane Dark Runner
						533,	-- Nightbane Shadow Weaver
						920,	-- Nightbane Tainted One
						206,	-- Nightbane Vile Fang
						898,	-- Nightbane Worgen
					},
				},
				{
					["itemID"] = 6845,	-- Burning Rock
					["cr"] = 6170,	-- Gutspill
					["coord"] = { 74.2, 77.8, DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
				},
				i(2013, {	-- Cryptbone Staff
					["cr"] = 787,	-- Skeletal Healer
				}),
				i(2232, {	-- Dark Runner Boots
					["cr"] = 205,	-- Nightbane Dark Runner
				}),
				i(1077, {	-- Defias Mage Ring
					["cr"] = 910,	-- Defias Enchanter
				}),
				i(1129, {	-- Ghoul Fang
					["crs"] = {
						210,	-- Bone Chewer
						570,	-- Brain Eater
						1270,	-- Fetid Corpse
						3,		-- Flesh Eater
						604,	-- Plague Spreader
						948,	-- Rotted One
					},
				}),
				i(884, {	-- Ghoul Rib
					["crs"] = {
						210,	-- Bone Chewer
						570,	-- Brain Eater
						3,		-- Flesh Eater
						604,	-- Plague Spreader
						948,	-- Rotted One
					},
				}),
				i(2021, {	-- Green Carapace Shield
					["cr"] = 569,	-- Green Recluse
				}),
				i(2017, {	-- Glowing Leather Bracers
					["cr"] = 785,	-- Skeletal Warder
				}),
				i(2227, {	-- Heavy Ogre War Axe
					["cr"] = 892,	-- Splinter Fist Taskmaster
				}),
				i(2020, {	-- Hollowfang Blade
					["cr"] = 539,	-- Pygmy Venom Web Spider
				}),
				i(911, {	-- Ironwood Treebranch
					["cr"] = 889,	-- Splinter Fist Ogre
				}),
				i(914, {	-- Large Ogre Chain Armor
					["cr"] = 1487,	-- Splinter Fist Enslaver
				}),
				i(897, {	-- Madwolf Bracers
					["cr"] = 206,	-- Nightbane Vile Fang
				}),
				i(2234, {	-- Nightwalker Armor
					["cr"] = 920,	-- Nightbane Tainted One
				}),
				i(2226, {	-- Ogremage Staff
					["crs"] = {
						891,	-- Splinter Fist Fire Weaver
						1251,	-- Splinter Fist Firemonger
					},
				}),
				i(5773, {	-- Pattern: Robes of Arcana
					["cr"] = 910,	-- Defias Enchanter
				}),
				i(7267, {	-- Pristine Spider Silk
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["crs"] = {
						949,	-- Carrion Recluse
						930,	-- Black Widow Hatchling
					},
				}),
				i(1598, {	-- Rot Blossom
					["crs"] = {
						531,	-- Skeletal Fiend
						202,	-- Skeletal Horror
					},
				}),
				i(2233, {	-- Shadow Weaver Leggings
					["cr"] = 533,	-- Nightbane Shadow Weaver
				}),
				i(2018, {	-- Skeletal Longsword
					["cr"] = 1110,	-- Skeletal Raider
				}),
				i(2378, {	-- Skeleton Finger
					["crs"] = {
						531,	-- Skeletal Fiend
						787,	-- Skeletal Healer
						202,	-- Skeletal Horror
						203,	-- Skeletal Mage
						1110,	-- Skeletal Raider
						785,	-- Skeletal Warder
						48,		-- Skeletal Warrior
					},
				}),
				i(880, {	-- Staff of Horrors
					["cr"] = 202,	-- Skeletal Horror
				}),
				i(3360, {	-- Stitches' Femur
					["cr"] = 412,	-- Stitches <Gift from the Embalmer>
				}),
				i(2779, {	-- Tear of Tilloa
					["coord"] = { 78.5, 36.0, DUSKWOOD },
				}),
				i(899, {	-- Venom Web Fang
					["cr"] = 217,	-- Venom Web Spider
				}),
				i(1130, {	-- Vial of Spider Venom
					["crs"] = {
						930,	-- Black Widow Hatchling
						949,	-- Carrion Recluse
						569,	-- Green Recluse
						574,	-- Naraxis
						539,	-- Pygmy Venom Web Spider
						217,	-- Venom Web Spider
					},
				}),
				i(920, {	-- Wicked Spiked Mace
					["crs"] = {
						909,	-- Defias Night Blade
						215,	-- Defias Night Runner
					},
				}),
			}),
		},
	}),
}));