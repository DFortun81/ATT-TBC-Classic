---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local OnTooltipForSkyguard = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		GameTooltip:AddLine("Protip: Join a rep farming group.", 1, 0.5, 0.5);
		
		local isHuman = _.RaceIndex == 1;
		local repPerKill = isHuman and 5.5 or 5;
		local x, n = math.ceil((42000 - reputation) / repPerKill), math.ceil(42000 / repPerKill);
		GameTooltip:AddDoubleLine("Kill Arokkoa.", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		
		local repPerKill = isHuman and 110 or 100;
		local x, n = math.ceil((42000 - reputation) / repPerKill), math.ceil(42000 / repPerKill);
		GameTooltip:AddDoubleLine("Summon Bosses.", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		
		local repPerTurnIn = isHuman and 165 or 150;
		local x, n = math.ceil((42000 - reputation) / repPerTurnIn), math.ceil(42000 / repPerTurnIn);
		GameTooltip:AddDoubleLine("Turn in Shadow Dust.", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		GameTooltip:AddDoubleLine(" ", (x * 6) .. " Dust to go!", 1, 1, 1);
	end
end]];
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(TEROKKAR_FOREST, {
			n(FACTIONS, {
				applyclassicphase(TBC_PHASE_TWO_SKYGUARD, faction(1031, {	-- Sha'tari Skyguard
					["icon"] = icon("ability_hunter_pet_netherray"),
					["OnTooltip"] = OnTooltipForSkyguard,
				})),
			}),
		}),
	})),
};