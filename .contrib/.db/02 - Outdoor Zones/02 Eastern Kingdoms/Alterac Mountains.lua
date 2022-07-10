---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if BEFORE CATA
-- This whole subzone used to be its own standalone zone and was merged with Hillsbrad with the Cataclysm.
local OnTooltipForRavenholdt = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
		if reputation < 20999 then
			GameTooltip:AddLine("Reminder: Do NOT turn in Heavy Lockboxes until max Honored!", 1, 0.5, 0.5);
			local repPerKill = isHuman and 5.5 or 5;
			local x, n = math.ceil((20999 - reputation) / repPerKill), math.ceil(20999 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Arathi Syndicate", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		else
			GameTooltip:AddLine("Protip: Bring a stack of Repair Bots with you.", 0.5, 1, 0.5);
			local repPerTurnIn = isHuman and 82.5 or 75;
			local x, n = math.ceil((42000 - reputation) / repPerTurnIn), math.ceil(21000 / repPerTurnIn);
			GameTooltip:AddDoubleLine("Turn in Heavy Junkboxes.", ((n - x) * 5) .. " / " .. (n * 5) .. " (" .. (x * 5) .. ")", 1, 1, 1);
		end
	end
end]];
root("Zones", m(EASTERN_KINGDOMS, {
	m(ALTERAC_MOUNTAINS, {
		["lore"] = "Alterac Mountains is the location of the former nation of Alterac and the city-state of Dalaran, and its chief settlements included Alterac City, Dalaran and Strahnbrad. The central mountains have been overrun by ogres, while the organization called the Syndicate controls Strahnbrad and other areas. Dalaran was enclosed within an impregnable magic shell before the city was lifted in the air and moved to Northrend. A high, wooded region, the Alterac Mountains see much rainfall and its skies are constantly overcast. Crushridge ogres and the Syndicate, a wicked group of rogues led by fallen human nobles, clash repeatedly for control of this land.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(760, {	-- Explore Alterac Mountains
					-- #if BEFORE WRATH
					["description"] = "Explore Alterac Mountains, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, {
				exploration(1684, "350:370:626:253"),	-- Chillwind Point
				exploration(1679, "195:288:399:380"),	-- Corrahn's Dagger
				exploration(282, "280:240:334:162"),	-- Crushridge Hold
				exploration(279, "300:300:26:262"),		-- Dalaran
				exploration(1682, "285:230:276:0"),		-- Dandred's Fold
				exploration(1357, "200:200:406:279"),	-- Gallows' Corner
				exploration(1677, "160:175:225:478"),	-- Gavin's Naze
				exploration(1683, "190:170:317:372"),	-- Growless Cave
				exploration(278, "330:265:44:403"),		-- Lordamere Internment Camp
				exploration(1681, "220:280:196:131"),	-- Misty Shore
				exploration(281, "255:255:270:197"),	-- Ruins of Alterac
				exploration(1678, "255:320:462:307"),	-- Sofera's Naze
				exploration(280, "370:300:549:105"),	-- Strahnbrad
				exploration(1680, "165:197:314:471"),	-- The Headland
				exploration(284, "235:200:462:77"),		-- The Uplands
				--[[
				exploration(277, ""),	-- The Foothill Caverns
				exploration(283, ""),	-- Slaughter Hollow
				exploration(1339, ""),	-- Lordamere Lake
				exploration(2839, ""),	-- Alterac Valley
				exploration(3486, ""),	-- Ravenholdt Manor
				]]--
			}),
			-- #endif
			n(FACTIONS, {
				faction(349, {	-- Ravenholdt
					["icon"] = "Interface\\Icons\\Ability_Rogue_Eviscerate",
					["OnTooltip"] = OnTooltipForRavenholdt,
				}),
			}),
			n(QUESTS, {
				q(8233, {	-- A Simple Request
					["qgs"] = {
						5165,	-- Hulfdan Blackbeard <Rogue Trainer>
						3328,	-- Ormok <Rogue Trainer>
						4163,	-- Syurna <Rogue Trainer>
						918,	-- Osborne the Night Man <Rogue Trainer>
						4583,	-- Miles Dexter <Rogue Trainer>
					},
					["coords"] = {
						{ 36.8, 21.8, DARNASSUS },	-- Syurna <Rogue Trainer>
						{ 51.6, 14.6, IRONFORGE },	-- Hulfdan Blackbeard <Rogue Trainer>
						{ 44.0, 54.6, ORGRIMMAR },	-- Ormok <Rogue Trainer>
						{ 74.6, 52.8, STORMWIND_CITY },	-- Osborne the Night Man <Rogue Trainer>
						{ 85.0, 75.2, UNDERCITY },	-- Miles Dexter <Rogue Trainer>
					},
					["classes"] = { ROGUE },
					["lvl"] = 50,
				}),
				q(522, {	-- Assassin's Contract
					["provider"] = { "i", 3668 },	-- Assassin's Contract
					["coord"] = { 50.8, 58.8, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(523, {	-- Baron's Demise
					["qg"] = 2276,	-- Magistrate Henry Maleb
					["sourceQuest"] = 522,	-- Assassin's Contract
					["coord"] = { 48.2, 59.4, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(500, {	-- Crushridge Bounty
					["qg"] = 2263,	-- Marshal Redpath
					["coord"] = { 49.6, 58.6, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/9 Dirty Knucklebones
							["provider"] = { "i", 2843 },	-- Dirty Knucklebones
							["crs"] = {
								2253,	-- Crushridge Brute
								2256,	-- Crushridge Enforcer
								2255,	-- Crushridge Mage
								2254,	-- Crushridge Mauler
								2252,	-- Crushridge Ogre
								2416,	-- Crushridge Plunderer
								2287,	-- Crushridge Warmonger
							},
						}),
					},
				}),
				q(504, {	-- Crushridge Warmongers
					["qg"] = 2263,	-- Marshal Redpath
					["coord"] = { 49.6, 58.6, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(5249),	-- Burning Sliver
						i(3763),	-- Lunar Buckler
					},
				}),
				q(1712, {	-- Cyclonian
					["providers"] = {
						{ "n", 6176 },	-- Bath'rah the Windwatcher
						{ "i", 6929 },	-- Bath'rah's Parchment
					},
					["sourceQuest"] = 1791,	-- The Windwatcher
					["coord"] = { 80.4, 66.8, ALTERAC_MOUNTAINS },
					["maps"] = { ARATHI_HIGHLANDS, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3357, 8 },	-- Liferoot
						{ "i", 6851, 1 },	-- Essence of the Exile
					},
					["classes"] = { WARRIOR },
					["lvl"] = 30,
					["groups"] = {
						objective(2, {	-- 0/30 Bloodscalp Tusk
							["provider"] = { "i", 3901 },	-- Bloodscalp Tusk
						}),
					},
				}),
				q(537, {	-- Dark Council
					["qg"] = 2276,	-- Magistrate Henry Maleb
					["sourceQuest"] = 525,	-- Further Mysteries
					["coord"] = { 48.2, 59.4, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3672, 1 },	-- Head of Nagaz
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 3672,	-- Head of Nagaz
							["questID"] = 537,	-- Dark Council
							["cr"] = 2320,	-- Nagaz
							["coord"] = { 39.6, 15.8, ALTERAC_MOUNTAINS },
						},
					},
				}),
				q(8235, {	-- Encoded Fragments
					["qg"] = 8379,	-- Archmage Xylem
					["sourceQuest"] = 8234,	-- Sealed Azure Bag
					["coord"] = { 29.6, 40.6, AZSHARA },
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 20023, 10 },	-- Encoded Fragment
					},
					["lvl"] = 50,
				}),
				q(511, {	-- Encrypted Letter
					["providers"] = {
						{ "o", 1738 },	-- Syndicate Documents
						{ "o", 1740 },	-- Syndicate Documents
					},
					["coord"] = { 58.3, 68.0, ALTERAC_MOUNTAINS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3521, 1 },	-- Cleverly Encrypted Letter
					},
					["lvl"] = 30,
				}),
				q(1714, {	-- Essence of the Exile
					["qg"] = 6176,	-- Bath'rah the Windwatcher
					["sourceQuest"] = 1791,	-- The Windwatcher
					["coord"] = { 80.4, 66.8, ALTERAC_MOUNTAINS },
					["cost"] = {
						{ "i", 4479, 8 },	-- Burning Charm
						{ "i", 4481, 8 },	-- Cresting Charm
						{ "i", 4480, 8 },	-- Thundering Charm
					},
					["maps"] = { ARATHI_HIGHLANDS },
					["classes"] = { WARRIOR },
					["repeatable"] = true,
					["lvl"] = 30,
					["groups"] = {
						i(6851),	-- Essence of the Exile
					},
				}),
				q(510, {	-- Foreboding Plans
					["providers"] = {
						{ "o", 1738 },	-- Syndicate Documents
						{ "o", 1740 },	-- Syndicate Documents
					},
					["coord"] = { 58.3, 68.0, ALTERAC_MOUNTAINS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3718, 1 },	-- Foreboding Plans
					},
					["lvl"] = 26,
				}),
				q(525, {	-- Further Mysteries
					["qg"] = 1356,	-- Prospector Stormpike
					["sourceQuest"] = 514,	-- Letter to Stormpike
					["coord"] = { 74.4, 12, IRONFORGE },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(8249, {	-- Junkboxes Needed
					["qg"] = 6707,	-- Fahrad <Grand Master Rogue>
					["coord"] = { 84.4, 80.3, ALTERAC_MOUNTAINS },
					["maxReputation"] = { 349, EXALTED },	-- Ravenholdt, Exalted.
					["repeatable"] = true,
					["cost"] = {
						{ "i", 16885, 5 },	-- Heavy Junkbox
					},
					["lvl"] = 50,
					["groups"] = {
						i(20086, {	-- Dusksteel Throwing Knife [Classic] / Broken Dusksteel Throwing Knife [TBC]
							["timeline"] = {
								"added 1.11.1.5462",
								"removed 2.0.1.5678"
							},
						}),
						applyclassicphase(TBC_PHASE_ONE, i(25878)),	-- Dusksteel Throwing Knife [TBC]
					},
				}),
				q(514, {	-- Letter to Stormpike
					["qg"] = 2277,	-- Loremaster Dibbs
					["sourceQuest"] = 511,	-- Encrypted Letter
					["coord"] = { 50.4, 57, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3521, 1 },	-- Cleverly Encrypted Letter
					},
					["lvl"] = 30,
				}),
				q(512, {	-- Noble Deaths
					["qg"] = 2276,	-- Magistrate Henry Maleb
					["sourceQuest"] = 510,	-- Foreboding Plans
					["coord"] = { 48.2, 59.4, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/7 Alterac Signet Ring
							["provider"] = { "i", 3505 },	-- Alterac Signet Ring
							["crs"] = {
								14221,	-- Gravis Slipknot
								2246,	-- Syndicate Assassin
								2247,	-- Syndicate Enforcer
								2245,	-- Syndicate Saboteur
								2243,	-- Syndicate Sentry
								2242,	-- Syndicate Spy
								2319,	-- Syndicate Wizard
							},
						}),
					},
				}),
				q(8234, {	-- Sealed Azure Bag
					["qg"] = 6768,	-- Lord Jorach Ravenholdt <Lord of the Assassin's League>
					["sourceQuest"] = 8233,	-- A Simple Request
					["coord"] = { 86.0, 79.0, ALTERAC_MOUNTAINS },
					["maps"] = { AZSHARA },
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 19775, 1 },	-- Sealed Azure Bag
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 19775,	-- Sealed Azure Bag
							["questID"] = 8234,	-- Sealed Azure Bag
							["cr"] = 6188,	-- Timbermaw Shaman
							["coord"] = { 43.5, 25.4, AZSHARA },
						},
					},
				}),
				q(6701, {	-- Syndicate Emblems
					["qg"] = 6766,	-- Ravenholdt Guard <Assassin's League>
					["sourceQuest"] = 6681,	-- The Manor, Ravenholdt
					["coord"] = { 85.2, 79.4, ALTERAC_MOUNTAINS },
					["maxReputation"] = { 349, FRIENDLY },	-- Ravenholdt, Friendly.
					["classes"] = { ROGUE },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 17124, 1 },	-- Syndicate Emblem
					},
					["lvl"] = 24,
				}),
				q(8412, {	-- Spirit Totem
					["qg"] = 6176,	-- Bath'rah the Windwatcher
					["coord"] = { 80.4, 66.8, ALTERAC_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["sourceQuest"] = 8410,	-- Elemental Mastery
					["lvl"] = 50,
					["cost"] = {
						{ "i", 20610, 8 },	-- Bloodshot Spider Eye
						{ "i", 20611, 8 },	-- Thick Black Claw
					},
				}),
				q(554, {	-- Stormpike's Deciphering
					["qg"] = 2277,	-- Loremaster Dibbs
					["sourceQuest"] = 551,	-- The Ensorcelled Parchment
					["coord"] = { 50.4, 57.0, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(505, {	-- Syndicate Assassins
					["qg"] = 2276,	-- Magistrate Henry Maleb
					["coord"] = { 48.2, 59.4, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
					["groups"] = {
						i(3758),	-- Crusader Belt
						i(3759),	-- Insulated Sage Gloves
					},
				}),
				q(551, {	-- The Ensorcelled Parchment
					["providers"] = {
						{ "i", 3706 },	-- Ensorcelled Parchment
						{ "o", 1765 },	-- Worn Wooden Chest
					},
					["coord"] = { 39.2, 14.8, ALTERAC_MOUNTAINS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(6681, {	-- The Manor, Ravenholdt
					["provider"] = { "i", 17126 },
					["classes"] = { ROGUE },
					["description"] = "Speak with a Rogue Trainer and use select the chat option to receive the item that gives you this quest.\n\nDO NOT OPEN THE CHEST",
					["cost"] = {
						{ "i", 17125, 1 },	-- Seal of Ravenholdt
					},
					["lvl"] = 24,
				}),
				q(1713, {	-- The Summoning
					["qg"] = 6176,	-- Bath'rah the Windwatcher
					["sourceQuest"] = 1712,	-- Cyclonian
					["coord"] = { 80.4, 66.8, ALTERAC_MOUNTAINS },
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 6894, 1 },	-- Whirlwind Heart
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 6894,	-- Whirlwind Heart
							["questID"] = 1713,	-- The Summoning
							["cr"] = 6239,	-- Cyclonian
							["coord"] = { 80.6, 62.6, ALTERAC_MOUNTAINS },
						},
					},
				}),
				q(535, {	-- Valik
					["qg"] = 2333,	-- Henchman Valik
					["coord"] = { 57.15, 69.50, ALTERAC_MOUNTAINS},
					["cost"] = { { "i", 3703, 1 } },	-- Southshore Stout
					["cr"] = 2440,	-- Drunken Footpad
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						i(3601),	-- Syndicate Missive
					},
				}),
				q(1792, {	-- Whirlwind Weapon
					["qg"] = 6176,	-- Bath'rah the Windwatcher
					["sourceQuest"] = 1713,	-- The Summoning
					["classes"] = { WARRIOR },
					["lvl"] = 30,
					["groups"] = {
						i(6975),	-- Whirlwind Axe
						i(6977),	-- Whirlwind Sword
						i(6976),	-- Whirlwind Warhammer
					},
				}),
			}),
			n(RARES, {
				n(14222, {	-- Araga
					["coords"] = {
						{ 31.2, 71.0, ALTERAC_MOUNTAINS },
						{ 31.6, 86.8, ALTERAC_MOUNTAINS },
						{ 39.2, 92.0, ALTERAC_MOUNTAINS },
					},
				}),
				n(14223, {	-- Cranky Benj
					["coords"] = {
						{ 14.2, 54.2, ALTERAC_MOUNTAINS },
						{ 27.6, 41.0, ALTERAC_MOUNTAINS },
						{ 36.4, 16.2, ALTERAC_MOUNTAINS },
					},
				}),
				n(14221, {	-- Gravis Slipknot
					["coord"] = { 60.0, 44.6, ALTERAC_MOUNTAINS },
				}),
				n(14281, {	-- Jimmy the Bleeder
					["coords"] = {
						{ 48.6, 82.8, ALTERAC_MOUNTAINS },
						{ 58.6, 70.2, ALTERAC_MOUNTAINS },
					},
				}),
				n(2453, {	-- Lo'Grosh
					["coords"] = {
						{ 48.0, 34.2, ALTERAC_MOUNTAINS },
						{ 52.6, 46.2, ALTERAC_MOUNTAINS },
					},
					["groups"] = {
						i(4810),	-- Boulder Pads
						i(1678),	-- Black Ogre Kickers
						i(6327),	-- The Pacifier
					},
				}),
				n(2447, {	-- Narillasanz
					["description"] = "Patrols around the entire zone, but can usually be found along the river to the east.\n\nThis particular rare was used in the original World of Warcraft game packaging facing off against heroes wielding Teebu's Blazing Longsword.",
					["coord"] = { 79.2, 47.0, ALTERAC_MOUNTAINS },
				}),
				n(2452, {	-- Skhowl
					["coords"] = {
						{ 30.6, 59.4, ALTERAC_MOUNTAINS },
						{ 31.6, 51.6, ALTERAC_MOUNTAINS },
						{ 38.6, 37.6, ALTERAC_MOUNTAINS },
						{ 43.8, 63.4, ALTERAC_MOUNTAINS },
					},
					["groups"] = {
						i(3011),	-- Feathered Headdress
						i(6331),	-- Howling Blade
					},
				}),
				n(2258, {	-- Stone Fury
					["coords"] = {
						{ 61.8, 37.8, ALTERAC_MOUNTAINS },
						{ 66.6, 47.2, ALTERAC_MOUNTAINS },
						{ 73.0, 46.2, ALTERAC_MOUNTAINS },
						{ 78.8, 47.4, ALTERAC_MOUNTAINS },
						{ 80.8, 34.2, ALTERAC_MOUNTAINS },
					},
				}),
			}),
			n(VENDORS, {
				n(2480, {	-- Bro'kin <Alchemy Supplies>
					["coord"] = { 38.0, 38.0, ALTERAC_MOUNTAINS },
					["groups"] = {
						i(14634),	-- Recipe: Frost Oil
					},
				}),
				n(2684, {	-- Rizz Loosebolt <Engineering Supplies>
					["coord"] = { 47.3, 35.2, ALTERAC_MOUNTAINS },
					["groups"] = {
						i(13308),	-- Schematic: Ice Deflector
					},
				}),
				n(6779, {	-- Smudge Thunderwood <Poison Vendor>
					["coord"] = { 86.0, 79.6, ALTERAC_MOUNTAINS },
					["classes"] = { ROGUE },
					["groups"] = {
						i(18160),	-- Recipe: Thistle Tea
					},
				}),
				n(6777, {	-- Zan Shivsproket <Speciality Engineer>
					["coord"] = { 86.0, 80.0, ALTERAC_MOUNTAINS },
					["groups"] = {
						i(7742),	-- Schematic: Gnomish Cloaking Device
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(3711, {	-- Belamoore's Research Journal
					["timeline"] = { "removed 4.0.3" },
					["cr"] = 2415,	-- Warden Belamoore
				}),
				i(8491, {	-- Cat Carrier (Black Tabby)
					["races"] = HORDE_ONLY,
					["crs"] = {
						2271,	-- Dalaran Shield Guard
						2358,	-- Dalaran Summoner
						2272,	-- Dalaran Theurgist
					},
				}),
				i(1280, {	-- Cloaked Hood
					["timeline"] = { "removed 4.0.3" },
					["cr"] = 2246,	-- Syndicate Assassin
				}),
				i(11206, {	-- Formula: Enchant Cloak - Lesser Agility
					["cr"] = 2246,	-- Syndicate Assassin
				}),
				-- #if BEFORE 4.0.3
				i(1993, {	-- Ogremind Ring
					["cr"] = 2255,	-- Crushridge Mage
				}),
				-- #endif
				i(5775, {	-- Pattern: Black Silk Pack
					["timeline"] = { "removed 4.0.3" },
					["cr"] = 2242,	-- Syndicate Spy
				}),
				i(3745, {	-- Rune of Opening
					["timeline"] = { "removed 4.0.3" },
					["cr"] = 2358,	-- Dalaran Summoner
				}),
				i(1602, {	-- Sickle Axe
					["timeline"] = { "removed 4.0.3" },
					["cr"] = 2287,	-- Crushridge Warmonger
				}),
				i(5245, {	-- Summoner's Wand
					["timeline"] = { "removed 4.0.3" },
					["races"] = HORDE_ONLY,
					["cr"] = 2358,	-- Dalaran Summoner
				}),
			}),
		},
	}),
}));
-- #endif