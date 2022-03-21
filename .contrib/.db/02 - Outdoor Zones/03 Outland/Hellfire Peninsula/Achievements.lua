---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(HELLFIRE_PENINSULA, {
			n(ACHIEVEMENTS, {
				-- #if AFTER MOP
				ach(9069, {	-- An Awfully Big Adventure
					["collectible"] = false,
					["filterID"] = 101,	-- Battle Pet
					["groups"] = {
						crit(28, {	-- Nicki Tinytech
							["coord"] = { 64.4, 49.2, HELLFIRE_PENINSULA },
							["cr"] = 66550,	-- Nicki Tinytech <Master Pet Tamer>
						}),
					},
				}),
				-- #endif
				removeclassicphase(ach(862, {	-- Explore Hellfire Peninsula
					-- #if BEFORE WRATH
					["description"] = "Explore Hellfire Peninsula, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
				removeclassicphase(ach(1189, {	-- To Hellfire and Back [Alliance Version]
					["races"] = ALLIANCE_ONLY,
					-- #if ANYCLASSIC
					-- #if AFTER CATA
					["sourceQuests"] = {
						-- Disrupt the Burning Legion
						10397,	-- Invasion Point: Annihilator
						
						-- Overthrow the Overlord
						10400,	-- Overlord
						10399,	-- The Heart of Darkness
						
						-- In Search of Sedai
						9545,	-- The Seer's Relic
						
						-- The Exorcism of Colonel Jules
						10935,	-- The Exorcism of Colonel Jules
						
						-- Drill the Drillmaster
						10937,	-- Drill the Drillmaster
						
						-- Temple of Telhamat
						9383,	-- An Ambitious Plan
						9490,	-- The Rock Flayer Matriarch
						-- all quests below need to be confirmed
						9427,	-- Cleaning the Waters
						9398,	-- Deadly Predators
						
						-- Green, But Not Orcs
						10630,	-- Beneath Thrallmar
						9356,	-- Smooth as Butter
						9351,	-- Voidwalkers Gone Wild
						
						-- Cenarion Post
						10351,	-- Natural Remedies
						10255,	-- Testing the Antidote
					},
					-- #elseif BEFORE WRATH
					["description"] = "Complete 80 quests in Hellfire Peninsula.",
					["OnClick"] = [[_.CommonAchievementHandlers.LOREMASTER_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.LOREMASTER_OnTooltip]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.LOREMASTER_OnUpdate]],
					["rank"] = 80,
					-- #endif
					-- #else
					["groups"] = {
						crit(1, {	-- Disrupt the Burning Legion
							["sourceQuest"] = 10397,	-- Invasion Point: Annihilator
						}),
						crit(2, {	-- Overthrow the Overlord
							["sourceQuests"] = {
								10400,	-- Overlord
								10399,	-- The Heart of Darkness
							},
						}),
						crit(3, {	-- In Search of Sedai
							["sourceQuest"] = 9545,	-- The Seer's Relic
						}),
						crit(4, {	-- The Exorcism of Colonel Jules
							["sourceQuest"] = 10935,	-- The Exorcism of Colonel Jules
						}),
						crit(5, {	-- Drill the Drillmaster
							["sourceQuest"] = 10937,	-- Drill the Drillmaster
						}),
						crit(6, {	-- Temple of Telhamat
							["sourceQuests"] = {
								9383,	-- An Ambitious Plan
								9490,	-- The Rock Flayer Matriarch
								-- all quests below need to be confirmed
								9427,	-- Cleaning the Waters
								9398,	-- Deadly Predators
							},
						}),
						crit(7, {	-- Green, But Not Orcs
							["sourceQuests"] = {
								10630,	-- Beneath Thrallmar
								9356,	-- Smooth as Butter
								9351,	-- Voidwalkers Gone Wild
							},
						}),
						crit(8, {	-- Cenarion Post
							["sourceQuests"] = {
								10351,	-- Natural Remedies
								10255,	-- Testing the Antidote
							},
						}),
					},
					-- #endif
				})),
				removeclassicphase(ach(1271, {	-- To Hellfire and Back [Horde Version]
					["races"] = HORDE_ONLY,
					-- #if ANYCLASSIC
					-- #if AFTER CATA
					["sourceQuests"] = {
						-- Disrupt the Burning Legion
						10388,	-- Return to Thrallmar
						
						-- Cruel's Intentions
						10136,	-- Cruel's Intentions
						10389,	-- The Agony and the Darkness
						10393,	-- Vile Plans
						
						-- The Hand of Kargath
						10876,	-- The Foot of the Citadel
						
						-- Spinebreaker Post
						10295,	-- From the Abyss
						10834,	-- Grillok "Darkeye"
						10258,	-- Honor the Fallen (probably)
						10220,	-- Make Them listen
						9345,	-- Preparing the Salve
						
						-- The Mag'har
						9406,	-- The Mag'har
						
						-- Falcon Watch
						9397,	-- Birds of a Feather
						9370,	-- The Cleansing Must Be Stopped
						-- all quests below need to be confirmed
						9472,	-- Arelion's Mistress
						9391,	-- Marking the Path
						9387,	-- Source of the Corruption
						
						-- Green, But Not Orcs
						10630,	-- Beneath Thrallmar
						9356,	-- Smooth as Butter
						9351,	-- Voidwalkers Gone Wild
						
						-- Cenarion Post
						10351,	-- Natural Remedies
						10255,	-- Testing the Antidote
					},
					-- #elseif BEFORE WRATH
					["description"] = "Complete 89 quests in Hellfire Peninsula.",
					["OnClick"] = [[_.CommonAchievementHandlers.LOREMASTER_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.LOREMASTER_OnTooltip]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.LOREMASTER_OnUpdate]],
					["rank"] = 89,
					-- #endif
					-- #else
					["groups"] = {
						crit(1, {	-- Disrupt the Burning Legion
							["sourceQuest"] = 10388,	-- Return to Thrallmar
						}),
						crit(2, {	-- Cruel's Intentions
							["sourceQuests"] = {
								10136,	-- Cruel's Intentions
								10389,	-- The Agony and the Darkness
								10393,	-- Vile Plans
							},
						}),
						crit(3, {	-- The Hand of Kargath
							["sourceQuest"] = 10876,	-- The Foot of the Citadel
						}),
						crit(4, {	-- Spinebreaker Post
							["sourceQuests"] = {
								10295,	-- From the Abyss
								10834,	-- Grillok "Darkeye"
								10258,	-- Honor the Fallen (probably)
								10220,	-- Make Them listen
								9345,	-- Preparing the Salve
							},
						}),
						crit(5, {	-- The Mag'har
							["sourceQuest"] = 9406,	-- The Mag'har
						}),
						crit(6, {	-- Falcon Watch
							["sourceQuests"] = {
								9397,	-- Birds of a Feather
								9370,	-- The Cleansing Must Be Stopped
								-- all quests below need to be confirmed
								9472,	-- Arelion's Mistress
								9391,	-- Marking the Path
								9387,	-- Source of the Corruption
							},
						}),
						crit(7, {	-- Green, But Not Orcs
							["sourceQuests"] = {
								10630,	-- Beneath Thrallmar
								9356,	-- Smooth as Butter
								9351,	-- Voidwalkers Gone Wild
							},
						}),
						crit(8, {	-- Cenarion Post
							["sourceQuests"] = {
								10351,	-- Natural Remedies
								10255,	-- Testing the Antidote
							},
						}),
					},
					-- #endif
				})),
			}),
		}),
	})),
};