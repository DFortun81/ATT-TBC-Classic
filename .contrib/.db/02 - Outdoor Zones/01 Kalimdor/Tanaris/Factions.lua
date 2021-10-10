---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local OnTooltipForGadgetzhan = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
		if reputation < 0 then
			local repPerKill = isHuman and 2.25 or 2;
			local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(84000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Pirates near Ratchet", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			
			local repPerKill = isHuman and 5.5 or 5;
			local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(84000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Southsea Pirates in Tanaris", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		else
			local repPerKill = isHuman and 2.25 or 2;
			local x, n = math.ceil((42000 - t.reputation) / repPerKill), math.ceil(42000 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Pirates near Ratchet", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			
			if reputation < 20999 then
				local repPerKill = isHuman and 5.5 or 5;
				local x, n = math.ceil((20999 - t.reputation) / repPerKill), math.ceil(20999 / repPerKill);
				GameTooltip:AddDoubleLine("Kill Southsea Pirates in Tanaris (To 11999 Honored)", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
			end
		end
	end
end]];
_.Zones =
{
	m(KALIMDOR, {
		m(TANARIS, {
			n(FACTIONS, {
				faction(369, { 	-- Gadgetzan
					["icon"] = icon("INV_Misc_Coin_01"),
					["OnTooltip"] = OnTooltipForGadgetzhan,
				}),
			}),
		}),
	}),
};