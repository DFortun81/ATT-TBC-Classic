---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(ARATHI_HIGHLANDS, {
		["lore"] = "The Arathi Highlands are located in southeastern Lordaeron, east of Hillsbrad Foothills and south of the Hinterlands. It is a flat but craggy region that has traditionally been the home of the humans of Arathor, who gave the region its name. The main hubs of activity are now Refuge Pointe and Hammerfall, which houses bases for Alliance and Horde, respectively. The large city of Stromgarde lies in ruins to the southwest, and pockets of Syndicate resistance dot the land. The Boulderfist Orges also infest Arathor, and prove to be a constant threat to the Alliance, Horde, and Syndicate factions vying for supremacy.\n\nThe Syndicate, Boulderfist ogres and the beleaguered human defenders of Stromgarde battle for supremacy in this gray, dismal realm. Prince Galen Trollbane leads the human defenders, and his mighty city of Stromgarde is a ruined battleground where the three factions wage guerrilla war. The Trollbane family’s holdings include several ancient human artifacts, and a group called the Caretakers protects and preserves the most important pieces. To the south is the Thandol Span, a massive dwarven construction that bridges the canal between Lordaeron and Khaz Modan",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(761, {	-- Explore Arathi Highlands
					-- #if BEFORE WRATH
					["description"] = "Explore Arathi Highlands, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, {
				exploration(1858, "245:245:232:145"),	-- Boulder'gor
				exploration(316, "215:235:432:362"),	-- Boulderfist Hall
				exploration(333, "160:230:558:112"),	-- Circle of East Binding
				exploration(335, "210:185:286:310"),	-- Circle of Inner Binding
				exploration(336, "170:155:419:293"),	-- Circle of Outer Binding
				exploration(334, "190:210:138:54"),		-- Circle of West Binding
				exploration(315, "180:210:472:165"),	-- Dabyrie's Farmstead
				exploration(327, "256:215:171:424"),	-- Faldir's Cove
				exploration(314, "230:195:531:276"),	-- Go'Shek Farm
				exploration(321, "205:250:655:120"),	-- Hammerfall
				exploration(313, "230:240:192:90"),		-- Northfold Manor
				exploration(320, "175:225:370:186"),	-- Refuge Pointe
				exploration(324, "240:230:108:287"),	-- Stromgarde Keep
				exploration(880, "200:220:355:412"),	-- Thandol Span
				exploration(1857, "190:240:87:138"),	-- Thoradin's Wall
				exploration(317, "215:210:559:333"),	-- Witherbark Village
				--[[
				exploration(318, ""),	-- Drywhisker Gorge
				exploration(322, ""),	-- Blackwater Shipwrecks
				exploration(323, ""),	-- O'Breen's Camp
				exploration(325, ""),	-- The Tower of Arathor
				exploration(326, ""),	-- The Sanctum
				exploration(328, ""),	-- The Drowned Reef
				exploration(1837, ""),	-- Witherbark Caverns
				exploration(2401, ""),	-- The Forbidding Sea
				]]--
			}),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(17, {	-- Hammerfall, Arathi
					["cr"] = 2851,	-- Urda <Wind Rider Master>
					["coord"] = { 73.0, 32.6, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
				}),
				fp(16, {	-- Refuge Pointe, Arathi
					["cr"] = 2835,	-- Cedrik Prose <Gryphon Master>
					["coord"] = { 45.8, 46.2, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(695, {	-- An Apprentice's Enchantment
					["qg"] = 2788,	-- Apprentice Kryten
					["sourceQuest"] = 694,	-- Trelane's Defenses
					["coord"] = { 46.2, 47.8, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(696, {	-- Attack on the Tower
					["qg"] = 2789,	-- Skuerto
					["sourceQuest"] = 695,	-- An Apprentice's Enchantment
					["coord"] = { 46.65, 47.0, ARATHI_HIGHLANDS },
					["cost"] = {
						{ "i", 4532, 1 },	-- Trelane's Ember Agate
						{ "i", 4531, 1 },	-- Trelane's Orb
						{ "i", 4530, 1 },	-- Trelane's Phylactery
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4532,	-- Trelane's Ember Agate
							["questID"] = 696,	-- Attack on the Tower
							["coord"] = { 18.0, 67.9, ARATHI_HIGHLANDS },
						},
						{
							["itemID"] = 4531,	-- Trelane's Orb
							["questID"] = 696,	-- Attack on the Tower
							["coord"] = { 18.1, 69.1, ARATHI_HIGHLANDS },
						},
						{
							["itemID"] = 4530,	-- Trelane's Phylactery
							["questID"] = 696,	-- Attack on the Tower
							["coord"] = { 18.2, 68.2, ARATHI_HIGHLANDS },
						},
					},
				}),
				q(652, {	-- Breaking the Keystone
					["provider"] = { "o", 2702 },	-- Stone of Inner Binding
					["sourceQuest"] = 651,	-- Stones of Binding
					["cost"] = {
						{ "i", 4469, 1 },	-- Rod of Order
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4469,	-- Rod of Order
							["questID"] = 652,	-- Breaking the Keystone
							["cr"] = 2611,	-- Fozruk
						},
					},
				}),
				q(677, {	-- Call to Arms
					["qg"] = 2771,	-- Drum Fel
					["sourceQuest"] = 676,	-- The Hammer May Fall
					["coord"] = { 74.24, 33.91, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(678, {	-- Call to Arms
					["qg"] = 2771,	-- Drum Fel
					["sourceQuest"] = 677,	-- Call to Arms
					["coord"] = { 74.24, 33.91, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(679, {	-- Call to Arms
					["qg"] = 2771,	-- Drum Fel
					["sourceQuest"] = 678,	-- Call to Arms
					["coord"] = { 74.24, 33.91, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(9520),	-- Silent Hunter
						i(9521),	-- Skullsplitter
					},
				}),
				q(635, {	-- Crystal in the Mountains
					["provider"] = { "i", 4614 },  -- Pendant of Myzrael
					["description"] = "If you miss out on picking up the necklace first, you can still complete this quest even after finishing the rest of the chain.",
					["lvl"] = 30,
				}),
				q(667, {	-- Death From Below
					["qg"] = 2610,	-- Shakes O'Breen <Blackwater Raiders>
					["sourceQuest"] = 670,	-- Sunken Treasure (5/5)
					["coord"] = { 32.2, 81.6, ARATHI_HIGHLANDS },
					["lvl"] = 35,
					["groups"] = {
						i(4550),	-- Coldwater Ring
						i(4549),	-- Seafire Band
					},
				}),
				q(662, {	-- Deep Sea Salvage
					["lvl"] = 35,
					["qg"] = 2767,	-- First Mate Nilzlix
					["groups"] = {
						i(4511),	-- Black Water Hammer
					},
				}),
				q(664, {	-- Drowned Sorrows
					["lvl"] = 35,
					["qg"] = 2769,	-- Captain Steelgut
					["groups"] = {
						i(4509),	-- Seawolf Gloves
					},
				}),
				q(671, {	-- Foul Magics
					["qg"] = 2706,	-- Tor'gan
					["coord"] = { 74.6, 36.4, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4495, 10 },	-- Bloodstone Amulet
					},
					["lvl"] = 30,
				}),
				q(673, {	-- Foul Magics
					["qg"] = 2706,	-- Tor'gan
					["sourceQuest"] = 671,	-- Foul Magics
					["coord"] = { 74.6, 36.4, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						{
							["itemID"] = 4510,	-- Befouled Bloodstone Orb
							["questID"] = 673,	-- Foul Magics
							["cr"] = 2783,	-- Marez Cowl
							["coord"] = { 29.0, 64.0, ARATHI_HIGHLANDS },
						},
						i(4543),	-- White Drakeskin Cap
						i(4545),	-- Radiant Silver Bracers
					},
				}),
				q(847, {	-- Guile of the Raptor
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["qg"] = 2792,	-- Gor'mul
					["groups"] = {
						i(4546),	-- Call of the Raptor
					},
				}),
				q(702, {	-- Guile of the Raptor
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["qg"] = 2706,	-- Tor'gan
				}),
				q(701, {	-- Guile of the Raptor
					["qg"] = 2706,	-- Tor'gan
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4513, 12 },	-- Raptor Heart
					},
					["lvl"] = 29,
				}),
				q(655, {	-- Hammerfall
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["qg"] = 2792,	-- Gor'mul
				}),
				q(659, {	-- Hints of a New Plague? (1/5)
					["qg"] = 2711,	-- Phin Odelic
					["coord"] = { 50.3, 59.0, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(658, {	-- Hints of a New Plague? (2/5)
					["qg"] = 2712,	-- Quae
					["sourceQuest"] = 659,	-- Hints of a New Plague? (1/5)
					["coord"] = { 60.2, 53.8, ARATHI_HIGHLANDS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Sealed Folder
							["provider"] = { "i", 4482 },	-- Sealed Folder
							["coord"] = { 52.6, 61.6, ARATHI_HIGHLANDS },
							["cr"] = 2714,	-- Forsaken Courier
						}),
					},
				}),
				q(657, {	-- Hints of a New Plague? (3/5)
					["qg"] = 2712,	-- Quae
					["sourceQuest"] = 658,	-- Hints of a New Plague? (2/5)
					["coord"] = { 60.2, 53.8, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(660, {	-- Hints of a New Plague? (4/5)
					["qg"] = 2713,	-- Kinelory
					["sourceQuest"] = 657,	-- Hints of a New Plague? (3/5)
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(661, {	-- Hints of a New Plague? (5/5)
					["qg"] = 2712,	-- Quae
					["sourceQuest"] = 660,	-- Hints of a New Plague? (4/5)
					["coord"] = { 60.2, 53.8, ARATHI_HIGHLANDS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(15455),	-- Dustfall Robes
						i(15456),	-- Lightstep Leggings
					},
				}),
				q(663, {	-- Land Ho!
					["lvl"] = 35,
					["qg"] = 2766,	-- Lolo the Lookout
				}),
				q(647, {	-- MacKreel's Moonshine
					["qg"] = 2696,	-- Foggy MacKreel
					["coord"] = { 43.2, 92.6, ARATHI_HIGHLANDS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4441, 1 },	-- MacKreel's Moonshine
					},
					["lvl"] = 28,
				}),
				q(690, {	-- Malin's Request
					["qg"] = 2708,	-- Archmage Malin
					["coord"] = { 39.8, 81.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(697, {	-- Malin's Request
					["qg"] = 2789,	-- Skuerto
					["sourceQuest"] = 696,	-- Attack on the Tower
					["coord"] = { 46.6, 47, ARATHI_HIGHLANDS },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4533, 1 },	-- Sealed Letter to Archmage Malin
					},
					["lvl"] = 30,
					["groups"] = {
						i(4975),	-- Vigilant Buckler
						i(15104),	-- Wingborne Boots
					},
				}),
				{
					["provider"] = { "o", 2688 },	-- Keystone
					["allianceQuestData"] = q(653),	-- Myzrael's Allies [A]
					["hordeQuestData"] = q(688),	-- Myzrael's Allies [H]
					["sourceQuest"] = 652,	-- Breaking the Keystone
					["coord"] = { 36.1, 57.9, ARATHI_HIGHLANDS },
				},
				q(681, {	-- Northfold Manor
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2700,	-- Captain Nials
					["coord"] = { 45.9, 47.5, ARATHI_HIGHLANDS },
				}),
				q(674, {	-- Raising Spirits
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["qg"] = 2706,	-- Tor'gan
				}),
				q(675, {	-- Raising Spirits
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["qg"] = 2792,	-- Gor'mul
				}),
				q(672, {	-- Raising Spirits
					["qg"] = 2706,	-- Tor'gan
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4512, 10 },	-- Highland Raptor Eye
					},
					["lvl"] = 29,
				}),
				q(643, {	-- Sigil of Arathor
					["qg"] = 2703,	-- Zengu
					["sourceQuest"] = 641,	-- Sigil of Thoradin
					["coord"] = { 73.8, 33.8, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4458, 1 },	-- Sigil of Arathor
					},
					["lvl"] = 32,
				}),
				q(639, {	-- Sigil of Strom
					["qg"] = 2703,	-- Zengu
					["sourceQuest"] = 638,	-- Trollbane
					["coord"] = { 73.8, 33.8, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4440, 1 },	-- Sigil of Strom
					},
					["lvl"] = 32,
				}),
				q(641, {	-- Sigil of Thoradin
					["qg"] = 2706,	-- Tor'gan
					["sourceQuest"] = 640,	-- The Broken Sigil
					["coord"] = { 74.6, 36.4, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4453, 1 },	-- Sigil of Thoradin
					},
					["lvl"] = 32,
				}),
				q(644, {	-- Sigil of Trollbane
					["qg"] = 2703,	-- Zengu
					["sourceQuest"] = 643,	-- Sigil of Arathor
					["coord"] = { 73.8, 33.8, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4466, 1 },	-- Sigil of Trollbane
					},
					["lvl"] = 32,
				}),
				q(651, {	-- Stones of Binding
					["provider"] = { "o", 2701 },	-- Iridescent Shards
					["sourceQuest"] = 642,	-- The Princess Trapped
					["cost"] = {
						{ "i", 4483, 1 },	-- Burning Key
						{ "i", 4484, 1 },	-- Cresting Key
						{ "i", 4485, 1 },	-- Thundering Key
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4483,	-- Burning Key
							["questID"] = 651,	-- Stones of Binding
							["provider"] = { "o", 2689 },	-- Stone of West Binding
							["coord"] = { 25.5, 30.2, ARATHI_HIGHLANDS },
						},
						{
							["itemID"] = 4484,	-- Cresting Key
							["questID"] = 651,	-- Stones of Binding
							["provider"] = { "o", 2691 },	-- Stone of East Binding
							["coord"] = { 66.7, 29.8, ARATHI_HIGHLANDS },
						},
						{
							["itemID"] = 4485,	-- Thundering Key
							["questID"] = 651,	-- Stones of Binding
							["provider"] = { "o", 2690 },	-- Stone of Outer Binding
							["coord"] = { 52.1, 50.7, ARATHI_HIGHLANDS },
						},
					},
				}),
				q(682, {	-- Stromgarde Badges
					["qg"] = 2700,	-- Captain Nials
					["coord"] = { 45.9, 47.5, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4506, 15 },	-- Stromgarde Badge
					},
					["lvl"] = 30,
					["groups"] = {
						i(4741),	-- Stromgarde Cavalry Leggings
					},
				}),
				q(637, {	-- Sully Balloo's Letter
					["provider"] = { "i", 4433 },	-- Waterlogged Envelope
					["cost"] = { { "i", 4432, 1 } },	-- Sully Balloo's Letter
					["coord"] = { 44.3, 92.9, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(656, {	-- Summoning the Princess
					["qg"] = 2785,	-- Theldurin the Lost
					["sourceQuest"] = 692,	-- The Lost Fragments
					["coord"] = { 51.4, 76.8, BADLANDS },
					["cost"] = {
						{ "i", 4472, 1 },	-- Scroll of Myzrael
						{ "i", 4473, 1 },	-- Eldritch Shackles
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4473,	-- Eldritch Shackles
							["questID"] = 656,	-- Summoning the Princess
							["cr"] = 2755,	-- Myzrael
							["coord"] = { 62.6, 34.6, ARATHI_HIGHLANDS },
						},
						i(4743),	-- Pulsating Crystalline Shard
					},
				}),
				q(665, {	-- Sunken Treasure (1/5)
					["qg"] = 2768,	-- Professor Phizzlethorpe
					["coord"] = { 33.8, 80.6, ARATHI_HIGHLANDS },
					["lvl"] = 35,
				}),
				q(666, {	-- Sunken Treasure (2/5)
					["qg"] = 2774,	-- Doctor Draxlegauge
					["sourceQuest"] = 665,	-- Sunken Treasure (1/5)
					["coord"] = { 33.8, 80.4, ARATHI_HIGHLANDS },
					["cost"] = {
						{ "i", 4491, 1 },	-- Goggles of Gem Hunting
						{ "i", 4492, 10 },	-- Elven Gem
					},
					["lvl"] = 35,
					["groups"] = {
						i(4547),	-- Gnomish Zapper
						i(4548),	-- Servomechanic Sledgehammer
					},
				}),
				q(668, {	-- Sunken Treasure (3/5)
					["qg"] = 2774,	-- Doctor Draxlegauge
					["sourceQuest"] = 666,	-- Sunken Treasure (2/5)
					["coord"] = { 33.8, 80.4, ARATHI_HIGHLANDS },
					["cost"] = {
						{ "i", 4493, 1 },	-- Elven Gems
					},
					["lvl"] = 35,
				}),
				q(669, {	-- Sunken Treasure (4/5)
					["qg"] = 2610,	-- Shakes O'Breen
					["sourceQuest"] = 668,	-- Sunken Treasure (3/5)
					["coord"] = { 32.2, 81.4, ARATHI_HIGHLANDS },
					["maps"] = { STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 4502, 1 },	-- Sample Elven Gem
					},
					["lvl"] = 35,
				}),
				q(670, {	-- Sunken Treasure (5/5)
					["qg"] = 2487,	-- Fleet Master Seahorn <Blackwater Raiders>
					["sourceQuest"] = 669,	-- Sunken Treasure (4/5)
					["coord"] = { 27.2, 77.0, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 4494, 1 },	-- Seahorn's Sealed Letter
					},
					["lvl"] = 35,
				}),
				q(640, {	-- The Broken Sigil
					["qg"] = 2703,	-- Zengu
					["sourceQuest"] = 639,	-- Sigil of Strom
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4450, 11 },	-- Sigil Fragment
					},
					["lvl"] = 32,
				}),
				q(642, {	-- The Princess Trapped
					["provider"] = { "o", 138492 },	-- Shards of Myzrael
					["cost"] = {
						{ "i", 4435, 12 },	-- Mote of Myzrael
					},
					["lvl"] = 30,
				}),
				q(680, {	-- The Real Threat
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 4551, 1 },	-- Or'Kalar's Head
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4551,	-- Or'Kalar's Head
							["questID"] = 680,	-- The Real Threat
							["cr"] = 2773,	-- Or'Kalar
							["coord"] = { 20.8, 65.6, ARATHI_HIGHLANDS },
						},
						i(4976),	-- Mistspray Kilt
						i(4977),	-- Sword of Hammerfall
					},
				}),
				q(687, {	-- Theldurin the Lost
					["qgs"] = {
						2786,	-- Gerrig Bonegrip
						2787,	-- Zaruk
					},
					["sourceQuests"] = {
						653,	-- Myzrael's Allies
						688,	-- Myzrael's Allies
					},
					["coords"] = {
						{ 74.4, 35.6, ARATHI_HIGHLANDS },
						{ 50.6, 6.2, IRONFORGE },
					},
					["maps"] = { BADLANDS },
					["lvl"] = 30,
				}),
				q(694, {	-- Trelane's Defenses
					["qg"] = 2789,	-- Skuerto
					["sourceQuest"] = 693,	-- Wand over Fist
					["coord"] = { 46.6, 47.0, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4527, 1 },	-- Azure Agate
					},
					["lvl"] = 30,
				}),
				q(6622, {	-- Triage
					["qg"] = 12920,	-- Doctor Gregory Victor
					["coord"] = { 73.40, 36.89, ARATHI_HIGHLANDS },
					["requireSkill"] = FIRST_AID,
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
				q(645, {	-- Trol'kalar
					["lvl"] = 32,
					["races"] = HORDE_ONLY,
				}),
				q(646, {	-- Trol'kalar
					["lvl"] = 32,
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4508),	-- Blood-tinged Armor
						i(4507),	-- Pit Fighter's Shield
					},
				}),
				q(693, {	-- Wand over Fist
					["qg"] = 2789,	-- Skuerto
					["sourceQuest"] = 691,	-- Worth Its Weight in Gold
					["coord"] = { 46.6, 47.0, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4525,	-- Trelane's Wand of Invocation
							["questID"] = 693,	-- Wand over Fist
							["cr"] = 2793,	-- Kor'gresh Coldrage
							["coord"] = { 54.6, 81.6, ARATHI_HIGHLANDS },
						},
					},
				}),
				q(684, {	-- Wanted! Marez Cowl
					["provider"] = { "o", 2713 },	-- Wanted Board
					["coord"] = { 46.0, 47.7, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4515, 1 },	-- Marez's Head
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4515,	-- Marez's Head
							["questID"] = 684,	-- Wanted! Marez Cowl
							["cr"] = 2783,	-- Marez Cowl
							["coord"] = { 29.0, 64.0, ARATHI_HIGHLANDS },
						},
						i(4744),	-- Arcane Runed Bracers
					},
				}),
				q(685, {	-- Wanted! Otto and Falconcrest
					["provider"] = { "o", 2713 },	-- Wanted Board
					["coord"] = { 46.0, 47.7, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4517, 1 },	-- Falconcrest's Head
						{ "i", 4516, 1 },	-- Otto's Head
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 4517,	-- Falconcrest's Head
							["questID"] = 685,	-- Wanted! Otto and Falconcrest
							["cr"] = 2597,	-- Lord Falconcrest <Syndicate Leader>
							["coord"] = { 26.0, 65.6, ARATHI_HIGHLANDS },
						},
						{
							["itemID"] = 4516,	-- Otto's Head
							["questID"] = 685,	-- Wanted! Otto and Falconcrest
							["cr"] = 2599,	-- Otto <Bodyguard>
							["coord"] = { 26.0, 65.6, ARATHI_HIGHLANDS },
						},
						i(5247),	-- Rod of Sorrow
						i(4745),	-- War Rider Bracers
					},
				}),
				q(691, {	-- Worth Its Weight in Gold
					["qg"] = 2788,	-- Apprentice Kryten
					["coord"] = { 46.2, 47.8, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4503, 10 },	-- Witherbark Tusk
						{ "i", 4522, 4 },	-- Witherbark Medicine Pouch
						{ "i", 5040, 1 },	-- Shadow Hunter Knife
					},
					["lvl"] = 30,
				}),
			}),
			n(RARES, {
				n(2598, {	-- Darbel Montrose <Shadow Council Warlock>
					["coords"] = {
						{ 29.8, 60.2, ARATHI_HIGHLANDS },
						{ 27.0, 65.2, ARATHI_HIGHLANDS },
						{ 27.8, 66.4, ARATHI_HIGHLANDS },
					},
				}),
				n(2601, {	-- Foulbelly
					["coords"] = {
						{ 19.4, 64.0, ARATHI_HIGHLANDS },
						{ 20.0, 66.6, ARATHI_HIGHLANDS },
						{ 21.6, 65.4, ARATHI_HIGHLANDS },
					},
				}),
				n(2603, {	-- Kovork
					["coord"] = { 31.6, 45.8, ARATHI_HIGHLANDS },
					["groups"] = {
						i(5256),	-- Kovork's Rattle
					},
				}),
				n(2604, {	-- Molok the Crusher
					["coord"] = { 54.6, 79.0, ARATHI_HIGHLANDS },
				}),
				n(2606, {	-- Nimar the Slayer <Warband Leader>
					["coords"] = {
						{ 66.0, 60.2, ARATHI_HIGHLANDS },
						{ 72.8, 64.8, ARATHI_HIGHLANDS },
						{ 66.4, 64.8, ARATHI_HIGHLANDS },
						{ 63.2, 66.2, ARATHI_HIGHLANDS },
						{ 62.4, 73.4, ARATHI_HIGHLANDS },
						{ 64.8, 74.6, ARATHI_HIGHLANDS },
					},
					["groups"] = {
						i(5257),	-- Dark Hooded Cape
						i(2622),	-- Nimar's Tribal Headdress
					},
				}),
				n(2779, {	-- Prince Nazjak
					["coords"] = {
						{ 21.6, 82.8, ARATHI_HIGHLANDS },
						{ 23.6, 83.8, ARATHI_HIGHLANDS },
						{ 19.8, 88.8, ARATHI_HIGHLANDS },
						{ 23.6, 89.4, ARATHI_HIGHLANDS },
					},
					["groups"] = {
						i(1404),	-- Tidal Charm
					},
				}),
				n(2602, {	-- Ruul Onestone
					["coord"] = { 18.2, 68.6, ARATHI_HIGHLANDS },
				}),
				n(2600, {	-- Singer
					["coords"] = {
						{ 31.4, 26.6, ARATHI_HIGHLANDS },
						{ 33.6, 27.8, ARATHI_HIGHLANDS },
						{ 31.8, 31.8, ARATHI_HIGHLANDS },
						{ 34.8, 31.4, ARATHI_HIGHLANDS },
					},
					["groups"] = {
						i(5180),	-- Necklace of Harmony
						i(5181),	-- Vibrant Silk Cape
					},
				}),
				n(2605, {	-- Zalas Witherbark <Warband Leader>
					["coord"] = { 69.2, 79.6, ARATHI_HIGHLANDS },
				}),
			}),
			n(VENDORS, {
				n(2816, {	-- Androd Fadran <Leatherworking Supplies>
					["coord"] = { 45.1, 46.8, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(13288),	-- Pattern: Raptor Hide Belt
					},
				}),
				n(2805, {	-- Deneb Walker <Scrolls & Potions>
					["coord"] = { 27.0, 58.8, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(16084, { ["rank"] = 3 }),	-- Expert First Aid - Under Wraps
						i(16112),	-- Manual: Heavy Silk Bandage
						i(16113),	-- Manual: Mageweave Bandage
					},
				}),
				n(2812, {	-- Drovnar Strongbrew <Alchemy Supplies>
					["coord"] = { 46.4, 47.0, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6056),	-- Recipe: Frost Protection Potion
					},
				}),
				n(2810, {	-- Hammon Karwn <Superior Tradesman>
					["coord"] = { 46.5, 47.4, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if AFTER TBC
						i(21942, {	-- Design: Ruby Crown of Restoration
							["isLimited"] = true,
						}),
						-- #endif
						i(5973),	-- Pattern: Barbaric Leggings
						i(12228),	-- Recipe: Roast Raptor
					},
				}),
				n(1471, {	-- Jannos Ironwill <Superior Macecrafter>
					["coord"] = { 46.0, 47.7, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(10858),	-- Plans: Solid Iron Maul
					},
				}),
				n(6574, {	-- Jun'ha <Tailoring Supplies>
					["coord"] = { 72.8, 36.6, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(7089),	-- Pattern: Azure Silk Cloak
					},
				}),
				n(2821, {	-- Keena <Trade Goods>
					["coord"] = { 74.0, 32.6, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- #if AFTER TBC
						i(21942, {	-- Design: Ruby Crown of Restoration
							["isLimited"] = true,
						}),
						-- #endif
						i(3682),	-- Recipe: Curiously Tasty Omelet
						i(5973),	-- Pattern: Barbaric Leggings
						i(11163),	-- Formula: Enchant Bracer - Lesser Deflection
						i(12228),	-- Recipe: Roast Raptor
					},
				}),
				n(9555, {	-- Mu'uta <Bowyer>
					["coord"] = { 72.6, 33.6, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11305),	-- Dense Shortbow
					},
				}),
				n(2814, {	-- Narj Deepslice <Butcher>
					["coord"] = { 45.6, 47.6, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4609),	-- Recipe: Barbecued Buzzard Wing
					},
				}),
				n(2819, {	-- Tunkk <Leatherworking Supplies>
					["coord"] = { 74.8, 34.6, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(13287),	-- Pattern: Raptor Hide Harness
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(4527, {	-- Azure Agate
					["questID"] = 694,	-- Trelane's Defenses
					["cr"] = 2570,	-- Boulderfist Shaman
					["races"] = ALLIANCE_ONLY,
				}),
				i(4495, {	-- Bloodstone Amulet
					["questID"] = 671,	-- Foul Magics
					["races"] = HORDE_ONLY,
					["crs"] = {
						2586,	-- Syndicate Highwayman
						2589,	-- Syndicate Mercenary
						2587,	-- Syndicate Pathstalker
					},
				}),
				i(7272, {	-- Bolt Charged Bramble
					["coord"] = { 52, 51, ARATHI_HIGHLANDS },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 7273, 10 },	-- Witherbark Totem Stick
					},
				}),
				i(4479, {	-- Burning Charm
					["questID"] = 1714,	-- Essence of the Exile
					["classes"] = { WARRIOR },
					["altQuests"] = {
						1712,	-- Cyclonian
					},
					["crs"] = {
						2760,	-- Burning Exile
						2574,	-- Drywhisker Digger
						2572,	-- Drywhisker Kobold
						2573,	-- Drywhisker Surveyor
					},
				}),
				i(5624, {	-- Circlet of the Order
					["cr"] = 2584,	-- Stromgarde Defender
				}),
				i(4481, {	-- Cresting Charm
					["questID"] = 1714,	-- Essence of the Exile
					["classes"] = { WARRIOR },
					["altQuests"] = {
						1712,	-- Cyclonian
					},
					["crs"] = {
						2761,	-- Cresting Exile
						2574,	-- Drywhisker Digger
						2572,	-- Drywhisker Kobold
						2573,	-- Drywhisker Surveyor
					},
				}),
				i(11166, {	-- Formula: Enchant Gloves - Skinning
					["crs"] = {
						2606,	-- Nimar the Slayer <Warband Leader>
						2558,	-- Witherbark Berserker
						2556,	-- Witherbark Headhunter
						2557,	-- Witherbark Shadow Hunter
					},
				}),
				i(3341, {	-- Gauntlets of Ogre Strength
					["crs"] = {
						2564,	-- Boulderfist Enforcer
						2562,	-- Boulderfist Ogre
					},
				}),
				i(4512, {	-- Highland Raptor Eye
					["questID"] = 672,	-- Raising Spirits
					["races"] = HORDE_ONLY,
					["crs"] = {
						2559,	-- Highland Strider
						2560,	-- Highland Thrasher
					},
				}),
				i(2623, {	-- Holy Diadem
					["crs"] = {
						2782,	-- Caretaker Alaric
						2780,	-- Caretaker Nevlin
						2781,	-- Caretaker Weston
					},
				}),
				i(4435, {	-- Mote of Myzrael
					["questID"] = 642,	-- The Princess Trapped
					["crs"] = {
						2574,	-- Drywhisker Digger
						2572,	-- Drywhisker Kobold
						2573,	-- Drywhisker Surveyor
					},
				}),
				i(1993, {	-- Ogremind Ring
					["crs"] = {
						2570,	-- Boulderfist Shaman
						2567,	-- Boulderfist Magus
					},
				}),
				i(4513, {	-- Raptor Heart
					["questID"] = 701,	-- Guile of the Raptor
					["races"] = HORDE_ONLY,
					["cr"] = 2561,	-- Highland Fleshstalker
				}),
				i(1297, {	-- Robes of the Shadowcaster
					["crs"] = {
						2553,	-- Witherbark Shadowcaster
						2577,	-- Dark Iron Shadowcaster
					},
				}),
				i(5040, {	-- Shadow Hunter Knife
					["questID"] = 691,	-- Worth Its Weight in Gold
					["cr"] = 2557,	-- Witherbark Shadow Hunter
					["races"] = ALLIANCE_ONLY,
				}),
				i(4458, {	-- Sigil of Arathor
					["questID"] = 643,	-- Sigil of Arathor
					["races"] = HORDE_ONLY,
					["cr"] = 2612,	-- Lieutenant Valorcall
				}),
				i(4450, {	-- Sigil Fragment
					["questID"] = 640,	-- The Broken Sigil
					["races"] = HORDE_ONLY,
					["crs"] = {
						2584,	-- Stromgarde Defender
						2583,	-- Stromgarde Troll Hunter
						2585,	-- Stromgarde Vindicator
					},
				}),
				i(4440, {	-- Sigil of Strom
					["questID"] = 639,	-- Sigil of Strom
					["races"] = HORDE_ONLY,
					["crs"] = {
						2590,	-- Syndicate Conjuror
						2591,	-- Syndicate Magus
						2588,	-- Syndicate Prowler
					},
				}),
				i(4466, {	-- Sigil of Trollbane
					["questID"] = 644,	-- Sigil of Trollbane
					["races"] = HORDE_ONLY,
					["cr"] = 2607,	-- Prince Galen Trollbane
				}),
				i(3345, {	-- Silk Wizard Hat
					["cr"] = 2591,	-- Syndicate Magus
				}),
				i(6991, {	-- Smoldering Coal
					["questID"] = 4784,	-- Components for the Enchanted Gold Bloodrobe
					["cr"] = 2760,	-- Burning Exile
					["classes"] = { WARLOCK },
				}),
				i(4506, {	-- Stromgarde Badge
					["questID"] = 682,	-- Stromgarde Badges
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						2590,	-- Syndicate Conjuror
						2591,	-- Syndicate Magus
						2588,	-- Syndicate Prowler
					},
				}),
				i(4480, {	-- Thundering Charm
					["questID"] = 1714,	-- Essence of the Exile
					["classes"] = { WARRIOR },
					["altQuests"] = {
						1712,	-- Cyclonian
					},
					["crs"] = {
						2762,	-- Thundering Exile
						2574,	-- Drywhisker Digger
						2572,	-- Drywhisker Kobold
						2573,	-- Drywhisker Surveyor
					},
				}),
				i(4522, {	-- Witherbark Medicine Pouch
					["questID"] = 691,	-- Worth Its Weight in Gold
					["cr"] = 2555,	-- Witherbark Witch Doctor
					["races"] = ALLIANCE_ONLY,
				}),
				i(7273, {	-- Witherbark Totem Stick
					["classes"] = { MAGE },
					["crs"] = {
						2554,	-- Witherbark Axe Thrower
						2558,	-- Witherbark Berserker
						2556,	-- Witherbark Headhunter
						2557,	-- Witherbark Shadow Hunter
						2553,	-- Witherbark Shadowcaster
						2552,	-- Witherbark Troll
						2555,	-- Witherbark Witch Doctor
						2605,	-- Zalas Witherbark <Warband Leader>
					},
				}),
				i(4503, {	-- Witherbark Tusk
					["questID"] = 691,	-- Worth Its Weight in Gold
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						2554,	-- Witherbark Axe Thrower
						2558,	-- Witherbark Berserker
						2556,	-- Witherbark Headhunter
						2557,	-- Witherbark Shadow Hunter
						2553,	-- Witherbark Shadowcaster
						2552,	-- Witherbark Troll
						2555,	-- Witherbark Witch Doctor
						2605,	-- Zalas Witherbark <Warband Leader>
					},
				}),
			}),
		},
	}),
}));