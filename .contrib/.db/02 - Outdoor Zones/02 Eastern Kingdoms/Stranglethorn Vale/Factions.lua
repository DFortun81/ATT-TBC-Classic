---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local OnUpdateForBloodsail = [[function(t)
	if t.collectible then
		local isHuman = _.RaceIndex == 1;
		local repForDressing = isHuman and 11 or 10;
		if not t.dressing then
			local f = _.SearchForField("questID", 9272);
			if f and #f > 0 then t.dressing = f[1]; end
		end
		if t.dressing.collected then repForDressing = 0; end
-- #if AFTER TBC
		local repForAdmiral = isHuman and 550 or 500;
-- #else
		local repForAdmiral = isHuman and 220 or 200;
-- #endif
		if not t.admiral then
			local f = _.SearchForField("questID", 4621);
			if f and #f > 0 then t.admiral = f[1]; end
		end
		if t.admiral.collected then repForAdmiral = 0; end
		t.minReputation[2] = math.max(t.reputation, 41999) + repForDressing + repForAdmiral;
	end
end]];
local OnTooltipForBloodsail = [[function(t)
	local reputation = t.reputation;
	if reputation < 41999 then
		local isHuman = _.RaceIndex == 1;
		GameTooltip:AddLine("Reminder: Do all of the Goblin quests prior to starting this grind.", 1, 0.5, 0.5);
		GameTooltip:AddLine("Do NOT turn in the Bloodsail quests if you intend to get to Exalted!", 1, 0.5, 0.5);
		if reputation < 20999 then
			local repPerKill = isHuman and 27.5 or 25;
			local x, n = math.ceil((20999 - reputation) / repPerKill), math.ceil(63000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Booty Bay Bruisers.", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		else
			local repPerKill = isHuman and 5.5 or 5;
			local x, n = math.ceil((41999 - reputation) / repPerKill), math.ceil(21000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Jazzrik.", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			GameTooltip:AddDoubleLine(" 5.33 - 8 Minute respawn", math.floor((x * 5.33) / 60.0) .. " - " .. math.ceil((x * 8) / 60.0) .. " Hours to go!", 1, 1, 1);
			if not t.eventful then
				t.eventful = true;
				if DBM then
					local f = CreateFrame("FRAME", nil, UIParent);
					f:SetScript("OnEvent", function(self, e, ...)
						(rawget(self, e) or print)(CombatLogGetCurrentEventInfo());
					end);
					f.COMBAT_LOG_EVENT_UNFILTERED = function(ts, subevent, ...)
						if subevent == "UNIT_DIED" then
							local guid = select(6, ...);
							if select(6, strsplit("-",guid)) == "9179" then
								DBM:CreatePizzaTimer(320, "Respawn (min)");
								DBM:CreatePizzaTimer(482, "Respawn (max)");
							end
						end
					end
					f:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
					f:SetPoint("BOTTOMLEFT", UIParent, "TOPLEFT", 0, 0);
					f:SetSize(1, 1);
					f:Hide();
				end
			end
		end
	else
		if not t.dressing.collected then GameTooltip:AddLine("Complete 'Dressing the Part'.", 1, 1, 1); end
		if not t.admiral.collected then GameTooltip:AddLine("Complete 'Avast Ye Admiral'.", 1, 1, 1); end
	end
end]];
local OnTooltipForBootyBay = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
		if reputation < 0 then
			local repPerKill = isHuman and 2.75 or 2.5;
			local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(84000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Pirates near Ratchet*", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			GameTooltip:AddDoubleLine("Kill Pirates in Tanaris", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		else
			local repPerKill = isHuman and 2.75 or 2.5;
			local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(42000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Pirates near Ratchet*", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			GameTooltip:AddDoubleLine("Kill Pirates in Tanaris", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		end
		GameTooltip:AddLine(" * PROTIP: Ratchet is faster.", 1, 1, 1);
	end
end]];
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(STRANGLETHORN_VALE, {
			n(FACTIONS, {
				faction(87, { 	-- Bloodsail Buccaneers
					["icon"] = icon("INV_Misc_Bandana_03"),
					["minReputation"] = { 87, EXALTED - 1 },	-- Bloodsail Buccaneers, must be 20999 into Revered.
					["OnTooltip"] = OnTooltipForBloodsail,
					["OnUpdate"] = OnUpdateForBloodsail,
					["maps"] = { BADLANDS },
					["crs"] = { 9179 },	-- Jazzrik
				}),
				faction(21, { 	-- Booty Bay
					["icon"] = icon("INV_Misc_Coin_01"),
					["OnTooltip"] = OnTooltipForBootyBay,
					["maps"] = {
						TANARIS,
						THE_BARRENS,
					},
				}),
			}),
		}),
	}),
};