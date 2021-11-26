---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local OnTooltipForCentaurs = [[function(t)
	local reputation = t.reputation;
	local isHuman = _.RaceIndex == 1;
	if reputation > 0 then
		if reputation < ]] .. HONORED .. [[ then
			local repPerKill = isHuman and 22 or 20;
			local x, n = math.ceil((]] .. HONORED .. [[ - reputation) / repPerKill), math.ceil(]] .. HONORED .. [[ / repPerKill);
			GameTooltip:AddDoubleLine("Kill Centaurs to Honored.", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
		end
	end
end]];
_.Zones =
{
	m(KALIMDOR, {
		m(DESOLACE, {
			n(FACTIONS, {
				faction(92, {	-- Gelkis Clan Centaur
					["minReputation"] = { 92, HONORED },	-- Gelkis Clan Centaur, must be Honored.
					["maxReputation"] = { 93, HONORED },	-- Magram Clan Centaur, must be lower than Honored.
					["OnTooltip"] = OnTooltipForCentaurs,
				}),
				faction(93, {	-- Magram Clan Centaur
					["minReputation"] = { 93, HONORED },	-- Magram Clan Centaur, must be Honored.
					["maxReputation"] = { 92, HONORED },	-- Gelkis Clan Centaur, must be lower than Honored.
					["OnTooltip"] = OnTooltipForCentaurs,
				}),
			}),
		}),
	}),
};