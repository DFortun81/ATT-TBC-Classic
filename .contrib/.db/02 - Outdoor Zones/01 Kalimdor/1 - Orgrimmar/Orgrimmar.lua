---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if BEFORE CATA
local OnTooltipForCityFactionReputation = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
-- #if AFTER TBC
		local repPerTurnIn = isHuman and 82.5 or 75;
-- #else
		local repPerTurnIn = isHuman and 55 or 50;
-- #endif
		local x, n = math.ceil((42000 - reputation) / repPerTurnIn), math.ceil(42000 / repPerTurnIn);
		GameTooltip:AddDoubleLine("Runecloth Turn Ins", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
	end
end]];
-- #endif
root("Zones", m(KALIMDOR, {
	m(ORGRIMMAR, {
		["lore"] = "Named in honor of the legendary Orgrim Doomhammer, Orgrimmar was founded as the capital city of the orcs' new homeland. Built within a huge, winding canyon in the harsh land of Durotar, Orgrimmar stands as one of the mightiest warrior cities in the world. Behind Orgrimmar's immense walls, elderly shaman pass their knowledge on to the Horde's newest generation of leaders, while warriors spar in the gladiatorial arena, honing their skills in preparation for the trials that await them in this dangerous land.",
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(1836, applyclassicphase(TBC_PHASE_ONE, {	-- Old Crafty
					["provider"] = { "i", 34486 },	-- Old Crafty
					["requireSkill"] = FISHING,
					-- #if BEFORE WRATH
					["description"] = "Fish up Old Crafty in Orgrimmar.",
					["OnUpdate"] = [[function(t) t.SetAchievementCollected(t.achievementID, GetItemCount(34486, true) > 0); end]],
					-- #endif
				})),
			}),
			n(FACTIONS, {
				faction(530, {	-- Darkspear Trolls
					["icon"] = asset("Achievement_Character_Troll_Male"),
					-- #if BEFORE CATA
					["OnTooltip"] = OnTooltipForCityFactionReputation,
					-- #endif
					["races"] = HORDE_ONLY,
				}),
				faction(76, {	-- Orgrimmar
					["icon"] = asset("Achievement_Character_Orc_Male"),
					-- #if BEFORE CATA
					["OnTooltip"] = OnTooltipForCityFactionReputation,
					-- #endif
					["races"] = HORDE_ONLY,
				}),
			}),
			applyclassicphase(TBC_PHASE_ONE, prof(FISHING, {
				i(34864),	-- Baby Crocolisk
				i(34486, {	-- Old Crafty
					-- #if BEFORE WRATH
					["description"] = "Keep this in your bank until Achievements are added otherwise you'll need to fish it up again. Fair warning!",
					-- #else
					["description"] = "Keep this in your bank until Transmog is added otherwise you'll need to fish it up again. Fair warning!",
					-- #endif
				}),
			})),
			n(FLIGHT_PATHS, {
				fp(23, {	-- Orgrimmar, Durotar
					["cr"] = 3310,	-- Doras <Wind Rider Master>
					["coord"] = { 45.2, 63.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(7831, {	-- A Donation of Mageweave
					["qg"] = 14726,	-- Rashona Straglash
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7835, {	-- A Donation of Mageweave
					["qg"] = 14727,	-- Vehena
					["coord"] = { 37.72, 87.89, ORGRIMMAR },
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7824, {	-- A Donation of Runecloth
					["qg"] = 14726,	-- Rashona Straglash
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(7836, {	-- A Donation of Runecloth
					["qg"] = 14727,	-- Vehena
					["coord"] = { 37.72, 87.89, ORGRIMMAR },
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(7827, {	-- A Donation of Silk
					["qg"] = 14726,	-- Rashona Straglash
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(7834, {	-- A Donation of Silk
					["qg"] = 14727,	-- Vehena
					["coord"] = { 37.72, 87.89, ORGRIMMAR },
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(7826, {	-- A Donation of Wool
					["qg"] = 14726,	-- Rashona Straglash
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(7833, {	-- A Donation of Wool
					["qg"] = 14727,	-- Vehena
					["coord"] = { 37.72, 87.89, ORGRIMMAR },
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(7341, {	-- A Fair Trade
					["lvl"] = 52,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["g"] = {
						i(18042),	-- Thorium Headed Arrow
					},
				}),
				q(7832, {	-- Additional Runecloth [Darkspear Trolls]
					["qg"] = 14726,	-- Rashona Straglash
					["sourceQuest"] = 7824,	-- A Donation of Runecloth
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["maxReputation"] = { 530, EXALTED },	-- Darkspear Trolls, Exalted.
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(7837, {	-- Additional Runecloth [Orgrimmar]
					["qg"] = 14727,	-- Vehena
					["sourceQuest"] = 7836,	-- A Donation of Runecloth
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["maxReputation"] = { 76, EXALTED },	-- Orgrimmar, Exalted.
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(936, {	-- Assisting Arch Druid Runetotem (Orgrimmar)
					["qg"] = 6929,	-- Innkeeper Gryshka
					["altQuests"] = {
						3762,	-- Assisting Arch Druid Runetotem (Thunder Bluff)
						3784, 	-- Assisting Arch Druid Runetotem (Undercity)
					},
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
				}),
				q(1508, {	-- Blind Cazul
					["qg"] = 5909,	-- Cazul
					["sourceQuests"] = {
						1507,	-- Devourer of Souls (Orgrimmar)
						1472,	-- Devourer of Souls (Undercity)
					},
					["coord"] = { 47.2, 46.6, ORGRIMMAR },
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 20,
				}),
				q(4300, {	-- Bone-Bladed Weapons
					["lvl"] = 48,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(11862),	-- White Bone Band
						i(11863),	-- White Bone Shredder
						i(11864),	-- White Bone Spear
					},
				}),
				q(4511, {	-- Calm Before the Storm (2/2)
					["sourceQuest"] = 4509,	-- Calm Before the Storm (1/2)
					["qg"] = 7010,	-- Zilzibin Drumlore
					["coord"] = { 56.4, 46.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						i(11870),	-- Oblivion Orb
						i(11871),	-- Snarkshaw Spaulders
						i(11872),	-- Eschewal Greaves
					},
				}),
				q(8254, {	-- Cenarion Aid
					["qg"] = 6018,	-- Ur'kyo <Priest Trainer>
					["coord"] = { 35.6, 87.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { PRIEST },
					["lvl"] = 50,
				}),
				q(1501, {	-- Creature of the Void
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["sourceQuest"] = 1506,	-- Gan'rul's Summons
					["coord"] = { 48.2, 45.6, ORGRIMMAR },
					["maps"] = { DUROTAR },
					["races"] = { ORC, TROLL, UNDEAD },
					["classes"] = { WARLOCK },
					["altQuests"] = {
						1473,	-- Creature of the Void
					},
					["cost"] = {
						{ "i", 6535, 1 },	-- Tablet of Verga
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 6535,	-- Tablet of Verga
							["questID"] = 1501,	-- Creature of the Void
							["coord"] = { 51.6, 9.7, DUROTAR },
						},
					},
				}),
				q(2458, {	-- Deep Cover
					["lvl"] = 20,
					["qg"] = 3401,	-- Shenthul
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { ROGUE },
					["sourceQuest"] = 2460,	-- The Shattered Salute
				}),
				q(1507, {	-- Devourer of Souls
					["qg"] = 5875,	-- Dan'rul Bloodeye
					["races"] = { ORC, UNDEAD },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["altQuests"] = {
						1472,	-- Devourer of Souls (Undercity)
					},
					["lvl"] = 20,
				}),
				q(8410, {	-- Elemental Mastery
					["qg"] = 5892,	-- Searn Firewarder
					["coord"] = { 38.0, 37.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["lvl"] = 50,
					["cost"] = {
						{ "i", 7067, 1 },	-- Elemental Earth
						{ "i", 7068, 1 },	-- Elemental Fire
						{ "i", 7069, 1 },	-- Elemental Air
						{ "i", 7070, 1 },	-- Elemental Water
					},
				}),
				q(7491, {	-- For All To See
					["lvl"] = 60,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(18406),	-- Onyxia Blood Talisman
						i(18403),	-- Dragonslayer's Signet
						i(18404),	-- Onyxia Tooth Pendant
					},
				}),
				q(5652, {	-- Hex of Weakness
					["qgs"] = {
						3706,	-- Tai'jin <Priest Trainer>
						4606,	-- Aelthalyste
						6018,	-- Ur'kyo <Priest Trainer>
					},
					["coords"] = {
						{ 54.2, 42.8, DUROTAR },
						{ 49.01, 18.32, UNDERCITY },
						{ 35.6, 87.6, ORGRIMMAR },
					},
					["altQuests"] = {
						5653,	-- Hex of Weakness (NYI)
						5654,	-- Hex of Weakness (Durotar, unused)
						5655,	-- Hex of Weakness (Durotar)
						5656,	-- Hex of Weakness (Undercity)
						5657,	-- Hex of Weakness (Orgrimmar, unused)
					},
					["maps"] = { DUROTAR, UNDERCITY },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 10,
					["groups"] = {
						recipe(9035),	-- Hex of Weakness
					},
				}),
				q(5726, {	-- Hidden Enemies (1/5)
					["qg"] = 4949,	-- Thrall <Warchief>
					["coord"] = { 32.0, 37.8, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Lieutenant's Insignia
							["provider"] = { "i", 14544 },	-- Lieutenant's Insignia
						}),
					},
				}),
				q(5727, {	-- Hidden Enemies (2/5)
					["qg"] = 4949,	-- Thrall <Warchief>
					["sourceQuest"] = 5726,	-- Hidden Enemies (1/5)
					["coord"] = { 32.0, 37.8, ORGRIMMAR },
					["timeline"] = { "removed 4.0.3" },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
							["provider"] = { "i", 14544 },	-- Lieutenant's Insignia
							["coord"] = { 49.5, 50.6, ORGRIMMAR },
							["cr"] = 3216,	-- Neeru Fireblade
						}),
					},
				}),
				q(2479, {	-- Hinott's Assistance
					["lvl"] = 20,
					["qg"] = 3401,	-- Shenthul
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { ROGUE },
					["sourceQuest"] = 2478,	-- Mission: Possible But Not Probable
				}),
				q(1945, {	-- Laughing Sisters
					["qg"] = 5885,	-- Deino <Mage Trainer>
					["sourceQuest"] = 1944,	-- Waters of Xavian
					["coord"] = { 38.6, 86.0, ORGRIMMAR },
					["maps"] = { ASHENVALE },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 7270, 12 },	-- Laughing Sister's Hair
					},
					["lvl"] = 15,
				}),
				q(4494, {	-- March of the Silithid
					["lvl"] = 50,
					["races"] = HORDE_ONLY,
					["qg"] = 7010,	-- Zilzibin Drumlore
				}),
				q(1509, {	-- News of Dogran (1/2)
					["qg"] = 5910,	-- Zankaja
					["sourceQuest"] = 1508,	-- Blind Cazul
					["coord"] = { 37, 59.6, ORGRIMMAR },
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["lvl"] = 20,
				}),
				q(1959, {	-- Report to Anastasia
					["qg"] = 7311,	-- Uthel'nay <Mage Trainer>
					["coord"] = { 39.0, 86.0, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 15,
				}),
				q(649, {	-- Ripple Recovery
					["qg"] = 6986,	-- Dran Droffers
					["coord"] = { 59.4, 36.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
				}),
				q(650, {	-- Ripple Recovery
					["qg"] = 6987,	-- Malton Droffers
					["sourceQuest"] = 649,	-- Ripple Recovery
					["coord"] = { 59.4, 36.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 42,
				}),
				q(1943, {	-- Speak with Deino
					["qg"] = 4568,	-- Anastasia Hartwell <Mage Trainer>
					["coord"] = { 85, 10.2, UNDERCITY },
					["maps"] = { UNDERCITY },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 26,
				}),
				q(235, {	-- The Ashenvale Hunt
					["qg"] = 10880,	-- Warcaller Gorlach
					["coord"] = { 46.6, 64.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["altQuests"] = {
						6383,	-- The Ashenvale Hunt
					},
					["lvl"] = 20,
				}),
				q(1513, {	-- The Binding (Succubus)
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["sourceQuest"] = 1512,	-- Love's Gift
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["cr"] = 5677,	-- Summoned Succubus
					["cost"] = {
						{ "i", 6626, 1 },	-- Dogran's Pendant
					},
					["altQuests"] = {
						1474,	-- The Binding (Succubus) [Undercity]
					},
					["lvl"] = 20,
					["groups"] = {
						recipe(712),	-- Summon Succubus
						i(22243),	-- Small Soul Pouch
					},
				}),
				q(1504, {	-- The Binding (Voidwalker)
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["sourceQuest"] = 1501,	-- Creature of the Void
					["coord"] = { 48.2, 45.6, ORGRIMMAR },
					["races"] = { ORC, TROLL, UNDEAD },
					["classes"] = { WARLOCK },
					["cr"] = 5676,	-- Summoned Voidwalker
					["altQuests"] = {
						1471,	-- The Binding (Voidwalker) [Undercity]
					},
					["cost"] = {
						{ "i", 7464, 1 },	-- Glyphs of Summoning
					},
					["lvl"] = 10,
					["groups"] = {
						recipe(697),	-- Summon Voidwalker
					},
				}),
				q(787, {	-- The New Horde
					["races"] = HORDE_ONLY,
					["qg"] = 3144,	-- Eitrigg
					["altQuests"] = {
						4641,	-- Your Place In The World
					},
				}),
				q(1963, {	-- The Shattered Hand (1/2)
					["qg"] = 6446,	-- Therzok
					["sourceQuests"] = {
						1885,	-- Mennet Carkad
						1859,	-- Therzok
					},
					["coord"] = { 42.74, 53.52, ORGRIMMAR },
					["races"] = { ORC, TROLL },
					["classes"] = { ROGUE },
					["maps"] = { THE_BARRENS },
					["cost"] = {
						{ "i", 7209, 1 },	-- Tazan's Satchel
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 7209,	-- Tazan's Satchel
							["questID"] = 1963,	-- The Shattered Hand (1/2)
							["coord"] = { 63.8, 44.6, THE_BARRENS },
							["cr"] = 6494,	-- Tazan
						},
					},
				}),
				q(1858, {	-- The Shattered Hand (2/2)
					["qg"] = 6446,	-- Therzok
					["sourceQuest"] = 1963,	-- The Shattered Hand (1/2)
					["coord"] = { 42.74, 53.52, ORGRIMMAR },
					["races"] = { ORC, TROLL },
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 7295, 1 },	-- Tazan's Logbook
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 7208,	-- Tazan's Key
							["questID"] = 1858,	-- The Shattered Hand (2/2)
							["coord"] = { 54.2, 68.2, ORGRIMMAR },
							["cr"] = 6466,	-- Gamon
						},
						i(7209, {	-- Tazan's Satchel
							["cost"] = {
								{ "i", 7208, 1 },	-- Tazan's Key
							},
							["groups"] = {
								{
									["itemID"] = 7295,	-- Tazan's Logbook
									["questID"] = 1858,	-- The Shattered Hand (2/2)
								},
							},
						}),
						i(7298),	-- Blade of Cunning
					},
				}),
				q(2460, {	-- The Shattered Salute
					["lvl"] = 20,
					["qg"] = 3401,	-- Shenthul
					["races"] = { ORC, UNDEAD, TROLL },
					["classes"] = { ROGUE },
				}),
				q(1146, {	-- The Swarm Grows
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["qg"] = 4485,	-- Belgrom Rockmaul
				}),
				q(1944, {	-- Waters of Xavian
					["qg"] = 5885,	-- Deino <Mage Trainer>
					["sourceQuest"] = 1943,	-- Speak with Deino
					["coord"] = { 38.6, 86.0, ORGRIMMAR },
					["maps"] = { ASHENVALE },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 7268, 1 },	-- Xavian Water Sample
					},
					["lvl"] = 26,
					["groups"] = {
						{
							["itemID"] = 7269,	-- Deino's Flask
							["coord"] = { 76, 41, ASHENVALE },
							["groups"] = {
								{
									["itemID"] = 7268,	-- Xavian Water Sample
									["questID"] = 1944,	-- Waters of Xavian
								},
							},
						},
					},
				}),
				q(2382, {	-- Wrenix of Ratchet
					["qg"] = 3402,	-- Zando'zan
					["sourceQuest"] = 2379,	-- Zando'zan
					["coord"] = { 42.8, 53, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 16,
				}),
				q(2379, {	-- Zando'zan
					["qg"] = 3401,	-- Shenthul
					["sourceQuests"] = {
						2378,	-- Find the Shattered Hand
						2380,	-- To Orgrimmar!
					},
					-- #if AFTER TBC
					["altQuests"] = {
						10372,	-- A Discreet Inquiry
					},
					-- #endif
					["coord"] = { 43, 53.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 16,
				}),
			}),
			n(VENDORS, {
				n(3364, {	-- Borya <Tailoring Supplies>
					["coord"] = { 63.0, 51.2, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5772),	-- Pattern: Red Woolen Bag
						i(6270),	-- Pattern: Blue Linen Vest
						i(6274),	-- Pattern: Blue Overalls
						i(10317),	-- Pattern: Pink Mageweave Shirt
						i(10314),	-- Pattern: Lavender Mageweave Shirt
					},
				}),
				n(3367,   {	-- Felika <Trade Supplies>
					["coords"] = {
						{ 46.5, 36.6, ORGRIMMAR },
						{ 50.8, 58.7, ORGRIMMAR },
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(20856, {	-- Design: Heavy Golden Necklace of Battle
							["isLimited"] = true,
						}),
					},
				}),
				n(3316, {	-- Handor <Cloth & Leather Armor Merchant>
					["coord"] = { 62.8, 44.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12256),	-- Cindercloth Leggings
					},
				}),
				n(3410, {	-- Jin'sora <Bow Merchant>
					["coord"] = { 77.8, 38.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11303),	-- Fine Shortbow
						i(11306),	-- Sturdy Recurve
						i(11307),	-- Massive Longbow
					},
				}),
				n(3346, {	-- Kithas <Enchanting Supplies>
					["coord"] = { 53.6, 38.0, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- #if BEFORE CATA
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						-- #endif
						i(6346),	-- Formula: Enchant Chest - Lesser Mana
						i(6349),	-- Formula: Enchant 2H Weapon - Lesser Intellect
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
				n(3348, {	-- Kor'geld <Alchemy Supplies>
					["coord"] = { 56.2, 34.2, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5642),	-- Recipe: Free Action Potion
						i(13478),	-- Recipe: Elixir of Superior Defense
					},
				}),
				n(3362, {	-- Ogunaro Wolfrunner <Kennel Master>
					["coord"] = { 69.4, 12.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(1132),	-- Horn of the Timber Wolf
						i(5665),	-- Horn of the Dire Wolf
						i(5668),	-- Horn of the Brown Wolf
						i(18796),	-- Horn of the Swift Brown Wolf
						i(18797),	-- Horn of the Swift Timber Wolf
						i(18798),	-- Horn of the Swift Gray Wolf
					},
				}),
				n(3333, {	-- Shankys <Fishing Supplies>
					["coord"] = { 70.0, 29.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6368),	-- Recipe: Rainbow Fin Albacore
						i(6369),	-- Recipe: Rockscale Cod
						i(17062),	-- Recipe: Mithril Head Trout
					},
				}),
				n(3413, {	-- Sovik <Engineering Supplies>
					["coord"] = { 75.6, 25.2, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(18647, {	-- Schematic: Red Firework
							["isLimited"] = true,
						}),
						i(16041, {	-- Schematic: Thorium Grenade
							["isLimited"] = true,
						}),
						i(16042, {	-- Schematic: Thorium Widget
							["isLimited"] = true,
						}),
						i(22729, {	-- Schematic: Steam Tonk Controller
							["isLimited"] = true,
							["u"] = TBC_PHASE_ONE,
						}),
					},
				}),
				n(3356, {	-- Sumi <Blacksmithing Supplier>
					["coord"] = { 82.4, 23.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12162),	-- Plans: Hardened Iron Shortsword
					},
				}),
				n(3366, {	-- Tamar <Leatherworking Supplies>
					["coord"] = { 63.0, 45.2, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(18731),	-- Pattern: Heavy Leather Ball
					},
				}),
				n(3315, {	-- Tor'phan <Cloth & Leather Armor Merchant>
					["coord"] = { 62.6, 50.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12255),	-- Pale Leggings
					},
				}),
				n(8404, {	-- Xan'tish <Snake Vendor>
					["coord"] = { 37.6, 75.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(10360),	-- Black Kingsnake
						i(10361),	-- Brown Snake
						i(10392),	-- Crimson Snake
					},
				}),
				n(3400, {	-- Xen'to <Cooking Supplier>
					["coord"] = { 57.6, 53.2, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
			}),
		},
	}),
}));