--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays = { applyholiday(NOBLEGARDEN, {
	-- #if ANYCLASSIC
	["npcID"] = -51,
	-- #else
	["holidayID"] = 235477,
	-- #endif
	["groups"] = {
		-- #if BEFORE WRATH
		o(113768, {	-- Brightly Colored Egg
			["description"] = "These eggs can be found spread out in all of the starting zones.",
			["groups"] = {
				i(19028),	-- Elegant Dress
				i(6835),	-- Black Tuxedo Pants
				i(6833),	-- White Tuxedo Shirt
				i(7807),	-- Candy Bar
				i(7808),	-- Chocolate Square
				i(7806),	-- Lollipop
			},
		}),
		-- #endif
	},
})};


root("NeverImplemented", bubbleDown({ ["u"] = NEVER_IMPLEMENTED }, {
	holiday(235477, {	-- Noblegarden
		i(6834),	-- Black Tuxedo
	}),
}));