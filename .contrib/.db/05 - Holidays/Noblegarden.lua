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
		-- TODO: Easter Holiday
		-- Brightly Colored Egg
		i(6834),	-- Black Tuxedo
		i(6835),	-- Black Tuxedo Pants
		i(19028),	-- Elegant Dress
		i(6833),	-- White Tuxedo Shirt
	},
})};