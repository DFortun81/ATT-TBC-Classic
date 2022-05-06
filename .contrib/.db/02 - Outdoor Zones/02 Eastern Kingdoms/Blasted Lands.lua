---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root("Zones", m(EASTERN_KINGDOMS, {
	m(BLASTED_LANDS, {
		["lore"] = "The Blasted Lands bear that name for a reason: they were twisted by the magic that brought the Dark Portal into being, spewing the rampaging Horde into Azeroth.\n\nThis wasted desert of red clay is home to the original Dark Portal. The portal still stands, and leads to Outland — the remains of the orcs’ sundered homeworld, Draenor. Nethergarde Keep, a Stormwind fortress of dour mages and paladins, keeps watch over the portal and the demons and ogres that would abuse its power.\n\nNow, the wretched land hosts few inhabitants and no significant settlements. Magic that leaked through the Dark Portal warped the Blasted Lands, leaving an infertile desert landscape. Hardy desert species like Basilisks, Scorpions and Hyenas have since colonized the area. The red rocks of the region do not come by their color naturally. The original tan color was transmuted into the unearthly crimson by searing heat and chaotic energies when the Dark Portal was destroyed.",
		["groups"] = {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(766, {	-- Explore Blasted Lands
					-- #if BEFORE WRATH
					["description"] = "Explore Blasted Lands, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
			}),
			-- #if ANYCLASSIC
			n(EXPLORATION, {
				exploration(1441, "185:155:310:133"),	-- Altar of Storms
				exploration(1437, "195:180:361:15"),	-- Dreadmaul Hold
				exploration(1439, "245:195:361:195"),	-- Dreadmaul Post
				exploration(1457, "170:200:472:9"),		-- Garrison Armory
				exploration(1438, "185:190:559:30"),	-- Nethergarde Keep
				exploration(2517, "170:145:405:123"),	-- Rise of the Defiler
				exploration(1440, "225:170:501:140"),	-- Serpent's Coil
				exploration(72, "265:220:453:259"),		-- The Dark Portal
				exploration(73, "384:450:212:178"),		-- The Tainted Scar
			}),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(45, {	-- Nethergarde Keep, Blasted Lands
					["cr"] = 8609,	-- Alexandra Constantine <Gryphon Master>
					["coord"] = { 65.6, 24.4, BLASTED_LANDS },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(2583, {	-- A Boar's Vitality
					["qg"] = 7505,	-- Bloodmage Drazial
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
					["cost"] = {
						{ "i", 8392, 3 },	-- Blasted Boar Lung
						{ "i", 8393, 2 },	-- Scorpok Pincer
						{ "i", 8394, 1 },	-- Basilisk Brain
					},
					["lvl"] = 45,
					["groups"] = {
						i(8411),	-- Lung Juice Cocktail
					},
				}),
				q(3501, {	-- Everything Counts In Large Amounts
					["qg"] = 7363,	-- Kum'isha the Collector
					["cost"] = {
						{ "i", 10593, 1 },	-- Imperfect Draenethyst Fragment
					},
					["lvl"] = 45,
					["groups"] = {
						i(12122),	-- Kum'isha's Junk
					},
				}),
				q(2602, {	-- Infallible Mind
					["qg"] = 7506,	-- Bloodmage Lynnore
					["coord"] = { 50.6, 14.3, BLASTED_LANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8394, 10 },	-- Basilisk Brain
						{ "i", 8396, 2 },	-- Vulture Gizzard
					},
					["lvl"] = 45,
					["groups"] = {
						i(8423),	-- Cerebral Cortex Compound
					},
				}),
				q(2522, {	-- Kum'isha's Endeavors
					["qg"] = 7363,	-- Kum'isha the Collector
					["sourceQuest"] = 2521,	-- To Serve Kum'isha
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8244, 1 },	-- Flawless Draenethyst Sphere
					},
					["lvl"] = 45,
					["groups"] = {
						i(10752),	-- Emerald Encrusted Chest
					},
				}),
				q(3502, {	-- One Draenei's Junk...
					["qg"] = 7363,	-- Kum'isha the Collector
					["sourceQuest"] = 3501,	-- Everything Counts In Large Amounts
					["repeatable"] = true,
					["cost"] = {
						{ "i", 10593, 1 },	-- Imperfect Draenethyst Fragment
					},
					["lvl"] = 45,
					["groups"] = {
						i(12122),	-- Kum'isha's Junk
					},
				}),
				q(2783, {	-- Petty Squabbles
					["qg"] = 7826,	-- Ambassador Ardalan
					["coord"] = { 67.6, 19.2, BLASTED_LANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(2582, {	-- Rage of Ages
					["qg"] = 7505,	-- Bloodmage Drazial
					["sourceQuest"] = 2581,	-- Snickerfang Jowls
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8391, 3 },	-- Snickerfang Jowl
						{ "i", 8392, 2 },	-- Blasted Boar Lung
						{ "i", 8393, 1 },	-- Scorpok Pincer
					},
					["lvl"] = 45,
					["groups"] = {
						i(8410),	-- R.O.I.D.S.
					},
				}),
				q(4128, {	-- Ragnar Thunderbrew
					["qg"] = 9540,	-- Enohar Thunderbrew
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(2993, {	-- Return to the Hinterlands
					["qg"] = 8022,	-- Thadius Grimshade
					["sourceQuest"] = 2992,	-- The Divination
					["coord"] = { 67.0, 19.4, BLASTED_LANDS },
					["maps"] = { THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(2586, {	-- Salt of the Scorpok
					["qg"] = 7505,	-- Bloodmage Drazial
					["sourceQuest"] = 2585,	-- The Decisive Striker
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8393, 3 },	-- Scorpok Pincer
						{ "i", 8396, 2 },	-- Vulture Gizzard
						{ "i", 8392, 1 },	-- Blasted Boar Lung
					},
					["lvl"] = 45,
					["groups"] = {
						i(8412),	-- Ground Scorpok Assay
					},
				}),
				q(2581, {	-- Snickerfang Jowls
					["qg"] = 7505,	-- Bloodmage Drazial
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
					["cost"] = {
						{ "i", 8391, 3 },	-- Snickerfang Jowl
						{ "i", 8392, 2 },	-- Blasted Boar Lung
						{ "i", 8393, 1 },	-- Scorpok Pincer
					},
					["lvl"] = 45,
					["groups"] = {
						i(8410),	-- R.O.I.D.S.
					},
				}),
				q(2584, {	-- Spirit of the Boar
					["qg"] = 7505,	-- Bloodmage Drazial
					["sourceQuest"] = 2583,	-- A Boar's Vitality
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8392, 3 },	-- Blasted Boar Lung
						{ "i", 8393, 2 },	-- Scorpok Pincer
						{ "i", 8394, 1 },	-- Basilisk Brain
					},
					["lvl"] = 45,
					["groups"] = {
						i(8411),	-- Lung Juice Cocktail
					},
				}),
				q(2604, {	-- Spiritual Domination
					["qg"] = 7506,	-- Bloodmage Lynnore
					["coord"] = { 50.6, 14.3, BLASTED_LANDS },
					["repeatable"] = true,
					["lvl"] = 45,
					["groups"] = {
						i(8424),	-- Gizzard Gum
					},
				}),
				q(7583, {	-- Suppression
					["qg"] = 14463,	-- Daio the Decrepit
					["coord"] = { 34, 50.2, BLASTED_LANDS },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18605, 1 },	-- Imprisoned Doomguard
						{ "i", 18601, 1 },	-- Glowing Crystal Prison
					},
					["lvl"] = 60,
					["groups"] = {
						{
							["recipeID"] = 18540,	-- Ritual of Doom
							["classes"] = { WARLOCK },
						},
						i(18602),	-- Tome of Sacrifice
					},
				}),
				q(2601, {	-- The Basilisk's Bite
					["qg"] = 7506,	-- Bloodmage Lynnore
					["coord"] = { 50.6, 14.3, BLASTED_LANDS },
					["cost"] = {
						{ "i", 8394, 10 },	-- Basilisk Brain
						{ "i", 8396, 2 },	-- Vulture Gizzard
					},
					["lvl"] = 45,
					["groups"] = {
						i(8423),	-- Cerebral Cortex Compound
					},
				}),
				q(2743, {	-- The Cover of Darkness
					["qg"] = 7729,	-- Spirit of Kirith
					["sourceQuest"] = 2721,	-- Kirith
					["lvl"] = 45,
				}),
				q(2585, {	-- The Decisive Striker
					["qg"] = 7505,	-- Bloodmage Drazial
					["coord"] = { 50.6, 14.2, BLASTED_LANDS },
					["cost"] = {
						{ "i", 8393, 3 },	-- Scorpok Pincer
						{ "i", 8396, 2 },	-- Vulture Gizzard
						{ "i", 8392, 1 },	-- Blasted Boar Lung
					},
					["lvl"] = 45,
					["groups"] = {
						i(8412),	-- Ground Scorpok Assay
					},
				}),
				q(2992, {	-- The Divination
					["qg"] = 8022,	-- Thadius Grimshade
					["sourceQuest"] = 2991,	-- Nekrum's Medallion
					["coord"] = { 67.0, 19.4, BLASTED_LANDS },
					["maps"] = { THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7581, {	-- The Prison's Bindings
					["qg"] = 14463,	-- Daio the Decrepit
					["coord"] = { 34, 50.2, BLASTED_LANDS },
					["maps"] = { DIRE_MAUL },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18603, 15 },	-- Satyr Blood
					},
					["lvl"] = 60,
				}),
				q(7582, {	-- The Prison's Casing
					["qg"] = 14463,	-- Daio the Decrepit
					["coord"] = { 34, 50.2, BLASTED_LANDS },
					["maps"] = { WINTERSPRING },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18604, 5 },	-- Tears of the Hederine
					},
					["lvl"] = 60,
				}),
				q(2521, {	-- To Serve Kum'isha
					["qg"] = 7363,	-- Kum'isha the Collector
					["cost"] = {
						{ "i", 8244, 1 },	-- Flawless Draenethyst Sphere
					},
					["lvl"] = 45,
					["groups"] = {
						i(10752),	-- Emerald Encrusted Chest
					},
				}),
				q(2603, {	-- Vulture's Vigor
					["qg"] = 7506,	-- Bloodmage Lynnore
					["coord"] = { 50.6, 14.3, BLASTED_LANDS },
					["cost"] = {
						{ "i", 8396, 10 },	-- Vulture Gizzard
						{ "i", 8391, 2 },	-- Snickerfang Jowl
					},
					["lvl"] = 45,
					["groups"] = {
						i(8424),	-- Gizzard Gum
					},
				}),
				q(3628, {	-- You Are Rakh'likh, Demon
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 3627,	-- Uniting the Shattered Amulet
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- Severed Horn of the Defiler
							["provider"] = { "i", 10759 },	-- Severed Horn of the Defiler
							["cost"] = {
								{ "i", 10757, 1 },	-- Ward of the Defiler
							},
							["coord"] = { 47.6, 30.0, BLASTED_LANDS },
							["cr"] = 7664,	-- Razelikh the Defiler
						}),
						i(10778),	-- Necklace of Sanctuary
						i(10779),	-- Demon's Blood
						i(10959),	-- Demon Hide Sack
					},
				}),
			}),
			n(RARES, {
				n(8298, {	-- Akubar the Seer
					["coords"] = {
						{ 46.8, 49.8, BLASTED_LANDS },
						{ 52.0, 52.4, BLASTED_LANDS },
						{ 59.8, 46.4, BLASTED_LANDS },
					},
					["groups"] = {
						applyclassicphase(PHASE_THREE, i(19260)),	-- Three of Warlords
					},
				}),
				n(8301, {	-- Clack the Reaver
					["coords"] = {
						{ 51.0, 24.8, BLASTED_LANDS },
						{ 47.0, 40.2, BLASTED_LANDS },
						{ 53.4, 39.4, BLASTED_LANDS },
						{ 61.6, 35.8, BLASTED_LANDS },
					},
				}),
				n(8302, {	-- Deatheye
					["coords"] = {
						{ 47.8, 19.6, BLASTED_LANDS },
						{ 45.4, 26.4, BLASTED_LANDS },
					},
				}),
				n(8304, {	-- Dreadscorn
					["coords"] = {
						{ 40.0, 34.4, BLASTED_LANDS },
						{ 44.8, 39.2, BLASTED_LANDS },
						{ 42.6, 43.0, BLASTED_LANDS },
					},
				}),
				n(8303, {	-- Grunter
					["coords"] = {
						{ 56.2, 31.4, BLASTED_LANDS },
						{ 61.6, 27.4, BLASTED_LANDS },
					},
				}),
				n(8297, {	-- Magronos the Unyielding
					["coords"] = {
						{ 44.6, 43.8, BLASTED_LANDS },
						{ 49.6, 39.6, BLASTED_LANDS },
					},
				}),
				n(8296, {	-- Mojo the Twisted
					["coords"] = {
						{ 41.8, 11.4, BLASTED_LANDS },
						{ 45.2, 17.2, BLASTED_LANDS },
					},
				}),
				n(8300, {	-- Ravage
					["coords"] = {
						{ 48.8, 35.8, BLASTED_LANDS },
						{ 59.8, 35.4, BLASTED_LANDS },
					},
				}),
				n(8299, {	-- Spiteflayer
					["coords"] = {
						{ 60.8, 35.2, BLASTED_LANDS },
						{ 59.2, 40.6, BLASTED_LANDS },
						{ 60.0, 46.8, BLASTED_LANDS },
					},
				}),
			}),
			n(VENDORS, {
				-- #if AFTER TBC
				n(3546, {	-- Bernie Heisten <Food & Drink>
					-- #if BEFORE CATA
					["coord"] = { 63.5, 17.0, BLASTED_LANDS },
					-- #else
					["coord"] = { 59.4, 14.9, BLASTED_LANDS },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, i(23848, {	-- Nethergarde Bitter
							["description"] = "Buy at least one of these before you enter the Dark Portal!",
						})),
					},
				}),
				-- #endif
				n(8178, {	-- Nina Lightbrew <Alchemy Supplies>
					["coord"] = { 66.8, 18.6, BLASTED_LANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(9300),	-- Recipe: Elixir of Demonslaying
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(8394, {	-- Basilisk Brain
					["crs"] = {
						8302,	-- Deatheye
						5990,	-- Redstone Basilisk
						5991,	-- Redstone Crystalhide
					},
				}),
				i(8392, {	-- Blasted Boar Lung
					["crs"] = {
						5992,	-- Ashmane Boar
						8303,	-- Grunter
						5993,	-- Helboar
					},
				}),
				i(4213, {	-- Grimoire of Doom
					["recipeID"] = 18540,	-- Ritual of Doom
					["classes"] = { WARLOCK },
					["crs"] = {
						12396,	-- Doomguard Commander
						8716,	-- Dreadlord
					},
				}),
				i(10593),	-- Imperfect Draenethyst Fragment (drops from pretty much the whole zone)
				i(8244, {	-- Flawless Draenethyst Sphere
					["crs"] = {
						7846,	-- Teremus the Devourer
						7664,	-- Razelikh the Defiler
						7668,	-- Servant of Razelikh
					},
				}),
				i(18623, {	-- Flawless Fel Essence (Dark Portal)
					["questID"] = 7602,	-- Flawless Fel Essence
					["cr"] = 6011,	-- Felguard Sentry
					["classes"] = { WARLOCK },
				}),
				i(15727, {	-- Pattern: Heavy Scorpid Vest
					["cr"] = 5981,	-- Portal Seeker
				}),
				i(8393, {	-- Scorpok Pincer
					["crs"] = {
						8301,	-- Clack the Reaver
						5988,	-- Scorpok Stinger
					},
				}),
				i(8391, {	-- Snickerfang Jowl
					["crs"] = {
						8300,	-- Ravage
						5985,	-- Snickerfang Hyena
						5984,	-- Starving Snickerfang
					},
				}),
				i(18665, {	-- The Eye of Shadow
					["classes"] = { PRIEST },
					["crs"] = {
						12396,	-- Doomguard Commander
						8716,	-- Dreadlord
						8717,	-- Felguard Elite
						12397,	-- Lord Kazzak
						8718,	-- Manahound
					},
				}),
				i(8396, {	-- Vulture Gizzard
					["crs"] = {
						5982,	-- Black Slayer
						8299,	-- Spiteflayer
					},
				}),
			}),
		},
	}),
}));
