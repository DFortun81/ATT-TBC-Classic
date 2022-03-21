---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(NAGRAND, {
			n(ACHIEVEMENTS, {
				-- #if AFTER MOP
				ach(9069, {	-- An Awfully Big Adventure
					["collectible"] = false,
					["filterID"] = 101,	-- Battle Pet
					["groups"] = {
						crit(26, {	-- Narrok
							["coord"] = { 61.0, 49.4, NAGRAND },
							["cr"] = 66552,	-- Narrok <Master Pet Tamer>
						}),
					},
				}),
				-- #endif
				removeclassicphase(ach(902, {	-- Chief Exalted Officer
					-- #if BEFORE 3.0.1
					["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnTooltip]],
					["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REP_OnUpdate(t, 933); end]],
					["description"] = "Raise your reputation with The Consortium to Exalted.",
					-- #endif
				})),
				removeclassicphase(ach(866, {	-- Explore Nagrand
					-- #if BEFORE WRATH
					["description"] = "Explore Nagrand, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
				removeclassicphase(ach(939, {	-- Hills Like White Elekk
					["sourceQuest"] = 9852,	-- The Ultimate Bloodsport
					-- #if BEFORE 3.0.1
					["description"] = "Complete all of Hemet Nesingwary quests in Nagrand up to and including The Ultimate Bloodsport.",
					["OnUpdate"] = [[_.CommonAchievementHandlers.ANY_SOURCE_QUEST]],
					-- #endif
				})),
				removeclassicphase(ach(901, {	-- Mag'har of Draenor
					-- #if BEFORE 3.0.1
					["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnTooltip]],
					["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REP_OnUpdate(t, 941); end]],
					["description"] = "Raise your reputation with the Mag'har to Exalted.",
					-- #endif
					["races"] = HORDE_ONLY,
				})),
				removeclassicphase(ach(1273, {	-- Nagrand Slam (Horde)
					["races"] = HORDE_ONLY,
					-- #if ANYCLASSIC
					-- #if AFTER CATA
					["sourceQuests"] = {
						-- Birth of a Warchief
						10172,	-- There Is No Hope
						
						-- The Ring of Blood
						9977,	-- The Ring of Blood: The Final Challenge
						
						-- Throne of the Elements
						9853,	-- Gurok the Usurper
						9815,	-- Muck Diving
						9862,	-- Murkblood Corrupters
						9810,	-- The Spirit Polluted
						
						-- Lantresor of the Blade
						9907,	-- An Audacious Advance
						9916,	-- Bleeding Hollow Supply Crates
						9934,	-- Message to Garadar
						
						-- The Murkblood
						9946,	-- Cho'war the Pillager
						9948,	-- Finding the Survivors
						9866,	-- He Will Walk The Earth...
						9867,	-- Murkblood Leaders..
						9868,	-- The Totem of Kar'dash
						9863,	-- Vile Idolatry
						
						-- Threats to Nagrand
						10011, 	-- Forge Camp: Annihilated
						9937, 	-- WANTED: Durn the Hungerer
						
						-- The Ultimate Bloodsport
						9852,	-- The Ultimate Bloodsport
						
						-- Encountering the Ethereals
						9900,	-- Gava'xi
						9925,	-- Matters of Security
					},
					-- #elseif BEFORE WRATH
					["description"] = "Complete 87 quests in Nagrand.",
					["OnClick"] = [[_.CommonAchievementHandlers.LOREMASTER_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.LOREMASTER_OnTooltip]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.LOREMASTER_OnUpdate]],
					["rank"] = 87,
					-- #endif
					-- #else
					["groups"] = {
						crit(1, {	-- Birth of a Warchief
							["sourceQuest"] = 10172,	-- There Is No Hope
						}),
						crit(2,	{	-- The Ring of Blood
							["sourceQuest"] = 9977,	-- The Ring of Blood: The Final Challenge
						}),
						crit(3,	{	-- Throne of the Elements
							["sourceQuests"] = {
								9853,	-- Gurok the Usurper
								9815,	-- Muck Diving
								9862,	-- Murkblood Corrupters
								9810,	-- The Spirit Polluted
							},
						}),
						crit(4, {	-- Lantresor of the Blade
							["sourceQuests"] = {
								9907,	-- An Audacious Advance
								9916,	-- Bleeding Hollow Supply Crates
								9934,	-- Message to Garadar
							},
						}),
						crit(5, {	-- The Murkblood
							["sourceQuests"] = {
								9946,	-- Cho'war the Pillager
								9948,	-- Finding the Survivors
								9866,	-- He Will Walk The Earth...
								9867,	-- Murkblood Leaders..
								9868,	-- The Totem of Kar'dash
								9863,	-- Vile Idolatry
							},
						}),
						crit(6,	{	-- Threats to Nagrand
							["sourceQuests"] = {
								10011, 	-- Forge Camp: Annihilated
								9937, 	-- WANTED: Durn the Hungerer
							},
						}),
						crit(7,	{	-- The Ultimate Bloodsport
							["sourceQuest"] = 9852,	-- The Ultimate Bloodsport
						}),
						crit(8,	{	-- Encountering the Ethereals
							["sourceQuests"] = {
								9900,	-- Gava'xi
								9925,	-- Matters of Security
							},
						}),
					},
					-- #endif
				})),
				removeclassicphase(ach(1192, {	-- Nagrand Slam (Alliance)
					["races"] = ALLIANCE_ONLY,
					-- #if ANYCLASSIC
					-- #if AFTER CATA
					["sourceQuests"] = {
						-- The Adventures of Corki
						9955,	-- Cho'war the Pillager
						
						-- The Ring of Blood
						9977,	-- The Ring of Blood: The Final Challenge
						
						-- Throne of the Elements
						9853,	-- Gurok the Usurper
						9815,	-- Muck Diving
						9862,	-- Murkblood Corrupters
						9810,	-- The Spirit Polluted
						
						-- Lantresor of the Blade
						9933,	-- Message to Telaar
						
						-- The Murkblood
						9873,  	-- Ortor My Old Friend...
						9878,	-- Solving the Problem
						9874,	-- Stopping the Spread
						9879,	-- The Totem of Kar'dash
						9956,	-- The Ravaged Caravan
						
						-- Threats to Nagrand
						10011, 	-- Forge Camp: Annihilated
						9938, 	-- WANTED: Durn the Hungerer
						
						-- The Ultimate Bloodsport
						9852,	-- The Ultimate Bloodsport
						
						-- Encountering the Ethereals
						9900,	-- Gava'xi
						9925,	-- Matters of Security
					},
					-- #elseif BEFORE WRATH
					["description"] = "Complete 75 quests in Nagrand.",
					["OnClick"] = [[_.CommonAchievementHandlers.LOREMASTER_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.LOREMASTER_OnTooltip]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.LOREMASTER_OnUpdate]],
					["rank"] = 75,
					-- #endif
					-- #else
					["groups"] = {
						crit(1,	{	-- The Adventures of Corki
							["sourceQuest"] = 9955,	-- Cho'war the Pillager
						}),
						crit(2,	{	-- The Ring of Blood
							["sourceQuest"] = 9977,	-- The Ring of Blood: The Final Challenge
						}),
						crit(3, {	-- Throne of the Elements
							["sourceQuests"] = {
								9853,	-- Gurok the Usurper
								9815,	-- Muck Diving
								9862,	-- Murkblood Corrupters
								9810,	-- The Spirit Polluted
							},
						}),
						crit(4,	{	-- Lantresor of the Blade
							["sourceQuest"] = 9933,	-- Message to Telaar
						}),
						crit(5,	{	-- The Murkblood
							["sourceQuests"] = {
								9873,  	-- Ortor My Old Friend...
								9878,	-- Solving the Problem
								9874,	-- Stopping the Spread
								9879,	-- The Totem of Kar'dash
								9956,	-- The Ravaged Caravan
							},
						}),
						crit(6,	{	-- Threats to Nagrand
							["sourceQuests"] = {
								10011, 	-- Forge Camp: Annihilated
								9938, 	-- WANTED: Durn the Hungerer
							},
						}),
						crit(7,	{	-- The Ultimate Bloodsport
							["sourceQuest"] = 9852,	-- The Ultimate Bloodsport
						}),
						crit(8,	{	-- Encountering the Ethereals
							["sourceQuests"] = {
								9900,	-- Gava'xi
								9925,	-- Matters of Security
							},
						}),
					},
					-- #endif
				})),
				removeclassicphase(ach(899, {	-- Oh My, Kurenai
					-- #if BEFORE 3.0.1
					["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnTooltip]],
					["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REP_OnUpdate(t, 978); end]],
					["description"] = "Raise your reputation with the Kurenai to Exalted.",
					-- #endif
					["races"] = ALLIANCE_ONLY,
				})),
			}),
		}),
	})),
};