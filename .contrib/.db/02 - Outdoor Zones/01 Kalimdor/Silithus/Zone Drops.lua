---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(SILITHUS, {
			n(ZONE_DROPS, {
				i(20461, {	-- Brann Bronzebeard's Lost Letter
					["questID"] = 8308,	-- Brann Bronzebeard's Lost Letter
					["crs"] = {
						13301,	-- Hive'Ashi Ambusher
						11722,	-- Hive'Ashi Defender
						13136,	-- Hive'Ashi Drone
						11723,	-- Hive'Ashi Sandstalker
						11698,	-- Hive'Ashi Stinger
						11724,	-- Hive'Ashi Swarmer
						11721,	-- Hive'Ashi Worker
						11730,	-- Hive'Regal Ambusher
						11731,	-- Hive'Regal Burrower
						11734,	-- Hive'Regal Hive Lord
						11733,	-- Hive'Regal Slavemaker
						11732,	-- Hive'Regal Spitfire
						11729,	-- Hive'Zora Hive Sister
						11728,	-- Hive'Zora Reaver
						11726,	-- Hive'Zora Tunneler
						11727,	-- Hive'Zora Wasp
						11725,	-- Hive'Zora Waywatcher
					},
				}),
				applyclassicphase(PHASE_FIVE, i(22226, {	-- Druidical Remains
					["crs"] = {
						11730,	-- Hive'Regal Ambusher
						11731,	-- Hive'Regal Burrower
						11734,	-- Hive'Regal Hive Lord
						11733,	-- Hive'Regal Slavemaker
						11732,	-- Hive'Regal Spitfire
					},
				})),
				i(20404, {	-- Encrypted Twilight Text
					["questID"] = 8323,	-- True Believers
					["crs"] = {
						15308,	-- Twilight Prophet <Twilight's Hammer>
						15541,	-- Twilight Marauder Morna <Twilight's Hammer>
						11880,	-- Twilight Avenger <Twilight's Hammer>
						15201,	-- Twilight Flamereaver
						11881,	-- Twilight Geolord <Twilight's Hammer>
						11804,	-- Twilight Keeper Havunth <Twilight's Hammer>
						14479,	-- Twilight Lord Everun <Twilight's Hammer>
						15542,	-- Twilight Marauder <Twilight's Hammer>
						11883,	-- Twilight Master <Twilight's Hammer>
						15213,	-- Twilight Overlord <Twilight's Hammer>
						11882,	-- Twilight Stonecaller <Twilight's Hammer>
					},
				}),
				i(20457, {	-- Hive'Ashi Silithid Brain
					["questID"] = 8310,	-- Breaking the Code
					["crs"] = {
						13301,	-- Hive'Ashi Ambusher
						11722,	-- Hive'Ashi Defender
						13136,	-- Hive'Ashi Drone
						11723,	-- Hive'Ashi Sandstalker
						11698,	-- Hive'Ashi Stinger
						11724,	-- Hive'Ashi Swarmer
						11721,	-- Hive'Ashi Worker
					},
				}),
				i(20459, {	-- Hive'Regal Silithid Brain
					["questID"] = 8310,	-- Breaking the Code
					["crs"] = {
						11730,	-- Hive'Regal Ambusher
						11731,	-- Hive'Regal Burrower
						11734,	-- Hive'Regal Hive Lord
						11733,	-- Hive'Regal Slavemaker
						11732,	-- Hive'Regal Spitfire
					},
				}),
				i(20458, {	-- Hive'Zora Silithid Brain
					["questID"] = 8310,	-- Breaking the Code
					["crs"] = {
						11729,	-- Hive'Zora Hive Sister
						11728,	-- Hive'Zora Reaver
						11726,	-- Hive'Zora Tunneler
						11727,	-- Hive'Zora Wasp
						11725,	-- Hive'Zora Waywatcher
					},
				}),
				i(20377, {	-- Rock Stalker Fang
					["questID"] = 8278,	-- Noggle's Last Hope
					["cr"] = 11739,	-- Rock Stalker
				}),
				i(20376, {	-- Sand Skitterer Fang
					["questID"] = 8277,	-- Deadly Desert Venom
					["cr"] = 11738,	-- Sand Skitterer
				}),
				i(22381, {	-- Silithus Venom Sample
					["crs"] = {
						11739,	-- Rock Stalker
						11738,	-- Sand Skitterer
						11737,	-- Stonelash Flayer
						11736,	-- Stonelash Pincer
						11735,	-- Stonelash Scorpid
					},
				}),
				i(20375, {	-- Stonelash Flayer Stinger
					["questID"] = 8278,	-- Noggle's Last Hope
					["cr"] = 11737,	-- Stonelash Flayer
				}),
				i(20374, {	-- Stonelash Pincer Stinger
					["questID"] = 8278,	-- Noggle's Last Hope
					["cr"] = 11736,	-- Stonelash Pincer
				}),
				i(20373, {	-- Stonelash Scorpid Stinger
					["questID"] = 8277,	-- Deadly Desert Venom
					["cr"] = 11735,	-- Stonelash Scorpid
				}),
				
				-- Twilight Cultist Drops
				i(20408),	-- Twilight Cultist Cowl
				i(20406),	-- Twilight Cultist Mantle
				i(20407),	-- Twilight Cultist Robe
			}),
		}),
	}),
};