---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones = 
{
	m(KALIMDOR, {
		m(TANARIS, {
			m(CAVERNS_OF_TIME, {
				n(QUESTS, applyclassicphase(TBC_PHASE_ONE, {
					q(10445, {	-- The Vials of Eternity
						["providers"] = {
							{ "n", 19935 },	-- Soridormi
							{ "n", 19936 },	-- Arazmodu
						},
						["description"] = "The questgiver can be found walking around the Caverns of Time.",
						["timeline"] = { "removed 3.0.2" },
						["maps"] = {
							TEMPEST_KEEP_THE_EYE,
							SERPENTSHRINE_CAVERN,
						},
						["lvl"] = 70,
						["groups"] = {
							objective(1, {	-- 0/1 Vashj's Vial Remnant
								["provider"] = { "i", 29906 },	-- Vashj's Vial Remnant
							}),
							objective(2, {	-- 0/1 Kael's Vial Remnant
								["provider"] = { "i", 29905 },	-- Kael's Vial Remnant
							}),
						},
					}),
					q(13432, {	-- The Vials of Eternity
						["providers"] = {
							{ "n", 19935 },	-- Soridormi
							{ "n", 19936 },	-- Arazmodu
						},
						["description"] = "The questgiver can be found walking around the Caverns of Time.",
						["altQuests"] = { 10445 },	-- The Vials of Eternity (legacy version)
						["timeline"] = { "added 3.0.2" },
						["maps"] = {
							TEMPEST_KEEP_THE_EYE,
							SERPENTSHRINE_CAVERN,
						},
						["lvl"] = 70,
						["groups"] = {
							objective(1, {	-- 0/1 Vashj's Vial Remnant
								["provider"] = { "i", 29906 },	-- Vashj's Vial Remnant
							}),
							objective(2, {	-- 0/1 Kael's Vial Remnant
								["provider"] = { "i", 29905 },	-- Kael's Vial Remnant
							}),
						},
					}),
				})),
			}),
		}),
	}),
};