---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local OnTooltipForRatchet = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
		if reputation < 0 then
			local repPerKill = isHuman and 5.5 or 5;
			local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(84000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Pirates near Ratchet", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			
			local repPerKill = isHuman and 2.75 or 2.5;
			local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(84000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Pirates in Tanaris", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		else
			if reputation < 20999 then
				local repPerKill = isHuman and 5.5 or 5;
				local x, n = math.ceil((20999 - t.reputation) / repPerKill), math.ceil(20999 / repPerKill);
				GameTooltip:AddDoubleLine("Kill Pirates near Ratchet (To 11999 Honored)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			end
			
			local repPerKill = isHuman and 2.75 or 2.5;
			local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(42000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Pirates in Tanaris", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		end
	end
end]];
_.Zones =
{
	m(KALIMDOR, {
		m(THE_BARRENS, {
			n(FACTIONS, {
				faction(470, { 	-- Ratchet
					["icon"] = icon("INV_Misc_Coin_01"),
					["OnTooltip"] = OnTooltipForRatchet,
					["maps"] = { TANARIS },
				}),
			}),
		}),
	}),
};