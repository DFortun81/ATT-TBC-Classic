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
	local collectible = _.CollectibleAchievements;
	if collectible then
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
		t.collected = t.ratchet.standing == 8 and t.gadgetzan.standing == 8
			and t.everlook.standing == 8 and t.bb.standing == 8 and t.dmf.standing == 8
			and t.ravenholdt.standing == 8 and t.shendralar.standing == 8
			and t.bloodsail.standing >= 6;
	end
	t.collectible = collectible;
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
		local template = nil;
		for i,o in ipairs(_:GetDataCache().g) do
			if o.headerID == -8 then
				template = o.g;
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
	local collectible = _.CollectibleAchievements;
	if collectible then
		local count = 0;
		local factions = _.SearchForFieldContainer("factionID");
		for achID,g in pairs(factions) do
			if g[1].collected then
				count = count + 1;
			end
		end
		if t.rank > 1 then
			t.progress = math.min(count, t.rank);
			t.total = t.rank;
			
			local parent = t.parent;
			parent.total = (parent.total or 0) + t.total;
			parent.progress = (parent.progress or 0) + t.progress;
			t.visible = (t.progress < t.total or _.CollectedItemVisibilityFilter(t)) and _.FilterItemClass_UnobtainableItem(t);
		else
			t.collected = count >= 1;
			t.collectible = collectible;
			t.visible = (not t.collected or _.CollectedItemVisibilityFilter(t)) and _.FilterItemClass_UnobtainableItem(t);
		end
	else
		t.collected = nil;
		t.collectible = nil;
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
					if p.visible then
						GameTooltip:AddDoubleLine(" |T" .. p.icon .. ":0|t " .. p.text, _.L[p.standing >= 8 and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"], 1, 1, 1);
					end
				end
			end
		end
	end
end]];
local RIDING_SKILL_OnUpdate = [[function(t)
	local collectible = _.CollectibleAchievements;
	t.collectible = collectible;
	if collectible then
		if _.IsSpellKnown(t.spellID, t.rank) then
			_.CurrentCharacter.Spells[t.spellID] = 1;
			ATTAccountWideData.Spells[t.spellID] = 1;
			t.collected = 1;
			return;
		else
			t.collected = nil;
			_.CurrentCharacter.Spells[t.spellID] = nil;
			if _.AccountWideRecipes and ATTAccountWideData.Spells[t.spellID] then
				t.collected = 2;
				return;
			end
		end
	end
end]];
_.Achievements =
{
	n(-200001, {	-- Insane in the Membrane
		["OnClick"] = INSANE_IN_THE_MEMBRANE_OnClick,
		["OnTooltip"] = INSANE_IN_THE_MEMBRANE_OnTooltip,
		["OnUpdate"] = INSANE_IN_THE_MEMBRANE_OnUpdate,
		["description"] = "Insane in the Membrane is a Feat of Strength that rewards the title <The Insane>. This feat requires you to become honored with the Bloodsail Buccaneers and exalted with the Steamwheedle Cartel (Booty Bay, Everlook, Gadgetzan, Ratchet), Ravenholdt, Darkmoon Faire, and the Shen'dralar. It does not require that all of these reputation levels be reached at the same time, however, this may not be a thing until the achievement itself is introduced. Raising reputation with these factions is typically very difficult, time-consuming, and costly.",
	}),
	n(-200002, {	-- Giddy Up!
		["spellID"] = 33388,	-- Apprentice Riding
		["OnUpdate"] = RIDING_SKILL_OnUpdate,
		["rank"] = 1,
	}),
	n(-200003, {	-- Fast and Furious
		["spellID"] = 33391,	-- Journeyman Riding
		["OnUpdate"] = RIDING_SKILL_OnUpdate,
		["rank"] = 2,
	}),
	n(-200004, {	-- Into the Wild Blue Yonder
		["spellID"] = 34090,	-- Expert Riding
		["OnUpdate"] = RIDING_SKILL_OnUpdate,
		["rank"] = 3,
	}),
	n(-200005, {	-- Breaking the Sound Barrier
		["spellID"] = 34091,	-- Artisan Riding
		["OnUpdate"] = RIDING_SKILL_OnUpdate,
		["rank"] = 4,
	}),
	n(-200006, {	-- Somebody Likes Me
		["OnClick"] = REPUTATIONS_OnClick,
		["OnTooltip"] = REPUTATIONS_OnTooltip,
		["OnUpdate"] = REPUTATIONS_OnUpdate,
		["rank"] = 1,
	}),
	n(-200007, {	-- 5 Exalted Reputations
		["OnClick"] = REPUTATIONS_OnClick,
		["OnTooltip"] = REPUTATIONS_OnTooltip,
		["OnUpdate"] = REPUTATIONS_OnUpdate,
		["rank"] = 5,
	}),
	n(-200008, {	-- 10 Exalted Reputations
		["OnClick"] = REPUTATIONS_OnClick,
		["OnTooltip"] = REPUTATIONS_OnTooltip,
		["OnUpdate"] = REPUTATIONS_OnUpdate,
		["rank"] = 10,
	}),
	n(-200009, {	-- 15 Exalted Reputations
		["OnClick"] = REPUTATIONS_OnClick,
		["OnTooltip"] = REPUTATIONS_OnTooltip,
		["OnUpdate"] = REPUTATIONS_OnUpdate,
		["rank"] = 15,
	}),
	n(-200010, {	-- 20 Exalted Reputations
		["OnClick"] = REPUTATIONS_OnClick,
		["OnTooltip"] = REPUTATIONS_OnTooltip,
		["OnUpdate"] = REPUTATIONS_OnUpdate,
		["rank"] = 20,
	}),
	n(-200011, {	-- 25 Exalted Reputations
		["OnClick"] = REPUTATIONS_OnClick,
		["OnTooltip"] = REPUTATIONS_OnTooltip,
		["OnUpdate"] = REPUTATIONS_OnUpdate,
		["rank"] = 25,
	}),
	n(-200012, {	-- 30 Exalted Reputations
		["OnClick"] = REPUTATIONS_OnClick,
		["OnTooltip"] = REPUTATIONS_OnTooltip,
		["OnUpdate"] = REPUTATIONS_OnUpdate,
		["rank"] = 30,
	}),
	applyclassicphase(TBC_PHASE_TWO, n(-200013, {	-- 35 Exalted Reputations
		["OnClick"] = REPUTATIONS_OnClick,
		["OnTooltip"] = REPUTATIONS_OnTooltip,
		["OnUpdate"] = REPUTATIONS_OnUpdate,
		["rank"] = 35,
	})),
	applyclassicphase(TBC_PHASE_THREE, n(-200014, {	-- 40 Exalted Reputations
		["OnClick"] = REPUTATIONS_OnClick,
		["OnTooltip"] = REPUTATIONS_OnTooltip,
		["OnUpdate"] = REPUTATIONS_OnUpdate,
		["rank"] = 40,
	})),
};