---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local OnTooltipForOgrila = [[function(t)
	local reputation = t.reputation;
	if reputation < 42000 then
		local isHuman = _.RaceIndex == 1;
		GameTooltip:AddLine("Daily Quests:");
		if not t.banished then
			local f = _.SearchForField("questID", 11051);
			if f and #f > 0 then t.banished = f[1]; end
		end
		local banishedRep = isHuman and 385 or 350;
		GameTooltip:AddDoubleLine(t.banished.text or RETRIEVING_DATA, _.L[t.banished.saved and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"] .. " " .. banishedRep .. " Rep");
		
		if not t.bombed then
			local f = _.SearchForField("questID", 11023);
			if f and #f > 0 then t.bombed = f[1]; end
		end
		local bombedRep = isHuman and 550 or 500;
		GameTooltip:AddDoubleLine((t.bombed.text or RETRIEVING_DATA), _.L[t.bombed.saved and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"] .. " " .. bombedRep .. " Rep");
		
		if not t.relic then
			local f = _.SearchForField("questID", 11080);
			if f and #f > 0 then t.relic = f[1]; end
		end
		local relicRep = isHuman and 385 or 350;
		GameTooltip:AddDoubleLine((t.relic.text or RETRIEVING_DATA), _.L[t.relic.saved and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"] .. " " .. relicRep .. " Rep");
		
		if not t.wrangled then
			local f = _.SearchForField("questID", 11066);
			if f and #f > 0 then t.wrangled = f[1]; end
		end
		local wrangledRep = isHuman and 385 or 350;
		GameTooltip:AddDoubleLine((t.wrangled.text or RETRIEVING_DATA), _.L[t.wrangled.saved and "COLLECTED_ICON" or "NOT_COLLECTED_ICON"] .. " " .. wrangledRep .. " Rep");

		local repPerDay = banishedRep + bombedRep + relicRep + wrangledRep;
		local x, n = math.ceil((42000 - t.reputation) / repPerDay), math.ceil(42000 / repPerDay);
		GameTooltip:AddDoubleLine("Complete Dailies Everyday", (n - x) .. " / " .. n .. " (" .. x .. ")", 1, 1, 1);
	end
end]];
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(BLADES_EDGE_MOUNTAINS, {
			n(FACTIONS, {
				applyclassicphase(TBC_PHASE_TWO_OGRILA, faction(1038, {	-- Ogri'la
					["OnTooltip"] = OnTooltipForOgrila,
				})),
			}),
		}),
	})),
};