---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local OnTooltipForRavenholdt = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
		if reputation < 20999 then
			GameTooltip:AddLine("Reminder: Do NOT turn in Heavy Lockboxes until max Honored!", 1, 0.5, 0.5);
			local repPerKill = isHuman and 5.5 or 5;
			local x, n = math.ceil((20999 - reputation) / repPerKill), math.ceil(20999 / repPerKill);
			GameTooltip:AddDoubleLine("Kill Arathi Syndicate", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		else
			GameTooltip:AddLine("Protip: Bring a stack of Repair Bots with you.", 0.5, 1, 0.5);
			local repPerTurnIn = isHuman and 82.5 or 75;
			local x, n = math.ceil((41999 - reputation) / repPerTurnIn), math.ceil(21000 / repPerTurnIn);
			GameTooltip:AddDoubleLine("Turn in Heavy Junkboxes.", ((n - x) * 5) .. " / " .. (n * 5) .. " (" .. (x * 5) .. ")", 1, 1, 1);
		end
	end
end]];
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(ALTERAC_MOUNTAINS, {
			n(FACTIONS, {
				faction(349, {	-- Ravenholdt
					["icon"] = "Interface\\Icons\\Ability_Rogue_Eviscerate",
					["OnTooltip"] = OnTooltipForRavenholdt,
				}),
			}),
		}),
	}),
};