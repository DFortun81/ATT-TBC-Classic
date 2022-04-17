---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(SILVERPINE_FOREST, {
		["lore"] = "Silverpine Forest, or simply Silverpine, is a vast, ancient wood that runs along Lordaeron's rugged western coast. The land ranges from fairly flat to hilly, and is nestled among even taller mountains. The forest is eerily silent save for the occasional unnatural howling echoing among the trees. Mossy overhangs shiver in the cold breeze, and the trees are all sickly or dying. Dilapidated farmsteads and abandoned mines dot the land, home now to the darker denizens of the woods.\n\nThis woodland is haunted and wild, characterized by its tall, silver-barked pines towering over grassy knolls. The Alliance once protected Silverpine Forest when it was verdant and lively. Now the place is shrouded in ghostly mists. Forsaken control the northern forest[ and constantly clash with the wretched Rot Hide tribe of gnolls. What remains of the human population retains control of the southern forest, but they are desperate and their forces thinly stretched. Dalaran sends frequent expeditions into Silverpine to defend these people and study the undead plague and worgen curse — a mysterious affliction that causes its victims to transform into bloodthirsty, lycanthropic worgen when the moon rises.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(769, {	-- Explore Silverpine Forest
					-- #if BEFORE WRATH
					["description"] = "Explore Silverpine Forest, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["140:125:391:446"] = 204,	-- Pyrewood Village
				["160:170:470:261"] = 213,	-- Deep Elem Mine
				["165:185:382:252"] = 229,	-- Olsen's Farthing
				["175:165:402:65"] = 240,	-- The Dead Field
				["180:128:323:128"] = 928,	-- North Tide's Hollow
				["180:185:457:144"] = 237,	-- The Decrepit Ferry
				["185:165:286:37"] = 226,	-- The Skittering Dark
				["210:160:352:168"] = 228,	-- The Sepulcher
				["210:215:379:447"] = 230,	-- The Greymane Wall
				["220:160:364:359"] = 236,	-- Shadowfang Keep
				["240:180:491:417"] = 231,	-- Beren's Peril
				["240:240:494:262"] = 233,	-- Ambermill
				["250:215:593:74"] = 172,	-- Fenris Isle
				["256:160:465:0"] = 238,	-- Malden's Orchard
				["256:220:459:13"] = 927,	-- The Shining Strand
				--[[
				[235] = 1,                               -- Fenris Keep
				[227] = 5,                               -- Valgan's Field
				[232] = 10,                              -- The Dawning Isles
				[239] = 16,                              -- The Ivar Patch
				[305] = 18,                              -- North Tide's Run
				[306] = 19,                              -- South Tide's Run
				[926] = 20,                              -- Bucklebree Farm
				[1338] = 23,                             -- Lordamere Lake
				[2398] = 24,                             -- The Great Sea
				]]--
			})),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(10, {	-- The Sepulcher, Silverpine Forest
					["cr"] = 2226,	-- Karos Razok <Bat Handler>
					["coord"] = { 45.6, 42.6, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(530, {	-- A Husband's Revenge
					["qg"] = 2050,	-- Raleigh Andrean
					["sourceQuest"] = 441,	-- Raleigh and the Undercity
					["coord"] = { 62, 43, UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3613, 1 },	-- Valdred's Hands
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 3613,	-- Valdred's Hands
							["questID"] = 530,	-- A Husband's Revenge
							["cr"] = 2332,	-- Valdred Moray
							["coord"] = { 46.4, 84.6, SILVERPINE_FOREST },
						},
						i(3235),	-- Ring of Scorn
					},
				}),
				q(447, {	-- A Recipe For Death
					["qg"] = 1937,	-- Apothecary Renferrel
					["coord"] = { 42.8, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3253, 6 },	-- Grizzled Bear Heart
						{ "i", 3254, 6 },	-- Skittering Blood
					},
					["lvl"] = 9,
					["groups"] = {
						i(3448),	-- Senggin Root
					},
				}),
				q(450, {	-- A Recipe For Death
					["qg"] = 2055,	-- Master Apothecary Faranell
					["sourceQuest"] = 447,	-- A Recipe For Death
					["coord"] = { 48.6, 69.4, UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(451, {	-- A Recipe For Death
					["qg"] = 1937,	-- Apothecary Renferrel
					["sourceQuest"] = 450,	-- A Recipe For Death
					["coord"] = { 42.8, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3257, 6 },	-- Lake Creeper Moss
						{ "i", 3256, 6 },	-- Lake Skulker Moss
						{ "i", 3258, 1 },	-- Hardened Tumor
					},
					["lvl"] = 9,
					["groups"] = {
						i(3451),	-- Nightglow Concoction
						i(3582),	-- Acidproof Cloak
						i(2458),	-- Elixir of Minor Fortitude
						i(2459),	-- Swiftness Potion
					},
				}),
				q(479, {	-- Ambermill Investigations
					["qg"] = 2121,	-- Shadow Priest Allister
					["sourceQuest"] = 482,	-- Dalaran's Intentions
					["coord"] = { 44, 41, SILVERPINE_FOREST },
					["cost"] = {
						{ "i", 3354, 8 },	-- Dalaran Pendant
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(422, {	-- Arugal's Folly
					["qg"] = 1938,	-- Dalar Dawnweaver
					["sourceQuest"] = 421,	-- Prove Your Worth
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3155, 1 },	-- Remedy of Arugal
					},
					["lvl"] = 9,
					["groups"] = {
						{
							["itemID"] = 3155,	-- Remedy of Arugal
							["questID"] = 422,	-- Arugal's Folly
							["coord"] = { 52.8, 28.4, SILVERPINE_FOREST },
						},
					},
				}),
				q(423, {	-- Arugal's Folly
					["qg"] = 1938,	-- Dalar Dawnweaver
					["sourceQuest"] = 422,	-- Arugal's Folly
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3157, 3 },	-- Darksoul Shackle
						{ "i", 3156, 6 },	-- Glutton Shackle
					},
					["lvl"] = 9,
				}),
				q(424, {	-- Arugal's Folly
					["qg"] = 1938,	-- Dalar Dawnweaver
					["sourceQuest"] = 423,	-- Arugal's Folly
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3634, 1 },	-- Head of Grimson
					},
					["lvl"] = 9,
					["groups"] = {
						{
							["itemID"] = 3634,	-- Head of Grimson
							["questID"] = 424,	-- Arugal's Folly
							["cr"] = 1972,	-- Grimson the Pale
							["coord"] = { 58.6, 44.8, SILVERPINE_FOREST },
						},
					},
				}),
				q(99, {	-- Arugal's Folly
					["qg"] = 1938,	-- Dalar Dawnweaver
					["sourceQuest"] = 424,	-- Arugal's Folly
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3218, 6 },	-- Pyrewood Shackle
					},
					["lvl"] = 9,
					["groups"] = {
						i(3586),	-- Logsplitter
						i(3570),	-- Bonegrinding Pestle
						i(5242),	-- Cinder Wand
					},
				}),
				q(442, {	-- Assault on Fenris Isle
					["qg"] = 1952,	-- High Executor Hadrec
					["sourceQuest"] = 448,	-- Report to Hadrec
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3623, 1 },	-- Thule's Head
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 3623,	-- Thule's Head
							["questID"] = 442,	-- Assault on Fenris Isle
							["cr"] = 1947,	-- Thule Ravenclaw
							["coord"] = { 65.6, 24.6, SILVERPINE_FOREST },
						},
						i(3461),	-- High Robe of the Adjudicator
						i(3462),	-- Talonstrike
					},
				}),
				q(516, {	-- Beren's Peril
					["qg"] = 2121,	-- Shadow Priest Allister
					["coord"] = { 44, 41, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						i(5252),	-- Wand of Decay
					},
				}),
				q(477, {	-- Border Crossings
					["qg"] = 2121,	-- Shadow Priest Allister
					["coord"] = { 44, 41, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(481, {	-- Dalar's Analysis
					["qg"] = 2121,	-- Shadow Priest Allister
					["sourceQuest"] = 478,	-- Maps and Runes
					["coord"] = { 44, 41, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(482, {	-- Dalaran's Intentions
					["qg"] = 1938,	-- Dalar Dawnweaver
					["sourceQuest"] = 481,	-- Dalar's Analysis
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(435, {	-- Escorting Erland
					["qg"] = 1978,	-- Deathstalker Erland
					["coord"] = { 56.2, 9.2, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(3455),	-- Deathstalker Shortsword
					},
				}),
				q(425, {	-- Ivar the Foul
					["qg"] = 1950,	-- Rane Yorick
					["coord"] = { 53.4, 13.4, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3621, 1 },	-- Ivar's Head
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 3621,	-- Ivar's Head
							["questID"] = 425,	-- Ivar the Foul
							["cr"] = 1971,	-- Ivar the Foul
							["coord"] = { 51.8, 13.8, SILVERPINE_FOREST },
						},
						i(3453),	-- Quilted Bracers
						i(3583),	-- Weathered Belt
					},
				}),
				q(493, {	-- Journey to Hillsbrad Foothills
					["qg"] = 1937,	-- Apothecary Renferrel
					["coord"] = { 42.8, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(428, {	-- Lost Deathstalkers
					["qg"] = 1952,	-- High Executor Hadrec
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(478, {	-- Maps and Runes
					["provider"] = { "o", 1627 },	-- Dalaran Crate
					["sourceQuest"] = 477,	-- Border Crossings
					["coord"] = { 49.9, 60.4, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(421, {	-- Prove Your Worth
					["qg"] = 1938,	-- Dalar Dawnweaver
					["cr"] = 1769,	-- Moonrage Whitescalp
					["coord"] = { 44.2, 39.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(452, {	-- Pyrewood Ambush
					["qg"] = 2058,	-- Deathstalker Faerleia
					["coord"] = { 46.4, 74.2, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
					["groups"] = {
						i(3450),	-- Faerleia's Shield
						i(2818),	-- Stretched Leather Trousers
						i(3449),	-- Mystic Shawl
					},
				}),
				q(441, {	-- Raleigh and the Undercity
					["qg"] = 1499,	-- Magistrate Sevren
					["sourceQuest"] = 440,	-- The Engraved Ring
					["coord"] = { 61.2, 50.8, TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(448, {	-- Report to Hadrec
					["qg"] = 1937,	-- Apothecary Renferrel
					["sourceQuest"] = 446,	-- Thule Ravenclaw
					["coord"] = { 42.8, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(3240),	-- Coarse Weightstone
						i(2863),	-- Coarse Sharpening Stone
						i(2313),	-- Medium Armor Kit
					},
				}),
				q(460, {	-- Resting in Pieces
					["provider"] = { "i", 3317 },	-- A Talking Head
					["coord"] = { 65.2, 32.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(430, {	-- Return to Quinn
					["qg"] = 1937,	-- Apothecary Renferrel
					["sourceQuest"] = 429,	-- Wild Hearts
					["coord"] = { 53.4, 13.4, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(6323, {	-- Ride to the Undercity
					["qg"] = 2226,	-- Karos Razok
					["sourceQuest"] = 6321,	-- Supplying the Sepulcher
					["coord"] = { 45.6, 42.4, SILVERPINE_FOREST },
					["races"] = { UNDEAD },
					["cost"] = {
						{ "i", 16209, 1 },	-- Podrig's Order
					},
					["lvl"] = 10,
				}),
				q(439, {	-- Rot Hide Clues
					["provider"] = { "o", 1593 },	-- Corpse Laden Boat
					["sourceQuest"] = 438,	-- The Decrepit Ferry
					["coord"] = { 58.4, 34.9, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(443, {	-- Rot Hide Ichor
					["qg"] = 1952,	-- High Executor Hadrec
					["sourceQuest"] = 439,	-- Rot Hide Clues
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3236, 8 },	-- Rot Hide Ichor
					},
					["lvl"] = 10,
				}),
				q(444, {	-- Rot Hide Origins
					["qg"] = 1937,	-- Apothecary Renferrel
					["sourceQuest"] = 443,	-- Rot Hide Ichor
					["coord"] = { 42.8, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(3221, {	-- Speak with Renferrel
					["qg"] = 1952,	-- High Executor Hadrec
					["sourceQuest"] = 449,	-- The Deathstalkers' Report
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(6321, {	-- Supplying the Sepulcher
					["qgs"] = {
						1745,	-- Deathguard Morris
						6389,	-- Deathguard Podrig
					},
					["coords"] = {
						{ 43.4, 41.6, SILVERPINE_FOREST },
						{ 60.2, 52.2, TIRISFAL_GLADES },
					},
					["races"] = { UNDEAD },
					["cost"] = {
						{ "i", 16209, 1 },	-- Podrig's Order
					},
					["lvl"] = 10,
				}),
				q(437, {	-- The Dead Fields
					["qg"] = 1952,	-- High Executor Hadrec
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3622, 1 },	-- Essence of Nightlash
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 3622,	-- Essence of Nightlash
							["questID"] = 437,	-- The Dead Fields
							["cr"] = 1983,	-- Nightlash
							["coord"] = { 45.8, 20.4, SILVERPINE_FOREST },
						},
						i(3454),	-- Reconnaissance Boots
					},
				}),
				q(449, {	-- The Deathstalkers' Report
					["qg"] = 1950,	-- Rane Yorick
					["sourceQuest"] = 435,	-- Escorting Erland
					["coord"] = { 53.4, 13.4, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(438, {	-- The Decrepit Ferry
					["qg"] = 1952,	-- High Executor Hadrec
					["sourceQuest"] = 437,	-- The Dead Fields
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(440, {	-- The Engraved Ring
					["qg"] = 1952,	-- High Executor Hadrec
					["sourceQuest"] = 439,	-- Rot Hide Clues
					["coord"] = { 43.4, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(461, {	-- The Hidden Niche
					["provider"] = { "o", 1599 },	-- Shallow Grave
					["sourceQuest"] = 460,	-- Resting in Pieces
					["coord"] = { 67.8, 24.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3318, 1 },	-- Alaric's Remains
					},
					["lvl"] = 12,
				}),
				q(480, {	-- The Weaver
					["qg"] = 2121,	-- Shadow Priest Allister
					["coord"] = { 44, 41, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3515, 1 },	-- Ataeric's Staff
					},
					["lvl"] = 10,
					["groups"] = {
						i(3452),	-- Ceranium Rod
						i(3585),	-- Camouflaged Tunic
					},
				}),
				q(446, {	-- Thule Ravenclaw
					["qg"] = 1498,	-- Bethor Iceshard
					["sourceQuest"] = 444,	-- Rot Hide Origins
					["coord"] = { 42.8, 40.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(3251),	-- Bethor's Potion
					},
				}),
				q(491, {	-- Wand to Bethor
					["provider"] = { "o", 112888 },	-- Dusty Shelf
					["sourceQuest"] = 461,	-- The Hidden Niche
					["coord"] = { 65.3, 24.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3425, 1 },	-- Woven Wand
					},
					["lvl"] = 12,
					["groups"] = {
						i(3457),	-- Stamped Trousers
						i(3458),	-- Rugged Mail Gloves
						i(3581),	-- Serrated Knife
					},
				}),
				q(429, {	-- Wild Hearts
					["qg"] = 1950,	-- Rane Yorick
					["sourceQuest"] = 428,	-- Lost Deathstalkers
					["coord"] = { 53.4, 13.4, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3164, 6 },	-- Discolored Worg Heart
					},
					["lvl"] = 10,
					["groups"] = {
						i(4597),	-- Recipe: Discolored Healing Potion
						i(4596),	-- Discolored Healing Potion
					},
				}),
				q(1359, {	-- Zinge's Delivery
					["qg"] = 1937,	-- Apothecary Renferrel
					["sourceQuest"] = 3221,	-- Speak with Renferrel
					["coord"] = { 42.8, 40.8, SILVERPINE_FOREST },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6016, 1 },	-- Wolf Heart Sample
					},
					["lvl"] = 10,
				}),
			}),
			n(RARES, {
				n(1920, {	-- Dalaran Spellscribe
					["coord"] = { 63.4, 65.2, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(8491),	-- Cat Carrier (Black Tabby)
						i(4437),	-- Channeler's Staff
						i(4436),	-- Jewel-encrusted Sash
					},
				}),
				n(12431, {  -- Gorefang
					["coords"] = {
						{ 60.2, 10.0, SILVERPINE_FOREST },
						{ 47.6, 17.6, SILVERPINE_FOREST },
						{ 51.8, 19.6, SILVERPINE_FOREST },
						{ 48.0, 25.8, SILVERPINE_FOREST },
					},
				}),
				n(12433, {  -- Krethis Shadowspinner
					["coords"] = {
						{ 35.6, 9.0, SILVERPINE_FOREST },
						{ 37.2, 15.6, SILVERPINE_FOREST },
					},
				}),
				n(12432, {  -- Old Vicejaw
					["coords"] = {
						{ 54.6, 52.0, SILVERPINE_FOREST },
						{ 51.6, 63.8, SILVERPINE_FOREST },
						{ 56.2, 62.4, SILVERPINE_FOREST },
					},
				}),
				n(2283, {	-- Ravenclaw Regent
					["coord"] = { 57.6, 69.8, SILVERPINE_FOREST },
					["groups"] = {
						i(6628),	-- Raven's Claws
						i(5969),	-- Regent's Cloak
					},
				}),
				n(1944, {	-- Rot Hide Bruiser
					["coord"] = { 67.6, 24.4, SILVERPINE_FOREST },
					["groups"] = {
						i(4439),	-- Bruiser Club
						i(5975),	-- Ruffian Belt
					},
				}),
				n(1948, {	-- Snarlmane
					["coord"] = { 66.2, 25.0, SILVERPINE_FOREST },
					["groups"] = {
						i(4445),	-- Flesh Carver
					},
				}),
			}),
			n(VENDORS, {
				n(3552, {	-- Alexandre Lefevre <Leather Armor Merchant>
					["coord"] = { 44.6, 39.2, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4788),	-- Agile Boots
						i(4789),	-- Stable Boots
					},
				}),
				n(3554, {	-- Andrea Boynton <Clothier>
					["coord"] = { 44.6, 39.2, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4781),	-- Whispering Vest
						i(4782),	-- Solstice Robe
						i(4786),	-- Wise Man's Belt
					},
				}),
				n(3556, {	-- Andrew Hilbert <Trade Goods>
					["coord"] = { 43.2, 40.6, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5787),	-- Pattern: Murloc Scale Breastplate
						i(5786),	-- Pattern: Murloc Scale Belt
						i(6272),	-- Pattern: Blue Linen Robe
						i(5771),	-- Pattern: Red Linen Bag
						i(6892),	-- Recipe: Smoked Bear Meat
					},
				}),
				n(5748, {	-- Killian Sanatha <Fisherman>
					["coord"] = { 33.0, 17.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6328),	-- Recipe: Longjaw Mud Snapper
						i(6368),	-- Recipe: Rainbow Fin Albacoreat
					},
				}),
				n(5758, {	-- Leo Sarn <Enchanting Supplies>
					["coord"] = { 54.0, 82.2, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- #if BEFORE CATA
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						-- #endif
						i(6349),	-- Formula: Enchant 2H Weapon - Lesser Intellect
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
				n(5757, {	-- Lilly <Enchanting Supplies>
					["coord"] = { 43.0, 50.8, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- #if BEFORE CATA
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						-- #endif
						i(6346),	-- Formula: Enchant Chest - Lesser Mana
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
				n(9553, {	-- Nadia Vernon <Bowyer>
					["coord"] = { 45.0, 39.4, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11304),	-- Fine Longbow
					},
				}),
				n(3534, {	-- Wallace the Blind <Weaponsmith>
					["coord"] = { 46.4, 86.4, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4777),	-- Ironwood Maul
						i(4778),	-- Heavy Spiked Mace
						i(4817),	-- Blessed Claymore
						i(4818),	-- Executioner's Sword
						i(11304),	-- Fine Longbow
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(3317, {	-- A Talking Head
					["races"] = HORDE_ONLY,
					["crs"] = {
						1943,	-- Raging Rot Hide
						1944,	-- Rot Hide Bruiser
						1939,	-- Rot Hide Brute
						1940,	-- Rot Hide Plague Weaver
						1942,	-- Rot Hide Savage
					},
				}),
				i(7231, {	-- Astor's Letter of Introduction
					["classes"] = { ROGUE },
					["races"] = { UNDEAD },
					["cr"] = 6497,	-- Astor Hadren
				}),
				i(4767, {	-- Coppercloth Gloves
					["cr"] = 3578,	-- Dalaran Miner
				}),
				i(7812, {	-- Corrupt Manifestation's Bracers
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["cr"] = 5894,	-- Corrupt Minor Manifestation of Water
				}),
				i(3354, {	-- Dalaran Pendant
					["races"] = HORDE_ONLY,
					["crs"] = {
						1915,	-- Dalaran Conjuror
						1914,	-- Dalaran Mage
						1912,	-- Dalaran Protector
					},
				}),
				i(7293, {	-- Dalaran Mana Gem
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["crs"] = {
						1867,	-- Dalaran Apprentice
						3577,	-- Dalaran Brewmaster
						1915,	-- Dalaran Conjuror
						1914,	-- Dalaran Mage
						3578,	-- Dalaran Miner
						1912,	-- Dalaran Protector
						1913,	-- Dalaran Warder
						1888,	-- Dalaran Watcher
						1889,	-- Dalaran Wizard
					},
				}),
				i(5110, {	-- Dalaran Wizard's Robe
					["crs"] = {
						2120,	-- Archmage Ataeric
						1867,	-- Dalaran Apprentice
						3577,	-- Dalaran Brewmaster
						1915,	-- Dalaran Conjuror
						1914,	-- Dalaran Mage
						3578,	-- Dalaran Miner
						1912,	-- Dalaran Protector
						1920,	-- Dalaran Spellscribe
						1913,	-- Dalaran Warder
						1888,	-- Dalaran Watcher
						1889,	-- Dalaran Wizard
					},
				}),
				i(6312, {	-- Dalin's Heart
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
					["cr"] = 5682,	-- Dalin Forgewright
				}),
				i(3157, {	-- Darksoul Shackle
					["cr"] = 1782,	-- Moonrage Darksoul
					["races"] = HORDE_ONLY,
				}),
				i(3164, {	-- Discolored Worg Heart
					["races"] = HORDE_ONLY,
					["crs"] = {
						1923,	-- Bloodsnout Worg
						12431,	-- Gorefang
						1766,	-- Mottled Worg
						1765,	-- Worg
					},
				}),
				i(3156, {	-- Glutton Shackle
					["cr"] = 1779,	-- Moonrage Glutton
					["races"] = HORDE_ONLY,
				}),
				i(3253, {	-- Grizzled Bear Heart
					["races"] = HORDE_ONLY,
					["crs"] = {
						1778,	-- Ferocious Grizzled Bear
						1797,	-- Giant Grizzled Bear
						12432,	-- Old Vicejaw
					},
				}),
				i(3258, {	-- Hardened Tumor
					["races"] = HORDE_ONLY,
					["crs"] = {
						1909,	-- Vile Fin Lakestalker
						1908,	-- Vile Fin Oracle
						1957,	-- Vile Fin Shorecreeper
						1767,	-- Vile Fin Shredder
						1958,	-- Vile Fin Tidecaller
						1768,	-- Vile Fin Tidehunter
					},
				}),
				i(3257, {	-- Lake Creeper Moss
					["races"] = HORDE_ONLY,
					["crs"] = {
						1956,	-- Elder Lake Creeper
						1955,	-- Lake Creeper
					},
				}),
				i(3256, {	-- Lake Skulker Moss
					["races"] = HORDE_ONLY,
					["crs"] = {
						1954,	-- Elder Lake Skulker
						1953,	-- Lake Skulker
					},
				}),
				i(5771, {	-- Pattern: Red Linen Bag
					["crs"] = {
						3531,	-- Moonrage Tailor
						3530,	-- Pyrewood Tailor
					},
				}),
				i(3218, {	-- Pyrewood Shackle
					["races"] = HORDE_ONLY,
					["crs"] = {
						3529,	-- Moonrage Armorer
						1896,	-- Moonrage Elder
						3533,	-- Moonrage Leatherworker
						1893,	-- Moonrage Sentry
						3531,	-- Moonrage Tailor
						1892,	-- Moonrage Watcher
						3528,	-- Pyrewood Armorer
						1895,	-- Pyrewood Elder
						3532,	-- Pyrewood Leatherworker
						1894,	-- Pyrewood Sentry
						3530,	-- Pyrewood Tailor
						1891,	-- Pyrewood Watcher
					},
				}),
				i(3236, {	-- Rot Hide Ichor
					["races"] = HORDE_ONLY,
					["crs"] = {
						1943,	-- Raging Rot Hide
						1944,	-- Rot Hide Bruiser
						1939,	-- Rot Hide Brute
						1940,	-- Rot Hide Plague Weaver
						1942,	-- Rot Hide Savage
					},
				}),
				i(3254, {	-- Skittering Blood
					["races"] = HORDE_ONLY,
					["crs"] = {
						12433,	-- Krethis Shadowspinner
						1781,	-- Mist Creeper
						1780,	-- Moss Stalker
					},
				}),
			}),
		},
	}),
}));