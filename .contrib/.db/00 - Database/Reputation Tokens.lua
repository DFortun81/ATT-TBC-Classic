local itemDB = root("ItemDB", {});
local i = function(itemID, factionID, unlock)
	local o = { ["factionID"] = factionID, ["spellID"] = 0 };
	if not unlock then o.repeatable = true; end
	itemDB[itemID] = o;
	return o;
end

-- Classic
i(19858, 270);	-- Zandalar Honor Token (Zandalari Tribe)