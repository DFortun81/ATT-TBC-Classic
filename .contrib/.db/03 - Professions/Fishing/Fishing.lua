profession(FISHING);

-- Fishing Recipes
local itemDB = root("ItemDB", {});
local itemrecipe = function(itemID, spellID, timeline, classicphase)
	local o = { ["itemID"] = itemID };
	if spellID and spellID > 0 then
		o.spellID = spellID;
	end
	if timeline then
		-- Ensure that the timeline is in a table format.
		if type(timeline) == "string" then timeline = { timeline }; end
		o.timeline = timeline;
	end
	if classicphase then applyclassicphase(classicphase, o); end
	itemDB[itemID] = o;
	return o;
end

itemrecipe(16083, 7732, "removed 3.1.0.9767").rank = 3;	-- Expert Fishing - The Bass and You

-- #if AFTER TBC
itemrecipe(27532, 33095, "removed 3.1.0.9767", TBC_PHASE_ONE).rank = 5;	-- Master Fishing - The Art of Angling
itemrecipe(34109, 43308, "added 2.3.0.7382", TBC_PHASE_ONE);	-- Weather-Beaten Journal
-- #endif

-- These items never made it in.
root("NeverImplemented", bubbleDown({ ["u"] = NEVER_IMPLEMENTED }, {
	filter(RECIPES, {
		i(16082),	-- Artisan Fishing - The Way of the Lure
		-- #if AFTER CATA
		i(46054),	-- Journeyman Fishing - Fishing for Dummies
		i(46055),	-- Grand Master Fishing - Deep Sea Adventures
		-- #endif
	}),
}));