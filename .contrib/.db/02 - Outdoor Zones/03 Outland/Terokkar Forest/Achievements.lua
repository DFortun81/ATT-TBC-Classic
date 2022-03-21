---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(TEROKKAR_FOREST, {
			n(ACHIEVEMENTS, {
				removeclassicphase(ach(867, {	-- Explore Terokkar Forest
					-- #if BEFORE WRATH
					["description"] = "Explore Terokkar Forest, revealing the covered areas of the world map.",
					["OnClick"] = [[_.CommonAchievementHandlers.EXPLORATION_OnClick]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.EXPLORATION_OnUpdate]],
					-- #endif
				})),
				ach(894, applyclassicphase(TBC_PHASE_TWO_SKYGUARD, {	-- Flying High Over Skettis
					-- #if BEFORE 3.0.1
					["OnClick"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.EXALTED_REP_OnTooltip]],
					["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.EXALTED_REP_OnUpdate(t, 1031); end]],
					["description"] = "Raise your reputation with the Sha'tari Skyguard to Exalted.",
					-- #endif
				})),
				removeclassicphase(ach(726, {	-- Mr. Pinchy's Magical Crawdad Box
					["provider"] = { "i", 27445 },	-- Magical Crawdad Box
					["requireSkill"] = FISHING,
					-- #if BEFORE WRATH
					["description"] = "Fish your way to Mr. Pinchy's Magical Crawdad Box.",
					["OnUpdate"] = [[_.CommonAchievementHandlers.ANY_ITEM_PROVIDER]],
					-- #endif
				})),
				ach(905, {	-- Old Man Barlowned
					["requireSkill"] = FISHING,
				}),
				removeclassicphase(ach(1191, {	-- Terror of Terokkar (A)
					["races"] = ALLIANCE_ONLY,
					-- #if ANYCLASSIC
					-- #if AFTER CATA
					["sourceQuests"] = {
						-- The Skettis Offensive
						10879,	-- The Skettis Offensive
						
						-- Refugee Caravan
						10878,	-- Before Darkness Falls
						10031,	-- Helping the Lost Find Their Way
						10852,	-- Missing Friends
						10896,	-- The Infested Protectors
						10881,	-- The Shadow Tomb
						10842,	-- Vengeful Souls
						
						-- Sha'tari Base Camp
						10915,	-- The Fallen Exarch
						10926,	-- Return to Sha'tari Base Camp
						10930,	-- The Big Bone Worm
						-- TODO: verify below:
						10923,	-- Evil Draws Near
						10873,	-- Taken in the Night
						
						-- The Warden's Secret
						9951,	-- It's Watching You!
						10005,	-- Letting Earthbinder Tavgren Know
						
						-- Allerian Stronghold
						10042,	-- Kill the Shadow Council!
						10035,	-- Torgos!
					},
					-- #elseif BEFORE WRATH
					["description"] = "Complete 63 quests in Terokkar Forest.",
					["OnClick"] = [[_.CommonAchievementHandlers.LOREMASTER_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.LOREMASTER_OnTooltip]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.LOREMASTER_OnUpdate]],
					["rank"] = 63,
					-- #endif
					-- #else
					["groups"] = {
						ach(894), -- Flying High Over Skettis
						crit(1, {	-- The Skettis Offensive
							["sourceQuest"] = 10879,	-- The Skettis Offensive
						}),
						crit(2, {	-- Refugee Caravan
							["sourceQuests"] = {
								10878,	-- Before Darkness Falls
								10031,	-- Helping the Lost Find Their Way
								10852,	-- Missing Friends
								10896,	-- The Infested Protectors
								10881,	-- The Shadow Tomb
								10842,	-- Vengeful Souls
							},
						}),
						crit(3, {	-- Sha'tari Base Camp
							["sourceQuests"] = {
								10915,	-- The Fallen Exarch
								10926,	-- Return to Sha'tari Base Camp
								10930,	-- The Big Bone Worm
								-- TODO: verify below:
								10923,	-- Evil Draws Near
								10873,	-- Taken in the Night
							},
						}),
						crit(4, {	-- The Warden's Secret
							["sourceQuests"] = {
								9951,	-- It's Watching You!
								10005,	-- Letting Earthbinder Tavgren Know
							},
						}),
						crit(5, {	-- Allerian Stronghold
							["sourceQuests"] = {
								10042,	-- Kill the Shadow Council!
								10035,	-- Torgos!
							},
						}),
					},
					-- #endif
				})),
				removeclassicphase(ach(1272, {	-- Terror of Terokkar (H)
					["races"] = HORDE_ONLY,
					-- #if ANYCLASSIC
					-- #if AFTER CATA
					["sourceQuests"] = {
						-- The Skettis Offensive
						10879,	-- The Skettis Offensive
						
						-- Refugee Caravan
						10878,	-- Before Darkness Falls
						10031,	-- Helping the Lost Find Their Way
						10852,	-- Missing Friends
						10896,	-- The Infested Protectors
						10881,	-- The Shadow Tomb
						10842,	-- Vengeful Souls
						
						-- Sha'tari Base Camp
						10915,	-- The Fallen Exarch
						10926,	-- Return to Sha'tari Base Camp
						10930,	-- The Big Bone Worm
						-- TODO: verify below:
						10923,	-- Evil Draws Near
						10873,	-- Taken in the Night
						
						-- The Warden's Secret
						9951,	-- It's Watching You!
						10005,	-- Letting Earthbinder Tavgren Know
						
						-- Stonebreaker Hold
						10013,	-- An Unseen Hand
						10043,	-- Kill the Shadow Council
						10791,	-- Welcoming the Wolf Spirit
						-- TODO: Verify below:
						10201,	-- And Now, the Moment of Truth
						10868,	-- Arakkoa War Path
						9987,	-- Stymying the Arakkoa
						10036,	-- Torgos!
					},
					-- #elseif BEFORE WRATH
					["description"] = "Complete 68 quests in Terokkar Forest.",
					["OnClick"] = [[_.CommonAchievementHandlers.LOREMASTER_OnClick]],
					["OnTooltip"] = [[_.CommonAchievementHandlers.LOREMASTER_OnTooltip]],
					["OnUpdate"] = [[_.CommonAchievementHandlers.LOREMASTER_OnUpdate]],
					["rank"] = 68,
					-- #endif
					-- #else
					["groups"] = {
						crit(1, {	-- The Skettis Offensive
							["sourceQuest"] = 10879,	-- The Skettis Offensive
						}),
						crit(2, {	-- Refugee Caravan
							["sourceQuests"] = {
								10878,	-- Before Darkness Falls
								10031,	-- Helping the Lost Find Their Way
								10852,	-- Missing Friends
								10896,	-- The Infested Protectors
								10881,	-- The Shadow Tomb
								10842,	-- Vengeful Souls
							},
						}),
						crit(3, {	-- Sha'tari Base Camp
							["sourceQuests"] = {
								10915,	-- The Fallen Exarch
								10926,	-- Return to Sha'tari Base Camp
								10930,	-- The Big Bone Worm
								-- TODO: verify below:
								10923,	-- Evil Draws Near
								10873,	-- Taken in the Night
							},
						}),
						crit(4, {	-- The Warden's Secret
							["sourceQuests"] = {
								9951,	-- It's Watching You!
								10005,	-- Letting Earthbinder Tavgren Know
							},
						}),
						crit(5, {	-- Stonebreaker Hold
							["sourceQuests"] = {
								10013,	-- An Unseen Hand
								10043,	-- Kill the Shadow Council
								10791,	-- Welcoming the Wolf Spirit
								-- TODO: Verify below:
								10201,	-- And Now, the Moment of Truth
								10868,	-- Arakkoa War Path
								9987,	-- Stymying the Arakkoa
								10036,	-- Torgos!
							},
						}),
					},
					-- #endif
				})),
			}),
		}),
	})),
};