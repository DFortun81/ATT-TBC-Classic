---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local OnTooltipForEverlook = [[function(t)
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
local OnTooltipForTimbermawHold = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
		-- #if BEFORE CATA
		if reputation >= ]] .. NEUTRAL .. [[ then
			if not t.deadwood then
				local f = _.SearchForField("questID", 8470);
				if f and #f > 0 then t.deadwood = f[1]; end
			end
			if not t.winterfall then
				local f = _.SearchForField("questID", 8471);
				if f and #f > 0 then t.winterfall = f[1]; end
			end
			if not t.deadwood.collected then GameTooltip:AddLine("Complete 'Deadwood Ritual Totem'.", 1, 1, 1); end
			if not t.winterfall.collected then GameTooltip:AddLine("Complete 'Winterfall Ritual Totem'.", 1, 1, 1); end
		end
		-- #endif
		-- #if AFTER CATA
		local repPerKill = isHuman and 22 or 20;
		local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(84000 / repPerKill);
		GameTooltip:AddDoubleLine("Kill Deadwood or Winterfall Furbolgs", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		-- #elseif AFTER TBC
		if reputation < ]] .. REVERED .. [[ then
			local repPerKill = isHuman and 11 or 10;
			local x, n = math.ceil((]] .. REVERED .. [[ - t.reputation) / repPerKill), math.ceil(]] .. (REVERED + 42000) .. [[ / repPerKill);
			GameTooltip:AddDoubleLine("Kill Deadwood or Winterfall Furbolgs (Stops at Revered)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		end
		-- #else
		if reputation < ]] .. HONORED .. [[ then
			local repPerKill = isHuman and 5.5 or 5;
			local x, n = math.ceil((]] .. HONORED .. [[ - t.reputation) / repPerKill), math.ceil(]] .. (HONORED + 42000) .. [[ / repPerKill);
			GameTooltip:AddDoubleLine("Kill Deadwood or Winterfall Furbolgs (Stops at Honored)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		end
		-- #endif
		-- #if AFTER CATA
		local repPerTurnIn = isHuman and 2200 or 2000;
		-- #elseif AFTER TBC
		local repPerTurnIn = isHuman and 165 or 150;
		-- #else
		local repPerTurnIn = isHuman and 55 or 50;
		-- #endif
		local x, n = math.ceil((42000 - t.reputation) / repPerTurnIn), math.ceil(84000 / repPerTurnIn);
		GameTooltip:AddDoubleLine("Turn in Deadwood Feathers (x5) in Felwood", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		GameTooltip:AddDoubleLine("Turn in Winterfall Beads (x5) in Winterspring", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		-- #if BEFORE CATA
		if reputation < ]] .. HONORED .. [[ then
			GameTooltip:AddLine("PROTIP: Do NOT turn in the totems or feathers until after Honored!", 1, 0.2, 0.2);
		end
		-- #endif
	end
end]];
local OnTooltipForWintersaberTrainers = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
		-- #if AFTER TBC
		local repPerKill = isHuman and 275 or 250;
		-- #else
		local repPerKill = isHuman and 55 or 50;
		-- #endif
		if reputation < 1500 then
			local x, n = math.ceil((1500 - t.reputation) / repPerKill), math.ceil(1500 / repPerKill);
			GameTooltip:AddDoubleLine("Complete Frostsaber Provisions (to 1500)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		else
			local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(42000 / repPerKill);
			GameTooltip:AddDoubleLine("Complete Winterfall Intrusion", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			
			if reputation >= ]] .. HONORED .. [[ then
				-- #if AFTER TBC
				repPerKill = isHuman and 385 or 350;
				-- #else
				repPerKill = isHuman and 55 or 50;
				-- #endif
				local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(42000 / repPerKill);
				GameTooltip:AddDoubleLine("Complete Rampaging Giants", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			end
		end
	end
end]];
_.Zones =
{
	m(KALIMDOR, {
		m(WINTERSPRING, {
			n(FACTIONS, {
				faction(577, { 	-- Everlook
					["icon"] = icon("INV_Misc_Coin_01"),
					["OnTooltip"] = OnTooltipForEverlook,
					["maps"] = {
						TANARIS,
						THE_BARRENS,
					},
				}),
				faction(576, {	-- Timbermaw Hold
					["OnTooltip"] = OnTooltipForTimbermawHold,
					["maps"] = { FELWOOD },
				}),
				faction(589, {	-- Wintersaber Trainers
					["OnTooltip"] = OnTooltipForWintersaberTrainers,
					["races"] = ALLIANCE_ONLY,
				}),
			}),
		}),
	}),
};