--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays = { applyholiday(HALLOWS_END, {
	-- #if ANYCLASSIC
	["npcID"] = -58,
	-- #else
	["holidayID"] = 235462,
	-- #endif
	["groups"] = {
		n(QUESTS, {
			q(8353, {	-- Chicken Clucking for a Mint (Alliance)
				["qg"] = 5111,	-- Innkeeper Firebrew <Innkeeper>
				["coord"] = { 18.6, 51.4, IRONFORGE },
				["maps"] = { IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = lvlsquish(10, 1, 10),
				["groups"] = {
					i(20490),	-- Ironforge Mint
				},
			}),
			q(8354, {	-- Chicken Clucking for a Mint (Horde)
				["qg"] = 6741,	-- Innkeeper Norman <Innkeeper>
				["coord"] = { 67.8, 38.6, UNDERCITY },
				["maps"] = { UNDERCITY },
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = lvlsquish(10, 1, 10),
				["groups"] = {
					i(20491),	-- Undercity Mint
				},
			}),
			q(1658, {	-- Crashing the Wickerman Festival
				["qg"] = 15199,	-- Sergeant Hartman
				["coord"] = { 50, 57.2, HILLSBRAD_FOOTHILLS },
				["maps"] = { HILLSBRAD_FOOTHILLS, SILVERPINE_FOREST, TIRISFAL_GLADES },
				["timeline"] = { "removed 4.0.3" },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 25,
				["groups"] = {
					objective(1, {	-- Scout out the Forsaken's Wickerman Festival.
						["provider"] = { "o", 181672 },	-- Wickerman Effigy
						["coord"] = { 56, 69, TIRISFAL_GLADES },
					}),
					i(20557),	-- Hallow's End Pumpkin Treat
				},
			}),
			q(8357, {	-- Dancing for Marzipan (Alliance)
				["qg"] = 6735,	-- Innkeeper Saelienne <Innkeeper>
				-- #if AFTER CATA
				["coord"] = { 62.4, 32.8, DARNASSUS },
				-- #else
				["coord"] = { 67.2, 15.8, DARNASSUS },
				-- #endif
				["maps"] = { DARNASSUS },
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = lvlsquish(10, 1, 10),
				["groups"] = {
					i(20496),	-- Darnassus Marzipan
				},
			}),
			q(8360, {	-- Dancing for Marzipan (Horde)
				["qg"] = 6746,	-- Innkeeper Pala <Innkeeper>
				["coord"] = { 45.8, 64.4, THUNDER_BLUFF },
				["maps"] = { THUNDER_BLUFF },
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = lvlsquish(10, 1, 10),
				["groups"] = {
					i(20497),	-- Thunder Bluff Marzipan
				},
			}),
			q(8356, {	-- Flexing for Nougat (Alliance)
				["qg"] = 6740,	-- Innkeeper Allison <Innkeeper>
				-- #if AFTER WRATH
				["coord"] = { 60.4, 75.3, STORMWIND_CITY },
				-- #else
				["coord"] = { 52.6, 65.6, STORMWIND_CITY },
				-- #endif
				["maps"] = { STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = lvlsquish(10, 1, 10),
				["groups"] = {
					i(20492),	-- Stormwind Nougat
				},
			}),
			q(8359, {	-- Flexing for Nougat (Horde)
				["qg"] = 6929,	-- Innkeeper Gryshka <Innkeeper>
				-- #if AFTER LEGION
				["coord"] = { 53.6, 78.8, ORGRIMMAR },
				-- #elseif AFTER CATA
				["coord"] = { 54.2, 68.4, ORGRIMMAR },
				-- #else
				["coord"] = { 54.2, 68.4, ORGRIMMAR },
				-- #endif
				["maps"] = { ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = lvlsquish(10, 1, 10),
				["groups"] = {
					i(20493),	-- Orgrimmar Nougat
				},
			}),
			q(8311, {	-- Hallow's End Treats for Jesper!
				["qg"] = 15310,	-- Jesper
				-- #if AFTER CATA
				["coord"] = { 32, 50.4, ELWYNN_FOREST },
				["maps"] = { ELWYNN_FOREST },
				-- #elseif AFTER WRATH
				["coord"] = { 56.6, 51.8, STORMWIND_CITY },
				["maps"] = { STORMWIND_CITY },
				-- #else
				["coord"] = { 47.6, 35.4, STORMWIND_CITY },
				["maps"] = { STORMWIND_CITY },
				-- #endif
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = lvlsquish(10, 1, 10),
				["groups"] = {
					objective(1, {	-- 0/1 Stormwind Nougat
						["provider"] = { "i", 20492 },	-- Stormwind Nougat
					}),
					objective(2, {	-- 0/1 Gnomeregan Gumdrop
						["provider"] = { "i", 20494 },	-- Gnomeregan Gumdrop
					}),
					objective(3, {	-- 0/1 Ironforge Mint
						["provider"] = { "i", 20490 },	-- Ironforge Mint
					}),
					objective(4, {	-- 0/1 Darnassus Marzipan
						["provider"] = { "i", 20496 },	-- Darnassus Marzipan
					}),
					-- #if AFTER CATA
					i(33226),	-- Tricky Treat
					-- #else
					i(20557),	-- Hallow's End Pumpkin Treat
					-- #endif
				},
			}),
			q(8312, {	-- Hallow's End Treats for Spoops!
				["qg"] = 15309,	-- Spoops
				-- #if AFTER CATA
				["coord"] = { 67.4, 7, UNDERCITY },
				["maps"] = { UNDERCITY },
				-- #elseif AFTER CATA
				["coord"] = { 62.1, 66.4, TIRISFAL_GLADES },
				["maps"] = { TIRISFAL_GLADES },
				-- #else
				["coord"] = { 71.2, 22.8, ORGRIMMAR },
				["maps"] = { ORGRIMMAR },
				-- #endif
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = lvlsquish(10, 1, 10),
				["groups"] = {
					objective(1, {	-- 0/1 Orgrimmar Nougat
						["provider"] = { "i", 20493 },	-- Orgrimmar Nougat
					}),
					objective(2, {	-- 0/1 Darkspear Gumdrop
						["provider"] = { "i", 20495 },	-- Darkspear Gumdrop
					}),
					objective(3, {	-- 0/1 Undercity Mint
						["provider"] = { "i", 20491 },	-- Undercity Mint
					}),
					objective(4, {	-- 0/1 Thunder Bluff Marzipan
						["provider"] = { "i", 20497 },	-- Thunder Bluff Marzipan
					}),
					-- #if AFTER CATA
					i(33226),	-- Tricky Treat
					-- #else
					i(20557),	-- Hallow's End Pumpkin Treat
					-- #endif
				},
			}),
			q(8355, {	-- Incoming Gumdrop (Alliance)
				["qg"] = 6826,	-- Talvash del Kissel
				["coord"] = { 36, 4, IRONFORGE },
				["maps"] = { IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = lvlsquish(10, 1, 10),
				["groups"] = {
					i(20494),	-- Gnomeregan Gumdrop
				},
			}),
			q(8358, {	-- Incoming Gumdrop (Horde)
				["qg"] = 11814,	-- Kali Remik
				-- #if AFTER LEGION
				["coord"] = { 32.6, 65, ORGRIMMAR },
				["maps"] = { ORGRIMMAR },
				-- #elseif AFTER CATA
				["coord"] = { 33.5, 64.9, ORGRIMMAR },
				["maps"] = { ORGRIMMAR },
				-- #else
				["coord"] = { 56.2, 74.2, DUROTAR },
				["maps"] = { DUROTAR },
				-- #endif
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = lvlsquish(10, 1, 10),
				["groups"] = {
					i(20495),	-- Darkspear Gumdrop
				},
			}),
			q(8322, {	-- Rotten Eggs
				["qg"] = 15197,	-- Darkcaller Yanka
				["coords"] = {
					{ 55.6, 69.9, TIRISFAL_GLADES },
					{ 51.4, 59.0, HILLSBRAD_FOOTHILLS },
				},
				["maps"] = {
					TIRISFAL_GLADES,
					HILLSBRAD_FOOTHILLS,
				},
				["timeline"] = { "removed 4.0.3" },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["cost"] = {
					{ "i", 20605, 1 },	-- Rotten Eggs
				},
				["lvl"] = 30,
			}),
			q(8409, {	-- Ruined Kegs
				["provider"] = { "o", 180570 },	-- Keg
				["sourceQuest"] = 8322,	-- Rotten Eggs
				["coord"] = { 51.4, 59.0, HILLSBRAD_FOOTHILLS },
				["maps"] = { HILLSBRAD_FOOTHILLS },
				["timeline"] = { "removed 4.0.3" },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 30,
				["groups"] = {
					i(20557),	-- Hallow's End Pumpkin Treat
				},
			}),
			q(1657, {	-- Stinking Up Southshore
				["qg"] = 15197,	-- Darkcaller Yanka
				["coord"] = { 55.6, 69.9, TIRISFAL_GLADES },
				["maps"] = {
					TIRISFAL_GLADES,
					HILLSBRAD_FOOTHILLS,
				},
				["timeline"] = { "removed 4.0.3" },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 25,
				["groups"] = {
					objective(1, {	-- Toss Stink Bomb into Southshore
						["provider"] = { "i", 20387 },	-- Forsaken Stink Bomb Cluster
						["coord"] = { 49.8, 57.9, HILLSBRAD_FOOTHILLS },
					}),
					i(20557),	-- Hallow's End Pumpkin Treat
				},
			}),
			q(8373, {	-- The Power of Pine
				["qg"] = 15199,	-- Sergeant Hartman
				["coord"] = { 50, 57.2, HILLSBRAD_FOOTHILLS },
				["maps"] = { HILLSBRAD_FOOTHILLS },
				["timeline"] = { "removed 4.0.3" },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 25,
				["groups"] = {
					objective(1, {	-- Clean up a stink bomb that's been dropped on Southshore!
						["provider"] = { "i", 20604 },	-- Stink Bomb Cleaner
					}),
					i(20557),	-- Hallow's End Pumpkin Treat
				},
			}),
		}),
		n(ZONEDROPS, {
			i(128807, {	-- Coin of Many Faces (TOY!)
				["maps"] = { DRAENOR_SHADOWMOON_VALLEY },
				["timeline"] = { "added 6.2.2" },
				["crs"] = {
					96637,	-- Boneship Reveler
					96538,	-- Brackish Cultivator
					96535,	-- Captain Bonerender
					96545,	-- Growing Squashling
					96536,	-- Salty Dreg
				},
			}),
			i(33117, {	-- Jack-o'-Lantern
				["timeline"] = { "added 2.2.3" },
			}),
			i(20400),	-- Pumpkin Bag
		}),
	},
})};