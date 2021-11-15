---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(STRANGLETHORN_VALE, {
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
		}),
	}),
};