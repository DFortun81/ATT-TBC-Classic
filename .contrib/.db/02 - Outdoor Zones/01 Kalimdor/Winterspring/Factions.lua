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