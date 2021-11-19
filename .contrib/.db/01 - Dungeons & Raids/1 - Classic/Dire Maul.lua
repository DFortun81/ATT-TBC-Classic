-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local OnTooltipForShendralar = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
-- #if AFTER TBC
		local repPerTurnIn = isHuman and 550 or 500;
-- #else
		local repPerTurnIn = isHuman and 220 or 200;
-- #endif
		local x, n = math.ceil((42000 - reputation) / repPerTurnIn), math.ceil(42000 / repPerTurnIn);
		GameTooltip:AddDoubleLine("Libram Turn Ins", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
	end
end]];
local OnTooltipForSteamweedle = [[function(t)
	GameTooltip:AddLine("This is a hidden reputation. It might not count towards reputation achievements.", 1, 1, 1);
	local isHuman = _.RaceIndex == 1;
	local reputation = t.reputation;
	if reputation < 42000 then
		if reputation < 0 then
			local repPerKill = isHuman and 2.75 or 2.5;
			local x, n = math.ceil((20999 - t.reputation) / repPerKill), math.ceil(63001 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Venture Co. (STV)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			GameTooltip:AddDoubleLine("Kill Southsea Pirates. (Tanaris & Barrens)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			
			local repPerTurnIn = isHuman and 28 or 25;
			local x, n = math.ceil((42000 - reputation) / repPerTurnIn), math.ceil(84000 / repPerTurnIn);
			GameTooltip:AddDoubleLine("Complete Zapping Quests (Feralas)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
-- #if AFTER TBC
			local repPerTurnIn = isHuman and 385 or 350;
-- #else
			local repPerTurnIn = isHuman and 165 or 150;
-- #endif
			local x, n = math.ceil((42000 - reputation) / repPerTurnIn), math.ceil(84000 / repPerTurnIn);
			GameTooltip:AddDoubleLine("Complete Free Knot! (Dire Maul)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
-- #if AFTER TBC
			local repPerTurnIn = isHuman and 82.5 or 75;
-- #else
			local repPerTurnIn = isHuman and 55 or 50;
-- #endif
			local x, n = math.ceil((42000 - reputation) / repPerTurnIn), math.ceil(84000 / repPerTurnIn);
			GameTooltip:AddDoubleLine("Complete The Gordok Ogre Suit (Dire Maul)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		else
			if reputation < 20999 then
				local repPerKill = isHuman and 2.75 or 2.5;
				local x, n = math.ceil((20999 - t.reputation) / repPerKill), math.ceil(20999 / repPerKill);
				GameTooltip:AddLine("To 11999 Honored:", 1, 1, 1);
				GameTooltip:AddDoubleLine(" Kill Venture Co. (STV)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
				GameTooltip:AddDoubleLine(" Kill Southsea Pirates. (Tanaris & Barrens)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			end
			
			local repPerTurnIn = isHuman and 28 or 25;
			local x, n = math.ceil((42000 - reputation) / repPerTurnIn), math.ceil(42000 / repPerTurnIn);
			GameTooltip:AddDoubleLine("Complete Zapping Quests (Feralas)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
-- #if AFTER TBC
			local repPerTurnIn = isHuman and 385 or 350;
-- #else
			local repPerTurnIn = isHuman and 165 or 150;
-- #endif
			local x, n = math.ceil((42000 - reputation) / repPerTurnIn), math.ceil(42000 / repPerTurnIn);
			GameTooltip:AddDoubleLine("Complete Free Knot! (Dire Maul)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
-- #if AFTER TBC
			local repPerTurnIn = isHuman and 82.5 or 75;
-- #else
			local repPerTurnIn = isHuman and 55 or 50;
-- #endif
			local x, n = math.ceil((42000 - reputation) / repPerTurnIn), math.ceil(42000 / repPerTurnIn);
			GameTooltip:AddDoubleLine("Complete The Gordok Ogre Suit (Dire Maul)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		end
	end
end]];
root("Instances", tier(CLASSIC_TIER, applyclassicphase(PHASE_ONE_DIREMAUL, {
	inst(230, {	-- Dire Maul
		-- #if BEFORE MOP
		["lore"] = "Dire Maul is a three-wing instance found in north-central Feralas. It was once a proud Highborne city called Eldre'Thalas, but now lies in ruins, overrun by ogres, satyrs, and undead. Only a tiny remnant of the original Highborne population remains in the form of a murderous sect called the Shen'dralar.",
		-- #endif
		["mapID"] = DIRE_MAUL,
		["lvl"] = lvlsquish(44, 31, 44),
		["groups"] = {
			n(FACTIONS, {
				faction(809, {	-- Shen'dralar
					["OnTooltip"] = OnTooltipForShendralar,
				}),
				faction(169, {	-- Steamweedle Cartel
					["icon"] = icon("INV_Misc_Coin_01"),
					["OnTooltip"] = OnTooltipForSteamweedle,
					["maps"] = {
						FERALAS,
						STRANGLETHORN_VALE,
						TANARIS,
						THE_BARRENS,
						WINTERSPRING,
					},
				}),
			}),
			n(QUESTS, {
				q(1193, {	-- A Broken Trap
					["description"] = "Use the items on the Broken Trap to trap Guard Slip'kik. It takes a few seconds to finish fixing the trap.\n\nYou must activate this trap in order to do the Tribute Run.",
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15994, 1 },	-- Thorium Widget
						{ "i", 3829, 1 },	-- Frost Oil
					},
					["lvl"] = 56,
				}),
				q(7463, {	-- Arcane Refreshment
					["qg"] = 14368,	-- Lorekeeper Lydros
					["classes"] = { MAGE },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Hydrospawn Essence
							["provider"] = { "i", 18299 },	-- Hydrospawn Essence
						}),
						recipe(10140),	-- Conjure Water (Rank 7)
					},
				}),
				q(7492, {	-- Camp Mojache
					["qgs"] = {
						10879,	-- Harbinger Balthazad
						10880,	-- Warcaller Gorlach
						10881,	-- Bluff Runner Windstrider
					},
					["coords"] = {
						{ 46.6, 64.6, ORGRIMMAR },
						{ 41.4, 54.2, THUNDER_BLUFF },
						{ 69.2, 49.2, UNDERCITY },
					},
					["maps"] = { FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				q(7499, {	-- Codex of Defense
					["providers"] = {
						{ "i", 18357 },	-- Codex of Defense
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					["classes"] = { WARRIOR },
					["lvl"] = 54,
					["groups"] = {
						i(18466),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7631, {	-- Dreadsteed of Xoroth
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["sourceQuest"] = 7629,	-- Imp Delivery
					["coord"] = { 12.6, 31.6, BURNING_STEPPES },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18818, 1 },	-- Mor'zul's Instructions
					},
					["lvl"] = 60,
					["group"] = {
						mount(23161),	-- Summon Dreadsteed
					},
				}),
				q(7481, {	-- Elven Legends
					["qg"] = 14373,	-- Sage Korolusk
					["description"] = "The objective is next to Lorekeeper Lydros in the Dire Maul West Library.",
					["coord"] = { 75.3, 43.8, FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				q(7482, {	-- Elven Legends
					["qg"] = 14374,	-- Scholar Runethorn
					["description"] = "The objective is next to Lorekeeper Lydros in the Dire Maul West Library.",
					["coord"] = { 31.2, 43.9, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 54,
				}),
				q(7494, {	-- Feathermoon Stronghold
					["qgs"] = {
						2198,	-- Crier Goodman
						10877,	-- Courier Hammerfall
						10878,	-- Herald Moonstalker
					},
					["coords"] = {
						{ 39, 63.6, DARNASSUS },
						{ 30.5, 67, IRONFORGE },
						{ 54.8, 62.6, STORMWIND_CITY },
					},
					["maps"] = { FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 54,
					["isBreadcrumb"] = true,
				}),
				q(5525, {	-- Free Knot!
					["qg"] = 14338,	-- Knot Thimblejack
					["description"] = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
					["cost"] = { { "i", 18250, 1 } },	-- Gordok Shackle Key
					["lvl"] = 54,
				}),
				q(7429, {	-- Free Knot!
					["qg"] = 14338,	-- Knot Thimblejack
					["sourceQuest"] = 5525,	-- Free Knot!
					["description"] = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
					["maxReputation"] = { 169, EXALTED },	-- Steamweedle Cartel, Exalted.
					["cost"] = { { "i", 18250, 1 } },	-- Gordok Shackle Key
					["repeatable"] = true,
					["lvl"] = 54,
				}),
				q(7505, {	-- Frost Shock and You
					["providers"] = {
						{ "i", 18363 },	-- Frost Shock and You
						{ "n", 14381 },	-- Lorekeeper Javon
					},
					["classes"] = { SHAMAN },
					["lvl"] = 54,
					["groups"] = {
						i(18471),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7498, {	-- Garona: A Study on Stealth and Treachery
					["providers"] = {
						{ "i", 18356 },	-- Garona: A Study on Stealth and Treachery
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					["classes"] = { ROGUE },
					["lvl"] = 54,
					["groups"] = {
						i(18465),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7502, {	-- Harnessing Shadows
					["providers"] = {
						{ "i", 18360 },	-- Harnessing Shadows
						{ "n", 14382 },	-- Lorekeeper Mykos
					},
					["classes"] = { WARLOCK },
					["lvl"] = 54,
					["groups"] = {
						i(18467),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7504, {	-- Holy Bologna: What the Light Won't Tell You
					["providers"] = {
						{ "i", 18362 },	-- Holy Bologna: What the Light Won't Tell You
						{ "n", 14381 },	-- Lorekeeper Javon
					},
					["classes"] = { PRIEST },
					["lvl"] = 54,
					["groups"] = {
						i(18469),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7489, {	-- Lethtendris's Web
					["qg"] = 7776,	-- Talo Thornhoof
					["sourceQuest"] = 7492,	-- Camp Mojache
					["coord"] = { 76.2, 43.8, FERALAS },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/1 Lethtendris's Web
							["provider"] = { "i", 18426 },	-- Lethtendris's Web
						}),
						i(18491),	-- Lorespinner
					},
				}),
				q(7488, {	-- Lethtendris's Web
					["qg"] = 7877,	-- Latronicus Moonspear
					["sourceQuest"] = 7494,	-- Feathermoon Stronghold
					["coord"] = { 30.4, 46.2, FERALAS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/1 Lethtendris's Web
							["provider"] = { "i", 18426 },	-- Lethtendris's Web
						}),
						i(18491),	-- Lorespinner
					},
				}),
				q(7484, {	-- Libram of Focus
					["altQuests"] = {
						7479,	-- Libram of Focus
					},
					["sourceQuests"] = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					["qg"] = 14368,	-- Lorekeeper Lydros
					["repeatable"] = true,
					["cost"] = {
						{ "i", 18333, 1 },	-- Libram of Focus
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 4 },	-- Large Brilliant Shard
						{ "i", 12753, 2 },	-- Skin of Shadow
					},
					["lvl"] = 57,
					["groups"] = {
						i(18330),	-- Arcanum of Focus
					},
				}),
				q(7485, {	-- Libram of Protection
					["qg"] = 14368,	-- Lorekeeper Lydros
					["altQuests"] = {
						7480,	-- Libram of Protection
					},
					["sourceQuests"] = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					["cost"] = {
						{ "i", 18334, 1 },	-- Libram of Protection
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 2 },	-- Large Brilliant Shard
						{ "i", 12735, 1 },	-- Frayed Abomination Stitching
					},
					["repeatable"] = true,
					["lvl"] = 57,
					["groups"] = {
						i(18331),	-- Arcanum of Protection
					},
				}),
				q(7483, {	-- Libram of Rapidity
					["qg"] = 14368,	-- Lorekeeper Lydros
					["altQuests"] = {
						7478,	-- Libram of Rapidity
					},
					["sourceQuests"] = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					["cost"] = {
						{ "i", 18332, 1 },	-- Libram of Rapidity
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 2 },	-- Large Brilliant Shard
						{ "i", 12938, 2 },	-- Blood of Heroes
					},
					["repeatable"] = true,
					["lvl"] = 57,
					["groups"] = {
						i(18329),	-- Arcanum of Rapidity
					},
				}),
				q(7441, {	-- Pusillin and the Elder Azj'Tordin
					["qg"] = 14355,	-- Azj'Tordin
					["coord"] = { 76.7, 37.2, FERALAS },
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/1 Book of Incantations
							["provider"] = { "i", 18261 },	-- Book of Incantations
						}),
						i(18410),	-- Sprinter's Sword
						i(18411),	-- Spry Boots
					},
				}),
				q(7500, {	-- The Arcanist's Cookbook
					["providers"] = {
						{ "i", 18358 },	-- The Arcanist's Cookbook
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					["classes"] = { MAGE },
					["lvl"] = 54,
					["groups"] = {
						i(18468),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7506, {	-- The Emerald Dream...
					["providers"] = {
						{ "i", 18364 },	-- The Emerald Dream
						{ "n", 14381 },	-- Lorekeeper Javon
					},
					["classes"] = { DRUID },
					["lvl"] = 54,
					["groups"] = {
						i(18470),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(5518, {	-- The Gordok Ogre Suit
					["qg"] = 14338,	-- Knot Thimblejack
					["cost"] = {
						{ "i", 14048, 4 },	-- Bolt of Runecloth
						{ "i", 8170, 8 },	-- Rugged Leather
						{ "i", 14341, 2 },	-- Rune Thread
						{ "i", 18240, 1 },	-- Ogre Tannin
					},
					["lvl"] = 56,
					["groups"] = {
						{
							["recipeID"] = 22813,	-- Gordok Ogre Suit
							["requireSkill"] = TAILORING,
						},
						{
							["recipeID"] = 22815,	-- Gordok Ogre Suit
							["requireSkill"] = LEATHERWORKING,
						},
						{
							["itemID"] = 18258,	-- Gordok Ogre Suit
							["description"] = "Before using this, clear the trash before Captain Kromcrush. Tell your group to stay back while you talk to Kromcrush with this disguise on. If they aggro him, your group will fail the Tribute Run.",
						},
					},
				}),
				q(5519, {	-- The Gordok Ogre Suit
					["qg"] = 14338,	-- Knot Thimblejack
					["sourceQuest"] = 5518,	-- The Gordok Ogre Suit
					["maxReputation"] = { 169, EXALTED },	-- Steamweedle Cartel, Exalted.
					["cost"] = {
						{ "i", 14048, 4 },	-- Bolt of Runecloth
						{ "i", 8170, 8 },	-- Rugged Leather
						{ "i", 14341, 2 },	-- Rune Thread
						{ "i", 18240, 1 },	-- Ogre Tannin
					},
					["repeatable"] = true,
					["lvl"] = 56,
					["groups"] = {
						i(18258),	-- Gordok Ogre Suit
					},
				}),
				q(5528, {	-- The Gordok Taste Test
					["qg"] = 14322,	-- Stomper Kreeg <The Drunk>
					["description"] = "With Stomper Kreeg left alive, kill |cFFFFD700King Gordok|r to become king, and then return to the courtyard.\n\nHe sells these items after you have completed the quest and if you are Friendly with him.",
					["lvl"] = 56,
					["groups"] = {
						i(18269),	-- Gordok Green Grog
						i(18284),	-- Kreeg's Stout Beatdown
					},
				}),
				q(7503, {	-- The Greatest Race of Hunters
					["providers"] = {
						{ "i", 18361 },	-- The Greatest Race of Hunters
						{ "n", 14382 },	-- Lorekeeper Mykos
					},
					["classes"] = { HUNTER },
					["lvl"] = 54,
					["groups"] = {
						i(18473),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7501, {	-- The Light and How To Swing It
					["providers"] = {
						{ "i", 18359 },	-- The Light and How to Swing It
						{ "n", 14382 },	-- Lorekeeper Mykos
					},
					["classes"] = { PALADIN },
					["lvl"] = 54,
					["groups"] = {
						i(18472),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7461, {	-- The Madness Within
					["qg"] = 14358,	-- Shen'dralar Ancient
					["lvl"] = 56,
					["groups"] = {
						objective(1, {	-- 0/1 Immol'thar slain
							["provider"] = { "n", 11496 },	-- Immol'thar
						}),
						objective(2, {	-- 0/1 Prince Tortheldrin slain
							["provider"] = { "n", 11486 },	-- Prince Tortheldrin
						}),
					},
				}),
				q(7877, {	-- The Treasure of the Shen'dralar
					["qg"] = 14358,	-- Shen'dralar Ancient
					["sourceQuest"] = 7461,	-- The Madness Within
					["lvl"] = 57,
					["groups"] = {
						i(18421),	-- Backwood Helm
						i(18420),	-- Bonecrusher
						i(18424),	-- Sedge Boots
					},
				}),
				q(7703, {	-- Unfinished Gordok Business
					["qg"] = 14325,	-- Captain Kromcrush
					["description"] = "Kill |cFFFFD700King Gordok|r, and then return to the courtyard.",
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 Gauntlet of Gordok Might
							["provider"] = { "i", 18336 },	-- Gauntlet of Gordok Might
						}),
						i(18367),	-- Gordok's Gauntlets
						i(18368),	-- Gordok's Gloves
						i(18366),	-- Gordok's Handguards
						i(18369),	-- Gordok's Handwraps
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(18365, {	-- A Thoroughly Read Copy of "Nat Pagle's Guide to Extreme Anglin'."
					["description"] = "This item is utterly worthless, however there was a rumor that this item could be used to obtain the original Ashbringer via fishing.\n\nThis can be found in various places throughout all the wings of Dire Maul.\n\nDire Maul North: Southwest corner of Guard Fengus's courtyard or next to King Gordok and Cho'Rush the Observer.\n\nDire Maul East: Eastern wall of the garden, the ledge above the garden, next to Lethtendris, or next to Alzzin the Wildshaper.\n\nDire Maul West: By the southern generator in Immol'thar's room.",
				}),
				i(12662),	-- Demonic Rune
				i(18640),	-- Happy Fun Rock
				i(18333),	-- Libram of Focus
				i(18334),	-- Libram of Protection
				i(18332),	-- Libram of Rapidity
				applyclassicphase(PHASE_FIVE, i(21982, {	-- Ogre Warbeads
					["crs"] = {
						11441,	-- Gordok Brute
						14351,	-- Gordok Bushwacker
						11445,	-- Gordok Captain
						11440,	-- Gordok Enforcer
						11444,	-- Gordok Mage-Lord
						11442,	-- Gordok Mauler
						11443,	-- Gordok Ogre-Mage
						11450,	-- Gordok Reaver
						11448,	-- Gordok Warlock
					},
				})),
			}),
			n(COMMON_BOSS_DROPS, {
				["description"] = "The following items can drop from any boss in Dire Maul and also from Dusty Tomes on the ground.",
				["groups"] = {
					i(18357),	-- Codex of Defense
					i(18360),	-- Harnessing Shadows
					i(18363),	-- Frost Shock and You
					i(18356),	-- Garona: A Study on Stealth and Treachery
					i(18362),	-- Holy Bologna: What the Light Won't Tell You
					i(18401),	-- Nostro's Compendium of Dragon Slaying
					i(18358),	-- The Arcanist's Cookbook
					i(18364),	-- The Emerald Dream
					i(18361),	-- The Greatest Race of Hunters
					i(18359),	-- The Light and How to Swing It
				},
			}),
			m(239, {	-- Warpwood Quarter [East - Demon]
				["creatureID"] = -12,	-- Warpwood Quarter [East - Demon]
				["description"] = "This part of the instance can be accessed from the eastern-most portal. (right side)",
				["groups"] = {
					n(ZONE_DROPS, {
						i(18296, {	-- Marksman Bands
							["crs"] = {
								11454,	-- Wildspawn Betrayer
								11455,	-- Wildspawn Felsworn
								11457,	-- Wildspawn Hellcaller
								11452,	-- Wildspawn Rogue
								11451,	-- Wildspawn Satyr
								11456,	-- Wildspawn Shadowstalker
							},
						}),
						i(18295, {	-- Phasing Boots
							["crs"] = {
								13196,	-- Phase Lasher
							},
						}),
						i(18603, {	-- Satyr Blood
							["classes"] = { WARLOCK },
							["crs"] = {
								11454,	-- Wildspawn Betrayer
								11455,	-- Wildspawn Felsworn
								11457,	-- Wildspawn Hellcaller
								11452,	-- Wildspawn Rogue
								11451,	-- Wildspawn Satyr
								11456,	-- Wildspawn Shadowstalker
								11453,	-- Wildspawn Trickster
							},
						}),
						i(18298, {	-- Unbridled Leggings
							["crs"] = {
								11454,	-- Wildspawn Betrayer
								11455,	-- Wildspawn Felsworn
								11457,	-- Wildspawn Hellcaller
								11452,	-- Wildspawn Rogue
								11451,	-- Wildspawn Satyr
								11456,	-- Wildspawn Shadowstalker
							},
						}),
					}),
					n(14354, {	-- Pusillin
						["description"] = "Talk to him and then chase him. Eventually he will go up a ramp and become killable.",
						["groups"] = {
							i(18249),	-- Crescent Key
							i(18261),	-- Book of Incantations
							i(18267),	-- Recipe: Runn Tum Tuber Surprise
						},
					}),
					n(14349, {	-- Pimgib
						i(18354, {	-- Pimgib's Collar
							["classes"] = { WARLOCK },
						}),
					}),
					n(14327, {	-- Lethtendris
						i(18426),	-- Lethtendris's Web
						i(18311),	-- Quel'dorei Channeling Rod
						i(18301),	-- Lethtendris' Wand
						i(18325),	-- Felhide Cap
						i(18302),	-- Band of Vigor
					}),
					n(13280, {	-- Hydrospawn
						i(18299),	-- Hydrospawn Essence
						i(18324),	-- Waveslicer
						i(18317),	-- Tempest Talisman
						i(18305),	-- Breakwater Legguards
						i(18307),	-- Riptide Shoes
						i(18322),	-- Waterspout Boots
						applyclassicphase(PHASE_THREE, i(19268)),	-- Ace of Elementals
					}),
					n(11490, {	-- Zevrim Thornhoof
						i(18323),	-- Satyr's Bow
						i(18308),	-- Clever Hat
						i(18319),	-- Fervent Helm
						i(18313),	-- Helm of Awareness
						i(18306),	-- Gloves of Shadowy Mist
					}),
					applyclassicphase(PHASE_FIVE, n(16097, {	-- Isalien Summonable
						["description"] = "This boss can be summoned using the Brazier of Beckoning or the Brazier of Invocation, which can summon any of the spirits.",
						["cost"] = {
							{ "i", 22050, 1 },	-- Brazier of Beckoning [Isalien]
							{ "i", 22057, 1 },	-- Brazier of Invocation
						},
						["groups"] = {
							i(22315), 	-- Hammer of Revitalization
							i(22314), 	-- Huntsman's Harpoon
							i(22304), 	-- Ironweave Gloves
							i(22472), 	-- Boots of Ferocity
							--[[
							{
								["itemID"] = 22401,	-- Libram of Hope
								["classes"] = { PALADIN },
							},
							{
								["itemID"] = 22345,	-- Totem of Rebirth
								["classes"] = { SHAMAN },
							},
							]]--
							i(22401),	-- Libram of Hope
							i(22345),	-- Totem of Rebirth
						},
					})),
					n(11491, {	-- Old Ironbark
						["description"] = "Talk to him for him to break down the door.",
					}),
					n(11492, {	-- Alzzin the Wildshaper
						i(18501, {	-- Felvine Shard
							["description"] = "Looted from the Felvine Shard object that spawns under the vines near the last boss in Dire Maul East.",
						}),
						i(18321),	-- Energetic Rod
						i(18310),	-- Fiendish Machete
						i(18328),	-- Shadewood Cloak
						i(18312),	-- Energized Chestplate
						i(18309),	-- Gloves of Restoration
						i(18326),	-- Razor Gauntlets
						i(18327),	-- Whipvine Cord
						i(18318),	-- Merciful Greaves
						i(18314),	-- Ring of Demonic Guile
						i(18315),	-- Ring of Demonic Potency
					}),
				},
			}),
			m(235, {	-- Gordok Commons [North - Ogres] [Straight]
				["creatureID"] = -13,	-- Gordok Commons [North - Ogres] [Straight]
				["description"] = "This part of the instance can be accessed after clearing West or entering from the northern-most portal.",
				["cost"] = {
					{ "i", 18249, 1 },	-- Crescent Key
				},
				["groups"] = {
					n(ZONE_DROPS, {
						i(18250, {	-- Gordok Shackle Key
							["description"] = "NOTE: Do NOT Free Knot if you are doing a Tribute Run. He runs away.",
							["crs"] = {
								14325,	-- Captain Kromcrush
								14321,	-- Guard Fengus
								14326,	-- Guard Mol'dar
								14323,	-- Guard Slip'kik
								11441,	-- Gordok Brute
								14351,	-- Gordok Bushwacker
								11445,	-- Gordok Captain
								11444,	-- Gordok Mage-Lord
								11450,	-- Gordok Reaver
								11448,	-- Gordok Warlock
							},
						}),
					}),
					n(COMMON_BOSS_DROPS, {
						["description"] = "The following items can drop from any of the guards.",
						["crs"] = {
							14326,	-- Guard Mol'dar
							14321,	-- Guard Fengus
							14323,	-- Guard Slip'kik
						},
						["groups"] = {
							i(18462),	-- Jagged Bone Fist
							i(18463),	-- Ogre Pocket Knife
							i(18460),	-- Unsophisticated Hand Cannon
							i(18450),	-- Robe of Combustion
							i(18451),	-- Hyena Hide Belt
							i(18459),	-- Gallant's Wristguards
							i(18458),	-- Modest Wristguards
							i(18464),	-- Gordok Nose Ring
						},
					}),
					n(14326, {	-- Guard Mol'dar
						["description"] = "If you do not have a way to open the inner door, you can kill him for the Inner Door Key.\n\nDoing so will invalidate your Tribute Run.",
						["groups"] = {
							i(18498),	-- Hedgecutter
							i(18496),	-- Heliotrope Cloak
							i(18493),	-- Bulky Iron Spaulders
							i(18494),	-- Denwatcher's Shoulders
							i(18497),	-- Sublime Wristguards
							i(18268),	-- Gordok Inner Door Key
						},
					}),
					n(14322, {	-- Stomper Kreeg
						i(18425),	-- Kreeg's Mug
						-- #if AFTER 6.0.2
						i(18464),	-- Gordok Nose Ring
						-- #endif
						n(VENDORS, {
							["description"] = "After becoming the king, you can come back to Kreeg to buy some drinks.",
							["groups"] = {
								i(18269),	-- Gordok Green Grog
								i(18284),	-- Kreeg's Stout Beatdown
								i(18288),	-- Molasses Firewater
								i(18287),	-- Evermurky
							},
						}),
					}),
					n(14321, {	-- Guard Fengus
						["description"] = "Avoid him and loot his chest for a key to open the door.",
					}),
					o(179501, {	-- Knot Thimblejack's Cache
						["sourceQuest"] = 5525,	-- Free Knot!
						["groups"] = {
							i(18414),	-- Pattern: Belt of the Archmage
							i(18517),	-- Pattern: Chromatic Cloak
							i(18418),	-- Pattern: Cloak of Warding
							i(18415),	-- Pattern: Felcloth Gloves
							i(18514),	-- Pattern: Girdle of Insight
							i(18518),	-- Pattern: Hide of the Wild
							i(18416),	-- Pattern: Inferno Gloves
							i(18515),	-- Pattern: Mongoose Boots
							i(18417),	-- Pattern: Mooncloth Gloves
							i(18519),	-- Pattern: Shifting Cloak
							i(18516),	-- Pattern: Swift Flight Bracers
							i(18240),	-- Ogre Tannin
						},
					}),
					o(179499, {	-- Ogre Tannin Basket
						["description"] = "Beware! Looting the Ogre Tannin will cause a Gordok Bushwacker to spawn. Quote is homage to the movie The Silence of the Lambs.\n\n'NO! It puts the tannin in the basket, or it gets the mallet again!'",
						["qg"] = 14351,	-- Gordok Bushwacker
						["groups"] = {
							i(18240),	-- Ogre Tannin
						},
					}),
					n(14323, {	-- Guard Slip'kik
						["description"] = "Trap him using a Frost Oil and a Thorium Widget.",
						["sourceQuest"] = 1193,	-- A Broken Trap
						["groups"] = {
							i(18498),	-- Hedgecutter
							i(18496),	-- Heliotrope Cloak
							i(18493),	-- Bulky Iron Spaulders
							i(18494),	-- Denwatcher's Shoulders
							i(18497),	-- Sublime Wristguards
						},
					}),
					n(14325, {	-- Captain Kromcrush
						["description"] = "In order to get to this boss, you must use the Inner Door Key or have an engineer open the door using a Seaforium Charge.\n\nUse the Gordok Ogre Suit to skip him. (talk to him)",
						["cost"] = {
							{ "i", 18268, 1 },	-- Gordok Inner Door Key
							{ "i", 18258, 1 },	-- Gordok Ogre Suit
						},
						["groups"] = {
							i(18502),	-- Monstrous Glaive
							i(18503),	-- Kromcrush's Chestplate
							i(18505),	-- Mugger's Belt
							i(18507),	-- Boots of the Full Moon
						},
					}),
					n(14324, {	-- Cho'Rush the Observer
						i(18484),	-- Cho'Rush's Blade
						i(18483),	-- Mana Channeling Wand
						i(18485),	-- Observer's Shield
						i(18490),	-- Insightful Hood
					}),
					n(11501, {	-- King Gordok
						i(18780),	-- Top Half of Advanced Armorsmithing: Volume I
						i(18520),	-- Barbarous Blade
						i(18523),	-- Brightly Glowing Stone
						i(18526),	-- Crown of the Ogre King
						i(18525),	-- Bracers of Prosperity
						i(18527),	-- Harmonious Gauntlets
						i(18524),	-- Leggings of Destruction
						i(18521),	-- Grimy Metal Boots
						i(18522),	-- Band of the Ogre King
						applyclassicphase(PHASE_THREE, i(19258)),	-- Ace of Warlords
					}),
					n(14353, {	-- Mizzle the Crafty
						["description"] = "Speak with Mizzle after killing |cFFFFD700King Gordok|r to spawn the Tribute Chest.",
						["groups"] = {
							o(179564, {	-- Gordok Tribute Chest
								["description"] =  "A full Tribute Run (5 items) requires leaving all bosses alive except King Gordok, and also requires activating the Frost Trap & fooling Kromcrush with the Ogre Suit, granted by the Goblin near the trap.",
								["groups"] = {
									i(18655),	-- Schematic: Major Recombobulator
									i(18499),	-- Barrier Shield
									i(18479),	-- Carrion Scorpid Helm
									i(18537),	-- Counterattack Lodestone
									i(18528),	-- Cyclone Spaulders
									i(18529),	-- Elemental Plate Girdle
									i(18533),	-- Gordok Bracers of Power
									i(18478),	-- Hyena Hide Jerkin
									i(18532),	-- Mindsurge Robe
									i(18476),	-- Mud Stained Boots
									i(18475),	-- Oddly Magical Belt
									i(18530),	-- Ogre Forged Hauberk
									i(18482),	-- Ogre Toothpick Shooter
									i(18495),	-- Redoubt Cloak
									i(18534),	-- Rod of the Ogre Magi
									i(18480),	-- Scarab Plate Helm
									i(18477),	-- Shaggy Leggings
									i(18481),	-- Skullcracking Mace
									i(18500),	-- Tarnished Elven Ring
									i(18538),	-- Treant's Bane
									i(18531),	-- Unyielding Maul
								},
							}),
						},
					}),
				},
			}),
			m(236, {	-- Capital Gardens [West - Elves] [Left Side]
				["creatureID"] = -14,	-- Capital Gardens [West - Elves] [Left Side]
				["description"] = "This part of the instance can be accessed from the western-most portal. (left side)",
				["cost"] = {
					{ "i", 18249, 1 },	-- Crescent Key
				},
				["groups"] = {
					n(VENDORS, {
						n(14371, {	-- Shen'dralar Provisioner
							i(18487),	-- Pattern: Mooncloth Robe
						}),
					}),
					n(ZONE_DROPS, {
						i(18289, {	-- Barbed Thorn Necklace
							["crs"] = {
								11461,	-- Warpwood Guardian
								11462,	-- Warpwood Treant
								13021,	-- Warpwood Crusher
								11464,	-- Warpwood Tangler
								11465,	-- Warpwood Stomper
							},
						}),
						i(18339, {	-- Eidolon Cloak
							["crs"] = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}),
						i(18340, {	-- Eidolon Talisman
							["crs"] = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}),
						applyclassicphase(PHASE_FIVE, i(22224, {	-- Jeering Spectre's Essence
							["crs"] = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11469,	-- Eldreth Seether
								11470,	-- Eldreth Sorcerer
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						})),
						i(18337, {	-- Orphic Bracers
							["crs"] = {
								11480,	-- Arcane Aberration
								14399,	-- Arcane Torrent
								11483,	-- Mana Remnant
								11484,	-- Residual Monstrosity
							},
						}),
						i(18343, {	-- Petrified Band
							["crs"] = {
								11459,	-- Ironbark Protector
								14303,	-- Petrified Guardian
								11458,	-- Petrified Treant
							},
						}),
						i(18344, {	-- Stonebark Gauntlets
							["crs"] = {
								11459,	-- Ironbark Protector
								14303,	-- Petrified Guardian
								11458,	-- Petrified Treant
							},
						}),
						i(18338, {	-- Wand of Arcane Potency
							["crs"] = {
								11480,	-- Arcane Aberration
								14399,	-- Arcane Torrent
								11483,	-- Mana Remnant
								11484,	-- Residual Monstrosity
							},
						}),
					}),
					n(11487, {	-- Magister Kalendris
						applyclassicphase(PHASE_FIVE, i(22309)),	-- Pattern: Big Bag of Enchantment
						i(18397),	-- Elder Magus Pendant
						i(18374),	-- Flamescarred Shoulders
						i(18350),	-- Amplifying Cloak
						i(18351),	-- Magically Sealed Bracers
						i(18371),	-- Mindtap Talisman
					}),
					n(11467, {	-- Tsu'zee
						["description"] = "This is a rare that is not always present.",
						["groups"] = {
							i(18387),	-- Brightspark Gloves
							i(18346),	-- Threadbane Trousers
							i(18345),	-- Murmuring Ring
						},
					}),
					n(11488, {	-- Illyanna Ravenoak
						i(18347),	-- Well Balanced Axe
						i(18383),	-- Force Imbued Gauntlets
						i(18349),	-- Gauntlets of Accuracy
						i(18386),	-- Padre's Trousers
					}),
					n(11489, {	-- Tendris Warpwood
						i(18353),	-- Stoneflower Staff
						i(18352),	-- Petrified Bark Shield
						i(18393),	-- Warpwood Bindings
						i(18390),	-- Tanglemoss Leggings
					}),
					n(11496, {	-- Immol'thar
						i(18372),	-- Blade of the New Moon
						i(18381),	-- Evil Eye Pendant
						i(18384),	-- Bile-Etched Spaulders
						i(18389),	-- Cloak of the Cosmos
						i(18385),	-- Robe of Everlasting Night
						i(18394),	-- Demon Howl Wristguards
						i(18377),	-- Quickdraw Gloves
						i(18391),	-- Eyestalk Cord
						i(18379),	-- Odious Greaves
						i(18370),	-- Vigilance Charm
						applyclassicphase(TBC_PHASE_ONE, i(24345, {	-- Book of Cower IV
							["spellID"] = 31709,	-- Cower IV
							["classes"] = { DRUID },
							["rank"] = 4,
						})),
					}),
					n(14506, {	-- Lord Hel'nurath
						["description"] = "|cff3399ffSTEP 1:|r Find a Warlock that is on or has completed Dreadsteed of Xoroth.\n|cff3399ffSTEP 2:|r Warlock buys Xorothian Glyphs, Black Lodestone & J'eevee's Jar from Gorzeeki Wildeyes. (Burning Steppes - 12.4, 31.6)\n|cff3399ffSTEP 3:|r Kill Immol'thar.\n|cff3399ffSTEP 4:|r Warlock uses J'eevee's Jar while standing on platform summoning Wheel of the Black March, Doomsday Candle, & Bell of Dethmoora.\n|cff3399ffSTEP 5:|r Kill stuff & use Black Lodestone to keep 3 artifacts active, this requires soul shards to do.\n|cff3399ffSTEP 6:|r Once mobs stop spawning, use Xorothian Glyphs to summon the dreadsteed.\n|cff3399ffSTEP 7:|r Kill Lord Hel'nurath & collect loot.",
						["sourceQuest"] = 7631,	-- Dreadsteed of Xoroth
						["cost"] = {
							{ "i", 18670, 1 },	-- Xorothian Glyphs
							{ "i", 18629, 1 },	-- Black Lodestone
							{ "i", 18663, 1 },	-- J'eevee's Jar
						},
						["groups"] = {
							i(18757), 	-- Diabolic Mantle
							i(18755), 	-- Xorothian Firestick
							i(18756), 	-- Dreadguard Protector
							i(18754), 	-- Fel Hardened Bracers
						},
					}),
					n(11486, {	-- Prince Tortheldrin
						i(18336, {	-- Gauntlet of Gordok Might
							["description"] = "In the corner of the room that the Prince is in, next to the bookshelves, there is a small chest on the ground that contains the gauntlet. You must kill the Prince in order for the chest to be interactable.",
						}),
						i(18392),	-- Distracting Dagger
						i(18396),	-- Mind Carver
						i(18376),	-- Timeworn Mace
						i(18388),	-- Stoneshatter
						i(18382),	-- Fluctuating Cloak
						i(18373),	-- Chestplate of Tranquility
						i(18375),	-- Bracers of the Eclipse
						i(18380),	-- Eldritch Reinforced Legplates
						i(18378),	-- Silvermoon Leggings
						i(18395),	-- Emerald Flame Ring
					}),
				},
			}),
		},
	}),
})));
-- #if AFTER 6.0.1
root("HiddenQuestTriggers", {
	n(WOD_HEADER, {
		q(35890),	-- Dire Maul (Warpwood Quarter) Reward Quest - Normal completion
		q(35891),	-- Dire Maul (Capital Gardens) Reward Quest - Normal completion
		q(35892),	-- Dire Maul (Gordok Commons) Reward Quest - Normal completion
		q(35894),	-- Dire Maul (Bonus) Reward Quest
		q(35956),	-- Dire Maul (Everything) Reward Quest
	}),
});
-- #endif
root("NeverImplemented", bubbleDown({ ["u"] = NEVER_IMPLEMENTED }, {
	q(7462),	-- The Treasure of the Shen'dralar
	q(1318),	-- Unfinished Gordok Business
}));