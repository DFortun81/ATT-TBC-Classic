---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local OnTooltipForConsortium = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
		local repPerTurnIn = isHuman and 550 or 500;
		local x, n = math.ceil((42000 - reputation) / repPerTurnIn), math.ceil(42000 / repPerTurnIn);
		GameTooltip:AddDoubleLine("Turn in Obsidian Warbeads.", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		GameTooltip:AddDoubleLine(" ", (x * 10) .. " Beads to go!", 1, 1, 1);
	end
end]];
local OnTooltipForKurenai = [[function(t)
	local reputation = t.reputation;
	if reputation < 0 then
		GameTooltip:AddLine("Complete Quests in Orebor Harborage, Zangarmarsh.", 1, 1, 1);
	elseif reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
		local repPerKill = isHuman and 11 or 10;
		local x, n = math.ceil((42000 - reputation) / repPerKill), math.ceil(42000 / repPerKill);
		GameTooltip:AddDoubleLine("Kill Bolderfist Ogres.", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		
		local repPerTurnIn = isHuman and 550 or 500;
		local x, n = math.ceil((42000 - reputation) / repPerTurnIn), math.ceil(42000 / repPerTurnIn);
		GameTooltip:AddDoubleLine("Turn in Obsidian Warbeads.", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		GameTooltip:AddDoubleLine(" ", (x * 10) .. " Beads to go!", 1, 1, 1);
	end
end]];
local OnTooltipForMaghar = [[function(t)
	local reputation = t.reputation;
	if reputation < 0 then
		GameTooltip:AddLine("Complete Quests in Mag'har Post, Hellfire Peninsula.", 1, 1, 1);
	elseif reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
		local repPerKill = isHuman and 11 or 10;
		local x, n = math.ceil((42000 - reputation) / repPerKill), math.ceil(42000 / repPerKill);
		GameTooltip:AddDoubleLine("Kill Bolderfist Ogres.", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		
		local repPerTurnIn = isHuman and 550 or 500;
		local x, n = math.ceil((42000 - reputation) / repPerTurnIn), math.ceil(42000 / repPerTurnIn);
		GameTooltip:AddDoubleLine("Turn in Obsidian Warbeads.", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		GameTooltip:AddDoubleLine(" ", (x * 10) .. " Beads to go!", 1, 1, 1);
	end
end]];
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(NAGRAND, {
			n(FACTIONS, {
				faction(978, {	-- Kurenai
					["OnTooltip"] = OnTooltipForKurenai,
					["races"] = ALLIANCE_ONLY,
				}),
				faction(933, {	-- The Consortium
					["maps"] = { NETHERSTORM, AUCHINDOUN_MANA_TOMBS },
					["OnTooltip"] = OnTooltipForConsortium,
				}),
				faction(941, {	-- The Mag'har
					["OnTooltip"] = OnTooltipForMaghar,
					["races"] = HORDE_ONLY,
				}),
			}),
		}),
	})),
};