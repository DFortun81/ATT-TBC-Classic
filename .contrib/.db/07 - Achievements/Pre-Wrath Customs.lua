--------------------------------------------------
--    A C H I E V E M E N T S    M O D U L E    --
--------------------------------------------------
local INSANE_IN_THE_MEMBRANE_OnClick = [[function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local dmf = _.CreateFaction(t.dmf.factionID);
		dmf.OnTooltip = t.dmf.OnTooltip;
		local bloodsail = _.CreateFaction(t.bloodsail.factionID);
		bloodsail.minReputation = { t.bloodsail.factionID, ]] .. HONORED .. [[ };
		bloodsail.OnTooltip = t.bloodsail.OnTooltip;
		local template = {
			bloodsail,
			t.bb,
			t.everlook,
			t.gadgetzan,
			t.ratchet,
			dmf,
			t.ravenholdt,
			t.shendralar,
		};
		local clone = _.CreateMiniListForGroup(_.CreateNPC(t[t.key], template)).data;
		clone.description = t.description;
		return true;
	end
end]];
local INSANE_IN_THE_MEMBRANE_OnUpdate = [[function(t)
	if t.collectible then
		if not t.shendralar then
			local f = _.SearchForField("factionID", 809);
			if f and #f > 0 then
				t.shendralar = f[1];
			else
				return true;
			end
		end
		if not t.bloodsail then
			local f = _.SearchForField("factionID", 87);
			if f and #f > 0 then
				t.bloodsail = f[1];
			else
				return true;
			end
		end
		if not t.ravenholdt then
			local f = _.SearchForField("factionID", 349);
			if f and #f > 0 then
				t.ravenholdt = f[1];
			else
				return true;
			end
		end
		if not t.dmf then
			local f = _.SearchForField("factionID", 909);
			if f and #f > 0 then
				t.dmf = f[1];
			else
				return true;
			end
		end
		if not t.bb then
			local f = _.SearchForField("factionID", 21);
			if f and #f > 0 then
				t.bb = f[1];
			else
				return true;
			end
		end
		if not t.everlook then
			local f = _.SearchForField("factionID", 577);
			if f and #f > 0 then
				t.everlook = f[1];
			else
				return true;
			end
		end
		if not t.gadgetzan then
			local f = _.SearchForField("factionID", 369);
			if f and #f > 0 then
				t.gadgetzan = f[1];
			else
				return true;
			end
		end
		if not t.ratchet then
			local f = _.SearchForField("factionID", 470);
			if f and #f > 0 then
				t.ratchet = f[1];
			else
				return true;
			end
		end
		t.SetAchievementCollected(t.achievementID, t.ratchet.standing == 8 and t.gadgetzan.standing == 8
			and t.everlook.standing == 8 and t.bb.standing == 8 and t.dmf.standing == 8
			and t.ravenholdt.standing == 8 and t.shendralar.standing == 8
			and t.bloodsail.standing >= 6);
	end
end]];
local INSANE_IN_THE_MEMBRANE_OnTooltip = [[function(t)
	if t.collectible then
		GameTooltip:AddLine(" ");
		GameTooltip:AddDoubleLine(" |T" .. t.bloodsail.icon .. ":0|t " .. t.bloodsail.text, _.L[t.bloodsail.standing >= 6 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		GameTooltip:AddDoubleLine(" |T" .. t.bb.icon .. ":0|t " .. t.bb.text, _.L[t.bb.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		GameTooltip:AddDoubleLine(" |T" .. t.everlook.icon .. ":0|t " .. t.everlook.text, _.L[t.everlook.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		GameTooltip:AddDoubleLine(" |T" .. t.gadgetzan.icon .. ":0|t " .. t.gadgetzan.text, _.L[t.gadgetzan.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		GameTooltip:AddDoubleLine(" |T" .. t.ratchet.icon .. ":0|t " .. t.ratchet.text, _.L[t.ratchet.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		GameTooltip:AddDoubleLine(" |T" .. t.dmf.icon .. ":0|t " .. t.dmf.text, _.L[t.dmf.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		GameTooltip:AddDoubleLine(" |T" .. t.ravenholdt.icon .. ":0|t " .. t.ravenholdt.text, _.L[t.ravenholdt.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
		GameTooltip:AddDoubleLine(" |T" .. t.shendralar.icon .. ":0|t " .. t.shendralar.text, _.L[t.shendralar.standing == 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
	end
end]];
local REPUTATIONS_OnClick = [[function(row, button)
	if button == "RightButton" then
		local t = row.ref;
		local template = {};
		for i,o in ipairs(_:GetDataCache().g) do
			if o.headerID == -8 then
				for j,p in ipairs(o.g) do
					if (not p.minReputation or (p.minReputation[1] == p.factionID and p.minReputation[2] >= 41999)) and (not p.maxReputation or (p.maxReputation[1] ~= p.factionID and p.reputation >= 0)) then
						table.insert(template, p);
					end
				end
			end
		end
		
		local clone = _.CreateMiniListForGroup(_.CreateNPC(t[t.key], template)).data;
		clone.OnTooltip = t.OnTooltip;
		clone.OnUpdate = t.OnUpdate;
		clone.rank = t.rank;
		return true;
	end
end]];
local REPUTATIONS_OnUpdate = [[function(t)
	if _.CollectibleAchievements then
		local count = 0;
		local factions = _.SearchForFieldContainer("factionID");
		for achID,g in pairs(factions) do
			if g[1].standing == 8 then
				count = count + 1;
			end
		end
		if t.rank > 1 then
			t.progress = math.min(count, t.rank);
			t.total = t.rank;
			t.collectible = false;
			
			if _.GroupFilter(t) then
				local parent = t.parent;
				parent.total = (parent.total or 0) + t.total;
				parent.progress = (parent.progress or 0) + t.progress;
				t.visible = (t.progress < t.total or _.CollectedItemVisibilityFilter(t));
			else
				t.visible = false;
			end
		else
			t.collected = count >= 1;
			t.collectible = collectible;
			
			if _.GroupFilter(t) then
				local parent = t.parent;
				parent.total = (parent.total or 0) + 1;
				if t.collected then parent.progress = (parent.progress or 0) + 1; end
				t.visible = (not t.collected or _.CollectedItemVisibilityFilter(t));
			else
				t.visible = false;
			end
		end
	else
		t.collected = nil;
		t.collectible = false;
		t.progress = nil;
		t.total = nil;
		t.visible = false;
	end
	return true;
end]];
local REPUTATIONS_OnTooltip = [[function(t)
	GameTooltip:AddLine("Raise " .. t.rank .. " reputations to Exalted.");
	if t.total and t.progress < t.total and t.rank >= 25 then
		GameTooltip:AddLine(" ");
		for i,o in ipairs(_:GetDataCache().g) do
			if o.headerID == -8 then
				for j,p in ipairs(o.g) do
					if p.visible and (not p.minReputation or (p.minReputation[1] == p.factionID and p.minReputation[2] >= 41999)) and (not p.maxReputation or (p.maxReputation[1] ~= p.factionID and p.reputation >= 0)) then
						GameTooltip:AddDoubleLine(" |T" .. p.icon .. ":0|t " .. p.text, _.L[p.standing >= 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
					end
				end
			end
		end
	end
end]];
local RIDING_SKILL_OnUpdate = [[function(t)
	if t.collectible then
		local collected = _.IsSpellKnown(t.spellID, t.rank);
		if collected then
			_.CurrentCharacter.Spells[t.spellID] = 1;
			ATTAccountWideData.Spells[t.spellID] = 1;
		else
			_.CurrentCharacter.Spells[t.spellID] = nil;
		end
		t.SetAchievementCollected(t.achievementID, collected);
	end
end]];
_.Achievements =
{
	achcat(92, {	-- Character
		removeclassicphase(ach(891, {	-- Giddy Up!
			["spellID"] = 33388,	-- Apprentice Riding
			["OnUpdate"] = RIDING_SKILL_OnUpdate,
			["rank"] = 1,
		})),
		removeclassicphase(ach(889, {	-- Fast and Furious
			["spellID"] = 33391,	-- Journeyman Riding
			["OnUpdate"] = RIDING_SKILL_OnUpdate,
			["rank"] = 2,
		})),
		ach(890, applyclassicphase(TBC_PHASE_ONE, {	-- Into the Wild Blue Yonder
			["spellID"] = 34090,	-- Expert Riding
			["OnUpdate"] = RIDING_SKILL_OnUpdate,
			["rank"] = 3,
		})),
		ach(5180, applyclassicphase(TBC_PHASE_ONE, {	-- Breaking the Sound Barrier
			["spellID"] = 34091,	-- Artisan Riding
			["OnUpdate"] = RIDING_SKILL_OnUpdate,
			["rank"] = 4,
		})),
	}),
	achcat(96, {	-- Quests
		
	}),
	achcat(97, {	-- Exploration
		
	}),
	achcat(95, {	-- Player vs. Player
		
	}),
	achcat(168, {	-- Dungeons & Raids
		
	}),
	achcat(169, {	-- Professions
		
	}),
	achcat(201, {	-- Reputation
		removeclassicphase(ach(522, {	-- Somebody Likes Me
			["OnClick"] = REPUTATIONS_OnClick,
			["OnTooltip"] = REPUTATIONS_OnTooltip,
			["OnUpdate"] = REPUTATIONS_OnUpdate,
			["rank"] = 1,
		})),
		removeclassicphase(ach(523, {	-- 5 Exalted Reputations
			["OnClick"] = REPUTATIONS_OnClick,
			["OnTooltip"] = REPUTATIONS_OnTooltip,
			["OnUpdate"] = REPUTATIONS_OnUpdate,
			["rank"] = 5,
		})),
		removeclassicphase(ach(524, {	-- 10 Exalted Reputations
			["OnClick"] = REPUTATIONS_OnClick,
			["OnTooltip"] = REPUTATIONS_OnTooltip,
			["OnUpdate"] = REPUTATIONS_OnUpdate,
			["rank"] = 10,
		})),
		removeclassicphase(ach(521, {	-- 15 Exalted Reputations
			["OnClick"] = REPUTATIONS_OnClick,
			["OnTooltip"] = REPUTATIONS_OnTooltip,
			["OnUpdate"] = REPUTATIONS_OnUpdate,
			["rank"] = 15,
		})),
		removeclassicphase(ach(520, {	-- 20 Exalted Reputations
			["OnClick"] = REPUTATIONS_OnClick,
			["OnTooltip"] = REPUTATIONS_OnTooltip,
			["OnUpdate"] = REPUTATIONS_OnUpdate,
			["rank"] = 20,
		})),
		ach(519, applyclassicphase(TBC_PHASE_ONE, {	-- 25 Exalted Reputations
			["OnClick"] = REPUTATIONS_OnClick,
			["OnTooltip"] = REPUTATIONS_OnTooltip,
			["OnUpdate"] = REPUTATIONS_OnUpdate,
			["rank"] = 25,
		})),
		ach(518, applyclassicphase(TBC_PHASE_ONE, {	-- 30 Exalted Reputations
			["OnClick"] = REPUTATIONS_OnClick,
			["OnTooltip"] = REPUTATIONS_OnTooltip,
			["OnUpdate"] = REPUTATIONS_OnUpdate,
			["rank"] = 30,
		})),
		ach(1014, applyclassicphase(TBC_PHASE_TWO, {	-- 35 Exalted Reputations
			["OnClick"] = REPUTATIONS_OnClick,
			["OnTooltip"] = REPUTATIONS_OnTooltip,
			["OnUpdate"] = REPUTATIONS_OnUpdate,
			["rank"] = 35,
		})),
		ach(1015, applyclassicphase(TBC_PHASE_FIVE, {	-- 40 Exalted Reputations
			["OnClick"] = REPUTATIONS_OnClick,
			["OnTooltip"] = REPUTATIONS_OnTooltip,
			["OnUpdate"] = REPUTATIONS_OnUpdate,
			["rank"] = 40,
		})),
	}),
	achcat(155, {	-- World Events
		
	}),
	achcat(15117, {	-- Pet Battles
		
	}),
	achcat(15246, {	-- Collections
		
	}),
	achcat(15301, {	-- Expansion Features
		
	}),
	achcat(15273, {	-- Feats of Strength
		ach(2336, applyclassicphase(PHASE_THREE, {	-- Insane in the Membrane
			["OnClick"] = INSANE_IN_THE_MEMBRANE_OnClick,
			["OnTooltip"] = INSANE_IN_THE_MEMBRANE_OnTooltip,
			["OnUpdate"] = INSANE_IN_THE_MEMBRANE_OnUpdate,
			["description"] = "Insane in the Membrane is a Feat of Strength that rewards the title <The Insane>. This feat requires you to become honored with the Bloodsail Buccaneers and exalted with the Steamwheedle Cartel (Booty Bay, Everlook, Gadgetzan, Ratchet), Ravenholdt, Darkmoon Faire, and the Shen'dralar. It does not require that all of these reputation levels be reached at the same time, however, this may not be a thing until the achievement itself is introduced. Raising reputation with these factions is typically very difficult, time-consuming, and costly.",
		})),
	}),
};