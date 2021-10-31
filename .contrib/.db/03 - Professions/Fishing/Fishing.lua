profession(FISHING, {
	n(QUESTS, {
		q(1580, {	-- Electropellers
			["qg"] = 3666,	-- Wizbang Cranktoggle
			["sourceQuest"] = 1579,	-- Gaffer Jacks
			["requireSkill"] = FISHING,
			["coord"] = { 37.0, 44.0, DARKSHORE },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 6718, 12 },	-- Electropeller
			},
			["lvl"] = 10,
			["groups"] = {
				{
					["itemID"] = 6718,	-- Electropeller
					["questID"] = 1580,	-- Electropellers
					["coords"] = {
						{ 52.0, 28.9, DARKSHORE },
						{ 41.5, 73.4, DARKSHORE },
					},
				},
				i(6811),	-- Aquadynamic Fish Lens
			},
		}),
		q(1579, {	-- Gaffer Jacks
			["qg"] = 3666,	-- Wizbang Cranktoggle
			["requireSkill"] = FISHING,
			["description"] = 'Requires fishing skill level 30',
			["coord"] = { 37.0, 44.0, DARKSHORE },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 6717, 8 },	-- Gaffer Jack
			},
			["lvl"] = 10,
		}),
		q(6609, {	-- I Got Nothin' Left!
			["qg"] = 5161,	-- Grimnur Stonebrand <Fishing Trainer>
			["requireSkill"] = FISHING,
			["description"] = "Requires 225 Fishing to start this quest.",
			["coord"] = { 48.4, 6.4, IRONFORGE },
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
			["lvl"] = 35,
		}),
		q(6607, {	-- Nat Pagle, Angler Extreme
			["qg"] = 12919,	-- Nat Pagle
			["sourceQuests"] = {
				6609,	-- I Got Nothin' Left!
				6608,	-- You Too Good.
			},
			["requireSkill"] = FISHING,
			["description"] = "Requires 225 Fishing to start this quest.",
			["coord"] = { 58.6, 60.0, DUSTWALLOW_MARSH },
			["lvl"] = 35,
			["cost"] = {
				{ "i", 16967, 1 },	-- Feralas Ahi
				{ "i", 16970, 1 },	-- Misty Reed Mahi Mahi
				{ "i", 16968, 1 },	-- Sar'theris Striker
				{ "i", 16969, 1 },	-- Savage Coast Blue Sailfin
			},
			["groups"] = {
				recipe(18248, { ["rank"] = 4 }),	-- Fishing (Artisan)
			},
		}),
		q(1141, {	-- The Family and the Fishing Pole
			["qg"] = 10216,	-- Gubber Blump
			["description"] = "Talk to Gubber Blump after accepting the quest to learn Fishing. Buy a Fishing Pole for 23c and a Shiny Bauble for 50c from Gubber Blump. Start fishing next to Gubber Blump to catch the fish required for the quest.",
			["coord"] = { 36.1, 44.9, DARKSHORE },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 12238, 6 },	-- Darkshore Grouper
			},
			["lvl"] = 10,
			["g"] = {
				i(12225),	-- Blump Family Fishing Pole
			},
		}),
		q(6608, {	-- You Too Good.
			["qg"] = 3332,	-- Lumak <Fishing Trainer>
			["requireSkill"] = FISHING,
			["description"] = "Requires 225 Fishing to start this quest.",
			["coord"] = { 69.8, 29.6, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
			["lvl"] = 35,
		}),
	}),
});

-- Fishing Recipes
_.ItemDB = {};
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
	_.ItemDB[itemID] = o;
	return o;
end

itemrecipe(16083, 7732, "removed 3.1.0.9767").rank = 3;	-- Expert Fishing - The Bass and You

-- #if AFTER TBC
itemrecipe(27532, 33095, "removed 3.1.0.9767", TBC_PHASE_ONE).rank = 5;	-- Master Fishing - The Art of Angling
itemrecipe(34109, 43308, "added 2.3.0.7382", TBC_PHASE_ONE);	-- Weather-Beaten Journal
-- #endif

-- These items never made it in.
_.NeverImplemented = bubbleDown({ ["u"] = NEVER_IMPLEMENTED }, {
	filter(200, {	-- Recipes
		i(16082),	-- Artisan Fishing - The Way of the Lure
		-- #if AFTER CATA
		i(46054),	-- Journeyman Fishing - Fishing for Dummies
		i(46055),	-- Grand Master Fishing - Deep Sea Adventures
		-- #endif
	}),
});