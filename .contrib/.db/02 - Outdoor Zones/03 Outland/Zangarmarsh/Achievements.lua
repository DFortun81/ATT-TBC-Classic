---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(ZANGARMARSH, {
			n(ACHIEVEMENTS, {
				-- #if AFTER MOP
				ach(9069, {	-- An Awfully Big Adventure
					["collectible"] = false,
					["filterID"] = 101,	-- Battle Pet
					["groups"] = {
						crit(31, {	-- Ras'an
							["coord"] = { 17.2, 50.6, ZANGARMARSH },
							["cr"] = 66551,	-- Ras'an <Master Pet Tamer>
						}),
					},
				}),
				-- #endif
				removeclassicphase(ach(863, {	-- Explore Zangarmarsh
					-- #if BEFORE WRATH
					["description"] = "Explore Zangarmarsh, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
				removeclassicphase(ach(1190, {	-- Mysteries of the Marsh
					-- #if ANYCLASSIC
					-- #if AFTER CATA
					["sourceQuests"] = {
						-- Draenei Diplomacy (A)
						9803,	-- Messenger to the Feralfen
						
						-- Swamprat Post (H)
						9899,	-- A Job Undone
						9772,	-- Jyoba's Report
						9898,	-- Nothin' Says Lovin' Like a Big Stinger
						9769,	-- There's No Explanation for Fashion
						
						-- Telredor (A)
						9783,	-- An Unnatural Drought
						-- TODO:: verify below
						9896, 	-- Blacksting's Bane
						9790,	-- Diaphanous Wings
						9777,	-- Fulgor Spores
						9780,	-- Umbrafen Eel Filets
						
						-- Zabra'jin (H)
						9816,	-- Have You Ever Seen One of These?
						9904,	-- Pursuing Terrorclaw
						-- TODO:: verify below
						9847,	-- A Spirit Ally? (probably)
						9903,	-- The Biggest of Them All (probably)
						9842,	-- The Sharpest Blades (probably)
						
						-- Orebor Harborage (A)
						9902,	-- The Terror of Marshlight Lake
						-- TODO:: verify below
						10115,	-- Daggerfen Deviance
						9905,	-- Maktu's Revenge
						9839,	-- Overlord Gorefist
						9848,	-- Secrets of the Daggerfen
						9830,	-- Stinger Venom
						9833,	-- Lines of Communication
						
						-- The Defense of Zabra'jin (H)
						10118,	-- Message to the Daggerfen
						9823,	-- Us or Them
						
						-- Don't Eat THOSE Mushrooms!
						9709,	-- Stealing Back the Mushrooms
						
						-- Draining the Marsh
						9732,	-- Return to the Marsh
						
						-- Saving the Sporeloks
						9788,	-- A Damp, Dark Place
						9894,	-- Safeguarding the Watchers
						10096,	-- Saving the Sporeloks
						
						-- A Trip With the Sporelings
						9726,	-- Now That We're Friends...
						9919,	-- Sporeggar
						-- TODO:: verify below
						9806,	-- Fertile Spores (probably)
						9729,	-- Fhwoor Smash! (probably)
					},
					-- #elseif BEFORE WRATH
					["description"] = "Complete 54 quests in Zangarmarsh.",
					["OnClick"] = [[_.CommonAchievementHandlers.LOREMASTER_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.LOREMASTER_OnTooltip]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.LOREMASTER_OnUpdate]],
					["rank"] = 54,
					-- #endif
					-- #else
					crit(1, {	-- Draenei Diplomacy (A)
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 9803,	-- Messenger to the Feralfen
					}),
					crit(1, {	-- Swamprat Post (H)
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							9899,	-- A Job Undone
							9772,	-- Jyoba's Report
							9898,	-- Nothin' Says Lovin' Like a Big Stinger
							9769,	-- There's No Explanation for Fashion
						},
					}),
					crit(2, {	-- Telredor (A)
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							9783,	-- An Unnatural Drought
							-- TODO:: verify below
							9896, 	-- Blacksting's Bane
							9790,	-- Diaphanous Wings
							9777,	-- Fulgor Spores
							9780,	-- Umbrafen Eel Filets
						},
					}),
					crit(2, {	-- Zabra'jin (H)
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							9816,	-- Have You Ever Seen One of These?
							9904,	-- Pursuing Terrorclaw
							-- TODO:: verify below
							9847,	-- A Spirit Ally? (probably)
							9903,	-- The Biggest of Them All (probably)
							9842,	-- The Sharpest Blades (probably)
						},
					}),
					crit(3, {	-- Orebor Harborage (A)
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							9902,	-- The Terror of Marshlight Lake
							-- TODO:: verify below
							10115,	-- Daggerfen Deviance
							9905,	-- Maktu's Revenge
							9839,	-- Overlord Gorefist
							9848,	-- Secrets of the Daggerfen
							9830,	-- Stinger Venom
							9833,	-- Lines of Communication
						},
					}),
					crit(3, {	-- The Defense of Zabra'jin (H)
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							10118,	-- Message to the Daggerfen
							9823,	-- Us or Them
						},
					}),
					crit(4, {	-- Don't Eat THOSE Mushrooms!
						["sourceQuest"] = 9709,	-- Stealing Back the Mushrooms
					}),
					crit(5, {	-- Draining the Marsh
						["sourceQuest"] = 9732,	-- Return to the Marsh
					}),
					crit(6, {	-- Saving the Sporeloks
						["sourceQuests"] = {
							9788,	-- A Damp, Dark Place
							9894,	-- Safeguarding the Watchers
							10096,	-- Saving the Sporeloks
						},
					}),
					crit(7, {	-- A Trip With the Sporelings
						["sourceQuests"] = {
							9726,	-- Now That We're Friends...
							9919,	-- Sporeggar
							-- TODO:: verify below
							9806,	-- Fertile Spores (probably)
							9729,	-- Fhwoor Smash! (probably)
						},
					}),
					-- #endif
				})),
				ach(953, applyclassicphase(TBC_PHASE_ONE, {	-- Guardian of Cenarius
					-- #if BEFORE 3.0.1
					["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REPS_OnTooltip]],
					["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REPS_OnUpdate(t, 609, 942); end]],
					["description"] = "Raise your reputation with the Cenarion Circle and Cenarion Expedition to Exalted.",
					-- #endif
					["groups"] = {
						applyclassicphase(WRATH_PHASE_ONE, title(132)),	-- %, Guardian of Cenarius
					},
				})),
				removeclassicphase(ach(900, {	-- The Czar of Sporeggar
					-- #if BEFORE 3.0.1
					["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnTooltip]],
					["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REP_OnUpdate(t, 970); end]],
					["description"] = "Raise your reputation with Sporeggar to Exalted.",
					-- #endif
				})),
			}),
		}),
	})),
};