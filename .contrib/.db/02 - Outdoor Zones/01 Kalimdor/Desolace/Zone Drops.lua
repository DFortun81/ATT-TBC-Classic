---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DESOLACE, {
			n(ZONE_DROPS, {
				i(6249, {	-- Aged Kodo Hide
					["races"] = ALLIANCE_ONLY,
					["cr"] = 4700,	-- Aged Kodo
				}),
				i(2620, {	-- Augural Shroud
					["cr"] = 4684,	-- Nether Sorceress
				}),
				i(6079, {	-- Crude Charm
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						12977,	-- Kolkar Ambusher
						4636,	-- Kolkar Battle Lord
						4632,	-- Kolkar Centaur
						4637,	-- Kolkar Destroyer
						4634,	-- Kolkar Mauler
						4633,	-- Kolkar Scout
						12976,	-- Kolkar Waylayer
						4635,	-- Kolkar Windchaser
					},
				}),
				i(6252, {	-- Doomwarder Blood
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4680,	-- Doomwarder Captain
						14226,	-- Kaskk
						5760,	-- Lord Azrethoc
					},
				}),
				i(6250, {	-- Felhound Brain
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4685,	-- Ley Hunter
						4681,	-- Mage Hunter
						4678,	-- Mana Eater
					},
				}),
				i(20310, {	-- Flayed Demon Skin
					["races"] = HORDE_ONLY,
					["crs"] = {
						4665,	-- Burning Blade Adept
						4663,	-- Burning Blade Augur
						4666,	-- Burning Blade Felsworn
						4705,	-- Burning Blade Invoker
						4664,	-- Burning Blade Reaver
						13019,	-- Burning Blade Seer
						4667,	-- Burning Blade Shadowmage
						4668,	-- Burning Blade Summoner
					},
				}),
				i(6246, {	-- Hatefury Claw
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4673,	-- Hatefury Betrayer
						4672,	-- Hatefury Felsworn
						4675,	-- Hatefury Hellcaller
						4670,	-- Hatefury Rogue
						4674,	-- Hatefury Shadowstalker
						4671,	-- Hatefury Trickster
						14225,	-- Prince Kellen
					},
				}),
				i(6247, {	-- Hatefury Horn
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4673,	-- Hatefury Betrayer
						4672,	-- Hatefury Felsworn
						4675,	-- Hatefury Hellcaller
						4670,	-- Hatefury Rogue
						4674,	-- Hatefury Shadowstalker
						4671,	-- Hatefury Trickster
						14225,	-- Prince Kellen
					},
				}),
				i(7291, {	-- Infernal Orb
					["cr"] = 4668,	-- Burning Blade Summoner
					["coord"] = { 55.0, 77.8, DESOLACE },
				}),
				i(6245, {	-- Karnitol's Satchel
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4719,	-- Slitherblade Sea Witch
						4716,	-- Slitherblade Tidehunter
					},
				}),
				i(6990, {	-- Lesser Infernal Stone
					["classes"] = { WARLOCK },
					["cr"] = 4676,	-- Lesser Infernal
				}),
				i(6251, {	-- Nether Wing
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4679,	-- Nether Maiden
						4682,	-- Nether Sister
						4684,	-- Nether Sorceress
					},
				}),
				i(15881, {	-- Rackmore's Golden Key
					["crs"] = {
						14229,	-- Accursed Slitherblade
						4714,	-- Slitherblade Myrmidon
						4711,	-- Slitherblade Naga
						4718,	-- Slitherblade Oracle
						4715,	-- Slitherblade Razortail
						4719,	-- Slitherblade Sea Witch
						4712,	-- Slitherblade Sorceress
						4716,	-- Slitherblade Tidehunter
						4713,	-- Slitherblade Warrior
					},
				}),
				i(15878, {	-- Rackmore's Silver Key
					["crs"] = {
						11562,	-- Drysnap Crawler
						11563,	-- Drysnap Pincer
					},
				}),
				i(6248, {	-- Scorpashi Venom
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4697,	-- Scorpashi Lasher
						4696,	-- Scorpashi Snapper
						4699,	-- Scorpashi Venomlash
					},
				}),
				o(176582, {	-- Shellfish Trap
					["coords"] = {
						{ 20.3, 71.3, DESOLACE },
						{ 23.4, 77.1, DESOLACE },
						{ 18.1, 86.5, DESOLACE },
					},
					["groups"] = {
						i(6367),	-- Big Iron Fishing Pole
						i(13545),	-- Shellfish
					},
				}),
				i(15874, {	-- Soft-shelled Clam
					["cr"] = 12347,	-- Enraged Reef Crawler
					["races"] = HORDE_ONLY,
					["groups"] = {
						{
							["itemID"] = 15924,	-- Soft-shelled Clam Meat
							["questID"] = 6142,	-- Clam Bait
						},
					},
				}),
				i(6989, {	-- Vial of Hatefury Blood
					["classes"] = { WARLOCK },
					["crs"] = {
						4673,	-- Hatefury Betrayer
						4672,	-- Hatefury Felsworn
						4675,	-- Hatefury Hellcaller
						4670,	-- Hatefury Rogue
						4674,	-- Hatefury Shadowstalker
						4671,	-- Hatefury Trickster
						14225,	-- Prince Kellen
					},
				}),
				i(6074, {	-- War Horn Mouthpiece
					["crs"] = {
						6070,	-- Maraudine Khan Advisor
						6069,	-- Maraudine Khan Guard
						4659,	-- Maraudine Marauder
						4656,	-- Maraudine Mauler
						4654,	-- Maraudine Scout
						4658,	-- Maraudine Stormer
						4657,	-- Maraudine Windchaser
						4655,	-- Maraudine Wrangler
					},
				}),
			}),
		}),
	}),
};