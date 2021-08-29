---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local OnTooltipForBloodsail = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
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
			GameTooltip:AddDoubleLine(" 5.5 - 8 Minute respawn", math.floor((x * 5.5) / 60.0) .. " - " .. math.ceil((x * 8) / 60.0) .. " Hours to go!", 1, 1, 1);
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
								DBM:CreatePizzaTimer(330, "Respawn (min)");
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
					["maps"] = { BADLANDS },
					["crs"] = { 9179 },	-- Jazzrik
				}),
				faction(21, { 	-- Booty Bay
					["icon"] = icon("INV_Misc_Coin_01"),
				}),
			}),
		}),
	}),
};