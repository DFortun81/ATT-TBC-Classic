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
	m(DARNASSUS, {
		["lore"] = "The atmosphere inside the city is quiet and tranquil. It does not have the feeling of confinement that one would feel in Stormwind or Ironforge, where the buildings are grouped close together. Darnassus is open to the sky, and the graceful bridges spanning the lake around which it is built set the buildings wide apart. The elegant bridges, beautiful groves, and leaf-covered pathways that dot the city's landscape are testaments to the night elves' reverence for nature. One of Darnassus's most notable structures is the stunning Temple of the Moon, the center of worship for High Priestess Tyrande Whisperwind and her Sisters of Elune. The prime reason why the city's population is so low is that it is isolated: Teldrassil is a small island away from the main mass of Azeroth, and the only way to gain access from another continent is to fly or sail to Rut'theran Village, a small settlement at the base of Teldrassil, and from there step into the glowing portal to the city proper. Darnassus is home to night elves of all vocations and remains a symbol of the night elves' rich culture and glorious history.",
		["isRaid"] = true,
		["groups"] = {
			n(FACTIONS, {
				faction(69, {	-- Darnassus
					["icon"] = asset("Achievement_Character_Nightelf_Female"),
					-- #if BEFORE CATA
					["OnTooltip"] = OnTooltipForCityFactionReputation,
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(7799, {	-- A Donation of Mageweave
					["qg"] = 14725,	-- Raedon Duskstriker
					["coord"] = { 64.0, 23.0, DARNASSUS },
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["timeline"] = { "removed 4.0.3.10000"},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7800, {	-- A Donation of Runecloth
					["qg"] = 14725,	-- Raedon Duskstriker
					["coord"] = { 64.0, 23.0, DARNASSUS },
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["timeline"] = { "removed 4.0.3.10000"},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				{	-- A Donation of Silk
					["qg"] = 14725,	-- Raedon Duskstriker
					-- #if AFTER TBC
					-- Blizzard did a dumb and moved the other quest over to the Exodar.
					["questID"] = 10354,	-- A Donation of Silk [DARN (TBC)]
					-- #else
					["questID"] = 7798,		-- A Donation of Silk [DARN (Classic)]
					-- #endif
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["coord"] = { 64.0, 23.0, DARNASSUS },
					["timeline"] = { "removed 4.0.3.10000"},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
				},
				{	-- A Donation of Wool
					["qg"] = 14725,	-- Raedon Duskstriker
					-- #if AFTER TBC
					-- Blizzard did a dumb and moved the other quest over to the Exodar.
					["questID"] = 10352,	-- A Donation of Wool [DARN (TBC)]
					-- #else
					["questID"] = 7792,		-- A Donation of Wool [DARN (Classic)]
					-- #endif
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["coord"] = { 64.0, 23.0, DARNASSUS },
					["timeline"] = { "removed 4.0.3.10000"},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				},
				q(7801, {	-- Additional Runecloth [Darnassus]
					["qg"] = 14725,	-- Raedon Duskstriker
					["sourceQuest"] = 7800,	-- A Donation of Runecloth
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["maxReputation"] = { 69, EXALTED },	-- Darnassus, Exalted.
					["coord"] = { 64.0, 23.0, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(3763, {	-- Assisting Arch Druid Staghelm [Darnassus]
					["qg"] = 6735,	-- Innkeeper Saelienne
					["coord"] = { 67.4, 15.7, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				q(3790, {	-- Assisting Arch Druid Staghelm [Ironforge]
					["qg"] = 5111,	-- Innkeeper Firebrew
					["coord"] = { 18.1, 51.5, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				q(3789, {	-- Assisting Arch Druid Staghelm [Stormwind City]
					["qg"] = 6740,	-- Innkeeper Allison
					["coord"] = { 60.4, 75.3, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				-- #if AFTER TBC
				applyclassicphase(TBC_PHASE_ONE, q(10520, {	-- Assisting Arch Druid Staghelm [The Exodar]
					["qg"] = 16739,	-- Caregiver Breel <Innkeeper>
					["coord"] = { 59.6, 19.4, THE_EXODAR },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				})),
				-- #endif
				q(4510, {	-- Calm Before the Storm (2/2)
					["qg"] = 7740,	-- Gracina Spiritmight
					["sourceQuest"] = 4508,	-- Calm Before the Storm (1/2)
					["coord"] = { 42.0, 85.8, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 11843, 1 },	-- Bank Voucher
					},
					["lvl"] = 50,
					["groups"] = {
						i(11870),	-- Oblivion Orb
						i(11871),	-- Snarkshaw Spaulders
						i(11872),	-- Eschewal Greaves
					},
				}),
				q(2242, {	-- Destiny Calls
					["qg"] = 4163,	-- Syurna
					["sourceQuest"] = 2241,	-- The Apple Falls
					["coord"] = { 37.0, 21.9, DARNASSUS },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 7737, 1 },	-- Sethir's Journal
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 7737,	-- Sethir's Journal
							["questID"] = 2242,	-- Destiny Calls
							["cr"] = 6909,	-- Sethir the Ancient
							["description"] = "This item can only be pickpocketed.",
							["coord"] = { 37.6, 22.2, TELDRASSIL },
						},
						i(7298, {	-- Blade of Cunning
							["timeline"] = { "removed 4.0.3" },
						}),
					},
				}),
				q(2260, {	-- Erion's Behest
					["qg"] = 4214,	-- Erion Shadewhisper
					["sourceQuest"] = 2259,	-- Erion Shadewhisper
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				q(7671, {	-- Frostsaber Replacement
					["qg"] = 4730,	-- Lelanai
					-- #if AFTER CATA
					["coord"] = { 42.6, 32.8, DARNASSUS },
					-- #else
					["coord"] = { 38.3, 15.3, DARNASSUS },
					-- #endif
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["timeline"] = { "removed 1.4.0" },
					["cost"] = { { "i", 12302, 1 } },	-- Ancient Frostsaber (MOUNT!)
					["sym"] = { { "select", "itemID", 18766, 18767, 18902 } },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
				}),
				q(952, {	-- Grove of the Ancients
					["qg"] = 3516,	-- Arch Druid Fandral Staghelm
					["sourceQuest"] = 940,	-- Teldrassil
					["coord"] = { 34.8, 8.8, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5390, 1 },	-- Fandral's Message
					},
					["lvl"] = 6,
				}),
				q(4493, {	-- March of the Silithid
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7740,	-- Gracina Spiritmight
				}),
				q(3781, {	-- Morrowgrain Research
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11022),	-- Packet of Tharlendris Seeds
					},
				}),
				q(3785, {	-- Morrowgrain Research
					["cost"] = {
						{ "i", 11040, 10 },	-- Morrowgrain
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 47,
					["groups"] = {
						i(11887),	-- Cenarion Circle Cache
					},
				}),
				q(3803, {	-- Morrowgrain to Darnassus
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(11887),	-- Cenarion Circle Cache
					},
				}),
				q(6344, {	-- Nessa Shadowsong
					["qg"] = 4241,	-- Mydrannul
					["coord"] = { 70.6, 45.3, DARNASSUS },
					["races"] = { NIGHTELF },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(7672, {	-- Nightsaber Replacement
					["qg"] = 4730,	-- Lelanai
					-- #if AFTER CATA
					["coord"] = { 42.6, 32.8, DARNASSUS },
					-- #else
					["coord"] = { 38.3, 15.3, DARNASSUS },
					-- #endif
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["timeline"] = { "removed 1.4.0" },
					["cost"] = { { "i", 12303, 1 } },	-- Nightsaber (MOUNT!)
					["sym"] = { { "select", "itemID", 18766, 18767, 18902 } },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
				}),
				q(2520, {	-- Sathrah's Sacrifice
					["qg"] = 7313,	-- Priestess A'moora
					["sourceQuest"] = 1150,	-- Tears of the Moon
					["coord"] = { 36.4, 86, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 8155, 1 },	-- Sathrah's Sacrifice
					},
					["lvl"] = 5,
					["groups"] = {
						i(9600),	-- Lace Pants
						i(9601),	-- Cushioned Boots
					},
				}),
				q(1692, {	-- Smith Mathiel
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4088,	-- Elanaria
					["classes"] = { WARRIOR },
					["sourceQuest"] = 1686,	-- The Shade of Elura
					["cost"] = {
						{ "i", 6812, 1 },	-- Case of Elunite
					},
				}),
				q(1710, {	-- Klockmort's Creation
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["qg"] = 6142,	-- Mathiel
					["sourceQuest"] = 1703,	-- Mathiel
				}),
				q(1711, {	-- Mathiel's Armor
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["qg"] = 6142,	-- Mathiel
					["sourceQuest"] = 1710,	-- Sunscorched Shells
					["groups"] = {
						i(6973),	-- Fire hardened Leggings
					},
				}),
				q(2518, {	-- Tears of the Moon
					["qg"] = 7313,	-- Priestess A'moora
					["sourceQuest"] = 2519,	-- The Temple of the Moon
					["coord"] = { 36.4, 86, DARNASSUS },
					["maps"] = { TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 8344, 1 },	-- Silvery Spinnerets
					},
					["lvl"] = 5,
					["groups"] = {
						{
							["itemID"] = 8344,	-- Silvery Spinnerets
							["questID"] = 2518,	-- Tears of the Moon
							["cr"] = 7319,	-- Lady Sathrah
							["coords"] = {
								{ 38.8, 26.0, TELDRASSIL },
								{ 42.0, 25.6, TELDRASSIL },
								{ 48.0, 25.6, TELDRASSIL },
							},
						},
					},
				}),
				q(942, {	-- The Absent Minded Prospector (4/5)
					["qg"] = 2912,	-- Chief Archaeologist Greywhisker
					["sourceQuest"] = 741,	-- The Absent Minded Prospector (3/5) (Darkshore)
					["maps"] = { WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4654, 1 },	-- Mysterious Fossil
					},
					["lvl"] = 15,
				}),
				q(1039, {	-- The Barrens Port
					["qg"] = 8026,	-- Thyn'tel Bladeweaver
					["sourceQuest"] = 1038,	-- Velinde's Effects
					["coord"] = { 61.8, 39.4, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(1686, {	-- The Shade of Elura
					["qg"] = 4088,	-- Elanaria
					["sourceQuest"] = 1683,	-- Vorlus Vilehoof
					["coord"] = { 57.8, 34.4, DARNASSUS },
					["maps"] = { DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 6808, 8 },	-- Elunite Ore
						{ "i", 6809, 1 },	-- Elura's Medallion
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 6809,	-- Elura's Medallion
							["questID"] = 1686,	-- The Shade of Elura
							["coord"] = { 31.6, 44.8, DARKSHORE },
							["cr"] = 6133,	-- Shade of Elura
						},
					},
				}),
				q(2519, {	-- The Temple of the Moon
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7316,	-- Sister Aquinne
					["isBreadcrumb"] = true,
				}),
				q(730, {	-- Trouble In Darkshore?
					["qg"] = 2912,	-- Chief Archaeologist Greywhisker
					["coord"] = { 31.2, 84.2, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 14,
				}),
				q(3764, {	-- Un'Goro Soil
					["qg"] = 3516,	-- Arch Druid Fandral Staghelm
					["sourceQuests"] = {
						3763,	-- Assisting Arch Druid Staghelm [Darnassus]
						3790,	-- Assisting Arch Druid Staghelm [Ironforge]
						3789,	-- Assisting Arch Druid Staghelm [Stormwind City]
						-- #if AFTER TBC
						10520,	-- Assisting Arch Druid Staghelm [The Exodar]
						-- #endif
					},
					["coord"] = { 35.2, 9.0, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 47,
				}),
				q(1038, {	-- Velinde's Effects
					["qg"] = 8026,	-- Thyn'tel Bladeweaver
					["sourceQuest"] = 1037,	-- Velinde Starsong (Ashenvale)
					["coord"] = { 61.8, 39.4, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5521, 1 },	-- Velinde's Key
						{ "i", 5520, 1 },	-- Velinde's Journal
					},
					["lvl"] = 25,
					["groups"] = {
						{
							["itemID"] = 5520,	-- Velinde's Journal
							["questID"] = 1038,	-- Velinde's Effects
							["provider"] = { "o", 19877 },	-- Velinde's Locker
							["coord"] = { 62.5, 83.1, DARNASSUS },
						},
					},
				}),
				q(1683, {	-- Vorlus Vilehoof
					["qg"] = 4088,	-- Elanaria
					["sourceQuests"] = {
						1638,	-- A Warrior's Training
						1684,	-- Elanaria
						1679,	-- Muren Stormpike
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
					},
					["altQuests"] = {
						1665,	-- Bartleby's Mug
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
						1678,	-- Vejrek
						--1683,	-- Vorlus Vilehoof
					},
					["coord"] = { 57.3, 34.6, DARNASSUS },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6805, 1 }, -- Horn of Vorlus
					},
					["lvl"] = 10,
					["groups"] = {
						-- #if BEFORE CATA
						recipe(71),		-- Defensive Stance
						--recipe(7386),	-- Sunder Armor	[TODO: Users are reporting they can't collect this.]
						recipe(355),	-- Taunt
						-- #endif
					},
				}),
				q(1693, {	-- Weapons of Elunite
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["qg"] = 6142,	-- Mathiel
					["sourceQuest"] = 1692,	-- Smith Mathiel
					["groups"] = {
						i(6966),	-- Elunite Axe
						i(6967),	-- Elunite Sword
						i(6968),	-- Elunite Hammer
						i(6969),	-- Elunite Dagger
					},
				}),
			}),
			n(VENDORS, {
				n(4168, {	-- Elynna <Tailoring Supplies>
					["coord"] = { 64.6, 21.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6272),	-- Pattern: Blue Linen Robe
						i(6275),	-- Pattern: Greater Adept's Robe
						i(10311),	-- Pattern: Orange Martial Shirt
					},
				}),
				n(4223, {	-- Fyldan <Cooking Supplier>
					["coord"] = { 48.5, 21.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Pattern: Orange Martial Shirt
					},
				}),
				n(4232, {	-- Glorandiir <Axe Merchant>
					["coord"] = { 64.2, 59.0, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12249),	-- Merciless Axe
					},
				}),
				n(4173, {	-- Landria <Bow Merchant>
					["coord"] = { 63.3, 66.3, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11303),	-- Fine Shortbow
						i(11306),	-- Sturdy Recurve
						i(11308),	-- Sylvan Shortbow
					},
				}),
				n(4730, {	-- Lelanai <Saber Handler>
					-- #if AFTER CATA
					["coord"] = { 42.6, 32.8, DARNASSUS },
					-- #else
					["coord"] = { 38.3, 15.3, DARNASSUS },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8632),	-- Spotted Frostsaber (MOUNT!)
						i(47100, {	-- Striped Dawnsaber (MOUNT!)
							["timeline"] = { "added 3.2.0.10026" },
						}),
						i(8629),	-- Striped Nightsaber (MOUNT!)
						i(8631),	-- Striped Frostsaber (MOUNT!)
						i(18766),	-- Swift Frostsaber (MOUNT!)
						i(18767),	-- Swift Mistsaber (MOUNT!)
						i(18902),	-- Swift Stormsaber (MOUNT!)
						i(12302, {	-- Ancient Frostsaber (MOUNT!)
							["timeline"] = { "removed 1.4.0" },
						}),
						i(12303, {	-- Nightsaber (MOUNT!)
							["timeline"] = { "removed 1.4.0" },
						}),
					},
				}),
				n(4229, {	-- Mythrin'dir <General Trade Supplier>
					["coord"] = { 61.0, 17.7, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11223),	-- Formula: Enchant Bracer - Deflection
						i(16217),	-- Formula: Enchant Shield - Greater Stamina
					},
				}),
				n(4225, {	-- Saenorion <Leatherworking Supplies>
					["coord"] = { 63.7, 22.3, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7451),	-- Pattern: Green Whelp Bracers
						i(18949),	-- Pattern: Barbaric Bracers
					},
				}),
				n(8665, {	-- Shylenai <Owl Trainer>
					["coord"] = { 69.8, 45.4, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8500),	-- Great Horned Owl
						i(8501),	-- Hawk Owl
					},
				}),
				n(4235, {	-- Turian <Thrown Weapons Merchant>
					["coord"] = { 62.7, 65.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12247),	-- Broad Bladed Knife
					},
				}),
				n(4226, {	-- Ulthir <Alchemy Supplies>
					["coord"] = { 55.8, 24.5, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5642),	-- Recipe: Free Action Potion
						i(5643),	-- Recipe: Great Rage Potion
						i(13477),	-- Recipe: Superior Mana Potion
					},
				}),
				n(4228, {	-- Vaean <Enchanting Supplies>
					["coord"] = { 58.6, 14.7, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if BEFORE CATA
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						-- #endif
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
				n(4175, {	-- Vinasia <Cloth Armor Merchant>
					["coord"] = { 60.7, 72.5, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12256),	-- Cindercloth Leggings
					},
				}),
			}),
		},
	}),
}));