---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local OnUpdateForBloodsail = [[function(t)
	if t.collectible then
		local isHuman = _.RaceIndex == 1;
		local repForDressing = isHuman and 11 or 10;
		if not t.dressing then
			local f = _.SearchForField("questID", 9272);
			if f and #f > 0 then t.dressing = f[1]; end
		end
		if t.dressing.collected then repForDressing = 0; end
-- #if AFTER TBC
		local repForAdmiral = isHuman and 550 or 500;
-- #else
		local repForAdmiral = isHuman and 220 or 200;
-- #endif
		if not t.admiral then
			local f = _.SearchForField("questID", 4621);
			if f and #f > 0 then t.admiral = f[1]; end
		end
		if t.admiral.collected then repForAdmiral = 0; end
		t.minReputation[2] = math.max(t.reputation, 41999) + repForDressing + repForAdmiral;
	end
end]];
local OnTooltipForBloodsail = [[function(t)
	local reputation = t.reputation;
	if reputation < 41999 then
		local isHuman = _.RaceIndex == 1;
		GameTooltip:AddLine("Reminder: Do all of the Goblin quests prior to starting this grind.", 1, 0.5, 0.5);
		GameTooltip:AddLine("Do NOT turn in the Bloodsail quests if you intend to get to Exalted!", 1, 0.5, 0.5);
		if reputation < 20999 then
			local repPerKill = isHuman and 27.5 or 25;
			local x, n = math.ceil((20999 - reputation) / repPerKill), math.ceil(63000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Booty Bay Bruisers.", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		else
			local repPerKill = isHuman and 5.5 or 5;
			local x, n = math.ceil((41999 - reputation) / repPerKill), math.ceil(21000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Jazzrik.", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			GameTooltip:AddDoubleLine(" 5.33 - 8 Minute respawn", math.floor((x * 5.33) / 60.0) .. " - " .. math.ceil((x * 8) / 60.0) .. " Hours to go!", 1, 1, 1);
			if not t.eventful then
				t.eventful = true;
				if DBM then
					local f = CreateFrame("FRAME", nil, UIParent);
					f:SetScript("OnEvent", function(self, e, ...)
						(rawget(self, e) or print)(CombatLogGetCurrentEventInfo());
					end);
					f.COMBAT_LOG_EVENT_UNFILTERED = function(ts, subevent, ...)
						if subevent == "UNIT_DIED" then
							local guid = select(6, ...);
							if select(6, strsplit("-",guid)) == "9179" then
								DBM:CreatePizzaTimer(320, "Respawn (min)");
								DBM:CreatePizzaTimer(482, "Respawn (max)");
							end
						end
					end
					f:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
					f:SetPoint("BOTTOMLEFT", UIParent, "TOPLEFT", 0, 0);
					f:SetSize(1, 1);
					f:Hide();
				end
			end
		end
	else
		if not t.dressing.collected then GameTooltip:AddLine("Complete 'Dressing the Part'.", 1, 1, 1); end
		if not t.admiral.collected then GameTooltip:AddLine("Complete 'Avast Ye Admiral'.", 1, 1, 1); end
	end
end]];
local OnTooltipForBootyBay = [[function(t)
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
root("Zones", m(EASTERN_KINGDOMS, {
	m(STRANGLETHORN_VALE, {
		["lore"] = "The Stranglethorn Vale is a vast jungle south of Duskwood.\n\nJungle trolls patrol this steaming rainforest. Ancient Gurubashi trolls once ruled the region, and the ruins of their great cities crumble in the jungle's heat and growth. Naga hunt along the coast and vicious animals and plants, including the eponymous strangle-thorns, make travel dangerous. The Arena, a center for gladiatorial games set in a ruined Gurubashi fighting stadium, draws shady characters of all races. The Blackwater Raiders, a vile group of pirates, make their home in Booty Bay, on the Stranglethorn's southern coast.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(781, {	-- Explore Stranglethorn Vale
					-- #if BEFORE WRATH
					["description"] = "Explore Stranglethorn Vale, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
				removeclassicphase(ach(940, {	-- The Green Hills of Stranglethorn
					["sourceQuests"] = {
						208,	-- Big Game Hunter
						338,	-- The Green Hills of Stranglethorn
					},
					-- #if BEFORE 3.0.1
					["description"] = "Complete all of Hemet Nesingwary quests in Stranglethorn Vale up to and including The Green Hills of Stranglethorn and Big Game Hunter.",
					["OnUpdate"] = [[_.CommonAchievementHandlers.ALL_SOURCE_QUESTS]],
					-- #endif
				})),
			}),
			o(179697, {	-- Arena Treasure Chest
				["description"] = "Chest is dropped in arena every 3 hours.",
				["groups"] = {
					removeclassicphase(ach(389, {	-- Arena Grandmaster
						["provider"] = { "i", 18706 },	-- Arena Master
						-- #if BEFORE WRATH
						["description"] = "Loot the Arena Master trinket from the Gurubashi Arena. Keep it in your bank until achievements come out.\n\nProbably not a bad idea to knock this out before all the normies start farming for this.",
						["OnUpdate"] = [[function(t) t.SetAchievementCollected(t.achievementID, GetItemCount(18706, true) > 0 or GetItemCount(19024, true) > 0); end]],
						-- #endif
					})),
					i(18706),	-- Arena Master
					i(18711),	-- Arena Bands
					i(18710),	-- Arena Bracers
					i(18712),	-- Arena Vambraces
					i(18709),	-- Arena Wristguards
				},
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, explorationBatch({
				["105:110:311:131"] = 129,	-- Mizjah Ruins
				["105:125:387:64"] = 1740,	-- Venture Co. Base Camp
				["110:105:260:132"] = 117,	-- Grom'gol Base Camp
				["110:110:306:301"] = 477,	-- Ruins of Jubuwal
				["110:140:371:129"] = 127,	-- Balia'mah Ruins
				["115:115:156:42"] = 122,	-- Zuuldaia Ruins
				["120:120:345:276"] = 310,	-- Crystalvein Mine
				["125:120:314:493"] = 297,	-- Jaguero Isle
				["125:125:280:368"] = 1737,	-- Mistvale Valley
				["125:140:196:3"] = 102,	-- Ruins of Zul'Kunda
				["128:125:331:59"] = 37,	-- Lake Nazferiti
				["128:125:364:231"] = 128,	-- Ziata'jai Ruins
				["128:175:432:94"] = 105,	-- Mosh'Ogg Ogre Mound
				["140:110:269:26"] = 100,	-- Nesingwary's Expedition
				["145:128:203:433"] = 35,	-- Booty Bay
				["155:150:388:0"] = 101,	-- Kurzen's Compound
				["165:175:194:284"] = 1739,	-- Bloodsail Compound
				["165:190:229:422"] = 43,	-- Wild Shore
				["170:125:394:212"] = 103,	-- Ruins of Zul'Mamwe
				["170:90:284:0"] = 99,		-- Rebel Camp
				["190:175:152:90"] = 104,	-- The Vile Reef
				["200:185:235:189"] = 1741,	-- Gurubashi Arena
				["245:220:483:8"] = 19,		-- Zul'Gurub
				["90:115:211:359"] = 1738,	-- Nek'mani Wellspring
				["90:80:241:92"] = 123,		-- Bal'lal Ruins
				["95:95:299:88"] = 125,		-- Kal'ai Ruins
				["95:95:350:335"] = 311,	-- Ruins of Aboraz
				--[[
				[7] = 1,                                 -- Blackwater Cove
				[106] = 13,                              -- The Stockpile
				[126] = 18,                              -- Tkashi Ruins
				[301] = 23,                              -- The Savage Coast
				[302] = 24,                              -- The Crystal Shore
				[303] = 25,                              -- Shell Beach
				[312] = 28,                              -- Janeiro's Point
				[1577] = 30,                             -- The Cape of Stranglethorn
				[1578] = 31,                             -- Southern Savage Coast
				[1742] = 37,                             -- Spirit Den
				[1757] = 38,                             -- The Crimson Veil
				[1758] = 39,                             -- The Riptide
				[1759] = 40,                             -- The Damsel's Luck
				[1760] = 41,                             -- Venture Co. Operations Center
				[2177] = 42,                             -- Battle Ring
				[2338] = 43,                             -- South Seas
				[2339] = 44,                             -- The Great Sea
				[3357] = 45,                             -- Yojamba Isle
				]]--
			})),
			-- #endif
			n(FACTIONS, {
				faction(87, { 	-- Bloodsail Buccaneers
					["icon"] = icon("INV_Misc_Bandana_03"),
					["minReputation"] = { 87, EXALTED - 1 },	-- Bloodsail Buccaneers, must be 20999 into Revered.
					["OnTooltip"] = OnTooltipForBloodsail,
					["OnUpdate"] = OnUpdateForBloodsail,
					["maps"] = { BADLANDS },
					["crs"] = { 9179 },	-- Jazzrik
				}),
				faction(21, { 	-- Booty Bay
					["icon"] = icon("INV_Misc_Coin_01"),
					["OnTooltip"] = OnTooltipForBootyBay,
					["maps"] = {
						TANARIS,
						THE_BARRENS,
					},
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(18, {	-- Booty Bay, Stranglethorn
					["cr"] = 2858,	-- Gringer <Wind Rider Master>
					["coord"] = { 26.8, 77.0, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
				}),
				fp(19, {	-- Booty Bay, Stranglethorn
					["cr"] = 2859,	-- Gyll <Gryphon Master>
					["coord"] = { 27.4, 77.6, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(20, {	-- Grom'gol, Stranglethorn
					["cr"] = 1387,	-- Thysta <Wind Rider Master>
					["coord"] = { 32.6, 29.2, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
				}),
				applyclassicphase(TBC_PHASE_ONE, fp(195, {	-- Rebel Camp, Stranglethorn
					["cr"] = 24366,	-- Nizzle <Gryphon Master>
					["coord"] = { 38.2, 4.0, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
				})),
			}),
			n(QUESTS, {
				q(610, {	-- "Pretty Boy" Duncan
					["qg"] = 2542,	-- Catelyn the Blade
					["sourceQuest"] = 603,	-- Ansirem's Key
					["coord"] = { 27.3, 77.5, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4027, 1 },	-- Catelyn's Blade
					},
					["lvl"] = 32,
					["groups"] = {
						{
							["itemID"] = 4027,	-- Catelyn's Blade
							["questID"] = 610,	-- "Pretty Boy" Duncan
							["coord"] = { 27.6, 69.6, STRANGLETHORN_VALE },
						},
					},
				}),
				q(617, {	-- Akiris by the Bundle (1/2)
					["qg"] = 2494,	-- Privateer Bloads
					["coord"] = { 27.4, 76.8, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 4029, 10 },	-- Akiris Reed
					},
					["lvl"] = 38,
					["groups"] = {
						i(4117),	-- Scorching Sash
					},
				}),
				q(623, {	-- Akiris by the Bundle (2/2)
					["qg"] = 2494,	-- Privateer Bloads
					["sourceQuest"] = 617, 	-- Akiris by the Bundle (1/2)
					["coord"] = { 27.4, 76.8, STRANGLETHORN_VALE },
					["maps"] = { DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4028, 1 },	-- Bundle of Akiris Reeds
					},
					["lvl"] = 38,
				}),
				q(3721, {	-- An OOX of Your Own
					["qg"] = 7406,	-- Oglethorpe Obnoticus
					["sourceQuests"] = {
						2767,	-- Rescue OOX-22/FE!
						648,	-- Rescue OOX-17/TN!
						836,	-- Rescue OOX-09/HL!
					},
					["lvl"] = 30,
					["groups"] = {
						i(10398),	-- Mechanical Chicken
					},
				}),
				q(603, {	-- Ansirem's Key
					["qg"] = 2543,	-- Archmage Ansirem Runeweaver
					["sourceQuest"] = 602,	-- Magical Analysis
					["coord"] = { 18.8, 78.5, ALTERAC_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(4621, {	-- Avast Ye, Admiral!
					["qg"] = 2546,	-- Fleet Master Firallon
					["sourceQuest"] = 1036,	-- Avast Ye, Scallywag
					["minReputation"] = { 87, FRIENDLY },	-- Bloodsail Buccaneers, Friendly.
					["description"] = "This quest also requires you to be hated or lower with Booty Bay.",
					["coord"] = { 30.6, 90.6, STRANGLETHORN_VALE },
					["lvl"] = 55,
					["groups"] = {
						ach(871, applyclassicphase(PHASE_ONE, {	-- Avast Ye, Admiral!
							["sourceQuest"] = 4621,	-- Avast Ye, Admiral!
							-- #if BEFORE WRATH
							["description"] = "Obtain the Bloodsail Admiral's Hat... and try to get some fresh air every now and then.",
							["OnUpdate"] = [[_.CommonAchievementHandlers.ANY_SOURCE_QUEST]],
							-- #endif
							["groups"] = {
								applyclassicphase(WRATH_PHASE_ONE, title(144)),	-- Bloodsail Admiral <Name>
							},
						})),
						i(12185),	-- Bloodsail Admiral's Hat
					},
				}),
				q(1036, {	-- Avast Ye, Scallywag
					["qg"] = 2545,	-- "Pretty Boy" Duncan
					["minReputation"] = { 87, FRIENDLY },	-- Bloodsail Buccaneers, Friendly.
					["coord"] = { 27.4, 69.4, STRANGLETHORN_VALE },
					["isBreadcrumb"] = true,
					["lvl"] = 55,
				}),
				q(7810, {	-- Arena Master
					["provider"] = { "i", 18706 },	-- Arena Master (trinket)
					["coord"] = { 30.4, 47.8, STRANGLETHORN_VALE },
					["altQuests"] = {
						7908,	-- Arena Master
					},
				}),
				q(7838, {	-- Arena Grandmaster
					["qg"] = 14508,	-- Short John Mithril
					["coord"] = { 29.6, 47.4, STRANGLETHORN_VALE },
					["cost"] = { { "i", 18706, 12 } },	-- Arena Master (trinket)
					["repeatable"] = true,
					["groups"] = {
						removeclassicphase(ach(396, {	-- Arena Grandmaster
							["provider"] = { "i", 19024 },	-- Arena Grand Master
							-- #if BEFORE WRATH
							["description"] = "Complete Short John Mithril's quest to obtain the Arena Grand Master trinket. Keep it in your bank until achievements come out.\n\nProbably not a bad idea to knock this out before all the normies start farming for this.",
							["OnUpdate"] = [[_.CommonAchievementHandlers.ANY_ITEM_PROVIDER]],
							-- #endif
						})),
						i(19024),	-- Arena Grand Master
					},
				}),
				q(204, {	-- Bad Medicine
					["qg"] = 733,	-- Sergeant Yohwa
					["coord"] = { 38.0, 3.3, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2633, 7 },	-- Jungle Remedy
						{ "i", 2634, 1 },	-- Venom Fern Extract
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 2634,	-- Venom Fern Extract
							["questID"] = 204,	-- Bad Medicine
							["coord"] = { 44.5, 9.8, STRANGLETHORN_VALE },
						},
						i(4140),	-- Palm Frond Mantle
						i(4126),	-- Guerrilla Cleaver
					},
				}),
				q(208, {	-- Big Game Hunter
					["qg"] = 715,	-- Hemet Nesingwary
					["sourceQuests"] = {
						193,	-- Panther Mastery
						197,	-- Raptor Mastery
						188,	-- Tiger Mastery
					},
					["coord"] = { 35.7, 10.8, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3880, 1 },	-- Head of Bangalash
					},
					["lvl"] = 28,
					["groups"] = {
						{
							["itemID"] = 3880,	-- Head of Bangalash
							["questID"] = 208,	-- Big Game Hunter
							["cr"] = 731,	-- King Bangalash
							["coord"] = { 38.6, 35.6, STRANGLETHORN_VALE },
						},
						i(17686),	-- Master Hunter's Bow
						i(17687),	-- Master Hunter's Rifle
					},
				}),
				q(584, {	-- Bloodscalp Clan Heads
					["qg"] = 2497,	-- Nimboya
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3904, 1 },	-- Gan'zulah's Head
						{ "i", 3905, 1 },	-- Nezzliok's Head
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 3904,	-- Gan'zulah's Head
							["questID"] = 584,	-- Bloodscalp Clan Heads
							["cr"] = 1061,	-- Gan'zulah <Bloodscalp Chief>
							["coord"] = { 23.8, 8.6, STRANGLETHORN_VALE },
						},
						{
							["itemID"] = 3905,	-- Nezzliok's Head
							["questID"] = 584,	-- Bloodscalp Clan Heads
							["cr"] = 1062,	-- Nezzliok the Dire <Bloodscalp Clan Witchdoctor>
							["coord"] = { 23.6, 9.6, STRANGLETHORN_VALE },
						},
					},
				}),
				q(189, {	-- Bloodscalp Ears
					["qg"] = 737,	-- Kebok
					["coord"] = { 27.00, 77.13, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 1519, 15 },	-- Bloodscalp Ear
					},
					["lvl"] = 30,
					["groups"] = {
						i(4598),	-- Goblin Fishing Pole
					},
				}),
				q(596, {	-- Bloody Bone Necklaces
					["qg"] = 2519,	-- Kin'weelay
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3915, 25 },	-- Bloody Bone Necklace
					},
					["lvl"] = 30,
					["groups"] = {
						i(4135),	-- Bloodbone Band
					},
				}),
				q(200, {	-- Bookie Herod
					["qg"] = 469,	-- Lieutenant Doren
					["coord"] = { 38.0, 3.0, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(339, {	-- Chapter I
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["lvl"] = 30,
					["groups"] = {
						i(2756, {	-- Green Hills of Stranglethorn - Chapter I
							["questID"] = 339,	-- Chapter I
							["cost"] = {
								{ "i", 2725, 1 },	-- Green Hills of Stranglethorn - Page 1
								{ "i", 2728, 1 },	-- Green Hills of Stranglethorn - Page 4
								{ "i", 2730, 1 },	-- Green Hills of Stranglethorn - Page 6
								{ "i", 2732, 1 },	-- Green Hills of Stranglethorn - Page 8
							},
						}),
					},
				}),
				q(340, {	-- Chapter II
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["lvl"] = 30,
					["groups"] = {
						i(2757, {	-- Green Hills of Stranglethorn - Chapter II
							["questID"] = 340,	-- Chapter II
							["cost"] = {
								{ "i", 2734, 1 },	-- Green Hills of Stranglethorn - Page 10
								{ "i", 2735, 1 },	-- Green Hills of Stranglethorn - Page 11
								{ "i", 2738, 1 },	-- Green Hills of Stranglethorn - Page 14
								{ "i", 2740, 1 },	-- Green Hills of Stranglethorn - Page 16
							},
						}),
					},
				}),
				q(341, {	-- Chapter III
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["lvl"] = 30,
					["groups"] = {
						i(2758, {	-- Green Hills of Stranglethorn - Chapter III
							["questID"] = 341,	-- Chapter III
							["cost"] = {
								{ "i", 2742, 1 },	-- Green Hills of Stranglethorn - Page 18
								{ "i", 2744, 1 },	-- Green Hills of Stranglethorn - Page 20
								{ "i", 2745, 1 },	-- Green Hills of Stranglethorn - Page 21
								{ "i", 2748, 1 },	-- Green Hills of Stranglethorn - Page 24
							},
						}),
					},
				}),
				q(342, {	-- Chapter IV
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["lvl"] = 30,
					["groups"] = {
						i(2759, {	-- Green Hills of Stranglethorn - Chapter IV
							["questID"] = 342,	-- Chapter IV
							["cost"] = {
								{ "i", 2749, 1 },	-- Green Hills of Stranglethorn - Page 25
								{ "i", 2750, 1 },	-- Green Hills of Stranglethorn - Page 26
								{ "i", 2751, 1 },	-- Green Hills of Stranglethorn - Page 27
							},
						}),
					},
				}),
				q(202, {	-- Colonel Kurzen
					["qg"] = 469,	-- Lieutenant Doren
					["sourceQuest"] = 574,	-- Special Forces
					["coord"] = { 38.0, 3.0, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3615, 1 },	-- Kurzen's Head
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 3615,	-- Kurzen's Head
							["questID"] = 202,	-- Colonel Kurzen
							["cr"] = 813,	-- Colonel Kurzen
							["coord"] = { 49.6, 4.0, STRANGLETHORN_VALE },
						},
						i(4127),	-- Shrapnel Blaster
					},
				}),
				q(4782, { 	-- Components for the Enchanted Gold Bloodrobe (3/5)
					["qg"] = 2670,	-- Xizk Goodstitch
					["sourceQuest"] = 4781,	-- Components for the Enchanted Gold Bloodrobe (2/5)
					["classes"] = { WARLOCK },
					["lvl"] = 31,
				}),
				q(624, {	-- Cortello's Riddle (1/3)
					["provider"] = { "i", 4056 },	-- Cortello's Riddle
					["coords"] = {
						{ 29.5, 89.3, STRANGLETHORN_VALE },
						{ 33.6, 88.3, STRANGLETHORN_VALE },
					},
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { SWAMP_OF_SORROWS },
					["lvl"] = 35,
				}),
				q(625, {	-- Cortello's Riddle (2/3)
					["provider"] = { "o", 2553 },	-- A Soggy Scroll
					["sourceQuest"] = 624,	-- Cortello's Riddle (1/3)
					["coord"] = { 22.8, 48.1, SWAMP_OF_SORROWS },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { DUSTWALLOW_MARSH },
					["lvl"] = 35,
				}),
				q(626, {	-- Cortello's Riddle (3/3)
					["provider"] = { "o", 2555 },	-- Musty Scroll
					["sourceQuest"] = 625,	-- Cortello's Riddle (2/3)
					["coord"] = { 31.1, 66.1, DUSTWALLOW_MARSH },
					["timeline"] = { "removed 4.0.3" },
					["maps"] = { THE_HINTERLANDS },
					["lvl"] = 35,
					["groups"] = {
						{
							["itemID"] = 11324,	-- Explorer's Knapsack
							["coord"] = { 80.8, 46.8, THE_HINTERLANDS },
							["timeline"] = { "removed 4.0.3" },
						},
					},
				}),
				q(613, {	-- Cracking Maury's Foot
					["qg"] = 2501,	-- "Sea Wolf" MacKinley
					["sourceQuest"] = 609,	-- Voodoo Dues
					["coord"] = { 27.8, 77.1, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3930, 1 },	-- Maury's Key
					},
					["lvl"] = 30,
					["groups"] = {
						i(4129),	-- Collection Plate
					},
				}),
				q(1116, {	-- Dream Dust in the Swamp
					["qg"] = 773,	-- Krazek
					["sourceQuest"] = 1115,	-- The Rumormonger
					["coord"] = { 27, 77.2, STRANGLETHORN_VALE },
					["maps"] = { SWAMP_OF_SORROWS },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Speck of Dream Dust
							["provider"] = { "i", 5803 },	-- Speck of Dream Dust
							["crs"] = {
								740,	-- Adolescent Whelp
								741,	-- Dreaming Whelp
								746,	-- Elder Dragonkin
								744,	-- Green Scalebane
								742,	-- Green Wyrmkin
								14445,	-- Lord Captain Wyrmak
								745,	-- Scalebane Captain
							},
						}),
					},
				}),
				q(9272, {	-- Dressing the Part
					["qg"] = 2546,	-- Fleet Master Firallon
					["minReputation"] = { 87, NEUTRAL },	-- Bloodsail Buccaneers, Neutral.
					["coord"] = { 30.6, 90.6, STRANGLETHORN_VALE },
					["lvl"] = 49,
					["groups"] = {
						i(22746),	-- Buccaneer's Uniform
						i(22742),	-- Bloodsail Shirt
						i(22743),	-- Bloodsail Sash
						i(22745),	-- Bloodsail Pants
						i(22744),	-- Bloodsail Boots
					},
				}),
				q(3625, {	-- Enchanted Azsharite Fel Weaponry
					["qg"] = 7802,	-- Galvan the Ancient
					["sourceQuest"] = 3621,	-- The Formation of Felbane
					["lvl"] = 45,
					["groups"] = {
						i(10697),	-- Enchanted Azsharite Felbane Dagger
						i(10698),	-- Enchanted Azsharite Felbane Staff
						i(10696),	-- Enchanted Azsharite Felbane Sword
					},
				}),
				q(628, {	-- Excelsior
					["qg"] = 2495,	-- Drizzlik
					["sourceQuest"] = 577,	-- Some Assembly Required
					["coord"] = { 28.2, 77.6, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 4105, 1 },	-- Elder Crocolisk Skin
					},
					["lvl"] = 31,
					["groups"] = {
						i(4109),	-- Excelsior Boots
					},
				}),
				q(8554, {	-- Facing Negolash
					["qg"] = 2594,	-- Sprogger
					["sourceQuest"] = 8553,	-- The Captain's Cutlass
					["coord"] = { 26.7, 73.6, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3935, 1 },	-- Smotts' Cutlass
					},
					["altQuests"] = {
						618,	-- Facing Negolash
					},
					["lvl"] = 35,
					["groups"] = {
						q(619, {	-- Enticing Negolash
							["provider"] = { "o", 2289 },	-- Ruined Lifeboat
							["cost"] = {
								{ "i", 4457, 10 },	-- Barbecued Buzzard Wing
								{ "i", 4595, 5 },	-- Junglevine Wine
							},
							["description"] = "This quest is repeatable, but can only be completed while you have the quest \"Facing Negolash\" in your quest log.",
							["repeatable"] = true,
							["groups"] = {
								{
									["itemID"] = 3935,	-- Smotts' Cutlass
									["questID"] = 8554,	-- Facing Negolash
									["cr"] = 1494,	-- Negolash
									["coord"] = { 32.5, 81.9, STRANGLETHORN_VALE },
								}
							},
						}),
						i(4130),	-- Smotts' Compass
					},
				}),
				q(627, {	-- Favor for Krazek
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4278, 4 },	-- Lesser Bloodstone Ore
					},
					["lvl"] = 32,
				}),
				q(4785, {	-- Fine Gold Thread
					["qg"] = 2670,	-- Xizk Goodstitch <Tailoring Supplies>
					["coord"] = { 28.6, 76.8, STRANGLETHORN_VALE },
					["classes"] = { WARLOCK },
					["repeatable"] = true,
					["lvl"] = 31,
					["groups"] = {
						i(12293),	-- Fine Gold Thread
					},
				}),
				q(1127, {	-- Fool's Stout
					["qg"] = 2498,	-- Crank Fizzlebub
					["coord"] = { 27.1, 77.2, STRANGLETHORN_VALE },
					["repeatable"] = true,
					["lvl"] = 35,
					["groups"] = {
						i(5806),	-- Fool's Stout
					},
				}),
				q(2932, {	-- Grim Message
					["qg"] = 2497,	-- Nimboya
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["maps"] = { THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9319, 1 },	-- Nimboya's Laden Pike
					},
					["lvl"] = 35,
					["groups"] = {
						{
							["itemID"] = 15002,	-- Nimboya's Pike
							["cost"] = {
								{ "i", 9320, 20 },	-- Witherbark Skull
							},
							["groups"] = {
								{
									["itemID"] = 9319,	-- Nimboya's Laden Pike
									["questID"] = 2932,	-- Grim Message
									["coord"] = { 32, 58, THE_HINTERLANDS },
								},
							},
						},
					},
				}),
				q(582, {	-- Headhunting
					["qg"] = 2497,	-- Nimboya
					["sourceQuest"] = 581,	-- Hunt for Yenniku
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 1532, 20 },	-- Shrunken Head
					},
					["lvl"] = 30,
					["groups"] = {
						i(4133),	-- Darkspear Cuffs
						i(4132),	-- Darkspear Armsplints
					},
				}),
				q(213, {	-- Hostile Takeover
					["qg"] = 737,	-- Kebok
					["coord"] = { 27.00, 77.13, STRANGLETHORN_VALE },
					["lvl"] = 31,
					["groups"] = {
						i(4121),	-- Gemmed Gloves
					},
				}),
				q(581, {	-- Hunt for Yenniku
					["qg"] = 2497,	-- Nimboya
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3901, 9 },	-- Bloodscalp Tusk
					},
					["lvl"] = 30,
				}),
				q(201, {	-- Investigate the Camp
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(215, {	-- Jungle Secrets
					["qg"] = 738,	-- Private Thorsen
					["description"] = "Every so often, Thorsen will go on patrol. If you follow him, he will be ambushed by two of Kurzen's lackeys - if he survives, he will offer you this quest.",
					["coord"] = { 40, 8, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(576, {	-- Keep An Eye Out
					["qg"] = 2493,	-- Dizzy One-Eye
					["coord"] = { 28.6, 75.9, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3897, 1 },	-- Dizzy's Eye
					},
					["lvl"] = 37,
					["groups"] = {
						i(4114),	-- Darktide Cape
					},
				}),
				q(210, {	-- Krazek's Cookery
					["qg"] = 770,	-- Corporal Kaleb
					["coord"] = { 37.7, 3.3, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(207, {	-- Kurzen's Mystery
					["qg"] = 739,	-- Brother Nimetz
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(602, {	-- Magical Analysis
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 601,	-- Water Elementals
					["coord"] = { 27.2, 76.8, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3960, 1 },	-- Bag of Water Elemental Bracers
					},
					["lvl"] = 32,
				}),
				q(206, {	-- Mai'Zoth
					["qg"] = 739,	-- Brother Nimetz
					["sourceQuest"] = 205,	-- Troll Witchery
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3616, 1 },	-- Mind's Eye
					},
					["lvl"] = 30,
					["groups"] = {
						i(4125),	-- Tranquil Orb
					},
				}),
				q(594, {	-- Message in a Bottle (1/2)
					["provider"] = { "i", 4098 },	-- Carefully Folded Note
					["lvl"] = 45,
				}),
				q(630, {	-- Message in a Bottle (2/2)
					["qg"] = 2634,	-- Princess Poobah
					["sourceQuest"] = 594,	-- Message in a Bottle (1/2)
					["coord"] = { 38.4, 80.6, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 4103, 1 },	-- 	Shackle Key
					},
					["lvl"] = 42,
					["groups"] = {
						i(4103, {	-- Shackle Key
							["cr"] = 1559,	-- King Mukla
							["questID"] = 630,	-- Message in a Bottle (2/2)
							["coord"] = { 40.8, 83.2, STRANGLETHORN_VALE },
						}),
						i(4118),	-- Poobah's Nose Ring
					},
				}),
				q(570, {	-- Mok'thardin's Enchantment
					["qg"] = 2465,	-- Far Seer Mok'thardin
					["coord"] = { 32, 29.2, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3838, 8 },	-- Shadowmaw Claw
						{ "i", 3839, 1 },	-- Pristine Tigress Fang
					},
					["lvl"] = 33,
				}),
				q(572, {	-- Mok'thardin's Enchantment
					["qg"] = 2465,	-- Far Seer Mok'thardin
					["coord"] = { 32, 29.2, STRANGLETHORN_VALE },
					["sourceQuest"] = 570,	-- Mok'thardin's Enchantment
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3863, 10 },	-- Jungle Stalker Feather
					},
					["lvl"] = 33,
				}),
				q(571, {	-- Mok'thardin's Enchantment
					["qg"] = 2465,	-- Far Seer Mok'thardin
					["sourceQuest"] = 572,	-- Mok'thardin's Enchantment
					["coord"] = { 32, 29.2, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3862, 1 },	-- Aged Gorilla Sinew
					},
					["lvl"] = 33,
				}),
				q(573, {	-- Mok'thardin's Enchantment
					["qg"] = 2465,	-- Far Seer Mok'thardin
					["sourceQuest"] = 571,	-- Mok'thardin's Enchantment
					["coord"] = { 32, 29.2, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 737, 1 },	-- Holy Spring Water
					},
					["lvl"] = 33,
					["groups"] = {
						{
							["itemID"] = 737,	-- Holy Spring Water
							["questID"] = 573,	-- Mok'thardin's Enchantment
							["coord"] = { 28.9, 62.0, STRANGLETHORN_VALE },
						},
						i(4112),	-- Choker of the High Shaman
					},
				}),
				q(190, {	-- Panther Mastery (1/4)
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(191, {	-- Panther Mastery (2/4)
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["sourceQuest"] = 190,	-- Panther Mastery (1/4)
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(192, {	-- Panther Mastery (3/4)
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["sourceQuest"] = 191,	-- Panther Mastery (2/4)
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(193, {	-- Panther Mastery (4/4)
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["sourceQuest"] = 192,	-- Panther Mastery (3/4)
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3876, 1 },	-- Fang of Bhag'thera
					},
					["lvl"] = 28,
					["groups"] = {
						{
							["itemID"] = 3876,	-- Fang of Bhag'thera
							["questID"] = 193,	-- Panther Mastery (4/4)
							["cr"] = 728,	-- Bhag'thera
							["coords"] = {
								{ 49.0, 20.6, STRANGLETHORN_VALE },
								{ 49.8, 24.6, STRANGLETHORN_VALE },
								{ 47.8, 28.0, STRANGLETHORN_VALE },
							},
						},
						i(4108),	-- Panther Hunter Leggings
					},
				}),
				q(330, {	-- Patrol Schedules
					["qg"] = 469,	-- Lieutenant Doren
					["coord"] = { 38.0, 3.0, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(194, {	-- Raptor Mastery (1/4)
					["qg"] = 715,	-- Hemet Nesingwary
					["coord"] = { 35.7, 10.8, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(195, {	-- Raptor Mastery (2/4)
					["qg"] = 715,	-- Hemet Nesingwary
					["coord"] = { 35.7, 10.8, STRANGLETHORN_VALE },
					["sourceQuest"] = 194,	-- Raptor Mastery (1/4)
					["lvl"] = 28,
				}),
				q(196, {	-- Raptor Mastery (3/4)
					["qg"] = 715,	-- Hemet Nesingwary
					["sourceQuest"] = 195,	-- Raptor Mastery (2/4)
					["coord"] = { 35.7, 10.8, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(197, {	-- Raptor Mastery (4/4)
					["qg"] = 715,	-- Hemet Nesingwary
					["sourceQuest"] = 196,	-- Raptor Mastery (3/4)
					["coord"] = { 35.7, 10.8, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3877, 1 },	-- Talon of Tethis
					},
					["lvl"] = 28,
					["groups"] = {
						{
							["itemID"] = 3877,	-- Talon of Tethis
							["questID"] = 197,	-- Raptor Mastery (4/4)
							["cr"] = 730,	-- Tethis
							["coord"] = { 29.6, 44.8, STRANGLETHORN_VALE },
						},
						i(4119),	-- Raptor Hunter Tunic
					},
				}),
				q(331, {	-- Report to Doren
					["qg"] = 1422,	-- Corporal Sethman
					["coord"] = { 37.7, 3.4, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(4139),	-- Junglewalker Sandals
						i(4123),	-- Frost Metal Pauldrons
					},
				}),
				q(622, {	-- Return to Corporal Kaleb
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						i(4124),	-- Cap of Harmony
					},
				}),
				q(607, {	-- Return to MacKinley
					["qg"] = 2502,	-- \"Shaky\" Phillipe
					["sourceQuest"] = 606,	-- Scaring Shaky
					["coord"] = { 26.9, 73.6, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3922, 1 },	-- Shaky's Payment
					},
					["lvl"] = 30,
				}),
				q(3626, {	-- Return to the Blasted Lands
					["qg"] = 7802,	-- Galvan the Ancient
					["sourceQuest"] = 3625,	-- Enchanted Azsharite Fel Weaponry
					["lvl"] = 45,
				}),
				q(592, {	-- Saving Yenniku
					["qg"] = 2519,	-- Kin'weelay
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3913, 1 },	-- Filled Soul Gem
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 3912,	-- Soul Gem
							["questID"] = 593,	-- Filling the Soul Gem
							["description"] = "This quest is repeatable, but can only be completed while the quest \"Saving Yenniku\" (quest #592) is in your quest log.",
							["qg"] = 2530,	-- Yenniku <Darkspear Hostage>
							["coord"] = { 39, 58.2, STRANGLETHORN_VALE },
							["races"] = HORDE_ONLY,
							["repeatable"] = true,
							["groups"] = {
								{
									["itemID"] = 3913,	-- Filled Soul Gem
									["questID"] = 592,	-- Saving Yenniku
								},
							},
						},
						i(4134),	-- Nimboya's Mystical Staff
						i(6723),	-- Medal of Courage
					},
				}),
				q(606, {	-- Scaring Shaky
					["qg"] = 2501,	-- \"Sea Wolf\" MacKinley
					["coord"] = { 27.78, 77.07, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3919, 5 },	-- Mistvale Giblets
					},
					["lvl"] = 30,
				}),
				q(7541, {	-- Service to the Horde
					["qg"] = 4047,	-- Zor Lonetree
					["sourceQuest"] = 1262,	-- Report to Zor
					["coord"] = { 39, 38, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(18585),	-- Band of Allegiance
						i(18586),	-- Lonetree's Circle
					},
				}),
				q(605, {	-- Singing Blue Shards
					["qg"] = 2498,	-- Crank Fizzlebub
					["coord"] = { 27.12, 77.22, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3918, 10 },	-- Singing Crystal Shard
					},
					["lvl"] = 30,
				}),
				q(209, {	-- Skullsplitter Tusks
					["qg"] = 737,	-- Kebok
					["sourceQuest"] = 189,	-- Bloodscalp Ears
					["coord"] = { 27.00, 77.13, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 1524, 18 },	-- Skullsplitter Tusk
					},
					["lvl"] = 37,
				}),
				q(577, {	-- Some Assembly Required
					["qg"] = 2495,	-- Drizzlik
					["coord"] = { 28.2, 77.6, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 4104, 5 },	-- Snapjaw Crocolisk Skin
					},
					["lvl"] = 31,
				}),
				q(586, {	-- Speaking with Gan'zulah
					["provider"] = { "o", 2076 },	-- Bubbling Cauldron
					["coord"] = { 32.2, 27.7, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3909, 1 },	-- Broken Armor of Ana'thek
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 3909,	-- Broken Armor of Ana'thek
							["questID"] = 586,	-- Speaking with Gan'zulah
							["cr"] = 1059,	-- Ana'thek the Cruel <Skullsplitter Chief>
							["coord"] = { 44.6, 44.2, STRANGLETHORN_VALE },
						},
					},
				}),
				q(585, {	-- Speaking with Nezzliok
					["provider"] = { "o", 2076 },	-- Bubbling Cauldron
					["coord"] = { 32.2, 27.7, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(574, {	-- Special Forces
					["qg"] = 733,	-- Sergeant Yohwa
					["coord"] = { 38.0, 3.3, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(598, {	-- Split Bone Necklace
					["qg"] = 2519,	-- Kin'weelay
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3916, 25 },	-- Split Bone Necklace
					},
					["lvl"] = 30,
					["groups"] = {
						i(4137),	-- Darkspear Shoes
						i(4136),	-- Darkspear Boots
					},
				}),
				q(348, {	-- Stranglethorn Fever
					["qg"] = 2486,	-- Fin Fizracket
					["coord"] = { 27.6, 76.7, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 2797, 1 },	-- Heart of Mokk
					},
					["lvl"] = 40,
					["groups"] = {
						q(349, {	-- Stranglethorn Fever
							["qg"] = 1449,	-- Witch Doctor Unbagwa
							["coord"] = { 35.2, 60.4, STRANGLETHORN_VALE },
							["description"] = "This quest is repeatable, but can only be completed while you have the quest \"Stranglethorn Fever\" (Quest #348) in your quest log.",
							["cost"] = {
								{ "i", 2799, 10 },	-- Gorilla Fang
							},
							["repeatable"] = true,
							["lvl"] = 32,
							["groups"] = {
								{
									["itemID"] = 2797,	-- Heart of Mokk
									["questID"] = 348,	-- Stranglethorn Fever
									["cr"] = 1514,	-- Mokk the Savage
									["coord"] = { 35.2, 60.4, STRANGLETHORN_VALE },
								},
							},
						}),
						i(4113),	-- Medicine Blanket
					},
				}),
				q(198, {	-- Supplies to Private Thorsen
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(575, {	-- Supply and Demand
					["qg"] = 2495,	-- Drizzlik
					["coord"] = { 28.29, 77.59, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 4053, 2 },	-- Large River Crocolisk Skin
					},
					["lvl"] = 26,
				}),
				q(595, {	-- The Bloodsail Buccaneers (1)
					["qg"] = 2490,	-- First Mate Crazz
					["coord"] = { 28.1, 76.2, STRANGLETHORN_VALE },
					["lvl"] = 37,
				}),
				q(597, {	-- The Bloodsail Buccaneers (2)
					["sourceQuest"] = 595,	-- The Bloodsail Buccaneers (1)
					["provider"] = { "o", 2083 },	-- Bloodsail Correspondence
					["coord"] = { 27.3, 69.5, STRANGLETHORN_VALE },
					["lvl"] = 37,
				}),
				q(599, {	-- The Bloodsail Buccaneers (3)
					["sourceQuest"] = 597,	-- The Bloodsail Buccaneers (2)
					["qg"] = 2490,	-- First Mate Crazz
					["coord"] = { 28.1, 76.2, STRANGLETHORN_VALE },
					["lvl"] = 37,
				}),
				q(604, {	-- The Bloodsail Buccaneers (4)
					["sourceQuest"] = 599,	-- The Bloodsail Buccaneers (3)
					["qg"] = 2487,	-- Fleet Master Seahorn
					["coord"] = { 27.2, 77.0, STRANGLETHORN_VALE },
					["lvl"] = 37,
				}),
				q(608, {	-- The Bloodsail Buccaneers (5)
					["sourceQuest"] = 604,	-- The Bloodsail Buccaneers (4)
					["qg"] = 2487,	-- Fleet Master Seahorn
					["coord"] = { 27.2, 77.0, STRANGLETHORN_VALE },
					["lvl"] = 37,
					["groups"] = {
						i(4138),	-- Blackwater Tunic
					},
				}),
				q(8551, {	-- The Captain's Chest
					["qg"] = 2500,	-- Captain Hecklebury Smotts
					["coord"] = { 26.7, 73.6, STRANGLETHORN_VALE },
					["altQuests"] = {
						614,	-- The Captain's Chest [Old]
					},
					["cost"] = {
						{ "i", 3932, 1 },	-- Smotts' Chest
					},
					["lvl"] = 35,
					["groups"] = {
						{
							["itemID"] = 3932,	-- Smotts' Chest
							["questID"] = 8551,	-- The Captain's Chest
							["altQuests"] = {
								614,	-- The Captain's Chest [Old]
							},
							["cr"] = 1492,	-- Gorlash
							["coord"] = { 36.6, 69.6, STRANGLETHORN_VALE },
						},
						i(11469),	-- Bloodband Bracers
					},
				}),
				q(8553, {	-- The Captain's Cutlass
					["qg"]	= 2500,	-- Captain Hecklebury Smotts
					["sourceQuest"] = 8552,	-- The Monogrammed Sash
					["coord"] = { 26.6, 73.6, STRANGLETHORN_VALE },
					["altQuests"] = {
						615,	-- The Captain's Cutlass
					},
					["lvl"] = 35,
				}),
				q(1041, {	-- The Caravan Road
					["qg"] = 3945,	-- Caravaneer Ruzzgot
					["sourceQuest"] = 1040,	-- Passage to Booty Bay(The Barrens)
					["coord"] = { 27.4, 74.1, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(611, {	-- The Curse of the Tides
					["qg"] = 2542,	-- Catelyn the Blade
					["sourceQuest"] = 610,	-- "Pretty Boy" Duncan
					["coord"] = { 27.3, 77.5, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4034, 1 },	-- Stone of the Tides
					},
					["lvl"] = 32,
					["groups"] = {
						{
							["itemID"] = 4027,	-- Catelyn's Blade
							["coord"] = { 25, 23.6, STRANGLETHORN_VALE },
							["cr"] = 2624,	-- Gazban
							["groups"] = {
								{
									["itemID"] = 4034,	-- Stone of the Tides
									["questID"] = 611,	-- The Curse of the Tides
								},
							},
						},
						i(4120),	-- Robe of Crystal Waters
					},
				}),
				q(568, {	-- The Defense of Grom'gol
					["qg"] = 2464,	-- Commander Aggro'gosh
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
				}),
				q(569, {	-- The Defense of Grom'gol
					["qg"] = 2464,	-- Commander Aggro'gosh
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["groups"] = {
						i(4115),	-- Grom'gol Buckler
					},
				}),
				q(588, {	-- The Fate of Yenniku
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(338, {	-- The Green Hills of Stranglethorn
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 2756, 1 },	-- Green Hills of Stranglethorn - Chapter I
						{ "i", 2757, 1 },	-- Green Hills of Stranglethorn - Chapter II
						{ "i", 2758, 1 },	-- Green Hills of Stranglethorn - Chapter III
						{ "i", 2759, 1 },	-- Green Hills of Stranglethorn - Chapter IV
					},
					["lvl"] = 30,
					["groups"] = {
						i(17688),	-- Jungle Boots
						i(3928),	-- Superior Healing Potion
						i(8173),	-- Thick Armor Kit
					},
				}),
				q(616, {	-- The Haunted Isle
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(328, {	-- The Hidden Key
					["provider"] = { "o", 287 },	-- Bookie Herod's Records
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(4122),	-- Bookmaker's Scepter
					},
				}),
				q(591, {	-- The Mind's Eye
					["qg"] = 2519,	-- Kin'weelay
					["sourceQuest"] = 589,	-- The Singing Crystals
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3616, 1 },	-- Mind's Eye
					},
					["lvl"] = 30,
				}),
				q(8552, {	-- The Monogrammed Sash
					["provider"] = { "i", 3985, 1 },	-- Monogrammed Sash
					["coord"] = { 23.0, 71.4, STRANGLETHORN_VALE },
					["cr"] = 1493,	-- Mok'rash
					["altQuests"] = {
						620,	-- The Monogrammed Sash
					},
					["lvl"] = 35,
				}),
				q(203, {	-- The Second Rebellion
					["qg"] = 733,	-- Sergeant Yohwa
					["coord"] = { 38.0, 3.3, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(589, {	-- The Singing Crystals
					["qg"] = 2519,	-- Kin'weelay
					["sourceQuest"] = 588,	-- The Fate of Yenniku
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3911, 1 },	-- Pulsing Blue Shard
					},
					["lvl"] = 30,
				}),
				q(329, {	-- The Spy Revealed!
					["provider"] = { "o", 288 },	-- Bookie Herod's Strongbox
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(578, {	-- The Stone of the Tides
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 616,	-- The Haunted Isle
					["coord"] = { 27.2, 76.9, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(629, {	-- The Vile Reef
					["qg"] = 2519,	-- Kin'weelay
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(185, {	-- Tiger Mastery (1/4)
					["qg"] = 717,	-- Ajeck Rouack
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(186, {	-- Tiger Mastery (2/4)
					["qg"] = 717,	-- Ajeck Rouack
					["sourceQuest"] = 185,	-- Tiger Mastery (1/4)
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(187, {	-- Tiger Mastery (3/4)
					["qg"] = 717,	-- Ajeck Rouack
					["sourceQuest"] = 186,	-- Tiger Mastery (2/4)
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(188, {	-- Tiger Mastery (4/4)
					["qg"] = 717,	-- Ajeck Rouack
					["sourceQuest"] = 187,	-- Tiger Mastery (3/4)
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3879, 1 },	-- Paw of Sin'Dall
					},
					["lvl"] = 28,
					["groups"] = {
						{
							["itemID"] = 3879,	-- Paw of Sin'Dall
							["questID"] = 188,	-- Tiger Mastery (4/4)
							["cr"] = 729,	-- Sin'Dall
							["coord"] = { 32.6, 17.2, STRANGLETHORN_VALE },
						},
						i(4107),	-- Tiger Hunter Gloves
					},
				}),
				q(9259, {	-- Traitor to the Bloodsail
					["qg"] = 16399,	-- Bloodsail Traitor
					["coord"] = { 31.8, 70.9, STRANGLETHORN_VALE },
					["maxReputation"] = { 21, NEUTRAL },	-- Booty Bay, must be less than Neutral
					["cost"] = {
						{ "i", 4306, 40 },	-- Silk Cloth
						{ "i", 2604, 4 },	-- Red Dye
					},
					["repeatable"] = true,
					["lvl"] = 30,
				}),
				q(205, {	-- Troll Witchery
					["qg"] = 739,	-- Brother Nimetz
					["sourceQuest"] = 207,	-- Kurzen's Mystery
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2466, 4 },	-- Skullsplitter Fetish
					},
					["lvl"] = 30,
				}),
				q(638, {	-- Trollbane
					["qg"] = 2497,	-- Nimboya
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 32,
				}),
				q(587, {	-- Up to Snuff
					["qg"] = 2488,	-- Deeg
					["coord"] = { 26.9, 77.3, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3910, 15 },	-- Snuff
					},
					["lvl"] = 37,
				}),
				q(600, {	-- Venture Company Mining
					["qg"] = 2498,	-- Crank Fizzlebub
					["sourceQuest"] = 605,	-- Singing Blue Shards
					["coord"] = { 27.1, 77.2, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3917, 10 },	-- Singing Blue Crystal
					},
					["lvl"] = 30,
					["groups"] = {
						i(5253),	-- Goblin Igniter
						i(4128),	-- Silver Spade
					},
				}),
				q(609, {	-- Voodoo Dues
					["qg"] = 2501,	-- \"Sea Wolf\" MacKinley
					["sourceQuest"] = 607,	-- Return to MacKinley
					["coord"] = { 27.8, 77.1, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3926, 1 },	-- Chucky's Huge Ring
						{ "i", 3925, 1 },	-- Jon-Jon's Golden Spyglass
						{ "i", 3924, 1 },	-- Maury's Clubbed Foot
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 3926,	-- Chucky's Huge Ring
							["questID"] = 609,	-- Voodoo Dues
							["cr"] = 2537,	-- Chucky "Ten Thumbs"
							["coord"] = { 40.2, 58.6, STRANGLETHORN_VALE },
						},
						{
							["itemID"] = 3925,	-- Jon-Jon's Golden Spyglass
							["questID"] = 609,	-- Voodoo Dues
							["cr"] = 2536,	-- Jon-Jon the Crow
							["coord"] = { 34.8, 51.8, STRANGLETHORN_VALE },
						},
						{
							["itemID"] = 3924,	-- Maury's Clubbed Foot
							["questID"] = 609,	-- Voodoo Dues
							["cr"] = 2535,	-- Maury "Club Foot" Wilkins
							["coord"] = { 35.2, 51.0, STRANGLETHORN_VALE },
						},
					},
				}),
				q(601, {	-- Water Elementals
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 578,	-- 	The Stone of the Tides
					["coord"] = { 27.2, 76.9, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3923, 6 },	-- Water Elemental Bracers
					},
					["lvl"] = 32,
				}),
				q(583, {	-- Welcome to the Jungle
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(580, {	-- Whiskey Slim's Lost Grog
					["qg"] = 2491,	-- Whiskey Slim
					["coord"] = { 27.1, 77.5, STRANGLETHORN_VALE },
					["maps"] = { THE_HINTERLANDS },
					["cost"] = {
						 { "i", 3900, 12 },	-- Pupellyverbos Port
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 3900,	-- Pupellyverbos Port
							["questID"] = 580,	-- Whiskey Slim's Lost Grog
							["coords"] = {
								{ 81.7, 49.3, THE_HINTERLANDS },
								{ 80.0, 59.8, THE_HINTERLANDS },
								{ 79.4, 70.4, THE_HINTERLANDS },
								{ 79.6, 81.5, THE_HINTERLANDS },
								{ 73.3, 96.9, THE_HINTERLANDS },
							},
						},
						i(17048),	-- Rumsey Rum
					},
				}),
				q(621, {	-- Zanzil's Secret
					["qg"] = 2498,	-- Crank Fizzlebub
					["coord"] = { 27.1, 77.2, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 4016, 12 },	-- Zanzil's Mixture
					},
					["lvl"] = 35,
					["groups"] = {
						i(4131),	-- Belt of Corruption
					},
				}),
			}),
			n(RARES, {
				n(14487, {	-- Gluggle
					["coord"] = { 34.4, 22.4, STRANGLETHORN_VALE },
				}),
				n(14491, {	-- Kurmokk
					["coords"] = {
						{ 31.8, 68.2, STRANGLETHORN_VALE },
						{ 35.8, 63.8, STRANGLETHORN_VALE },
					},
				}),
				n(2541, {	-- Lord Sakrasis
					["coord"] = { 28.6, 62.2, STRANGLETHORN_VALE },
					["groups"] = {
						i(5028),	-- Lord Sakrasis' Scepter
						i(5029),	-- Talisman of the Naga Lord
					},
				}),
				n(723, {	-- Mosh'Ogg Butcher
					["coord"] = { 51.0, 31.8, STRANGLETHORN_VALE },
					["groups"] = {
						i(1680),	-- Headchopper
					},
				}),
				n(14490, {	-- Rippa
					["coords"] = {
						{ 24.2, 58.0, STRANGLETHORN_VALE },
						{ 25.4, 73.6, STRANGLETHORN_VALE },
						{ 26.8, 85.0, STRANGLETHORN_VALE },
						{ 30.4, 86.0, STRANGLETHORN_VALE },
						{ 34.0, 83.6, STRANGLETHORN_VALE },
						{ 35.6, 74.8, STRANGLETHORN_VALE },
					},
				}),
				n(14488, {	-- Roloch
					["coords"] = {
						{ 38.0, 24.8, STRANGLETHORN_VALE },
						{ 27.0, 31.8, STRANGLETHORN_VALE },
					},
				}),
				n(1552, {	-- Scale Belly
					["coord"] = { 44.0, 48.2, STRANGLETHORN_VALE },
					["groups"] = {
						i(1604),	-- Chromatic Sword
						i(4478),	-- Iridescent Scale Leggings
					},
				}),
				n(14492, {	-- Verifonix <The Surveyor>
					["coord"] = { 36.8, 56.0, STRANGLETHORN_VALE },
				}),
			}),
			n(VENDORS, {
				n(2846, {	-- Blixrez Goodstitch <Leatherworking Supplies>
					["coord"] = { 28.2, 77.5, STRANGLETHORN_VALE },
					["groups"] = {
						i(5788),	-- Pattern: Thick Murloc Armor
						i(5789),	-- Pattern: Murloc Scale Bracers
					},
				}),
				n(734, {	-- Corporal Bluth <Camp Trader>
					["coord"] = { 38.0, 3.0, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12228),	-- Recipe: Roast Raptor
						i(12231),	-- Recipe: Jungle Stew
					},
				}),
				n(2672, {	-- Cowardly Crosby <Tailoring Supplies>
					["coord"] = { 27.0, 82.5, STRANGLETHORN_VALE },
					["groups"] = {
						i(10318),	-- Pattern: Admiral's Hat
					},
				}),
				n(2838, {	-- Crazk Sparks <Fireworks Merchant>
					["coord"] = { 28.2, 76.6, STRANGLETHORN_VALE },
					["groups"] = {
						i(18648),	-- Schematic: Green Firework
					},
				}),
				n(2845, {	-- Fargon Mortalak <Superior Armorer>
					["coord"] = { 29.0, 75.0, STRANGLETHORN_VALE },
					["groups"] = {
						i(12257),	-- Heavy Notched Belt
					},
				}),
				n(2848, {	-- Glyx Brewright <Alchemy Supplies>
					["coord"] = { 28.0, 78.0, STRANGLETHORN_VALE },
					["groups"] = {
						i(6056),	-- Recipe: Frost Protection Potion
						i(6057),	-- Recipe: Nature Protection Potion
					},
				}),
				n(2687, {	-- Gnaz Blunderflame <Engineering Supplies>
					["coord"] = { 51.0, 35.2, STRANGLETHORN_VALE },
					["groups"] = {
						i(13311),	-- Schematic: Mechanical Dragonling
					},
				}),
				n(2839, {	-- Haren Kanmae <Superior Bowyer>
					["coord"] = { 28.3, 74.6, STRANGLETHORN_VALE },
					["groups"] = {
						i(11305),	-- Dense Shortbow
					},
				}),
				n(2483, {	-- Jaquilina Dramet <Superior Axecrafter>
					["coord"] = { 35.8, 10.7, STRANGLETHORN_VALE },
					["groups"] = {
						i(12164),	-- Plans: Massive Iron Axe
						i(12250),	-- Midnight Axe
					},
				}),
				n(2843, {	-- Jutak <Blade Trader>
					["coord"] = { 27.5, 77.5, STRANGLETHORN_VALE },
					["groups"] = {
						i(12162),	-- Plans: Hardened Iron Shortsword
						i(12248),	-- Daring Dirk
					},
				}),
				n(2664, {	-- Kelsey Yance <Cook>
					["coord"] = { 28.2, 74.4, STRANGLETHORN_VALE },
					["groups"] = {
						i(6039),	-- Recipe: Giant Clam Scorcho
						i(6369),	-- Recipe: Rockscale Cod
						i(13940),	-- Recipe: Cooked Glossy Mightfish
						i(13941),	-- Recipe: Filet of Redgill
						i(13943),	-- Recipe: Hot Smoked Bass
						i(17062),	-- Recipe: Mithril Head Trout
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
				n(2840, {	-- Kizz Bluntstrike <Macecrafter>
					["coord"] = { 28.3, 75.2, STRANGLETHORN_VALE },
					["groups"] = {
						i(4777),	-- Ironwood Maul
						i(4778),	-- Heavy Spiked Mace
					},
				}),
				n(8679, {	-- Knaz Blunderflame <Engineering Supplies>
					["coord"] = { 51.0, 35.2, STRANGLETHORN_VALE },
					["groups"] = {
						i(10602),	-- Schematic: Deadly Scope
					},
				}),
				n(2685, {	-- Mazk Snipeshot <Engineering Supplies>
					["coord"] = { 28.5, 75.1, STRANGLETHORN_VALE },
					["groups"] = {
						i(13310),	-- Schematic: Accurate Scope
						i(18651),	-- Schematic: Truesilver Transformer
					},
				}),
				n(2663, {	-- Narkk <Pirate Supplies>
					["coord"] = { 28.1, 74.4, STRANGLETHORN_VALE },
					["groups"] = {
						i(8495),	-- Parrot Cage (Senegal)
						i(8496),	-- Parrot Cage (Cockatiel)
						i(10728),	-- Pattern: Black Swashbuckler's Shirt
					},
				}),
				n(1148, {	-- Nerrist <Trade Goods>
					["coord"] = { 32.6, 29.2, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- #if AFTER TBC
						i(21943, {	-- Design: Truesilver Crab
							["isLimited"] = true,
						}),
						-- #endif
						i(3682),	-- Recipe: Curiously Tasty Omelet
						i(12228),	-- Recipe: Roast Raptor
						i(12231),	-- Recipe: Jungle Stew
					},
				}),
				n(2626, {	-- Old Man Heming <Fisherman>
					["coord"] = { 27.4, 77.1, STRANGLETHORN_VALE },
					["groups"] = {
						i(16083, { ["rank"] = 3 }),	-- Expert Fishing - The Bass and You
					},
				}),
				n(2699, {	-- Rikqiz <Leatherworking Supplies>
					["coord"] = { 28.4, 76.0, STRANGLETHORN_VALE },
					["groups"] = {
						i(14635),	-- Pattern: Gem-studded Leather Belt
						i(18239),	-- Pattern: Shadowskin Gloves
					},
				}),
				n(1149, {	-- Uthok <General Supplies>
					["coord"] = { 31.6, 28.0, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(16111),	-- Recipe: Spiced Chili Crab
					},
				}),
				n(1146, {	-- Vharr <Superior Weaponsmith>
					["coord"] = { 32.2, 28.0, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12164),	-- Plans: Massive Iron Axe
						i(12248),	-- Daring Dirk
						i(12250),	-- Midnight Axe
					},
				}),
				n(2670, {	-- Xizk Goodstitch <Tailoring Supplies>
					["coord"] = { 28.7, 76.9, STRANGLETHORN_VALE },
					["groups"] = {
						i(7087),	-- Pattern: Crimson Silk Cloak
						i(14630),	-- Pattern: Enchanter's Cowl
					},
				}),
				n(2482, {	-- Zarena Cromwind <Superior Weaponsmith>
					["coord"] = { 28.3, 75.5, STRANGLETHORN_VALE },
					["groups"] = {
						i(12163),	-- Plans: Moonsteel Broadsword
						i(12251),	-- Big Stick
						i(12252),	-- Staff of Protection
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(3862, {  -- Aged Gorilla Sinew
					["questID"] = 571,	-- Mok'thardin's Enchantment
					["cr"] = 1557,	-- Elder Mistvale Gorilla
					["races"] = HORDE_ONLY,
				}),
				i(4029, {  -- Akiris Reed
					["questID"] = 617,	-- Akiris by the Bundle
					["cr"] = 1907,	-- Naga Explorer
				}),
				i(1998, {  -- Bloodscalp Channeling Staff
					["cr"] = 697,	-- Bloodscalp Shaman
				}),
				i(1519, {	-- Bloodscalp Ear
					["questID"] = 189,	-- Bloodscalp Ears
					["crs"] = {
						694,	-- Bloodscalp Axe Thrower
						699,	-- Bloodscalp Beastmaster
						597,	-- Bloodscalp Berserker
						671,	-- Bloodscalp Headhunter
						595,	-- Bloodscalp Hunter
						701,	-- Bloodscalp Mystic
						702,	-- Bloodscalp Scavenger
						588,	-- Bloodscalp Scout
						697,	-- Bloodscalp Shaman
						587,	-- Bloodscalp Warrior
						660,	-- Bloodscalp Witch Doctor
					},
				}),
				i(3901, {	-- Bloodscalp Tusk
					["crs"] = {
						694,	-- Bloodscalp Axe Thrower
						699,	-- Bloodscalp Beastmaster
						597,	-- Bloodscalp Berserker
						671,	-- Bloodscalp Headhunter
						595,	-- Bloodscalp Hunter
						701,	-- Bloodscalp Mystic
						702,	-- Bloodscalp Scavenger
						588,	-- Bloodscalp Scout
						697,	-- Bloodscalp Shaman
						587,	-- Bloodscalp Warrior
						660,	-- Bloodscalp Witch Doctor
					},
				}),
				i(4611, {  -- Blue Pearl
					["questID"] = 705,	-- Pearl Diving
					["crs"] = {
						877,	-- Saltscale Forager
						879,	-- Saltscale Hunter
						871,	-- Saltscale Warrior
					},
				}),
				i(5079, {  -- Cold Basilisk Eye
					["cr"] = 690,	-- Cold Eye Basilisk
				}),
				i(1703, {	-- Crystal Basilisk Spine
					["cr"] = 689,	-- Crystal Spine Basilisk
				}),
				i(3897, {  -- Dizzy's Eye
					["questID"] = 576,	-- Keep An Eye Out
					["crs"] = {
						2545,	-- "Pretty Boy" Duncan
						4505,	-- Bloodsail Deckhand
						1653,	-- Bloodsail Elder Magus
						1562,	-- Bloodsail Mage
						1561,	-- Bloodsail Raider
						1565,	-- Bloodsail Sea Dog
						4506,	-- Bloodsail Swabby
						1563,	-- Bloodsail Swashbuckler
						1564,	-- Bloodsail Warlock
						2551,	-- Brutus
						2548,	-- Captain Keelhaul
						2550,	-- Captain Stillwater
						2546,	-- Fleet Master Firallon
						2549,	-- Garr Salthoof
						2547,	-- Ironpatch
					},
				}),
				i(1677, {  -- Drake-scale Vest
					["cr"] = 680,	-- Mosh'Ogg Lord
				}),
				i(4105, {  -- Elder Crocolisk Skin
					["questID"] = 628,	-- Excelsior
					["cr"] = 2635,	-- Elder Saltwater Crocolisk
				}),
				i(5796, {  -- Encrusted Tail Fin
					["questID"] = 1107,	-- Encrusted Tail Fins
					["crs"] = {
						877,	-- Saltscale Forager
						879,	-- Saltscale Hunter
						873,	-- Saltscale Oracle
						875,	-- Saltscale Tide Lord
						871,	-- Saltscale Warrior
					},
				}),
				i(1659, {  -- Engineering Gloves
					["cr"] = 677,	-- Venture Co. Tinkerer
				}),
				i(2955, {  -- First Mate Hat
					["crs"] = {
						2545,	-- "Pretty Boy" Duncan
						4505,	-- Bloodsail Deckhand
						1653,	-- Bloodsail Elder Magus
						1562,	-- Bloodsail Mage
						1561,	-- Bloodsail Raider
						1563,	-- Bloodsail Swashbuckler
						1564,	-- Bloodsail Warlock
					},
				}),
				i(11203, {	-- Formula: Enchant Gloves - Advanced Mining
					["cr"] = 674,	-- Venture Co. Strip Miner
				}),
				i(1991, {  -- Goblin Power Shovel
					["cr"] = 1094,	-- Venture Co. Miner
				}),
				i(1986, {  -- Gutrender
					["cr"] = 709,	-- Mosh'Ogg Warmonger
				}),
				i(1522, {  -- Headhunting Spear
					["cr"] = 671,	-- Bloodscalp Headhunter
				}),
				i(1523, {  -- Huge Stone Club
					["cr"] = 597,	-- Bloodscalp Berserker
				}),
				i(2633, {  -- Jungle Remedy
					["questID"] = 204,	-- Bad Medicine
					["crs"] = {
						941,	-- Kurzen Headshrinker
						942,	-- Kurzen Witch Doctor
						940,	-- Kurzen Medicine Man
					},
					["races"] = ALLIANCE_ONLY,
				}),
				i(3863, {  -- Jungle Stalker Feather
					["questID"] = 572,	-- Mok'thardin's Enchantment
					["cr"] = 687,	-- Jungle Stalker
					["races"] = HORDE_ONLY,
				}),
				i(1679, {  -- Korg Bat
					["cr"] = 1142,	-- Mosh'Ogg Brute
				}),
				i(4053, {  -- Large River Crocolisk Skin
					["questID"] = 575,	-- Supply and Demand
					["cr"] = 1150,	-- River Crocolisk
				}),
				i(3930, {  -- Maury's Key
					["questID"] = 613,	-- Cracking Maury's Foot
					["crs"] = {
						723,	-- Mosh'Ogg Butcher
						680,	-- Mosh'Ogg Lord
						678,	-- Mosh'Ogg Mauler
						679,	-- Mosh'Ogg Shaman
						710,	-- Mosh'Ogg Spellcrafter
						709,	-- Mosh'Ogg Warmonger
					},
				}),
				i(3616, {  -- Mind's Eye
					["allianceQuestID"] = 206,	-- Mai'Zoth
					["hordeQuestID"] = 591,	-- The Mind's Eye
					["cr"] = 818,	-- Mai'Zoth
					["coord"] = { 52.8, 27.8, STRANGLETHORN_VALE },
				}),
				i(3919, {  -- Mistvale Giblets
					["questID"] = 606,	-- Scaring Shaky
					["cr"] = 1557,	-- Elder Mistvale Gorilla
				}),
				i(5755, {  -- Onyx Shredder Plate
					["cr"] = 4260,	-- Venture Co. Shredder
				}),
				i(8494, {  -- Parrot Cage (Hyacinth Macaw)
					["crs"] = {
						4505,	-- Bloodsail Deckhand
						1653,	-- Bloodsail Elder Magus
						4506,	-- Bloodsail Swabby
						1563,	-- Bloodsail Swashbuckler
						1564,	-- Bloodsail Warlock
						2546,	-- Fleet Master Firallon
					},
				}),
				i(5789, {	-- Pattern: Murloc Scale Bracers
					["cr"] = 1561,	-- Bloodsail Raider
				}),
				i(5788, {	-- Pattern: Thick Murloc Armor
					["cr"] = 938,	-- Kurzen Commando
				}),
				i(1997, {  -- Pressed Felt Robe
					["cr"] = 701,	-- Bloodscalp Mystic
				}),
				i(3839, {  -- Pristine Tigress Fang
					["questID"] = 570,	-- Mok'thardin's Enchantment
					["cr"] = 772,	-- Stranglethorn Tigress
					["races"] = HORDE_ONLY,
				}),
				i(3911, {  -- Pulsing Blue Shard
					["questID"] = 589,	-- The Singing Crystals
					["cr"] = 1551,	-- Ironjaw Basilisk
					["races"] = HORDE_ONLY,
				}),
				i(9294, {	-- Recipe: Wildvine Potion
					["description"] = "Can drop from any troll in The Hinterlands or Stranglethorn Vale.",
				}),
				i(3838, {  -- Shadowmaw Claw
					["questID"] = 570,	-- Mok'thardin's Enchantment
					["crs"] = {
						1713,	-- Elder Shadowmaw Panther
						684,	-- Shadowmaw Panther
					},
					["races"] = HORDE_ONLY,
				}),
				i(1532, {  -- Shrunken Head
					["questID"] = 582,	-- Headhunting
					["cr"] = 671,	-- Bloodscalp Headhunter
					["races"] = HORDE_ONLY,
				}),
				i(2466, {  -- Skullsplitter Fetish
					["questID"] = 205,	-- Troll Witchery
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						780,	-- Skullsplitter Mystic
						670,	-- Skullsplitter Witch Doctor
					},
				}),
				i(1524, {  -- Skullsplitter Tusk
					["questID"] = 209,	-- Skullsplitter Tusks
					["crs"] = {
						1059,	-- Ana'thek the Cruel <Skullsplitter Chief>
						696,	-- Skullsplitter Axe Thrower
						784,	-- Skullsplitter Beastmaster
						783,	-- Skullsplitter Berserker
						781,	-- Skullsplitter Headhunter
						669,	-- Skullsplitter Hunter
						780,	-- Skullsplitter Mystic
						782,	-- Skullsplitter Scout
						672,	-- Skullsplitter Spiritchaser
						667,	-- Skullsplitter Warrior
						670,	-- Skullsplitter Witch Doctor
					},
				}),
				i(3917, {  -- Singing Blue Crystal
					["questID"] = 600,	-- Venture Company Mining
					["crs"] = {
						4723,	-- Foreman Cozzle
						675,	-- Venture Co. Foreman
						674,	-- Venture Co. Strip Miner
						676,	-- Venture Co. Surveyor
						677,	-- Venture Co. Tinkerer
						14492,	-- Verifonix <The Surveyor>
					},
				}),
				i(3918, {  -- Singing Crystal Shard
					["questID"] = 605,	-- Singing Blue Shards
					["crs"] = {
						690,	-- Cold Eye Basilisk
						689,	-- Crystal Spine Basilisk
						1551,	-- Ironjaw Basilisk
						688,	-- Stone Maw Basilisk
						1550,	-- Thrashtail Basilisk
					},
				}),
				i(1624, {  -- Skullsplitter Helm
					["crs"] = {
						783,	-- Skullsplitter Berserker
						781,	-- Skullsplitter Headhunter
					},
				}),
				i(4104, {  -- Snapjaw Crocolisk Skin
					["questID"] = 577,	-- Some Assembly Required
					["cr"] = 1152,	-- Snapjaw Crocolisk
				}),
				i(3910, {  -- Snuff
					["questID"] = 587,	-- Up to Snuff
					["crs"] = {
						2545,	-- "Pretty Boy" Duncan
						4505,	-- Bloodsail Deckhand
						1653,	-- Bloodsail Elder Magus
						1562,	-- Bloodsail Mage
						1561,	-- Bloodsail Raider
						1565,	-- Bloodsail Sea Dog
						4506,	-- Bloodsail Swabby
						1563,	-- Bloodsail Swashbuckler
						1564,	-- Bloodsail Warlock
						2551,	-- Brutus
						2548,	-- Captain Keelhaul
						2550,	-- Captain Stillwater
						2546,	-- Fleet Master Firallon
						2549,	-- Garr Salthoof
						2547,	-- Ironpatch
					},
				}),
				i(1664, {  -- Spellforce Rod
					["cr"] = 676,	-- Venture Co. Surveyor
				}),
				i(3916, {  -- Split Bone Necklace
					["questID"] = 598,	-- Split Bone Necklace
					["races"] = HORDE_ONLY,
					["crs"] = {
						1059,	-- Ana'thek the Cruel <Skullsplitter Chief>
						696,	-- Skullsplitter Axe Thrower
						784,	-- Skullsplitter Beastmaster
						783,	-- Skullsplitter Berserker
						781,	-- Skullsplitter Headhunter
						669,	-- Skullsplitter Hunter
						780,	-- Skullsplitter Mystic
						782,	-- Skullsplitter Scout
						672,	-- Skullsplitter Spiritchaser
						667,	-- Skullsplitter Warrior
						670,	-- Skullsplitter Witch Doctor
					},
				}),
				i(1652, {  -- Sturdy Lunchbox
					["crs"] = {
						675,	-- Venture Co. Foreman
						14492,	-- Verifonix <The Surveyor>
					},
				}),
				i(1996, {  -- Voodoo Band
					["cr"] = 660,	-- Bloodscalp Witch Doctor
				}),
				i(3923, {  -- Water Elemental Bracers
					["questID"] = 601,	-- Water Elementals
					["cr"] = 691,	-- Lesser Water Elemental
					["races"] = ALLIANCE_ONLY,
				}),
				i(8153, {	-- Wildvine
					["description"] = "Can drop from any troll in The Hinterlands or Stranglethorn Vale.",
				}),
				i(4016, {  -- Zanzil's Mixture
					["questID"] = 621,	-- Zanzil's Secret
					["crs"] = {
						2537,	-- Chucky "Ten Thumbs"
						2536,	-- Jon-Jon the Crow
						2535,	-- Maury "Club Foot" Wilkins
						2530,	-- Yenniku <Darkspear Hostage>
						1489,	-- Zanzil Hunter
						1491,	-- Zanzil Naga
						2534,	-- Zanzil the Outcast
						1490,	-- Zanzil Witch Doctor
						1488,	-- Zanzil Zombie
					},
				}),
			}),
		},
	}),
}));