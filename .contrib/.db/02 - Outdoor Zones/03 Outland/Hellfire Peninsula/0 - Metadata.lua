---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(OUTLAND, applyclassicphase(TBC_PHASE_ONE, {
		m(HELLFIRE_PENINSULA, {
			["lore"] = "Hellfire Peninsula is intended to be the first questing zone players hit after passing through The Dark Portal. It is a scorched zone, the site of many former battles and the massacre of the Draenei. Players are introduced early on to the threat of the Burning Legion at The Legion Front, further learning about Magtheridon's creation of the corrupted Fel Orcs and the sacrifices made in past battles on Draenor. Players also begin to learn about Draenic and Orcish culture in quest hubs in the western peninsula.",
			-- #if AFTER WRATH
			["icon"] = "Interface\\Icons\\achievement_zone_hellfirepeninsula_01",
			-- #endif
		}),
	})),
};