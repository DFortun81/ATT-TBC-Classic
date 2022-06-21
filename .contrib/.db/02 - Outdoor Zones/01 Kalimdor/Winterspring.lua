---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local OnTooltipForEverlook = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
		if reputation < 0 then
			local repPerKill = isHuman and 2.75 or 2.5;
			local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(84000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Pirates near Ratchet*", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			GameTooltip:AddDoubleLine("Kill Pirates in Tanaris", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		else
			local repPerKill = isHuman and 2.75 or 2.5;
			local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(42000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Pirates near Ratchet*", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			GameTooltip:AddDoubleLine("Kill Pirates in Tanaris", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		end
		GameTooltip:AddLine(" * PROTIP: Ratchet is faster.", 1, 1, 1);
	end
end]];
local OnTooltipForTimbermawHold = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
		-- #if BEFORE CATA
		if reputation >= ]] .. NEUTRAL .. [[ then
			if not t.deadwood then
				local f = _.SearchForField("questID", 8470);
				if f and #f > 0 then t.deadwood = f[1]; end
			end
			if not t.winterfall then
				local f = _.SearchForField("questID", 8471);
				if f and #f > 0 then t.winterfall = f[1]; end
			end
			if not t.deadwood.collected then GameTooltip:AddLine("Complete 'Deadwood Ritual Totem'.", 1, 1, 1); end
			if not t.winterfall.collected then GameTooltip:AddLine("Complete 'Winterfall Ritual Totem'.", 1, 1, 1); end
		end
		-- #endif
		-- #if AFTER CATA
		local repPerKill = isHuman and 22 or 20;
		local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(84000 / repPerKill);
		GameTooltip:AddDoubleLine("Kill Deadwood or Winterfall Furbolgs", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		-- #elseif AFTER TBC
		if reputation < ]] .. REVERED .. [[ then
			local repPerKill = isHuman and 11 or 10;
			local x, n = math.ceil((]] .. REVERED .. [[ - t.reputation) / repPerKill), math.ceil(]] .. (REVERED + 42000) .. [[ / repPerKill);
			GameTooltip:AddDoubleLine("Kill Deadwood or Winterfall Furbolgs (Stops at Revered)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		end
		-- #else
		if reputation < ]] .. HONORED .. [[ then
			local repPerKill = isHuman and 5.5 or 5;
			local x, n = math.ceil((]] .. HONORED .. [[ - t.reputation) / repPerKill), math.ceil(]] .. (HONORED + 42000) .. [[ / repPerKill);
			GameTooltip:AddDoubleLine("Kill Deadwood or Winterfall Furbolgs (Stops at Honored)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		end
		-- #endif
		-- #if AFTER CATA
		local repPerTurnIn = isHuman and 2200 or 2000;
		-- #elseif AFTER TBC
		local repPerTurnIn = isHuman and 165 or 150;
		-- #else
		local repPerTurnIn = isHuman and 55 or 50;
		-- #endif
		local x, n = math.ceil((42000 - t.reputation) / repPerTurnIn), math.ceil(84000 / repPerTurnIn);
		GameTooltip:AddDoubleLine("Turn in Deadwood Feathers (x5) in Felwood", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		GameTooltip:AddDoubleLine("Turn in Winterfall Beads (x5) in Winterspring", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		local remaining = ((x * 5) - GetItemCount(21383, true) - GetItemCount(21377, true));
		if remaining > 0 then GameTooltip:AddLine("You need " .. remaining .. " more feathers/beads for Exalted.", 1, 1, 0); end
		-- #if BEFORE CATA
		-- #if BEFORE TBC
		if reputation < ]] .. HONORED .. [[ then GameTooltip:AddLine("PROTIP: Do NOT turn in the totems or feathers until after Honored!", 1, 0.2, 0.2); end
		-- #else
		if reputation < ]] .. REVERED .. [[ then GameTooltip:AddLine("PROTIP: Do NOT turn in the totems or feathers until after Revered!", 1, 0.2, 0.2); end
		-- #endif
		-- #endif
	end
end]];
local OnTooltipForWintersaberTrainers = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
		-- #if AFTER TBC
		local repPerKill = isHuman and 275 or 250;
		-- #else
		local repPerKill = isHuman and 55 or 50;
		-- #endif
		if reputation < 1500 then
			local x, n = math.ceil((1500 - t.reputation) / repPerKill), math.ceil(1500 / repPerKill);
			GameTooltip:AddDoubleLine("Complete Frostsaber Provisions (to 1500)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		else
			local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(42000 / repPerKill);
			GameTooltip:AddDoubleLine("Complete Winterfall Intrusion", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			
			if reputation >= ]] .. HONORED .. [[ then
				-- #if AFTER TBC
				repPerKill = isHuman and 385 or 350;
				-- #else
				repPerKill = isHuman and 55 or 50;
				-- #endif
				local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(42000 / repPerKill);
				GameTooltip:AddDoubleLine("Complete Rampaging Giants", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			end
		end
	end
end]];
root("Zones", m(KALIMDOR, {
	m(WINTERSPRING, {
		["lore"] = "Winterspring is a frosty valley in northern Kalimdor. This frigid zone is littered with night elven ruins, and serves as the primary home of the Blue Dragonflight in Kalimdor. The only settlement in Winterspring is Everlook, a Steamwheedle Cartel town that is neutral to both Horde and Alliance.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(857, {	-- Explore Winterspring
					-- #if BEFORE WRATH
					["description"] = "Explore Winterspring, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
				removeclassicphase(ach(944, {	-- They Love Me In That Tunnel
					-- #if BEFORE 3.0.1
					["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnTooltip]],
					["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REP_OnUpdate(t, 576); end]],
					["description"] = "Raise your reputation with Timbermaw Hold to Exalted.",
					-- #endif
					["maps"] = { FELWOOD },
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["125:165:611:242"] = 2247,	-- Ice Thistle Hills
				["145:125:617:158"] = 2244,	-- Winterfall Village
				["165:140:593:340"] = 2250,	-- Owl Wing Thicket
				["165:200:509:107"] = 2255,	-- Everlook
				["175:185:555:27"] = 2242,	-- The Hidden Grove
				["185:160:392:137"] = 2253,	-- Starfall Village
				["185:180:493:258"] = 2245,	-- Mazthoril
				["200:160:523:376"] = 2249,	-- Frostwhisper Gorge
				["215:185:401:198"] = 2251,	-- Lake Kel'Theril
				["230:120:229:243"] = 2243,	-- Timbermaw Post
				["240:140:222:172"] = 2246,	-- Frostfire Hot Springs
				["250:180:368:7"] = 2241,	-- Frostsaber Rock
				["255:205:447:441"] = 2256,	-- Darkwhisper Gorge
				--[[
				[2248] = 8,                              -- Dun Mandarr
				[2252] = 12,                             -- The Ruins of Kel'Theril
				[2254] = 14,                             -- Ban'Thallow Barrow Den
				[3139] = 17,                             -- Moon Horror Den
				]]--
			})),
			-- #endif
			n(FACTIONS, {
				faction(577, { 	-- Everlook
					["icon"] = icon("INV_Misc_Coin_01"),
					["OnTooltip"] = OnTooltipForEverlook,
					["maps"] = {
						TANARIS,
						THE_BARRENS,
					},
				}),
				faction(576, {	-- Timbermaw Hold
					["OnTooltip"] = OnTooltipForTimbermawHold,
					["maps"] = { FELWOOD },
				}),
				faction(589, {	-- Wintersaber Trainers
					["OnTooltip"] = OnTooltipForWintersaberTrainers,
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(52, {	-- Everlook, Winterspring
					["cr"] = 11138,	-- Maethrya <Hippogryph Master>
					["coord"] = { 62.2, 36.6, WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(53, {	-- Everlook, Winterspring
					["cr"] = 11139,	-- Yugrek <Wind Rider Master>
					["coord"] = { 60.4, 36.4, WINTERSPRING },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(6605, {	-- A Strange One
					["qg"] = 11755,	-- Harlo Wigglesworth
					["coord"] = { 61, 38.4, WINTERSPRING },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 49,
				}),
				q(8798, {	-- A Yeti of Your Own
					["requireSkill"] = ENGINEERING,
					["lvl"] = 55,
					["qg"] = 10305,	-- Umi Rumplesnicker
					["sourceQuest"] = 5163,	-- Are We There, Yeti? (3/3)
					["groups"] = {
						{
							["recipeID"] = 26011,	-- Tranquil Mechanical Yeti
							["requireSkill"] = ENGINEERING,
						},
					},
				}),
				q(3783, {	-- Are We There, Yeti? (1/3)
					["lvl"] = 52,
					["qg"] = 10305,	-- Umi Rumplesnicker
				}),
				q(977, {	-- Are We There, Yeti? (2/3)
					["lvl"] = 52,
					["qg"] = 10305,	-- Umi Rumplesnicker
					["sourceQuest"] = 3783,	-- Are We There, Yeti? (1/3)
				}),
				q(5163, {	-- Are We There, Yeti? (3/3)
					["lvl"] = 52,
					["qg"] = 10305,	-- Umi Rumplesnicker
					["sourceQuest"] = 977,	-- Are We There, Yeti? (2/3)
					["groups"] = {
						i(15778),	-- Mechanical Yeti
					},
				}),
				q(8469, {	-- Beads for Salfa
					["qg"] = 11556,	-- Salfa
					["sourceQuest"] = 8464,	-- Winterfall Activity
					["coord"] = { 27.8, 34.6, WINTERSPRING },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 21383, 5 },	-- Winterfall Spirit Beads
					},
					["lvl"] = 50,
				}),
				q(5055, {	-- Brumeran of the Chillwind
					["qg"] = 10303,	-- Storm Shadowhoof
					["sourceQuest"] = 5054,	-- Ursius of the Shardtooth
					-- #if CLASSIC
					["races"] = HORDE_ONLY,
					-- #endif
					["lvl"] = 53,
				}),
				q(975, {	-- Cache of Mau'ari
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["sourceQuest"] = 969,	-- Luck Be With You
					["lvl"] = 55,
					["groups"] = {
						i(12384),	-- Cache of Mau'ari
					},
				}),
				q(4804, {	-- Chillwind E'ko
					["lvl"] = 55,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["groups"] = {
						i(12457),	-- Juju Chill
					},
				}),
				q(4809, {	-- Chillwind Horns
					["qg"] = 10468,	-- Felnok Steelspring
					["sourceQuest"] = 4808,	-- Felnok Steelspring
					["lvl"] = 50,
				}),
				q(6030, {	-- Duke Nicholas Zverenhoff
					["lvl"] = 50,
					["qg"] = 10431,	-- Gregor Greystone
				}),
				q(6604, {	-- Enraged Wildkin (1/4)
					["qg"] = 11755,	-- Harlo Wigglesworth
					["coord"] = { 61, 38.4, WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 53,
				}),
				q(4861, {	-- Enraged Wildkin (2/4)
					["qg"] = 10301,	-- Jaron Stoneshaper
					["sourceQuest"] = 6604,	-- Enraged Wildkin (1/4)
					["coord"] = { 52, 30.4, WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
				}),
				q(4863, {	-- Enraged Wildkin (3/4)
					["provider"] = { "o", 175587 },	-- Damaged Crate
					["sourceQuest"] = 4861,	-- Enraged Wildkin (2/4)
					["coord"] = { 59, 59.7, WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
				}),
				q(4864, {	-- Enraged Wildkin (4/4)
					["provider"] = { "o", 175586 },	-- Jaron's Wagon
					["sourceQuest"] = 4863,	-- Enraged Wildkin (3/4)
					["coord"] = { 61.4, 60.6, WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12525, 1 },	-- Jaron's Supplies
						{ "i", 12524, 1 },	-- Blue-feathered Amulet
					},
					["lvl"] = 53,
					["groups"] = {
						{
							["itemID"] = 12525,	-- Jaron's Supplies
							["questID"] = 4864,	-- Enraged Wildkin (4/4)
							["coord"] = { 61.4, 60.7, WINTERSPRING },
						},
					},
				}),
				q(5084, {	-- Falling to Corruption
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5083,	-- Winterfall Firewater
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["maps"] = { FELWOOD },
					["lvl"] = 52,
				}),
				q(4806, {	-- Frostmaul E'ko
					["lvl"] = 55,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["groups"] = {
						i(12460),	-- Juju Might
					},
				}),
				q(4801, {	-- Frostsaber E'ko
					["lvl"] = 55,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["groups"] = {
						i(12450),	-- Juju Flurry
					},
				}),
				q(4970, {	-- Frostsaber Provisions
					["qg"] = 10618,	-- Rivern Frostwind
					["minReputation"] = { 589, NEUTRAL },	-- Wintersaber Trainers, Neutral.
					["maxReputation"] = { 589, EXALTED },	-- Wintersaber Trainers, Exalted.
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 58,
					["groups"] = {
						objective(1, {	-- 0/5 Shardtooth Meat
							["provider"] = { "i", 12622 },
							["crs"] = {
								7445,	-- Elder Shardtooth
								7446,	-- Rabid Shardtooth
								7444,	-- Shardtooth Bear
								7443,	-- Shardtooth Mauler
							},
						}),
						objective(2, {	-- 0/5 Chillwind Meat
							["provider"] = { "i", 12623 },
							["crs"] = {
								7448,	-- Chillwind Chimaera
								7449,	-- Chillwind Ravager
								7447,	-- Fledgling Chillwind
							},
						}),
					},
				}),
				q(4901, {	-- Guardians of the Altar
					["qg"] = 10300,	-- Ranshalla
					["sourceQuest"] = 979,	-- Find Ranshalla
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 52,
				}),
				q(4882, {	-- Guarding Secrets (1/2)
					["provider"] = { "i", 12558 },	-- Blue-feathered Necklace
					["maps"] = { FELWOOD },
					["crs"] = {
						7454,	-- Berserk Owlbeast
						7452,	-- Crazed Owlbeast
						7453,	-- Moontouched Owlbeast
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
				}),
				q(5121, {	-- High Chief Winterfall
					["lvl"] = 52,
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5087,	-- Winterfall Runners
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["groups"] = {
						i(15784),	-- Crystal Breeze Mantle
						i(15786),	-- Fernpulse Jerkin
						i(15787),	-- Willow Band Hauberk
					},
				}),
				q(4805, {	-- Ice Thistle E'ko
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(12459),	-- Juju Escape
					},
				}),
				q(969, {	-- Luck Be With You
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["lvl"] = 55,
				}),
				q(9266, {	-- Making Amends
					["qg"] = 16416,	-- Bronn Fitzwrench
					["coord"] = { 59.8, 39.7, WINTERSPRING },
					["maxReputation"] = { 577, NEUTRAL },	-- Everlook, must be less than Neutral
					["cost"] = {
						{ "i", 14047, 40 },	-- Runecloth
						{ "i", 3857, 4 },	-- Coal
					},
					["repeatable"] = true,
					["lvl"] = 40,
				}),
				q(5057, {	-- Past Endeavors
					["qg"] = 10303,	-- Storm Shadowhoof
					["sourceQuest"] = 5056,	-- Shy-Rotam
					-- #if CLASSIC
					["races"] = HORDE_ONLY,
					-- #endif
					["lvl"] = 53,
					["groups"] = {
						i(15704),	-- Hunter's Insignia Medal
					},
				}),
				q(5981, {	-- Rampaging Giants
					["qg"] = 10618,	-- Rivern Frostwind
					["minReputation"] = { 589, HONORED },	-- Wintersaber Trainers, Honored.
					["maxReputation"] = { 589, EXALTED },	-- Wintersaber Trainers, Exalted.
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 58,
					["groups"] = {
						objective(1, {	-- 0/4 Frostmaul Giant slain
							["provider"] = { "n", 7428 },	-- Frostmaul Giant
						}),
						objective(2, {	-- 0/4 Frostmaul Preserver slain
							["provider"] = { "n", 7429 },	-- Frostmaul Preserver
						}),
					},
				}),
				q(5252, {	-- Remorseful Highborne
					["qg"] = 10684,	-- Remorseful Highborne
					["sourceQuest"] = 5248,	-- Tormented By the Past
					["coord"] = { 56.2, 44.4, WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13347, 1 },	-- Crystal of Zin-Malor (Provided)
					},
					["lvl"] = 53,
				}),
				q(4810, {	-- Return to Tinkee
					["qg"] = 10468,	-- Felnok Steelspring
					["sourceQuest"] = 4809,	-- Chillwind Horns
					["cost"] = {
						{ "i", 12445, 1 },	-- Felnok's Package
					},
					["lvl"] = 50,
					["groups"] = {
						i(15862),	-- Blitzcleaver
						i(15863),	-- Grave Scepter
					},
				}),
				q(4803, {	-- Shardtooth E'ko
					["lvl"] = 55,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["groups"] = {
						i(12455),	-- Juju Ember
					},
				}),
				q(5056, {	-- Shy-Rotam
					["qg"] = 10303,	-- Storm Shadowhoof
					["sourceQuest"] = 5055,	-- Brumeran of the Chillwind
					["cr"] = 10737,	-- Shy-Rotam
					-- #if CLASSIC
					["races"] = HORDE_ONLY,
					-- #endif
					["lvl"] = 53,
					["groups"] = {
						i(15783),	-- Beasthunter Dagger
						i(15782),	-- Beaststalker Blade
						i(12733, {	-- Sacred Frostsaber Meat
							["questID"] = 5056,	-- Shy-Rotam
							["coord"] = { 49.8, 9.8, WINTERSPRING },
							["crs"] = {
								7431,	-- Frostsaber
								7430,	-- Frostsaber Cub
								7433,	-- Frostsaber Huntress
								7434,	-- Frostsaber Pride Watcher
								7432,	-- Frostsaber Stalker
							},
						}),
					},
				}),
				q(5601, {	-- Sister Pamela
					["qg"] = 11629,	-- Jessica Redpath
					["coord"] = { 61.2, 39, WINTERSPRING },
					["lvl"] = 50,
				}),
				q(4842, {	-- Strange Sources
					["lvl"] = 51,
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 980,	-- The New Springs
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["groups"] = {
						i(15789),	-- Deep River Cloak
					},
				}),
				q(5253, {	-- The Crystal of Zin-Malor
					["qg"] = 11079,	-- Wynd Nightchaser
					["sourceQuest"] = 5252,	-- Remorseful Highborne
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13347, 1 },	-- Crystal of Zin-Malor (Provided)
					},
					["lvl"] = 53,
					["groups"] = {
						i(15791),	-- Turquoise Sash
						i(15792),	-- Plow Wood Spaulders
						i(15795),	-- Emerald Mist Gauntlets
					},
				}),
				q(6028, {	-- The Everlook Report (A)
					["qg"] = 10431,	-- Gregor Greystone
					["coord"] = { 61.2, 38.8, WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 15788, 1 },	-- Everlook Report
					},
					["lvl"] = 50,
				}),
				q(6029, {	-- The Everlook Report (H)
					["qg"] = 10431,	-- Gregor Greystone
					["coord"] = { 61.2, 38.8, WINTERSPRING },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15788, 1 },	-- Everlook Report
					},
					["lvl"] = 50,
				}),
				q(5123, {	-- The Final Piece
					["provider"] = { "i", 12842 },	-- Crudely-Written Log
					["sourceQuest"] = 5121,	-- High Chief Winterfall
					["coord"] = { 69.6, 38.2, WINTERSPRING },
					["cr"] = 10738,	-- High Chief Winterfall
					["lvl"] = 52,
				}),
				q(5244, {	-- The Ruins of Kel'Theril
					["lvl"] = 53,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11079,	-- Wynd Nightchaser
					["sourceQuests"] = {
						5250,	-- Starfall
						5249,	-- To Winterspring!
					},
				}),
				q(5082, {	-- Threat of the Winterfall
					["qg"] = 9298,	-- Donova Snowden
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["lvl"] = 52,
				}),
				q(5086, {	-- Toxic Horrors
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5085,	-- Mystery Goo
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["maps"] = { FELWOOD },
					["cost"] = {
						{ "i", 12822, 3 },	-- Toxic Horror Droplet
					},
					["lvl"] = 52,
				}),
				q(6603, {	-- Trouble in Winterspring!
					["lvl"] = 52,
					["qg"] = 11754,	-- Meggi Peppinrocker
					["isBreadcrumb"] = true,
				}),
				q(5245, {	-- Troubled Spirits of Kel'Theril
					["qg"] = 10301,	-- Jaron Stoneshaper
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12891, 1 },	-- Jaron's Pick
						{ "i", 12896, 1 },	-- First Relic Fragment
						{ "i", 12897, 1 },	-- Second Relic Fragment
						{ "i", 12898, 1 },	-- Third Relic Fragment
						{ "i", 12899, 1 },	-- Fourth Relic Fragment
					},
					["lvl"] = 49,
				}),
				q(5054, {	-- Ursius of the Shardtooth
					["qg"] = 10303,	-- Storm Shadowhoof
					-- #if CLASSIC
					["races"] = HORDE_ONLY,
					-- #endif
					["lvl"] = 53,
				}),
				q(4807, {	-- Wildkin E'ko
					["lvl"] = 55,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["groups"] = {
						i(12458),	-- Juju Guile
					},
				}),
				q(4802, {	-- Winterfall E'ko
					["lvl"] = 55,
					["qg"] = 10307,	-- Witch Doctor Mau'ari
					["repeatable"] = true,
					["groups"] = {
						i(12451),	-- Juju Power
					},
				}),
				q(8464, {	-- Winterfall Activity
					["lvl"] = 45,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11556,	-- Salfa
					["groups"] = {
						i(21318),	-- Earth Warder's Gloves
						i(21319),	-- Gloves of the Pathfinder
						i(21320),	-- Vest of the Den Watcher
						i(21322),	-- Ursa's Embrace
					},
				}),
				q(5083, {	-- Winterfall Firewater
					["lvl"] = 52,
					["provider"] = { "i", 12771 },	-- Empty Firewater Flask
				}),
				q(5201, {	-- Winterfall Intrusion
					["qg"] = 10618,	-- Rivern Frostwind
					["minReputation"] = { 589, NEUTRAL + 1500 },	-- Wintersaber Trainers, Neutral + 1500.
					["maxReputation"] = { 589, EXALTED },	-- Wintersaber Trainers, Exalted.
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 58,
					["groups"] = {
						objective(1, {	-- 0/5 Winterfall Shaman slain
							["provider"] = { "n", 7439 },	-- Winterfall Shaman
						}),
						objective(2, {	-- 0/5 Winterfall Ursa slain
							["provider"] = { "n", 7438 },	-- Winterfall Ursa
						}),
					},
				}),
				q(8471, {	-- Winterfall Ritual Totem
					["provider"] = { "i", 20742 },	-- Winterfall Ritual Totem
					["minReputation"] = { 576, NEUTRAL },	-- Timbermaw Hold
					["crs"] = {
						10738,	-- High Chief Winterfall
						7440,	-- Winterfall Den Watcher
						7442,	-- Winterfall Pathfinder
						10916,	-- Winterfall Runner
						7439,	-- Winterfall Shaman
						7441,	-- Winterfall Totemic
						7438,	-- Winterfall Ursa
					},
					["lvl"] = 50,
				}),
				q(5087, {	-- Winterfall Runners
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5086,	-- Toxic Horrors
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["cost"] = {
						{ "i", 12829, 1 },	-- Winterfall Crate
					},
					["lvl"] = 52,
					["groups"] = {
						{
							["itemID"] = 12829,	-- Winterfall Crate
							["questID"] = 5087,	-- Winterfall Runners
							["cr"] = 10916,	-- Winterfall Runner
							["coord"] = { 28.4, 37.8, WINTERSPRING },
						},
					},
				}),
				q(5128, {	-- Words of the High Chief
					["qg"] = 9298,	-- Donova Snowden
					["sourceQuest"] = 5123,	-- The Final Piece
					["coord"] = { 31.2, 45.2, WINTERSPRING },
					["maps"] = { FELWOOD },
					["lvl"] = 52,
					["groups"] = {
						i(13158),	-- Words of the High Chief
						i(34424, {	-- Power of the High Chief
							["timeline"] = { "added 2.3.0.7382" },
						}),
						i(34423, {	-- Strength of the High Chief
							["timeline"] = { "added 2.3.0.7382" },
						}),
					},
				}),
			}),
			n(RARES, {
				n(10202, {	-- Azurous
					["coords"] = {
						{ 57.2, 45.6, WINTERSPRING },
						{ 61.8, 40.4, WINTERSPRING },
						{ 63.0, 40.8, WINTERSPRING },
						{ 64.8, 43.0, WINTERSPRING },
						{ 66.4, 45.6, WINTERSPRING },
						{ 66.6, 53.4, WINTERSPRING },
					},
				}),
				n(10196, {	-- General Colbatann
					["coords"] = {
						{ 54.6, 51.6, WINTERSPRING },
						{ 57.6, 50.0, WINTERSPRING },
						{ 59.6, 49.2, WINTERSPRING },
						{ 61.2, 49.4, WINTERSPRING },
					},
				}),
				n(10199, {	-- Grizzle Snowpaw
					["coords"] = {
						{ 67.0, 35.2, WINTERSPRING },
						{ 67.2, 37.6, WINTERSPRING },
						{ 68.6, 36.0, WINTERSPRING },
						{ 69.2, 38.6, WINTERSPRING },
					},
				}),
				n(10198, {	-- Kashoch the Reaver
					["coords"] = {
						{ 62.0, 69.2, WINTERSPRING },
						{ 63.6, 69.8, WINTERSPRING },
					},
				}),
				n(10201, {	-- Lady Hederine
					["coords"] = {
						{ 65.0, 80.2, WINTERSPRING },
						{ 51.6, 84.4, WINTERSPRING },
						{ 54.6, 87.4, WINTERSPRING },
					},
				}),
				n(10197, {	-- Mezzir the Howler
					["coords"] = {
						{ 30.6, 38.4, WINTERSPRING },
						{ 30.6, 46.0, WINTERSPRING },
						{ 39.8, 36.4, WINTERSPRING },
						{ 45.0, 38.0, WINTERSPRING },
					},
				}),
				n(14457, { 	-- Princess Tempestria
					["description"] = "This is only available during an Elemental Invasion.",
					["coord"] = { 54.6, 42.6, WINTERSPRING },
					["groups"] = {
						i(18679),	-- Frigid Ring
						i(18678),	-- Tempestria's Frozen Necklace
						i(21548),	-- Pattern: Stormshroud Gloves
						i(7091),	-- Pattern: Truefaith Gloves
						applyclassicphase(PHASE_THREE, i(19268)),	-- Ace of Elementals
					},
				}),
				n(10200, {	-- Rak'shiri
					["coords"] = {
						{ 50.0, 8.0, WINTERSPRING },
						{ 50.0, 11.2, WINTERSPRING },
						{ 50.4, 20.4, WINTERSPRING },
						{ 51.8, 17.2, WINTERSPRING },
						{ 55.6, 14.0, WINTERSPRING },
					},
				}),
			}),
			prof(SKINNING, {
				i(15423, {	-- Chimera Leather
					["crs"] = {
						10807,	-- Brumeran
						7449,	-- Chillwind Ravager
					},
				}),
				i(15422, {	-- Frostsaber Leather
					["crs"] = {
						7431,	-- Frostsaber
						7430,	-- Frostsaber Cub
						7433,	-- Frostsaber Huntress
						7434,	-- Frostsaber Pride Watcher
						7432,	-- Frostsaber Stalker
					},
				}),
			}),
			n(VENDORS, {
				n(11188, {	-- Evie Whirlbrew <Alchemy Supplies>
					["coord"] = { 60.8, 37.8, WINTERSPRING },
					["groups"] = {
						i(13480),	-- Recipe: Major Healing Potion
					},
				}),
				n(11187, {	-- Himmik <Food & Drink>
					["coord"] = { 61.2, 39.0, WINTERSPRING },
					["groups"] = {
						i(16110),	-- Recipe: Monster Omelet
					},
				}),
				n(10618, {	-- Rivern Frostwind <Wintersaber Trainer>
					["minReputation"] = { 589, EXALTED },	-- Wintersaber Trainers, Exalted.
					["coord"] = { 49.8, 9.8, WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						removeclassicphase(ach(3356, {	-- Winterspring Frostsaber
							["provider"] = { "i", 13086 },	-- Reins of the Winterspring Frostsaber
							["races"] = ALLIANCE_ONLY,
							["f"] = 100,
							-- #if BEFORE WRATH
							["description"] = "Obtain a Winterspring Frosaber.",
							["OnUpdate"] = [[_.CommonAchievementHandlers.ANY_ITEM_PROVIDER]],
							-- #endif
						})),
						i(13086), 	-- Reins of the Winterspring Frostsaber (MOUNT!)
					},
				}),
				n(11189, {	-- Qia <Trade Goods Supplies>
					["coord"] = { 61.2, 37.2, WINTERSPRING },
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, i(21957)),	-- Design: Necklace of the Diamond Tower
						i(14468),	-- Pattern: Runecloth Bag
						i(14481),	-- Pattern: Runecloth Gloves
						i(14526),	-- Pattern: Mooncloth
						i(15740),	-- Pattern: Frostsaber Boots
						i(16221),	-- Formula: Enchant Chest - Major Health
					},
				}),
				n(16015, {	-- Vi'el <Exotic Reagent Merchant>
					["coord"] = { 58.9, 78.4, WINTERSPRING },
					["groups"] = {
						{
							["itemID"] = 21939,	-- Fel Elemental Rod
							["cost"] = {
								{ "g", 400000 },	-- 40g
							},
						},
					},
				}),
				n(11185, {	-- Xizzer Fizzbolt <Engineering Supplies>
					["coord"] = { 60.8, 38.6, WINTERSPRING },
					["groups"] = {
						i(32381, {	-- Schematic: Fused Wiring
							["isLimited"] = true,
						}),
						i(16046),	-- Schematic: Masterwork Target Dummy
						i(16047),	-- Schematic: Thorium Tube
						i(16050),	-- Schematic: Delicate Arcanite Converter
						i(18656),	-- Schematic: Powerful Seaforium Charge
						i(18652),	-- Schematic: Gyrofreeze Ice Reflector
					},
				}),
				n(14742, {	-- Zap Farflinger
					["requireSkill"] = 20222,	-- Goblin Engineering
					["description"] = "Goblin Engineers can speak to Zap Farflinger to learn the recipe.",
					["coord"] = { 59.6, 49.8, WINTERSPRING },
					["groups"] = {
						recipe(23486),	-- Dimensional Ripper - Everlook
					},
				}),
			}),
			n(ZONE_DROPS, {
				-- #if AFTER CATA
				-- Originally a zone drop of Azshara, was moved to Winterspring after.
				applyclassicphase(TBC_PHASE_ONE, i(34535)),	-- Azure Whelpling
				-- #endif
				i(12524, {	-- Blue-feathered Amulet
					["questID"] = 4864,	-- Enraged Wildkin (4/4)
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						7454,	-- Berserk Owlbeast
						7452,	-- Crazed Owlbeast
						7453,	-- Moontouched Owlbeast
					},
				}),
				i(16223, {	-- Formula: Enchant Weapon - Icy Chill
					["cr"] = 7524,	-- Anguished Highborne
				}),
				i(18704, {	-- Mature Blue Dragon Sinew
					["questID"] = 7634,	-- Ancient Sinew Wrapped Lamina
					["classes"] = { HUNTER },
					["crs"] = {
						7435,	-- Cobalt Wyrmkin
						7436,	-- Cobalt Scalebane
						7437,	-- Cobalt Mageweaver
						10196,	-- General Colbatann
						10663,	-- Manaclaw
						10664,	-- Scryer
					},
				}),
				i(12383, {	-- Moontouched Feather
					["questID"] = 978,	-- Moontouched Wildkin
					["description"] = "Scattered on the ground around Winterspring.",
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 52,
				}),
				i(15761, {	-- Pattern: Frostsaber Gloves
					["cr"] = 7441,	-- Winterfall Totemic
				}),
				i(15747, {	-- Pattern: Frostsaber Leggings
					["cr"] = 7440,	-- Winterfall Den Watcher
				}),
				i(15779, {	-- Pattern: Frostsaber Tunic
					["cr"] = 7438,	-- Winterfall Ursa
				}),
				i(14493, {	-- Pattern: Robe of Winter Night
					["cr"] = 7437,	-- Cobalt Mageweaver
				}),
				i(13497, {	-- Recipe: Greater Arcane Protection Potion
					["cr"] = 7437,	-- Cobalt Mageweaver
				}),
				i(13495, {	-- Recipe: Greater Frost Protection Potion
					["cr"] = 7428,	-- Frostmaul Giant
				}),
				i(16054, {	-- Schematic: Arcanite Dragonling
					["cr"] = 7437,	-- Cobalt Mageweaver
				}),
				applyclassicphase(PHASE_FIVE, i(22227, {	-- Starbreeze Village Relic
					["crs"] = {
						7428,	-- Frostmaul Giant
						7429,	-- Frostmaul Preserver
					},
				})),
				i(18665, {	-- The Eye of Shadow
					["classes"] = { PRIEST },
					["crs"] = {
						7461,	-- Hederine Initiate
						7463,	-- Hederine Slayer
					},
				}),
				i(12431, {	-- Winterfall E'ko
					["crs"] = {
						10738,	-- High Chief Winterfall
						7440,	-- Winterfall Den Watcher
						7442,	-- Winterfall Pathfinder
						10916,	-- Winterfall Runner
						7439,	-- Winterfall Shaman
						7441,	-- Winterfall Totemic
						7438,	-- Winterfall Ursa
					},
				}),
				i(12820, {	-- Winterfall Firewater
					["crs"] = {
						10199,	-- Grizzle Snowpaw
						10738,	-- High Chief Winterfall
						7440,	-- Winterfall Den Watcher
						7442,	-- Winterfall Pathfinder
						10916,	-- Winterfall Runner
						7439,	-- Winterfall Shaman
						7441,	-- Winterfall Totemic
						7438,	-- Winterfall Ursa
					},
				}),
				i(21383, {	-- Winterfall Spirit Beads
					["crs"] = {
						10738,	-- High Chief Winterfall
						7440,	-- Winterfall Den Watcher
						7442,	-- Winterfall Pathfinder
						10916,	-- Winterfall Runner
						7439,	-- Winterfall Shaman
						7441,	-- Winterfall Totemic
						7438,	-- Winterfall Ursa
					},
				}),
				i(21928, {	-- Winterspring Blood Sample
					["crs"] = {
						7445,	-- Elder Shardtooth
						7431,	-- Frostsaber
						7430,	-- Frostsaber Cub
						7433,	-- Frostsaber Huntress
						7434,	-- Frostsaber Pride Watcher
						7432,	-- Frostsaber Stalker
						7446,	-- Rabid Shardtooth
						7444,	-- Shardtooth Bear
						7443,	-- Shardtooth Mauler
					},
				}),
			}),
		},
	}),
}));