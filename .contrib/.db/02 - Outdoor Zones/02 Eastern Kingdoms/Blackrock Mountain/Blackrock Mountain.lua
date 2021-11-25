---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(BLACKROCK_MOUNTAIN, {
			["lore"] = "Blackrock Mountain is a zone between the Burning Steppes and the Searing Gorge, linking the two regions. This zone is deceptively small and appears empty when first entered - however, it is without doubt, among the most dangerous places in Azeroth. It was hotly contested between the forces of Ragnaros and his Dark Iron servants on one side and the black dragon Nefarian and his orc minions on the other. This is one of the most important areas in World of Warcraft lore.",
			["groups"] = {
				n(RARES, {
					n(9046, {	-- Scarshield Quartermaster <Scarshield Legion>
						["description"] = "This mob used to simply be rare and have a limited loot table. He was later repurposed for use with the BWL Attunement Quest Chain. The two items listed below were never available in WoW Classic.",
						["groups"] = {
							un(NEVER_IMPLEMENTED, i(13254)),	-- Astral Guard
							un(NEVER_IMPLEMENTED, i(13248)),	-- Burstshot Harquebus
						},
					}),
					n(8924, {	-- The Behemoth
						applyclassicphase(PHASE_THREE, i(19259)),	-- Two of Warlords
						i(11603),	-- Vilerend Slicer
					}),
				}),
				n(ZONE_DROPS, {
					i(18987, {	-- Blackhand's Command
						["cr"] = 9046,	-- Scarshield Quartermaster <Scarshield Legion>
					}),
					i(14486, {	-- Pattern: Cloak of Fire
						["cr"] = 9026,	-- Overmaster Pyron
					}),
				}),
			},
		}),
	}),
};