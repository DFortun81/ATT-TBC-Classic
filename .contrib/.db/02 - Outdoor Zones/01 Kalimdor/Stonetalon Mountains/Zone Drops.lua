---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(STONETALON_MOUNTAINS, {
			n(ZONE_DROPS, {
				i(5664, {	-- Corroded Shrapnel
					["questID"] = 1084,	-- Wounded Ancients
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4029,	-- Blackened Ancient
						4028,	-- Charred Ancient
						4030,	-- Vengeful Ancient
					},
				}),
				i(5585, {	-- Courser Eye
					["questID"] = 1058,	-- Jin'Zil's Forest Magic
					["races"] = HORDE_ONLY,
					["crs"] = {
						4018,	-- Antlered Courser
						4019,	-- Great Courser
					},
				}),
				i(5675, {	-- Crystalized Scales
					["questID"] = 1078,	-- Retrieval for Mauren
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4044,	-- Blackened Basilisk
						4147,	-- Saltstone Basilisk
						4041,	-- Scorched Basilisk
						4042,	-- Singed Basilisk
					},
				}),
				i(5583, {	-- Fey Dragon Scale
					["questID"] = 1058,	-- Jin'Zil's Forest Magic
					["races"] = HORDE_ONLY,
					["crs"] = {
						4016,	-- Fey Dragon
						4066,	-- Nal'taszar
						4017,	-- Wily Fey Dragon
					},
				}),
				i(11151, {	-- Formula: Enchant Gloves - Herbalism
					["crs"] = {
						4029,	-- Blackened Ancient
						4028,	-- Charred Ancient
						4030,	-- Vengeful Ancient
					},
				}),
				i(6840, {	-- Galvanized Horn
					["cr"] = 6167,	-- Chimaera Matriarch
				}),
				i(16312, {	-- Incendrites
					["questID"] = 6393,	-- Elemental War
					["races"] = HORDE_ONLY,
					["crs"] = {
						4038,	-- Burning Destroyer
						4037,	-- Burning Ravager
						4036,	-- Rogue Flame Spirit
					},
				}),
				i(5808, {	-- Pridewing Venom Sac
					["questID"] = 1134,	-- Pridewings of Stonetalon
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4014,	-- Pridewing Consort
						4015,	-- Pridewing Patriarch
						4013,	-- Pridewing Skyhunter
						4012,	-- Pridewing Wyvern
						5928,	-- Sorrow Wing
						4011,	-- Young Pridewing
					},
				}),
				i(16581, {	-- Resonite Crystal
					["questID"] = 6421,	-- Boulderslide Ravine
					["races"] = HORDE_ONLY,
					["cr"] = 11920,	-- Goggeroc
				}),
				i(5659, {	-- Smoldering Embers
					["questID"] = 1083,	-- Enraged Spirits
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4038,	-- Burning Destroyer
						4037,	-- Burning Ravager
						4036,	-- Rogue Flame Spirit
					},
				}),
				i(5582, {	-- Stonetalon Sap
					["questID"] = 1058,	-- Jin'Zil's Forest Magic
					["races"] = HORDE_ONLY,
					["cr"] = 4020,	-- Sap Beast
				}),
				i(5734, {	-- Super Reaper 6000 Blueprints
					["questID"] = 1093,	-- Super Reaper 6000
					["cr"] = 3988,	-- Venture Co. Operator
				}),
				i(5584, {	-- Twilight Whisker
					["questID"] = 1058,	-- Jin'Zil's Forest Magic
					["races"] = HORDE_ONLY,
					["cr"] = 4067,	-- Twilight Runner
				}),
			}),
		}),
	}),
};