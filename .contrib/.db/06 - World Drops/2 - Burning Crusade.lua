-----------------------------------------------------
--       W O R L D   D R O P S   M O D U L E       --
-----------------------------------------------------
_.WorldDrops = { applyclassicphase(TBC_PHASE_ONE, tier(2, {	-- Burning Crusade
	category(251, {	-- Helms
		i(31145),	-- Headdress of the Sleeper
		i(31222),	-- Headdress of Inner Rage
		i(31272),	-- Crown of Endless Knowledge
		i(31281),	-- Mask of Veiled Death
		i(31330),	-- Lightning Crown
		i(31333),	-- The Night Watchman
	}),
	filter(51,   {	-- Neck
		i(25064),	-- Amethyst Pendant
		i(31196),	-- Amulet of Sanctification
		i(31178),	-- Amulet of Unstable Power
		i(25058),	-- Anglesite Choker
		i(31338),	-- Charlotte's Ivy
		i(31321),	-- Choker of Repentance
		i(25070),	-- Coral Beads
		i(25067),	-- Diopside Beads
		i(25069),	-- Epidote Stone Necklace
		i(25059),	-- Fire Opal Collar
		i(25061),	-- Hiddenite Necklace
		i(25068),	-- Kunzite Necklace
		i(25063),	-- Multi-Colored Beads
		i(31275),	-- Necklace of Trophies
		i(31147),	-- Pendant of Cunning
		i(25066),	-- Pink Sapphire Necklace
		i(25060),	-- Sunstone Necklace
		i(25071),	-- Tanzanite Pendant
		i(25065),	-- Turquoise Brooch
		i(25062),	-- Zircon Amulet
	}),
	category(252, {	-- Shoulders
		i(24820),	-- Felstone Spaulders
		i(31148),	-- Demon Hide Spaulders
		i(31190),	-- The Dreamer's Shoulderpads
		i(31294),	-- Pauldrons of Surging Mana
	}),
	category(254, {	-- Bracers
		i(24901),	-- Tortured Bracer
		i(31175),	-- Blade Dancer's Wristguards
		i(31284),	-- Bracers of Recklessness
	}),
	category(255, {	-- Gauntlets
		i(31137),	-- Gauntlets of Purification
		i(31126),	-- Gloves of Ferocity
		i(31149),	-- Gloves of Pandemonium
		i(31150),	-- Gloves of Piety
		i(31180),	-- Gauntlets of the Skullsplitter
		i(31280),	-- Thundercaller's Gauntlets
	}),
	category(253, {	-- Chest
		i(24808),	-- Unyielding Chain Vest
		i(31127),	-- Hauberk of Totemic Rage
		i(31136),	-- Breastplate of Blade Turning
		i(31152),	-- Chestguard of Illumination
		i(31282),	-- Shroud of Spiritual Purity
		i(31285),	-- Chestguard of the Talon
		i(31286),	-- Breastplate of Rapid Striking
		i(31295),	-- Chestguard of the Dark Stalker
		i(31297),	-- Robe of the Crimson Order
		i(31320),	-- Chestguard of Exile
		i(31340),	-- Will of Edward the Odd
	}),
	category(256, {	-- Belts
		i(31131),	-- Sash of Silent Blades
		i(31138),	-- Storm Lord's Girdle
		i(31151),	-- Girdle of Siege
		i(31202),	-- Girdle of Divine Blessing
		i(31283),	-- Sash of Sealed Fate
		i(31293),	-- Girdle of Gale Force
		i(24886),	-- Skettis Belt
	}),
	category(257, {	-- Legs
		i(31133),	-- Leggings of Concentrated Darkness
		i(31226),	-- Leggings of the Sly
		i(31237),	-- Elekk Hide Leggings
		i(31240),	-- Scales of the Beast
		i(31298),	-- Legguards of the Shattered Hand
		i(31306),	-- Leggings of the Sacred Crest
		i(31328),	-- Leggings of Beast Mastery
		i(31335),	-- Kilt of Living Growth
		i(31343),	-- Kamaei's Cerulean Skirt
	}),
	category(258, {	-- Boots
		i(31125),	-- Boots of the Decimator
		i(31173),	-- Boots of Savagery
		i(31187),	-- Boots of the Pathfinder
		i(31230),	-- Abyss Walker's Boots
		i(31276),	-- Boots of Zealotry
		i(31288),	-- The Master's Treads
	}),
	category(259, {	-- Cloaks
		i(25030),	-- Silky Velvet Cloak
		i(25031),	-- Silvermoon Royal Cloak
		i(25032),	-- Hellfire Cloak
		i(25033),	-- Scavenger's Cloak
		i(25034),	-- Elementalist Cloak
		i(25035),	-- Silver-Lined Cloak
		i(25036),	-- Boulderfist Cloak
		i(25037),	-- Patched Cape
		i(25038),	-- Forest Shroud
		i(25039),	-- Farseer Cloak
		i(25040),	-- Murkblood Cape
		i(25041),	-- Ambusher's Cloak
		i(25042),	-- Nether Cloak
		i(25043),	-- Amber Cape
		i(31140),	-- Cloak of Entropy
		i(31143),	-- Shroud of Frenzy
		i(31255),	-- Cloak of the Craft
		i(31329),	-- Lifegiving Cloak
	}),
	filter(52,   {	-- Finger
		i(25055),	-- Alexandrite Ring
		i(25056),	-- Almandine Ring
		i(25057),	-- Amber Band
		i(25045),	-- Azurite Ring
		i(31290),	-- Band of Dominion
		i(31319),	-- Band of Impenetrable Defenses
		i(31258),	-- Band of Sorrow
		i(25051),	-- Blue Topaz Band
		i(25052),	-- Hauyne Ring
		i(25053),	-- Lazuli Ring
		i(31339),	-- Lola's Eve
		i(25050),	-- Moldavite Ring
		i(31277),	-- Pathfinder's Band
		i(25044),	-- Rubellite Ring
		i(25049),	-- Scheelite Ring
		i(25048),	-- Smoky Quartz Ring
		i(25054),	-- Sodalite Band
		i(25046),	-- Spined Ring
		i(25047),	-- Tourmaline Loop
		i(31326),	-- Truestrike Ring
	}),
	category(249, {	-- Armor Kits
		["description"] = "Not armor kits as in item enhancement, but rather sets of random armor pieces that complete a set.",
		["groups"] = {
			i(24575),	-- Outlander's Girdle
			i(24582),	-- Outlander's Boots
			i(24583),	-- Outlander's Tunic
			i(24584),	-- Outlander's Gloves
			i(24585),	-- Outlander's Facewrap
			i(24586),	-- Outlander's Leggings
			i(24587),	-- Outlander's Pauldrons
			i(24588),	-- Outlander's Bracers
			i(24589),	-- Fireheart Girdle
			i(24590),	-- Fireheart Boots
			i(24591),	-- Fireheart Chestpiece
			i(24592),	-- Fireheart Gloves
			i(24593),	-- Fireheart Skullcap
			i(24594),	-- Fireheart Leggings
			i(24595),	-- Fireheart Shoulderpads
			i(24596),	-- Fireheart Bracers
			i(24597),	-- Starfire Sash
			i(24598),	-- Starfire Sandals
			i(24599),	-- Starfire Vest
			i(24600),	-- Starfire Gloves
			i(24601),	-- Starfire Circlet
			i(24602),	-- Starfire Trousers
			i(24603),	-- Starfire Mantle
			i(24604),	-- Starfire Wristwraps
			i(24605),	-- Laughing Skull Waistguard
			i(24606),	-- Laughing Skull Boots
			i(24607),	-- Laughing Skull Tunic
			i(24608),	-- Laughing Skull Gloves
			i(24609),	-- Laughing Skull Cap
			i(24610),	-- Laughing Skull Pants
			i(24611),	-- Laughing Skull Shoulderpads
			i(24612),	-- Laughing Skull Bracelets
			i(24613),	-- Vindicator Belt
			i(24614),	-- Vindicator Boots
			i(24615),	-- Vindicator Tunic
			i(24616),	-- Vindicator Gloves
			i(24617),	-- Vindicator Cap
			i(24618),	-- Vindicator Pants
			i(24619),	-- Vindicator Shoulderpads
			i(24620),	-- Vindicator Bracers
			i(24621),	-- Slavehandler Belt
			i(24622),	-- Slavehandler Footpads
			i(24623),	-- Slavehandler Jerkin
			i(24624),	-- Slavehandler Handwraps
			i(24625),	-- Slavehandler Cap
			i(24626),	-- Slavehandler Pants
			i(24627),	-- Slavehandler Amice
			i(24628),	-- Slavehandler Wristguards
			i(24629),	-- Feralfen Sash
			i(24630),	-- Feralfen Sandals
			i(24631),	-- Feralfen Jerkin
			i(24632),	-- Feralfen Hand
			i(24633),	-- Feralfen Hood
			i(24634),	-- Feralfen Pants
			i(24635),	-- Feralfen Amice
			i(24636),	-- Feralfen Cuffs
			i(24637),	-- Mistyreed Belt
			i(24638),	-- Mistyreed Boots
			i(24639),	-- Mistyreed Tunic
			i(24640),	-- Mistyreed Gloves
			i(24641),	-- Mistyreed Hood
			i(24642),	-- Mistyreed Pants
			i(24643),	-- Mistyreed Shoulderpads
			i(24644),	-- Mistyreed Bracers
			i(24645),	-- Astralaan Belt
			i(24646),	-- Astralaan Boots
			i(24647),	-- Astralaan Robe
			i(24648),	-- Astralaan Gloves
			i(24649),	-- Astralaan Headdress
			i(24650),	-- Astralaan Pants
			i(24651),	-- Astralaan Shoulderpads
			i(24652),	-- Astralaan Bracer
			i(24653),	-- Consortium Sash
			i(24654),	-- Consortium Boot
			i(24655),	-- Consortium Robe
			i(24656),	-- Consortium Gloves
			i(24657),	-- Consortium Hood
			i(24658),	-- Consortium Pants
			i(24659),	-- Consortium Mantle
			i(24660),	-- Consortium Bracer
			i(24661),	-- Shadow Council Chain
			i(24662),	-- Shadow Council Boots
			i(24663),	-- Shadow Council Tunic
			i(24664),	-- Shadow Council Gloves
			i(24665),	-- Shadow Council Cowl
			i(24666),	-- Shadow Council Pants
			i(24667),	-- Shadow Council Mantle
			i(24668),	-- Shadow Council Bracer
			i(24669),	-- Eldr'naan Belt
			i(24670),	-- Eldr'naan Boots
			i(24671),	-- Eldr'naan Jerkin
			i(24672),	-- Eldr'naan Gloves
			i(24673),	-- Eldr'naan Hood
			i(24674),	-- Eldr'naan Pants
			i(24675),	-- Eldr'naan Shoulderpads
			i(24676),	-- Eldr'naan Bracelets
			i(24677),	-- Archmage Belt
			i(24678),	-- Archmage Slippers
			i(24679),	-- Archmage Robe
			i(24680),	-- Archmage Gloves
			i(24681),	-- Archmage Headpiece
			i(24682),	-- Archmage Pants
			i(24683),	-- Archmage Mantle
			i(24684),	-- Archmage Bracelets
			i(24685),	-- Elementalist Belt
			i(24686),	-- Elementalist Boots
			i(24687),	-- Elementalist Tunic
			i(24688),	-- Elementalist Gloves
			i(24689),	-- Elementalist Skullcap
			i(24690),	-- Elementalist Leggings
			i(24691),	-- Elementalist Mantle
			i(24692),	-- Elementalist Bracelets
			i(24693),	-- Bonechewer Pelt-Girdle
			i(24694),	-- Bonechewer Shredboots
			i(24695),	-- Bonechewer Chestpiece
			i(24696),	-- Bonechewer Spikegloves
			i(24697),	-- Bonechewer Skincloak
			i(24698),	-- Bonechewer Ripleggings
			i(24699),	-- Bonechewer Shoulderguards
			i(24700),	-- Bonechewer Bands
			i(24701),	-- Haal'eshi Cord
			i(24702),	-- Haal'eshi Boots
			i(24703),	-- Haal'eshi Jerkin
			i(24704),	-- Haal'eshi Gloves
			i(24705),	-- Haal'eshi Hat
			i(24706),	-- Haal'eshi Leggings
			i(24707),	-- Haal'eshi Pauldrons
			i(24708),	-- Haal'eshi Bindings
			i(24709),	-- Vengeance Belt
			i(24710),	-- Vengeance Boots
			i(24711),	-- Vengeance Chestpiece
			i(24712),	-- Vengeance Gloves
			i(24713),	-- Vengeance Helm
			i(24714),	-- Vengeance Legguards
			i(24715),	-- Vengeance Pauldrons
			i(24716),	-- Vengeance Bands
			i(24717),	-- Dreghood Belt
			i(24718),	-- Dreghood Boots
			i(24719),	-- Dreghood Chestpiece
			i(24720),	-- Dreghood Gloves
			i(24721),	-- Dreghood Cowl
			i(24722),	-- Dreghood Trousers
			i(24723),	-- Dreghood Pauldrons
			i(24724),	-- Dreghood Bands
			i(24725),	-- Dementia Cord
			i(24726),	-- Dementia Boots
			i(24727),	-- Dementia Vest
			i(24728),	-- Dementia Gloves
			i(24729),	-- Dementia Hood
			i(24730),	-- Dementia Trousers
			i(24731),	-- Dementia Shoulderguards
			i(24732),	-- Dementia Armguards
			i(24733),	-- Sunroc Waistband
			i(24734),	-- Sunroc Boots
			i(24735),	-- Sunroc Chestpiece
			i(24736),	-- Sunroc Gloves
			i(24737),	-- Sunroc Mask
			i(24738),	-- Sunroc Pants
			i(24739),	-- Sunroc Shoulderguards
			i(24740),	-- Sunroc Armguards
			i(24741),	-- Ranger Belt
			i(24742),	-- Ranger Boots
			i(24743),	-- Ranger Jerkin
			i(24744),	-- Ranger Gloves
			i(24745),	-- Ranger Hat
			i(24746),	-- Ranger Pants
			i(24747),	-- Ranger Pauldrons
			i(24748),	-- Ranger Armguards
			i(24749),	-- Daggerfen Belt
			i(24750),	-- Daggerfen Boots
			i(24751),	-- Daggerfen Battlevest
			i(24752),	-- Daggerfen Gloves
			i(24753),	-- Daggerfen Cowl
			i(24754),	-- Daggerfen Stitchpants
			i(24755),	-- Daggerfen Pauldrons
			i(24756),	-- Daggerfen Bindings
			i(24757),	-- Umbrafen Waistband
			i(24758),	-- Umbrafen Boots
			i(24759),	-- Umbrafen Tunic
			i(24760),	-- Umbrafen Gloves
			i(24761),	-- Umbrafen Cap
			i(24762),	-- Umbrafen Britches
			i(24763),	-- Umbrafen Shoulderguards
			i(24764),	-- Umbrafen Bindings
			i(24765),	-- Clefthoof Belt
			i(24766),	-- Clefthoof Wanderboots
			i(24767),	-- Clefthoof Hidemantle
			i(24768),	-- Clefthoof Gloves
			i(24769),	-- Clefthoof Cover
			i(24770),	-- Clefthoof Britches
			i(24771),	-- Clefthoof Shoulderguards
			i(24772),	-- Clefthoof Bracers
			i(24773),	-- Boneshredder Belt
			i(24774),	-- Boneshredder Boots
			i(24775),	-- Boneshredder Jerkin
			i(24776),	-- Boneshredder Gloves
			i(24777),	-- Boneshredder Skullcap
			i(24778),	-- Boneshredder Britches
			i(24779),	-- Boneshredder Shoulderguards
			i(24780),	-- Boneshredder Wristguards
			i(24781),	-- Murkblood Belt
			i(24783),	-- Murkblood Boots
			i(24784),	-- Murkblood Chestpiece
			i(24785),	-- Murkblood Gloves
			i(24786),	-- Murkblood Cover
			i(24787),	-- Murkblood Pants
			i(24788),	-- Murkblood Shoulderguards
			i(24789),	-- Murkblood Bracers
			i(24790),	-- Expedition Girdle
			i(24791),	-- Expedition Boots
			i(24792),	-- Expedition Tunic
			i(24793),	-- Expedition Gloves
			i(24794),	-- Expedition Hood
			i(24795),	-- Expedition Pants
			i(24796),	-- Expedition Shoulderguards
			i(24797),	-- Expedition Bracers
			i(24798),	-- Dragonhawk Belt
			i(24799),	-- Dragonhawk Boots
			i(24800),	-- Dragonhawk Tunic
			i(24801),	-- Dragonhawk Gloves
			i(24802),	-- Dragonhawk Hat
			i(24803),	-- Dragonhawk Pants
			i(24804),	-- Dragonhawk Shoulderguards
			i(24805),	-- Dragonhawk Bands
			i(24806),	-- Unyielding Waistband
			i(24807),	-- Unyielding Footwraps
			i(24809),	-- Unyielding Fists
			i(24810),	-- Unyielding Helm
			i(24811),	-- Unyielding Leggings
			i(24812),	-- Unyielding Spaulders
			i(24813),	-- Unyielding Bindings
			i(24814),	-- Felstone Waistband
			i(24815),	-- Felstone Greaves
			i(24816),	-- Felstone Chain Vest
			i(24817),	-- Felstone Gauntlets
			i(24818),	-- Felstone Helm
			i(24819),	-- Felstone Leggings
			i(24821),	-- Felstone Bindings
			i(24822),	-- Netherstalker Belt
			i(24823),	-- Netherstalker Greaves
			i(24824),	-- Netherstalker Armor
			i(24825),	-- Netherstalker Gloves
			i(24826),	-- Netherstalker Helmet
			i(24827),	-- Netherstalker Legguards
			i(24828),	-- Netherstalker Mantle
			i(24829),	-- Netherstalker Bracer
			i(24830),	-- Nexus-Strider Belt
			i(24831),	-- Nexus-Strider Greaves
			i(24832),	-- Nexus-Strider Breastplate
			i(24833),	-- Nexus-Strider Gloves
			i(24834),	-- Nexus-Strider Helmet
			i(24835),	-- Nexus-Strider Legwraps
			i(24836),	-- Nexus-Strider Mantle
			i(24837),	-- Nexus-Strider Bracer
			i(24838),	-- Wrathfin Waistband
			i(24839),	-- Wrathfin Greaves
			i(24840),	-- Wrathfin Armor
			i(24841),	-- Wrathfin Gloves
			i(24842),	-- Wrathfin Helmet
			i(24843),	-- Wrathfin Legguards
			i(24844),	-- Wrathfin Mantle
			i(24845),	-- Wrathfin Bindings
			i(24846),	-- Fenclaw Waistband
			i(24847),	-- Fenclaw Footwraps
			i(24848),	-- Fenclaw Armor
			i(24849),	-- Fenclaw Fists
			i(24850),	-- Fenclaw Helm
			i(24851),	-- Fenclaw Legguards
			i(24852),	-- Fenclaw Mantle
			i(24853),	-- Fenclaw Bindings
			i(24854),	-- Marshcreeper Belt
			i(24855),	-- Marshcreeper Sludgeboots
			i(24856),	-- Marshcreeper Fen-Vest
			i(24857),	-- Marshcreeper Gloves
			i(24858),	-- Marshcreeper Helm
			i(24859),	-- Marshcreeper Leggings
			i(24860),	-- Marshcreeper Mantle
			i(24861),	-- Marshcreeper Bracelets
			i(24862),	-- Blood Knight Girdle
			i(24863),	-- Blood Knight Boots
			i(24864),	-- Blood Knight Breastplate
			i(24865),	-- Blood Knight Gauntlets
			i(24866),	-- Blood Knight Helm
			i(24867),	-- Blood Knight Greaves
			i(24868),	-- Blood Knight Pauldrons
			i(24869),	-- Blood Knight Bracers
			i(24870),	-- Ironspine Belt
			i(24871),	-- Ironspine Greaves
			i(24872),	-- Ironspine Chain Vest
			i(24873),	-- Ironspine Gloves
			i(24874),	-- Ironspine Helm
			i(24875),	-- Ironspine Legguards
			i(24876),	-- Ironspine Shoulderguards
			i(24877),	-- Ironspine Bracelets
			i(24878),	-- Der'izu Belt
			i(24879),	-- Der'izu Greaves
			i(24880),	-- Der'izu Chestpiece
			i(24881),	-- Der'izu Fists
			i(24882),	-- Der'izu Helm
			i(24883),	-- Der'izu Legguards
			i(24884),	-- Der'izu Spaulders
			i(24885),	-- Der'izu Bracer
			i(24887),	-- Skettis Footwraps
			i(24888),	-- Skettis Chestpiece
			i(24889),	-- Skettis Gauntlets
			i(24890),	-- Skettis Helmet
			i(24891),	-- Skettis Legguards
			i(24892),	-- Skettis Spaulders
			i(24893),	-- Skettis Bracer
			i(24894),	-- Sundered Waistband
			i(24895),	-- Sundered Footwraps
			i(24896),	-- Sundered Chestpiece
			i(24897),	-- Sundered Gauntlets
			i(24898),	-- Sundered Helmet
			i(24899),	-- Sundered Legguards
			i(24900),	-- Sundered Spaulders
			i(24902),	-- Talhide Stitched-Belt
			i(24903),	-- Talhide Lined-Boots
			i(24904),	-- Talhide Chestpiece
			i(24905),	-- Talhide Lined-Gloves
			i(24906),	-- Talhide Helmet
			i(24907),	-- Talhide Lined-Leggings
			i(24908),	-- Talhide Shoulderguards
			i(24909),	-- Talhide Lined-Bracers
			i(24910),	-- Netherstorm Belt
			i(24911),	-- Netherstorm Greaves
			i(24912),	-- Netherstorm Chestpiece
			i(24913),	-- Netherstorm Gauntlets
			i(24914),	-- Netherstorm Helm
			i(24915),	-- Netherstorm Legguards
			i(24916),	-- Netherstorm Shoulderguards
			i(24917),	-- Netherstorm Bracer
			i(24918),	-- Grimscale Belt
			i(24919),	-- Grimscale Sabatons
			i(24920),	-- Grimscale Armor
			i(24921),	-- Grimscale Gauntlets
			i(24922),	-- Grimscale Helm
			i(24923),	-- Grimscale Legguards
			i(24924),	-- Grimscale Pauldrons
			i(24925),	-- Grimscale Vambraces
			i(24926),	-- Ango'rosh Belt
			i(24927),	-- Ango'rosh Sabatons
			i(24928),	-- Ango'rosh Breastplate
			i(24929),	-- Ango'rosh Gauntlets
			i(24930),	-- Ango'rosh Helm
			i(24931),	-- Ango'rosh Legguards
			i(24932),	-- Ango'rosh Pauldrons
			i(24933),	-- Ango'rosh Vambraces
			i(24934),	-- Darkcrest Belt
			i(24935),	-- Darkcrest Sabatons
			i(24936),	-- Darkcrest Breastplate
			i(24937),	-- Darkcrest Gauntlets
			i(24938),	-- Darkcrest Helm
			i(24939),	-- Darkcrest Legguards
			i(24940),	-- Darkcrest Pauldrons
			i(24941),	-- Darkcrest Bracers
			i(24942),	-- Bloodscale Belt
			i(24943),	-- Bloodscale Sabatons
			i(24944),	-- Bloodscale Breastplate
			i(24945),	-- Bloodscale Gauntlets
			i(24946),	-- Bloodscale Helm
			i(24947),	-- Bloodscale Legguards
			i(24948),	-- Bloodscale Pauldrons
			i(24949),	-- Bloodscale Bracers
			i(24950),	-- Bogslayer Belt
			i(24951),	-- Bogslayer Sabatons
			i(24952),	-- Bogslayer Breastplate
			i(24953),	-- Bogslayer Gauntlets
			i(24954),	-- Bogslayer Helm
			i(24955),	-- Bogslayer Legplates
			i(24956),	-- Bogslayer Pauldrons
			i(24957),	-- Bogslayer Bracers
			i(24958),	-- Khan'aish Girdle
			i(24959),	-- Khan'aish Greaves
			i(24960),	-- Khan'aish Breastplate
			i(24961),	-- Khan'aish Gloves
			i(24962),	-- Khan'aish Helmet
			i(24963),	-- Khan'aish Legplates
			i(24964),	-- Khan'aish Epaulets
			i(24965),	-- Khan'aish Bracers
			i(24966),	-- Talonguard Girdle
			i(24967),	-- Talonguard Greaves
			i(24968),	-- Talonguard Armor
			i(24969),	-- Talonguard Gloves
			i(24970),	-- Talonguard Helmet
			i(24971),	-- Talonguard Legplates
			i(24972),	-- Talonguard Epaulets
			i(24973),	-- Talonguard Bracers
			i(24974),	-- Reaver Girdle
			i(24975),	-- Reaver Greaves
			i(24976),	-- Reaver Armor
			i(24977),	-- Reaver Gloves
			i(24978),	-- Reaver Helmet
			i(24979),	-- Reaver Legplates
			i(24980),	-- Reaver Epaulets
			i(24981),	-- Reaver Bracers
			i(24982),	-- Boulderfist Belt
			i(24983),	-- Boulderfist Greaves
			i(24984),	-- Boulderfist Armor
			i(24985),	-- Boulderfist Gloves
			i(24986),	-- Boulderfist Helm
			i(24987),	-- Boulderfist Legplates
			i(24988),	-- Boulderfist Epaulets
			i(24989),	-- Boulderfist Bracers
			i(24990),	-- Warmaul Belt
			i(24991),	-- Warmaul Greaves
			i(24992),	-- Warmaul Breastplate
			i(24993),	-- Warmaul Gloves
			i(24994),	-- Warmaul Helmet
			i(24995),	-- Warmaul Legplates
			i(24996),	-- Warmaul Epaulets
			i(24997),	-- Warmaul Vambraces
			i(24998),	-- Bloodfist Girdle
			i(24999),	-- Bloodfist Greaves
			i(25000),	-- Bloodfist Breastplate
			i(25001),	-- Bloodfist Gloves
			i(25002),	-- Bloodfist Helmet
			i(25003),	-- Bloodfist Legplates
			i(25004),	-- Bloodfist Epaulets
			i(25005),	-- Bloodfist Vambraces
			i(25006),	-- Conqueror's Girdle
			i(25007),	-- Conqueror's Greaves
			i(25008),	-- Conqueror's Breastplate
			i(25009),	-- Conqueror's Gauntlets
			i(25010),	-- Conqueror's Helmet
			i(25011),	-- Conqueror's Legplates
			i(25012),	-- Conqueror's Epaulets
			i(25013),	-- Conqueror's Vambraces
			i(25014),	-- Shattered Hand Belt
			i(25015),	-- Shattered Hand Sabatons
			i(25016),	-- Shattered Hand Breastplate
			i(25017),	-- Shattered Hand Gauntlets
			i(25018),	-- Shattered Hand Helmet
			i(25019),	-- Shattered Hand Legplates
			i(25020),	-- Shattered Hand Epaulets
			i(25021),	-- Shattered Hand Vambraces
			i(25022),	-- Warlord's Iron-Girdle
			i(25023),	-- Warlord's Sabatons
			i(25024),	-- Warlord's Iron-Breastplate
			i(25025),	-- Warlord's Iron-Gauntlets
			i(25026),	-- Warlord's Iron-Helm
			i(25027),	-- Warlord's Iron-Legplates
			i(25028),	-- Warlord's Iron-Epaulets
			i(25029),	-- Warlord's Iron-Vambraces
		},
	}),
	category(227, {	-- Weapons
		filter(21, {	-- 1H Axes
			i(25198),	-- Karaborian Battle Axe
			i(25199),	-- Knight's War Axe
			i(25200),	-- Jagged Broadaxe
			i(25201),	-- Reaver's Sickle
			i(25202),	-- Kingly Axe
			i(25203),	-- Chipped Woodchopper
			i(25204),	-- Colossal War Axe
			i(25205),	-- Silvermoon Crescent Axe
			i(25206),	-- Berserker Axe
			i(25207),	-- Shadowmoon Cleaver
			i(25208),	-- Bladespire Broadaxe
			i(25209),	-- Amani Tomahawk
			i(25210),	-- Double-Bladed Axe
			i(25211),	-- Rockbiter Cutter
			i(31153),	-- Axe of the Legion
		}),
		filter(22, {	-- 2H Axes
			i(25212),	-- Lucky Strike Axe
			i(25213),	-- Fel-Touched Axe
			i(25214),	-- Mok'Nathal Battleaxe
			i(25215),	-- Spiked Battle Axe
			i(25216),	-- Ogre Splitting Axe
			i(25217),	-- Sundering Axe
			i(25218),	-- Silver-Edged Axe
			i(25219),	-- Rending Claw
			i(25220),	-- Glorious War-Axe
			i(25221),	-- Ghostly Battle Axe
			i(25222),	-- Ceremonial Slayer's Axe
			i(25223),	-- Windcaller Hatchet
			i(25224),	-- Slavemaster Axe
			i(25225),	-- Deepforge Broadaxe
			i(31291),	-- Crystalforged War Axe
			i(31318),	-- Singing Crystal Axe
		}),
		filter(23, {	-- 1H Maces
			i(25114),	-- Doomsayer's Mace
			i(25115),	-- Riversong Mace
			i(25116),	-- Pneumatic War Hammer
			i(25117),	-- Flanged Battle Mace
			i(25118),	-- Battle Star
			i(25119),	-- Silvermoon War-Mace
			i(25120),	-- Rockshard Club
			i(25121),	-- Dreaded Mace
			i(25122),	-- Khorium Plated Bludgeon
			i(25123),	-- Boneshredder Mace
			i(25124),	-- Footman Mace
			i(25125),	-- Retro-Spike Club
			i(25126),	-- Anvilmar Hammer
			i(25127),	-- Knight's War Hammer
			i(25310),	-- Naaru Lightmace
			i(25311),	-- Revitalizing Hammer
			i(25312),	-- Glorious Scepter
			i(25313),	-- Cold-Iron Scepter
			i(25314),	-- Ceremonial Hammer
			i(25315),	-- Restorative Mace
			i(25316),	-- Spirit-Clad Mace
			i(25317),	-- Lesser Sledgemace
			i(25318),	-- Ancestral Hammer
			i(25319),	-- Tranquility Mace
			i(25320),	-- Queen's Insignia
			i(25321),	-- Divine Hammer
			i(25322),	-- Lordly Scepter
			i(25323),	-- Ascendant's Scepter
			i(31139),	-- Fist of Reckoning
			i(31304),	-- The Essence Focuser
			i(31342),	-- The Ancient Scepter of Sue-Min
		}),
		filter(24, {	-- 2H Maces
			i(25128),	-- Shining Mace
			i(25129),	-- Giant's Leg Bone
			i(25130),	-- Gronn-Bone Club
			i(25131),	-- Hateful Bludgeon
			i(25132),	-- Thrallmar War Hammer
			i(25133),	-- Stormwind Maul
			i(25134),	-- Highmountain Hammer
			i(25135),	-- Clefthoof Mace
			i(25136),	-- Blood Stained Hammer
			i(25137),	-- Draenethyst Mallet
			i(25138),	-- Blood Knight Maul
			i(25139),	-- Algaz Battle Hammer
			i(25140),	-- Commanding Mallet
			i(25141),	-- Halaani Hammer
			i(31299),	-- The Oathkeeper
			i(31322),	-- The Hammer of Destiny
		}),
		filter(25, {	-- 1H Swords
			i(25142),	-- Telaari Longblade
			i(25143),	-- Silver Hand Blade
			i(25144),	-- Skettis Curved Blade
			un(REMOVED_FROM_GAME, i(25145, {	-- Wisdom Blade
				["description"] = "Dropped from Big Crate of Salvage during Warlords of Draenor.",
			})),
			i(25146),	-- Light-Etched Longsword
			i(25147),	-- Skystrider Katana
			i(25148),	-- Bone Collector Sword
			i(25149),	-- Baron's Broadsword
			i(25150),	-- Honor Hold Saber
			i(25151),	-- Assassins' Short Blade
			i(25152),	-- Howling Sword
			i(25153),	-- Gladiator Greatblade
			i(25154),	-- Blood Groove Blade
			i(25155),	-- Iron Skull Sword
			i(31234),	-- Crystalblade of the Draenei
			i(31332),	-- Blinkstrike
			i(31336),	-- Blade of Wizardry
		}),
		filter(26, {	-- 2H Swords
			i(25156),	-- Royal Crusader Sword
			i(25157),	-- Serpentlord Claymore
			i(25158),	-- Skeletal Broadsword
			un(REMOVED_FROM_GAME, i(25159)),	-- Thunderstrike Falchion [Removed from Game - Crates Only!]
			i(25160),	-- Vengeance Blade
			i(25161),	-- Dragon Wing Blade
			i(25162),	-- Darkened Broadsword
			i(25163),	-- Elexorien Blade
			i(25164),	-- Crude Umbrafen Blade
			i(25165),	-- Boulderfist Claymore
			i(25166),	-- Mok'Nathal Warblade
			i(25167),	-- Nethersteel Claymore
			i(25168),	-- Sha'tari Longsword
			i(25169),	-- Fel Orc Brute Sword
			i(31134),	-- Blade of Misfortune
		}),
		filter(32, {	-- Bows
			i(25240),	-- Azerothian Longbow
			i(25241),	-- Ashenvale Longbow
			i(25242),	-- Telaari Longbow
			i(25243),	-- Windtalker Bow
			i(25244),	-- Viper Bow
			i(25245),	-- Razorsong Bow
			i(25246),	-- Thalassian Compound Bow
			i(25247),	-- Expert's Bow
			i(25248),	-- Talbuk Hunting Bow
			i(25249),	-- Ranger's Recurved Bow
			i(25250),	-- Rocslayer Longbow
			i(25251),	-- Orc Flatbow
			i(25252),	-- Dream Catcher Bow
			i(25253),	-- Windspear Longbow
			i(31303),	-- Valanos' Longbow
		}),
		filter(33, {	-- Crossbows
			i(25254),	-- Tower Crossbow
			i(25255),	-- Ram's Head Crossbow
			i(25256),	-- Stronghold Crossbow
			i(25257),	-- Citadel Crossbow
			i(25258),	-- Repeater Crossbow
			i(25259),	-- Collapsible Crossbow
			i(25260),	-- Archer's Crossbow
			i(25261),	-- Mighty Crossbow
			i(25262),	-- Battle Damaged Crossbow
			i(25263),	-- Assassins' Silent Crossbow
			i(25264),	-- Pocket Ballista
			i(25265),	-- Barreled Crossbow
			i(25266),	-- Well-Balanced Crossbow
			i(25267),	-- Rampant Crossbow
		}),
		filter(20, {	-- Daggers
			i(25100),	-- Liege Blade
			i(25101),	-- Cross Pommel Dagger
			i(25102),	-- Jaedenis Dagger
			i(25103),	-- Nightstalker Dagger
			i(25104),	-- Anzac Dagger
			i(25105),	-- Arachnid Dagger
			i(25106),	-- Cobra Shortblade
			i(25107),	-- Draconic Dagger
			i(25108),	-- Grave Keeper Knife
			i(25109),	-- Moon Blade
			i(25110),	-- Sharp Bowie Knife
			i(25111),	-- Lionhead Dagger
			i(25112),	-- Fel Ripper
			i(25113),	-- Phantom Dagger
			i(25296),	-- Absorption Dagger
			i(25297),	-- Tuning Knife
			i(25298),	-- Combustion Dagger
			i(25299),	-- Siphoning Dagger
			i(25300),	-- Lightning Dagger
			i(25301),	-- Shattering Dagger
			i(25302),	-- Soul-Drain Dagger
			i(25303),	-- Amplifying Blade
			i(25304),	-- Destructo-Blade
			i(25305),	-- Elemental Dagger
			i(25306),	-- Permafrost Dagger
			i(25307),	-- Shadow Dagger
			i(25308),	-- Thunder Spike
			i(25309),	-- Warpdagger
			i(31142),	-- Blade of Trapped Knowledge
			i(31193),	-- Blade of Unquenched Thirst
			i(31305),	-- Ced's Carver
			i(31331),	-- The Night Blade
		}),
		filter(34, {	-- Fist Weapons
			i(25184),	-- Ravager Claws
			i(25185),	-- Thrasher Blades
			i(25186),	-- Vampiric Handscythes
			i(25187),	-- Shekketh Talons
			i(25188),	-- Spleenripper Claws
			i(25189),	-- Ironspine Point
			i(25190),	-- Wight's Claws
			i(25191),	-- Dread Fangs
			i(25192),	-- Gutrippers
			i(25193),	-- Deathclaw Talons
			i(25194),	-- Serpent's Fangs
			i(25195),	-- Diamond Tipped Claws
			i(25196),	-- Boneshredder Claws
			i(25197),	-- Razor Scythes
			i(30755),	-- Mag'hari Fighting Claw
		}),
		filter(31, {	-- Guns
			i(25268),	-- Lead-Slug Shotgun
			i(25269),	-- Longbeard Rifle
			i(25270),	-- Gnomish Assault Rifle
			i(25271),	-- Croc-Hunter's Rifle
			i(25272),	-- PC-54 Shotgun
			i(25273),	-- Sawed-Off Shotgun
			i(25274),	-- Cliffjumper Shotgun
			i(25275),	-- Dragonbreath Musket
			i(25276),	-- Tauren Runed Musket
			i(25277),	-- Sporting Rifle
			i(25278),	-- Nesingwary Longrifle
			i(25279),	-- Sen'jin Longrifle
			i(25280),	-- Game Hunter Musket
			i(25281),	-- Big-Boar Battle Rifle
			i(31204),	-- The Gunblade
			i(31323),	-- Don Santos' Famous Hunting Rifle
		}),
		filter(29, {	-- Polearms
			i(25226),	-- War Scythe
			i(25227),	-- Sha'tari Longspear
			i(25228),	-- Halberd Polearm
			i(25229),	-- Partisan Polearm
			i(25230),	-- Voulge Blade
			i(25231),	-- Fel-Wrought Halberd
			i(25232),	-- War Glaive
			i(25233),	-- Battle Scythe
			i(25234),	-- Telaari Polearm
			i(25235),	-- Ethereal-Etched Glaive
			i(25236),	-- Grim Scythe
			i(25237),	-- Nether Trident
			i(25238),	-- Hellfire War Spear
			i(25239),	-- Legend's Glaive
		}),
		filter(28, {	-- Staves
			i(25170),	-- Rattan Bo Staff
			i(25171),	-- Straight Hardwood Staff
			i(25172),	-- Jinbali Warp-Staff
			i(25174),	-- Hanbo Staff
			i(25175),	-- Demoniac Longstaff
			i(25176),	-- Taiji Quarterstaff
			i(25177),	-- Tanjo Staff
			i(25178),	-- Bata Staff
			i(25179),	-- Nguni Stick
			i(25180),	-- Calenda Fighting Stick
			i(25181),	-- Tapered Staff
			i(25182),	-- Crystal-Etched Warstaff
			i(25183),	-- Voodoo Hex-Staff
			i(25324),	-- Angerstaff
			i(25325),	-- Brutal Scar-Limb
			i(25326),	-- Primal Lore-Staff
			i(25327),	-- Frenzied Staff
			i(25328),	-- Faerie-Kind Staff
			i(25329),	-- Tranquility Staff
			i(25330),	-- Starshine Staff
			i(25331),	-- Vengeance Staff
			i(25332),	-- Reflective Staff
			i(25333),	-- Purification Staff
			i(25334),	-- Intimidating Greatstaff
			i(25335),	-- Feral Warp-Staff
			i(25336),	-- Splintering Greatstaff
			i(25337),	-- Swarming Sting-Staff
			i(31186),	-- Braxxis' Staff of Slumber
			i(31289),	-- Staff of Divine Infusion
			i(31308),	-- The Bringer of Death
			i(31334),	-- Staff of Natural Fury
		}),
		filter(27, {	-- Wands
			i(25282),	-- Mahogany Wand
			i(25283),	-- Crystallized Ebony Wand
			i(25284),	-- Purpleheart Wand
			i(25286),	-- Yew Wand
			i(25287),	-- Magician's Wand
			i(25288),	-- Conjurer's Wand
			i(25289),	-- Majestic Wand
			i(25290),	-- Solitaire Wand
			i(25291),	-- Nobility Torch
			i(25292),	-- Mechano-Wand
			i(25293),	-- Draenethyst Wand
			i(25294),	-- Dragonscale Wand
			i(25295),	-- Flawless Wand
		}),
		-- #if BEFORE MOP
		filter(36, {	-- Thrown
			i(28535, {	-- Amani Throwing Axe
				["timeline"] = { "removed 5.0.4.10000", },
			}),
			i(28540, {	-- Arakkoa Talon-Axe
				["timeline"] = { "removed 5.0.4.10000", },
			}),
			i(28544, {	-- Assassin's Shuriken
				["timeline"] = { "removed 5.0.4.10000", },
			}),
			i(28531, {	-- Barbed Shrike
				["timeline"] = { "removed 5.0.4.10000", },
			}),
			i(28543, {	-- Dreghood Throwing Axe
				["timeline"] = { "removed 5.0.4.10000", },
			}),
			i(28534, {	-- Fel Tipped Dart
				["timeline"] = { "removed 5.0.4.10000", },
			}),
			i(28538, {	-- Forked Shuriken
				["timeline"] = { "removed 5.0.4.10000", },
			}),
			i(28542, {	-- Heartseeker Knives
				["timeline"] = { "removed 5.0.4.10000", },
			}),
			i(28536, {	-- Jagged Guillotine
				["timeline"] = { "removed 5.0.4.10000", },
			}),
			i(28539, {	-- Razor-Edged Boomerang
				["timeline"] = { "removed 5.0.4.10000", },
			}),
			i(28541, {	-- Sawshrike
				["timeline"] = { "removed 5.0.4.10000", },
			}),
			i(28532, {	-- Silver Throwing Knifes
				["timeline"] = { "removed 5.0.4.10000", },
			}),
			i(28537, {	-- Wildhammer Throwing Axe
				["timeline"] = { "removed 5.0.4.10000", },
			}),
			i(28533, {	-- Wooden Boomerang
				["timeline"] = { "removed 5.0.4.10000", },
			}),
		}),
		-- #endif
	}),
	filter(8, {	-- Shields
		i(25072),	-- Northman's Shield
		i(25073),	-- Emperor Shield
		i(25074),	-- Telaari Shield
		i(25076),	-- Screaming Shield
		i(25077),	-- Modani War-Shield
		i(25078),	-- Zangari Shield
		i(25079),	-- Outland Shield
		i(25080),	-- Spell-Breaker Shield
		i(25081),	-- Bayeaux Shield
		i(25082),	-- Fel-Iron Shield
		i(25083),	-- Smouldering Shield
		i(25084),	-- Zeth'Gor Shield
		i(25085),	-- Dragonscale Shield
		i(31200),	-- Shield of the Wayward Footman
		i(31287),	-- Draenei Honor Guard Shield
		i(31292),	-- Crystal Pulse Shield
		i(25075),	-- Hardened Steel Shield
	}),
	filter(1, {	-- Held in Off-hand
		i(25086),	-- Dreamseeker Dandelion
		i(25087),	-- Bleeding Eye
		i(25088),	-- Laughing Skull Orb
		i(25089),	-- Supplicant's Rod
		i(25090),	-- Slavehandler Rod
		i(25091),	-- Mistyreed Torch
		i(25092),	-- Consortium Crystal
		i(25093),	-- Shadow Council Orb
		i(25094),	-- Eldr'naan Scepter
		i(25095),	-- Archmage Orb
		i(25096),	-- Elementalist Star
		i(25097),	-- Astralaan Orb
		i(25098),	-- Tuurik Torch
		i(25099),	-- Draenei Crystal Rod
	}),
	filter(50, {	-- Miscellaneous
		i(29739),	-- Arcane Tome
		i(29740),	-- Fel Armament
	}),
	category(106, {	-- Tarrot Cards
		-- Blessings Deck
		i(31882),	-- Ace of Blessings
		i(31889),	-- Two of Blessings
		i(31888),	-- Three of Blessings
		i(31885),	-- Four of Blessings
		i(31884),	-- Five of Blessings
		i(31887),	-- Six of Blessings
		i(31886),	-- Seven of Blessings
		i(31883),	-- Eight of Blessings
		-- Furies Deck
		i(31901),	-- Ace of Furies
		i(31909),	-- Two of Furies
		i(31908),	-- Three of Furies
		i(31904),	-- Four of Furies
		i(31903),	-- Five of Furies
		i(31906),	-- Six of Furies
		i(31905),	-- Seven of Furies
		i(31902),	-- Eight of Furies
		-- Lunacy Deck
		i(31910),	-- Ace of Lunacy
		i(31918),	-- Two of Lunacy
		i(31917),	-- Three of Lunacy
		i(31913),	-- Four of Lunacy
		i(31912),	-- Five of Lunacy
		i(31916),	-- Six of Lunacy
		i(31915),	-- Seven of Lunacy
		i(31911),	-- Eight of Lunacy
		-- Storms Deck
		i(31892),	-- Ace of Storms
		i(31900),	-- Two of Storms
		i(31899),	-- Three of Storms
		i(31895),	-- Four of Storms
		i(31894),	-- Five of Storms
		i(31898),	-- Six of Storms
		i(31896),	-- Seven of Storms
		i(31893),	-- Eight of Storms
	}),
	filter(200, {	-- Recipes
		prof(ALCHEMY, {
			i(22914),	-- Recipe: Destruction Potion
			i(22926),	-- Recipe: Elixir of Empowerment (BoE version)
			i(22919),	-- Recipe: Elixir of Major Mageblood
			i(22904),	-- Recipe: Elixir of the Searching Eye
			i(22913),	-- Recipe: Haste Potion (BoE version)
			i(22912),	-- Recipe: Heroic Potion
			i(22903),	-- Recipe: Insane Strength Potion
		}),
		prof(BLACKSMITHING, {
			i(33186),	-- Plans: Adamantite Weapon Chain (BoE version)
			i(23626),	-- Plans: Black Felsteel Bracers
			i(23628),	-- Plans: Blessed Bracers
			i(23627),	-- Plans: Bracers of the Green Fortress
			i(23636),	-- Plans: Dirge
			i(23635),	-- Plans: Eternium Runed Blade
			i(23631),	-- Plans: Fel Edged Battleaxe
			i(23634),	-- Plans: Fel Hardened Maul
			i(23620),	-- Plans: Felfury Gauntlets
			i(23629),	-- Plans: Felsteel Longblade
			i(23632),	-- Plans: Felsteel Reaper
			i(23621),	-- Plans: Gauntlets of the Iron Tower
			i(33954),	-- Plans: Hammer of Righteous Might
			i(23637),	-- Plans: Hand of Eternity
			i(23624),	-- Plans: Helm of the Stalwart Defender
			i(23630),	-- Plans: Khorium Champion
			i(23625),	-- Plans: Oathkeeper's Helm
			i(23633),	-- Plans: Runic Hammer
			i(23622),	-- Plans: Steelgrip Gauntlets
			i(23623),	-- Plans: Storm Helm
		}),
		prof(ENCHANTING, {
			i(28280),	-- Formula: Enchant Boots - Boar's Speed (BoE version)
			i(28279),	-- Formula: Enchant Boots - Cat's Swiftness (BoE version)
			i(22542),	-- Formula: Enchant Boots - Vitality
			i(22532),	-- Formula: Enchant Bracer - Versatility Prime
			i(28270),	-- Formula: Enchant Chest - Major Resilience
			i(22548),	-- Formula: Enchant Cloak - Major Resistance
			i(22540),	-- Formula: Enchant Shield - Parry
			i(22541),	-- Formula: Enchant Shield - Resistance
			i(22557),	-- Formula: Enchant Weapon - Battlemaster
			i(22553),	-- Formula: Enchant Weapon - Potency
			i(22558),	-- Formula: Enchant Weapon - Spellsurge
		}),
		prof(ENGINEERING, {
			i(23802),	-- Schematic: Ornate Khorium Rifle
			i(23804),	-- Schematic: Power Amplification Goggles
			i(23810),	-- Schematic: Crashin' Thrashin' Robot
			i(23883),	-- Schematic: Healing Potion Injector (BoE version)
			i(23884),	-- Schematic: Mana Potion Injector (BoE version)
			i(25887),	-- Schematic: Purple Smoke Flare
		}),
		prof(JEWELCRAFTING, {
			i(24165),	-- Design: Blazing Eternium Band
			i(24193),	-- Design: Bold Living Ruby
			i(24168),	-- Design: Braided Eternium Chain
			-- #if BEFORE CATA
			i(24192),	-- Design: Bright Living Ruby [TBC] / Design: Delicate Living Ruby [CATA+]
			-- #endif
			-- #if BEFORE CATA
			i(35306),	-- Design: Bright Living Ruby [TBC] / Design: Delicate Living Ruby [CATA+]
			-- #endif
			-- #if BEFORE CATA
			i(24203),	-- Design: Brilliant Dawnstone [TBC] / Design: Brilliant Living Ruby [CATA+]
			-- #endif
			-- #if AFTER CATA
			i(24196),	-- Design: Brilliant Living Ruby [CATA+] / Design: Runed Living Ruby [TBC]
			-- #endif
			-- #if AFTER CATA
			i(24203),	-- Design: Brilliant Dawnstone [TBC] / Design: Brilliant Living Ruby [CATA+]
			-- #endif
			i(25906),	-- Design: Brutal Earthstorm Diamond
			i(24171),	-- Design: Chain of the Twilight Owl
			-- #if AFTER CATA
			i(31879),	-- Design: Deadly Noble Topaz [CATA+] / Design: Wicked Noble Topaz [TBC]
			-- #endif
			i(24164),	-- Design: Delicate Eternium Ring
			i(24194),	-- Design: Delicate Living Ruby
			-- #if AFTER CATA
			i(24192),	-- Design: Delicate Living Ruby [CATA+] / Design: Bright Living Ruby [TBC]
			-- #endif
			-- #if AFTER CATA
			i(35306),	-- Design: Delicate Living Ruby [CATA+] / Design: Bright Living Ruby [TBC]
			-- #endif
			i(25907),	-- Design: Destructive Skyfire Diamond
			i(24170),	-- Design: Embrace of the Dawn
			i(24169),	-- Design: Eye of the Night
			i(24198),	-- Design: Flashing Living Ruby
			i(24216),	-- Design: Glinting Nightseye
			i(31877, {	-- Design: Glinting Nightseye
				["spellID"] = 0,	-- This is now available via 24216, need to delink the old plans from the recipe
				["u"] = REMOVED_FROM_GAME,
			}),
			i(24163),	-- Design: Heavy Felsteel Ring
			i(24213),	-- Design: Inscribed Noble Topaz
			i(24220),	-- Design: Jagged Talasite
			i(24167),	-- Design: Living Ruby Pendant
			i(25909),	-- Design: Mystical Skyfire Diamond
			i(24214),	-- Design: Potent Noble Topaz
			i(24219),	-- Design: Purified Nightseye
			i(24212, {	-- Design: Purified Nightseye
				["spellID"] = 0,	-- This is now available via 24219, need to delink the old plans from the recipe
				["u"] = REMOVED_FROM_GAME,
			}),
			i(24218),	-- Design: Radiant Talasite
			i(24215),	-- Design: Reckless Noble Topaz
			i(24217),	-- Design: Regal Talasite
			i(24205),	-- Design: Rigid Star of Elune (BoE version)
			i(31875, {	-- Design: Rigid Star of Elune
				["spellID"] = 0,	-- This is now available via 24205, need to delink the old plans from the recipe
				["u"] = REMOVED_FROM_GAME,
			}),
			-- #if BEFORE CATA
			i(24196),	-- Design: Runed Living Ruby [TBC] / Design: Brilliant Living Ruby [CATA+]
			-- #endif
			i(24210),	-- Design: Shifting Nightseye
			i(31876, {	-- Design: Shifting Nightseye
				["spellID"] = 0,	-- This is now available via 24210, need to delink the old plans from the recipe
				["u"] = REMOVED_FROM_GAME,
			}),
			i(24204),	-- Design: Smooth Dawnstone
			i(24206, {	-- Design: Smooth Dawnstone
				["spellID"] = 0,	-- This is now available via 24204, need to delink the old plans from the recipe
				["u"] = REMOVED_FROM_GAME,
			}),
			i(24199),	-- Design: Solid Star of Elune (BoE version)
			i(24209),	-- Design: Sovereign Nightseye
			i(24200),	-- Design: Sparkling Star of Elune
			i(24201, {	-- Design: Sparkling Star of Elune
				["spellID"] = 0,	-- This is now available via 24200, need to delink the old plans from the recipe
				["u"] = REMOVED_FROM_GAME,
			}),
			i(24202),	-- Design: Stormy Star of Elune
			i(23154),	-- Design: Stormy Azure Moonstone
			i(24197),	-- Design: Subtle Dawnstone
			i(24207, {	-- Design: Subtle Dawnstone
				["spellID"] = 0,	-- This is now available via 24197, need to delink the old plans from the recipe
				["u"] = REMOVED_FROM_GAME,
			}),
			i(25905),	-- Design: Tenacious Earthstorm Diamond
			i(24166),	-- Design: Thick Felsteel Necklace
			i(32411),	-- Design: Thundering Skyfire Diamond
			i(24211),	-- Design: Timeless Nightseye
			i(31878),	-- Design: Veiled Nightseye
			-- #if BEFORE CATA
			i(31879),	-- Design: Wicked Noble Topaz [TBC] / Design: Deadly Noble Topaz [CATA+]
			-- #endif
		}),
		prof(LEATHERWORKING, {
			i(29724),	-- Pattern: Cobrascale Gloves (BoE version)
			i(29723),	-- Pattern: Cobrascale Hood
			i(29714),	-- Pattern: Drums of Restoration
			i(29718),	-- Pattern: Drums of Speed
			i(29730),	-- Pattern: Earthen Netherscale Boots
			i(29727),	-- Pattern: Gloves of the Living Touch (BoE version)
			i(185922, {	-- Pattern: Greater Drums of War
				["description"] = "Not actually sure where this is going to come from. Let us know if anything is discovered! Might be ZA.",
			}),
			i(29726),	-- Pattern: Hood of Primal Life
			i(29729),	-- Pattern: Living Dragonscale Helm
			i(29733),	-- Pattern: Netherdrake Gloves (BoE version)
			i(29732),	-- Pattern: Netherdrake Helm
			i(29734),	-- Pattern: Thick Netherscale Breastplate
			i(29725),	-- Pattern: Windscale Hood
			i(29728),	-- Pattern: Windslayer Wraps
			i(29731),	-- Pattern: Windstrike Gloves (BoE version)
		}),
		prof(TAILORING, {
			i(24298),	-- Pattern: Blackstrike Bracers
			i(24304),	-- Pattern: Black Belt of Knowledge
			i(24297),	-- Pattern: Bracers of Havok
			i(24300),	-- Pattern: Cloak of Eternity
			i(24299),	-- Pattern: Cloak of the Black Void
			i(24303),	-- Pattern: Girdle of Ruination
			i(24307),	-- Pattern: Manaweave Cloak
			i(24305),	-- Pattern: Resolute Cape
			i(24296),	-- Pattern: Unyielding Bracers
			i(24302),	-- Pattern: Unyielding Girdle
			i(24306),	-- Pattern: Vengeance Wrap
			i(24301),	-- Pattern: White Remedy Cape
		}),
	}),
}))};

-- #if AFTER TBC
-- These items never made it in.
_.NeverImplemented = bubbleDown({ ["u"] = NEVER_IMPLEMENTED }, {
	filter(1, {	-- Held in Off-hand
		i(26560),	-- 59 TEST Green Off Hand
		i(26561),	-- 60 TEST Green Off Hand
		i(26562),	-- 61 TEST Green Off Hand
		i(26563),	-- 62 TEST Green Off Hand
		i(26564),	-- 63 TEST Green Off Hand
		i(26565),	-- 64 TEST Green Off Hand
		i(26566),	-- 65 TEST Green Off Hand
		i(26567),	-- 66 TEST Green Off Hand
		i(26568),	-- 67 TEST Green Off Hand
		i(26569),	-- 68 TEST Green Off Hand
		i(26570),	-- 69 TEST Green Off Hand
		i(26571),	-- 70 TEST Green Off Hand
		i(26572),	-- 71 TEST Green Off Hand
		i(26573),	-- 72 TEST Green Off Hand
	}),
	filter(2, {	-- Cosmetic [TODO: Move to Hallow's End?]
		i(34005),	-- Sturdy Female Blood Elf Mask
		i(34004),	-- Sturdy Female Draenei Mask
		i(34006),	-- Sturdy Male Blood Elf Mask
		i(34007),	-- Sturdy Male Draenei Mask
	}),
	filter(3, {	-- Cloak
		i(26504),	-- 59 TEST Green Cloth Cloak
		i(27190),	-- 59 TEST Green Druid/Warrior Cloak
		i(27274),	-- 59 TEST Green Paladin Cloak
		i(27148),	-- 59 TEST Green Rogue/Hunter Cloak
		i(27232),	-- 59 TEST Green Shaman Cloak
		i(26505),	-- 60 TEST Green Cloth Cloak
		i(27191),	-- 60 TEST Green Druid/Warrior Cloak
		i(27275),	-- 60 TEST Green Paladin Cloak
		i(27149),	-- 60 TEST Green Rogue/Hunter Cloak
		i(27233),	-- 60 TEST Green Shaman Cloak
		i(26506),	-- 61 TEST Green Cloth Cloak
		i(27192),	-- 61 TEST Green Druid/Warrior Cloak
		i(27276),	-- 61 TEST Green Paladin Cloak
		i(27150),	-- 61 TEST Green Rogue/Hunter Cloak
		i(27234),	-- 61 TEST Green Shaman Cloak
		i(26507),	-- 62 TEST Green Cloth Cloak
		i(27193),	-- 62 TEST Green Druid/Warrior Cloak
		i(27277),	-- 62 TEST Green Paladin Cloak
		i(27151),	-- 62 TEST Green Rogue/Hunter Cloak
		i(27235),	-- 62 TEST Green Shaman Cloak
		i(26508),	-- 63 TEST Green Cloth Cloak
		i(27194),	-- 63 TEST Green Druid/Warrior Cloak
		i(27278),	-- 63 TEST Green Paladin Cloak
		i(27152),	-- 63 TEST Green Rogue/Hunter Cloak
		i(27236),	-- 63 TEST Green Shaman Cloak
		i(26509),	-- 64 TEST Green Cloth Cloak
		i(27195),	-- 64 TEST Green Druid/Warrior Cloak
		i(27279),	-- 64 TEST Green Paladin Cloak
		i(27153),	-- 64 TEST Green Rogue/Hunter Cloak
		i(27237),	-- 64 TEST Green Shaman Cloak
		i(26510),	-- 65 TEST Green Cloth Cloak
		i(27196),	-- 65 TEST Green Druid/Warrior Cloak
		i(27280),	-- 65 TEST Green Paladin Cloak
		i(27154),	-- 65 TEST Green Rogue/Hunter Cloak
		i(27238),	-- 65 TEST Green Shaman Cloak
		i(26511),	-- 66 TEST Green Cloth Cloak
		i(27197),	-- 66 TEST Green Druid/Warrior Cloak
		i(27281),	-- 66 TEST Green Paladin Cloak
		i(27155),	-- 66 TEST Green Rogue/Hunter Cloak
		i(27239),	-- 66 TEST Green Shaman Cloak
		i(26512),	-- 67 TEST Green Cloth Cloak
		i(27198),	-- 67 TEST Green Druid/Warrior Cloak
		i(27282),	-- 67 TEST Green Paladin Cloak
		i(27156),	-- 67 TEST Green Rogue/Hunter Cloak
		i(27240),	-- 67 TEST Green Shaman Cloak
		i(26513),	-- 68 TEST Green Cloth Cloak
		i(27199),	-- 68 TEST Green Druid/Warrior Cloak
		i(27283),	-- 68 TEST Green Paladin Cloak
		i(27157),	-- 68 TEST Green Rogue/Hunter Cloak
		i(27241),	-- 68 TEST Green Shaman Cloak
		i(26514),	-- 69 TEST Green Cloth Cloak
		i(27200),	-- 69 TEST Green Druid/Warrior Cloak
		i(27284),	-- 69 TEST Green Paladin Cloak
		i(27158),	-- 69 TEST Green Rogue/Hunter Cloak
		i(27242),	-- 69 TEST Green Shaman Cloak
		i(26515),	-- 70 TEST Green Cloth Cloak
		i(27201),	-- 70 TEST Green Druid/Warrior Cloak
		i(27285),	-- 70 TEST Green Paladin Cloak
		i(27159),	-- 70 TEST Green Rogue/Hunter Cloak
		i(27243),	-- 70 TEST Green Shaman Cloak
		i(26516),	-- 71 TEST Green Cloth Cloak
		i(27202),	-- 71 TEST Green Druid/Warrior Cloak
		i(27286),	-- 71 TEST Green Paladin Cloak
		i(27160),	-- 71 TEST Green Rogue/Hunter Cloak
		i(27244),	-- 71 TEST Green Shaman Cloak
		i(26517),	-- 72 TEST Green Cloth Cloak
		i(27203),	-- 72 TEST Green Druid/Warrior Cloak
		i(27287),	-- 72 TEST Green Paladin Cloak
		i(27161),	-- 72 TEST Green Rogue/Hunter Cloak
		i(27245),	-- 72 TEST Green Shaman Cloak
		i(27973),	-- TEST 130 Epic Paladin DPS Cloak
		i(28020),	-- TEST 130 Epic Ret Paladin DPS Cloak
		i(27960),	-- TEST 60 Blue Paladin DPS Cloak
		i(28007),	-- TEST 60 Blue Ret Paladin DPS Cloak
	}),
	filter(4, {	-- Cloth
		i(24566),	-- 130 Test Caster Gloves
		i(26056),	-- 59 TEST Green Cloth Belt
		i(26057),	-- 59 TEST Green Cloth Boot
		i(26058),	-- 59 TEST Green Cloth Chest
		i(26059),	-- 59 TEST Green Cloth Hand
		i(26060),	-- 59 TEST Green Cloth Head
		i(26061),	-- 59 TEST Green Cloth Legs
		i(26062),	-- 59 TEST Green Cloth Shoulder
		i(26063),	-- 59 TEST Green Cloth Wrist
		i(26064),	-- 60 TEST Green Cloth Belt
		i(26065),	-- 60 TEST Green Cloth Boot
		i(26066),	-- 60 TEST Green Cloth Chest
		i(26067),	-- 60 TEST Green Cloth Hand
		i(26068),	-- 60 TEST Green Cloth Head
		i(26069),	-- 60 TEST Green Cloth Legs
		i(26070),	-- 60 TEST Green Cloth Shoulder
		i(26071),	-- 60 TEST Green Cloth Wrist
		i(26072),	-- 61 TEST Green Cloth Belt
		i(26073),	-- 61 TEST Green Cloth Boot
		i(26074),	-- 61 TEST Green Cloth Chest
		i(26075),	-- 61 TEST Green Cloth Hand
		i(26076),	-- 61 TEST Green Cloth Head
		i(26077),	-- 61 TEST Green Cloth Legs
		i(26078),	-- 61 TEST Green Cloth Shoulder
		i(26079),	-- 61 TEST Green Cloth Wrist
		i(26080),	-- 62 TEST Green Cloth Belt
		i(26081),	-- 62 TEST Green Cloth Boot
		i(26082),	-- 62 TEST Green Cloth Chest
		i(26083),	-- 62 TEST Green Cloth Hand
		i(26084),	-- 62 TEST Green Cloth Head
		i(26085),	-- 62 TEST Green Cloth Legs
		i(26086),	-- 62 TEST Green Cloth Shoulder
		i(26087),	-- 62 TEST Green Cloth Wrist
		i(21045),	-- 63 Blue Fire Belt
		i(21046),	-- 63 Blue Fire Bindings
		i(21049),	-- 63 Blue Fire Gloves
		i(21073),	-- 63 Blue Shadow Belt
		i(21074),	-- 63 Blue Shadow Bindings
		i(21077),	-- 63 Blue Shadow Gloves
		i(26088),	-- 63 TEST Green Cloth Belt
		i(26089),	-- 63 TEST Green Cloth Boot
		i(26090),	-- 63 TEST Green Cloth Chest
		i(26091),	-- 63 TEST Green Cloth Hand
		i(26092),	-- 63 TEST Green Cloth Head
		i(26093),	-- 63 TEST Green Cloth Legs
		i(26094),	-- 63 TEST Green Cloth Shoulder
		i(26095),	-- 63 TEST Green Cloth Wrist
		i(26096),	-- 64 TEST Green Cloth Belt
		i(26097),	-- 64 TEST Green Cloth Boot
		i(26098),	-- 64 TEST Green Cloth Chest
		i(26099),	-- 64 TEST Green Cloth Hand
		i(26100),	-- 64 TEST Green Cloth Head
		i(26101),	-- 64 TEST Green Cloth Legs
		i(26102),	-- 64 TEST Green Cloth Shoulder
		i(26103),	-- 64 TEST Green Cloth Wrist
		i(26104),	-- 65 TEST Green Cloth Belt
		i(26105),	-- 65 TEST Green Cloth Boot
		i(26106),	-- 65 TEST Green Cloth Chest
		i(26107),	-- 65 TEST Green Cloth Hand
		i(26108),	-- 65 TEST Green Cloth Head
		i(26109),	-- 65 TEST Green Cloth Legs
		i(26110),	-- 65 TEST Green Cloth Shoulder
		i(26111),	-- 65 TEST Green Cloth Wrist
		i(21058),	-- 66 Epic Fire Belt
		i(21059),	-- 66 Epic Fire Bindings
		i(21062),	-- 66 Epic Fire Gloves
		i(21086),	-- 66 Epic Shadow Belt
		i(21087),	-- 66 Epic Shadow Bindings
		i(21090),	-- 66 Epic Shadow Gloves
		i(26112),	-- 66 TEST Green Cloth Belt
		i(26113),	-- 66 TEST Green Cloth Boot
		i(26114),	-- 66 TEST Green Cloth Chest
		i(26115),	-- 66 TEST Green Cloth Hand
		i(26116),	-- 66 TEST Green Cloth Head
		i(26117),	-- 66 TEST Green Cloth Legs
		i(26118),	-- 66 TEST Green Cloth Shoulder
		i(26119),	-- 66 TEST Green Cloth Wrist
		i(26120),	-- 67 TEST Green Cloth Belt
		i(26121),	-- 67 TEST Green Cloth Boot
		i(26122),	-- 67 TEST Green Cloth Chest
		i(26123),	-- 67 TEST Green Cloth Hand
		i(26124),	-- 67 TEST Green Cloth Head
		i(26125),	-- 67 TEST Green Cloth Legs
		i(26126),	-- 67 TEST Green Cloth Shoulder
		i(26127),	-- 67 TEST Green Cloth Wrist
		i(26128),	-- 68 TEST Green Cloth Belt
		i(26129),	-- 68 TEST Green Cloth Boot
		i(26130),	-- 68 TEST Green Cloth Chest
		i(26131),	-- 68 TEST Green Cloth Hand
		i(26132),	-- 68 TEST Green Cloth Head
		i(26133),	-- 68 TEST Green Cloth Legs
		i(26134),	-- 68 TEST Green Cloth Shoulder
		i(26135),	-- 68 TEST Green Cloth Wrist
		i(26136),	-- 69 TEST Green Cloth Belt
		i(26137),	-- 69 TEST Green Cloth Boot
		i(26138),	-- 69 TEST Green Cloth Chest
		i(26139),	-- 69 TEST Green Cloth Hand
		i(26140),	-- 69 TEST Green Cloth Head
		i(26141),	-- 69 TEST Green Cloth Legs
		i(26142),	-- 69 TEST Green Cloth Shoulder
		i(26143),	-- 69 TEST Green Cloth Wrist
		i(26144),	-- 70 TEST Green Cloth Belt
		i(26145),	-- 70 TEST Green Cloth Boot
		i(26146),	-- 70 TEST Green Cloth Chest
		i(26147),	-- 70 TEST Green Cloth Hand
		i(26148),	-- 70 TEST Green Cloth Head
		i(26149),	-- 70 TEST Green Cloth Legs
		i(26150),	-- 70 TEST Green Cloth Shoulder
		i(26151),	-- 70 TEST Green Cloth Wrist
		i(26152),	-- 71 TEST Green Cloth Belt
		i(26153),	-- 71 TEST Green Cloth Boot
		i(26154),	-- 71 TEST Green Cloth Chest
		i(26155),	-- 71 TEST Green Cloth Hand
		i(26156),	-- 71 TEST Green Cloth Head
		i(26157),	-- 71 TEST Green Cloth Legs
		i(26158),	-- 71 TEST Green Cloth Shoulder
		i(26159),	-- 71 TEST Green Cloth Wrist
		i(26160),	-- 72 TEST Green Cloth Belt
		i(26161),	-- 72 TEST Green Cloth Boot
		i(26162),	-- 72 TEST Green Cloth Chest
		i(26163),	-- 72 TEST Green Cloth Hand
		i(26164),	-- 72 TEST Green Cloth Head
		i(26165),	-- 72 TEST Green Cloth Legs
		i(26166),	-- 72 TEST Green Cloth Shoulder
		i(26167),	-- 72 TEST Green Cloth Wrist
	}),
	filter(5, {	-- Leather
		i(26812),	-- 59 TEST Green Druid Belt
		i(26813),	-- 59 TEST Green Druid Boot
		i(26814),	-- 59 TEST Green Druid Chest
		i(26815),	-- 59 TEST Green Druid Hand
		i(26816),	-- 59 TEST Green Druid Head
		i(26817),	-- 59 TEST Green Druid Legs
		i(26818),	-- 59 TEST Green Druid Shoulder
		i(26819),	-- 59 TEST Green Druid Wrist
		i(26168),	-- 59 TEST Green Rogue Belt
		i(26169),	-- 59 TEST Green Rogue Boot
		i(26170),	-- 59 TEST Green Rogue Chest
		i(26171),	-- 59 TEST Green Rogue Hand
		i(26172),	-- 59 TEST Green Rogue Head
		i(26173),	-- 59 TEST Green Rogue Legs
		i(26174),	-- 59 TEST Green Rogue Shoulder
		i(26175),	-- 59 TEST Green Rogue Wrist
		i(26820),	-- 60 TEST Green Druid Belt
		i(26821),	-- 60 TEST Green Druid Boot
		i(26822),	-- 60 TEST Green Druid Chest
		i(26823),	-- 60 TEST Green Druid Hand
		i(26824),	-- 60 TEST Green Druid Head
		i(26825),	-- 60 TEST Green Druid Legs
		i(26826),	-- 60 TEST Green Druid Shoulder
		i(26827),	-- 60 TEST Green Druid Wrist
		i(26176),	-- 60 TEST Green Rogue Belt
		i(26177),	-- 60 TEST Green Rogue Boot
		i(26178),	-- 60 TEST Green Rogue Chest
		i(26179),	-- 60 TEST Green Rogue Hand
		i(26180),	-- 60 TEST Green Rogue Head
		i(26181),	-- 60 TEST Green Rogue Legs
		i(26182),	-- 60 TEST Green Rogue Shoulder
		i(26183),	-- 60 TEST Green Rogue Wrist
		i(26828),	-- 61 TEST Green Druid Belt
		i(26829),	-- 61 TEST Green Druid Boot
		i(26830),	-- 61 TEST Green Druid Chest
		i(26831),	-- 61 TEST Green Druid Hand
		i(26832),	-- 61 TEST Green Druid Head
		i(26833),	-- 61 TEST Green Druid Legs
		i(26834),	-- 61 TEST Green Druid Shoulder
		i(26835),	-- 61 TEST Green Druid Wrist
		i(26184),	-- 61 TEST Green Rogue Belt
		i(26185),	-- 61 TEST Green Rogue Boot
		i(26186),	-- 61 TEST Green Rogue Chest
		i(26187),	-- 61 TEST Green Rogue Hand
		i(26188),	-- 61 TEST Green Rogue Head
		i(26189),	-- 61 TEST Green Rogue Legs
		i(26190),	-- 61 TEST Green Rogue Shoulder
		i(26191),	-- 61 TEST Green Rogue Wrist
		i(26836),	-- 62 TEST Green Druid Belt
		i(26837),	-- 62 TEST Green Druid Boot
		i(26838),	-- 62 TEST Green Druid Chest
		i(26839),	-- 62 TEST Green Druid Hand
		i(26840),	-- 62 TEST Green Druid Head
		i(26841),	-- 62 TEST Green Druid Legs
		i(26842),	-- 62 TEST Green Druid Shoulder
		i(26843),	-- 62 TEST Green Druid Wrist
		i(26192),	-- 62 TEST Green Rogue Belt
		i(26193),	-- 62 TEST Green Rogue Boot
		i(26194),	-- 62 TEST Green Rogue Chest
		i(26195),	-- 62 TEST Green Rogue Hand
		i(26196),	-- 62 TEST Green Rogue Head
		i(26197),	-- 62 TEST Green Rogue Legs
		i(26198),	-- 62 TEST Green Rogue Shoulder
		i(26199),	-- 62 TEST Green Rogue Wrist
		i(26844),	-- 63 TEST Green Druid Belt
		i(26845),	-- 63 TEST Green Druid Boot
		i(26846),	-- 63 TEST Green Druid Chest
		i(26847),	-- 63 TEST Green Druid Hand
		i(26848),	-- 63 TEST Green Druid Head
		i(26849),	-- 63 TEST Green Druid Legs
		i(26850),	-- 63 TEST Green Druid Shoulder
		i(26851),	-- 63 TEST Green Druid Wrist
		i(26200),	-- 63 TEST Green Rogue Belt
		i(26201),	-- 63 TEST Green Rogue Boot
		i(26202),	-- 63 TEST Green Rogue Chest
		i(26203),	-- 63 TEST Green Rogue Hand
		i(26204),	-- 63 TEST Green Rogue Head
		i(26205),	-- 63 TEST Green Rogue Legs
		i(26206),	-- 63 TEST Green Rogue Shoulder
		i(26207),	-- 63 TEST Green Rogue Wrist
		i(26852),	-- 64 TEST Green Druid Belt
		i(26853),	-- 64 TEST Green Druid Boot
		i(26854),	-- 64 TEST Green Druid Chest
		i(26855),	-- 64 TEST Green Druid Hand
		i(26856),	-- 64 TEST Green Druid Head
		i(26857),	-- 64 TEST Green Druid Legs
		i(26858),	-- 64 TEST Green Druid Shoulder
		i(26859),	-- 64 TEST Green Druid Wrist
		i(26208),	-- 64 TEST Green Rogue Belt
		i(26209),	-- 64 TEST Green Rogue Boot
		i(26210),	-- 64 TEST Green Rogue Chest
		i(26211),	-- 64 TEST Green Rogue Hand
		i(26212),	-- 64 TEST Green Rogue Head
		i(26213),	-- 64 TEST Green Rogue Legs
		i(26214),	-- 64 TEST Green Rogue Shoulder
		i(26215),	-- 64 TEST Green Rogue Wrist
		i(26860),	-- 65 TEST Green Druid Belt
		i(26861),	-- 65 TEST Green Druid Boot
		i(26862),	-- 65 TEST Green Druid Chest
		i(26863),	-- 65 TEST Green Druid Hand
		i(26864),	-- 65 TEST Green Druid Head
		i(26865),	-- 65 TEST Green Druid Legs
		i(26866),	-- 65 TEST Green Druid Shoulder
		i(26867),	-- 65 TEST Green Druid Wrist
		i(26216),	-- 65 TEST Green Rogue Belt
		i(26217),	-- 65 TEST Green Rogue Boot
		i(26218),	-- 65 TEST Green Rogue Chest
		i(26219),	-- 65 TEST Green Rogue Hand
		i(26220),	-- 65 TEST Green Rogue Head
		i(26221),	-- 65 TEST Green Rogue Legs
		i(26222),	-- 65 TEST Green Rogue Shoulder
		i(26223),	-- 65 TEST Green Rogue Wrist
		i(26868),	-- 66 TEST Green Druid Belt
		i(26869),	-- 66 TEST Green Druid Boot
		i(26870),	-- 66 TEST Green Druid Chest
		i(26871),	-- 66 TEST Green Druid Hand
		i(26872),	-- 66 TEST Green Druid Head
		i(26873),	-- 66 TEST Green Druid Legs
		i(26874),	-- 66 TEST Green Druid Shoulder
		i(26875),	-- 66 TEST Green Druid Wrist
		i(26224),	-- 66 TEST Green Rogue Belt
		i(26225),	-- 66 TEST Green Rogue Boot
		i(26226),	-- 66 TEST Green Rogue Chest
		i(26227),	-- 66 TEST Green Rogue Hand
		i(26228),	-- 66 TEST Green Rogue Head
		i(26229),	-- 66 TEST Green Rogue Legs
		i(26230),	-- 66 TEST Green Rogue Shoulder
		i(26231),	-- 66 TEST Green Rogue Wrist
		i(26876),	-- 67 TEST Green Druid Belt
		i(26877),	-- 67 TEST Green Druid Boot
		i(26878),	-- 67 TEST Green Druid Chest
		i(26879),	-- 67 TEST Green Druid Hand
		i(26880),	-- 67 TEST Green Druid Head
		i(26881),	-- 67 TEST Green Druid Legs
		i(26882),	-- 67 TEST Green Druid Shoulder
		i(26883),	-- 67 TEST Green Druid Wrist
		i(26232),	-- 67 TEST Green Rogue Belt
		i(26233),	-- 67 TEST Green Rogue Boot
		i(26234),	-- 67 TEST Green Rogue Chest
		i(26235),	-- 67 TEST Green Rogue Hand
		i(26236),	-- 67 TEST Green Rogue Head
		i(26237),	-- 67 TEST Green Rogue Legs
		i(26238),	-- 67 TEST Green Rogue Shoulder
		i(26239),	-- 67 TEST Green Rogue Wrist
		i(26884),	-- 68 TEST Green Druid Belt
		i(26885),	-- 68 TEST Green Druid Boot
		i(26886),	-- 68 TEST Green Druid Chest
		i(26887),	-- 68 TEST Green Druid Hand
		i(26888),	-- 68 TEST Green Druid Head
		i(26889),	-- 68 TEST Green Druid Legs
		i(26890),	-- 68 TEST Green Druid Shoulder
		i(26891),	-- 68 TEST Green Druid Wrist
		i(26240),	-- 68 TEST Green Rogue Belt
		i(26241),	-- 68 TEST Green Rogue Boot
		i(26242),	-- 68 TEST Green Rogue Chest
		i(26243),	-- 68 TEST Green Rogue Hand
		i(26244),	-- 68 TEST Green Rogue Head
		i(26245),	-- 68 TEST Green Rogue Legs
		i(26246),	-- 68 TEST Green Rogue Shoulder
		i(26247),	-- 68 TEST Green Rogue Wrist
		i(26892),	-- 69 TEST Green Druid Belt
		i(26893),	-- 69 TEST Green Druid Boot
		i(26894),	-- 69 TEST Green Druid Chest
		i(26895),	-- 69 TEST Green Druid Hand
		i(26896),	-- 69 TEST Green Druid Head
		i(26897),	-- 69 TEST Green Druid Legs
		i(26898),	-- 69 TEST Green Druid Shoulder
		i(26899),	-- 69 TEST Green Druid Wrist
		i(26248),	-- 69 TEST Green Rogue Belt
		i(26249),	-- 69 TEST Green Rogue Boot
		i(26250),	-- 69 TEST Green Rogue Chest
		i(26251),	-- 69 TEST Green Rogue Hand
		i(26252),	-- 69 TEST Green Rogue Head
		i(26253),	-- 69 TEST Green Rogue Legs
		i(26254),	-- 69 TEST Green Rogue Shoulder
		i(26255),	-- 69 TEST Green Rogue Wrist
		i(26900),	-- 70 TEST Green Druid Belt
		i(26901),	-- 70 TEST Green Druid Boot
		i(26902),	-- 70 TEST Green Druid Chest
		i(26903),	-- 70 TEST Green Druid Hand
		i(26904),	-- 70 TEST Green Druid Head
		i(26905),	-- 70 TEST Green Druid Legs
		i(26906),	-- 70 TEST Green Druid Shoulder
		i(26907),	-- 70 TEST Green Druid Wrist
		i(26256),	-- 70 TEST Green Rogue Belt
		i(26257),	-- 70 TEST Green Rogue Boot
		i(26258),	-- 70 TEST Green Rogue Chest
		i(26259),	-- 70 TEST Green Rogue Hand
		i(26260),	-- 70 TEST Green Rogue Head
		i(26261),	-- 70 TEST Green Rogue Legs
		i(26262),	-- 70 TEST Green Rogue Shoulder
		i(26263),	-- 70 TEST Green Rogue Wrist
		i(26908),	-- 71 TEST Green Druid Belt
		i(26909),	-- 71 TEST Green Druid Boot
		i(26910),	-- 71 TEST Green Druid Chest
		i(26911),	-- 71 TEST Green Druid Hand
		i(26912),	-- 71 TEST Green Druid Head
		i(26913),	-- 71 TEST Green Druid Legs
		i(26914),	-- 71 TEST Green Druid Shoulder
		i(26915),	-- 71 TEST Green Druid Wrist
		i(26264),	-- 71 TEST Green Rogue Belt
		i(26265),	-- 71 TEST Green Rogue Boot
		i(26266),	-- 71 TEST Green Rogue Chest
		i(26267),	-- 71 TEST Green Rogue Hand
		i(26268),	-- 71 TEST Green Rogue Head
		i(26269),	-- 71 TEST Green Rogue Legs
		i(26270),	-- 71 TEST Green Rogue Shoulder
		i(26271),	-- 71 TEST Green Rogue Wrist
		i(26916),	-- 72 TEST Green Druid Belt
		i(26917),	-- 72 TEST Green Druid Boot
		i(26918),	-- 72 TEST Green Druid Chest
		i(26919),	-- 72 TEST Green Druid Hand
		i(26920),	-- 72 TEST Green Druid Head
		i(26921),	-- 72 TEST Green Druid Legs
		i(26922),	-- 72 TEST Green Druid Shoulder
		i(26923),	-- 72 TEST Green Druid Wrist
		i(26272),	-- 72 TEST Green Rogue Belt
		i(26273),	-- 72 TEST Green Rogue Boot
		i(26274),	-- 72 TEST Green Rogue Chest
		i(26275),	-- 72 TEST Green Rogue Hand
		i(26276),	-- 72 TEST Green Rogue Head
		i(26277),	-- 72 TEST Green Rogue Legs
		i(26278),	-- 72 TEST Green Rogue Shoulder
		i(26279),	-- 72 TEST Green Rogue Wrist
	}),
	filter(6, {	-- Mail
		i(32970),	-- TEST Steadfast Breastplate
		i(26280),	-- 59 TEST Green Hunter Belt
		i(26281),	-- 59 TEST Green Hunter Boot
		i(26282),	-- 59 TEST Green Hunter Chest
		i(26283),	-- 59 TEST Green Hunter Hand
		i(26284),	-- 59 TEST Green Hunter Head
		i(26285),	-- 59 TEST Green Hunter Legs
		i(26286),	-- 59 TEST Green Hunter Shoulder
		i(26287),	-- 59 TEST Green Hunter Wrist
		i(26924),	-- 59 TEST Green Shaman Belt
		i(26925),	-- 59 TEST Green Shaman Boot
		i(26926),	-- 59 TEST Green Shaman Chest
		i(26927),	-- 59 TEST Green Shaman Hand
		i(26928),	-- 59 TEST Green Shaman Head
		i(26929),	-- 59 TEST Green Shaman Legs
		i(26930),	-- 59 TEST Green Shaman Shoulder
		i(26931),	-- 59 TEST Green Shaman Wrist
		i(26288),	-- 60 TEST Green Hunter Belt
		i(26289),	-- 60 TEST Green Hunter Boot
		i(26290),	-- 60 TEST Green Hunter Chest
		i(26291),	-- 60 TEST Green Hunter Hand
		i(26292),	-- 60 TEST Green Hunter Head
		i(26293),	-- 60 TEST Green Hunter Legs
		i(26294),	-- 60 TEST Green Hunter Shoulder
		i(26295),	-- 60 TEST Green Hunter Wrist
		i(26932),	-- 60 TEST Green Shaman Belt
		i(26933),	-- 60 TEST Green Shaman Boot
		i(26934),	-- 60 TEST Green Shaman Chest
		i(26935),	-- 60 TEST Green Shaman Hand
		i(26936),	-- 60 TEST Green Shaman Head
		i(26937),	-- 60 TEST Green Shaman Legs
		i(26938),	-- 60 TEST Green Shaman Shoulder
		i(26939),	-- 60 TEST Green Shaman Wrist
		i(26296),	-- 61 TEST Green Hunter Belt
		i(26297),	-- 61 TEST Green Hunter Boot
		i(26298),	-- 61 TEST Green Hunter Chest
		i(26299),	-- 61 TEST Green Hunter Hand
		i(26300),	-- 61 TEST Green Hunter Head
		i(26301),	-- 61 TEST Green Hunter Legs
		i(26302),	-- 61 TEST Green Hunter Shoulder
		i(26303),	-- 61 TEST Green Hunter Wrist
		i(26940),	-- 61 TEST Green Shaman Belt
		i(26941),	-- 61 TEST Green Shaman Boot
		i(26942),	-- 61 TEST Green Shaman Chest
		i(26943),	-- 61 TEST Green Shaman Hand
		i(26944),	-- 61 TEST Green Shaman Head
		i(26945),	-- 61 TEST Green Shaman Legs
		i(26946),	-- 61 TEST Green Shaman Shoulder
		i(26947),	-- 61 TEST Green Shaman Wrist
		i(26304),	-- 62 TEST Green Hunter Belt
		i(26305),	-- 62 TEST Green Hunter Boot
		i(26306),	-- 62 TEST Green Hunter Chest
		i(26307),	-- 62 TEST Green Hunter Hand
		i(26308),	-- 62 TEST Green Hunter Head
		i(26309),	-- 62 TEST Green Hunter Legs
		i(26310),	-- 62 TEST Green Hunter Shoulder
		i(26311),	-- 62 TEST Green Hunter Wrist
		i(26948),	-- 62 TEST Green Shaman Belt
		i(26949),	-- 62 TEST Green Shaman Boot
		i(26950),	-- 62 TEST Green Shaman Chest
		i(26951),	-- 62 TEST Green Shaman Hand
		i(26952),	-- 62 TEST Green Shaman Head
		i(26953),	-- 62 TEST Green Shaman Legs
		i(26954),	-- 62 TEST Green Shaman Shoulder
		i(26955),	-- 62 TEST Green Shaman Wrist
		i(20776),	-- 63 green shaman bindings
		i(20778),	-- 63 green shaman cord
		i(26312),	-- 63 TEST Green Hunter Belt
		i(26313),	-- 63 TEST Green Hunter Boot
		i(26314),	-- 63 TEST Green Hunter Chest
		i(26315),	-- 63 TEST Green Hunter Hand
		i(26316),	-- 63 TEST Green Hunter Head
		i(26317),	-- 63 TEST Green Hunter Legs
		i(26318),	-- 63 TEST Green Hunter Shoulder
		i(26319),	-- 63 TEST Green Hunter Wrist
		i(26956),	-- 63 TEST Green Shaman Belt
		i(26957),	-- 63 TEST Green Shaman Boot
		i(26958),	-- 63 TEST Green Shaman Chest
		i(26959),	-- 63 TEST Green Shaman Hand
		i(26960),	-- 63 TEST Green Shaman Head
		i(26961),	-- 63 TEST Green Shaman Legs
		i(26962),	-- 63 TEST Green Shaman Shoulder
		i(26963),	-- 63 TEST Green Shaman Wrist
		i(26320),	-- 64 TEST Green Hunter Belt
		i(26321),	-- 64 TEST Green Hunter Boot
		i(26322),	-- 64 TEST Green Hunter Chest
		i(26323),	-- 64 TEST Green Hunter Hand
		i(26324),	-- 64 TEST Green Hunter Head
		i(26325),	-- 64 TEST Green Hunter Legs
		i(26326),	-- 64 TEST Green Hunter Shoulder
		i(26327),	-- 64 TEST Green Hunter Wrist
		i(26964),	-- 64 TEST Green Shaman Belt
		i(26965),	-- 64 TEST Green Shaman Boot
		i(26966),	-- 64 TEST Green Shaman Chest
		i(26967),	-- 64 TEST Green Shaman Hand
		i(26968),	-- 64 TEST Green Shaman Head
		i(26969),	-- 64 TEST Green Shaman Legs
		i(26970),	-- 64 TEST Green Shaman Shoulder
		i(26971),	-- 64 TEST Green Shaman Wrist
		i(26328),	-- 65 TEST Green Hunter Belt
		i(26329),	-- 65 TEST Green Hunter Boot
		i(26330),	-- 65 TEST Green Hunter Chest
		i(26331),	-- 65 TEST Green Hunter Hand
		i(26332),	-- 65 TEST Green Hunter Head
		i(26333),	-- 65 TEST Green Hunter Legs
		i(26334),	-- 65 TEST Green Hunter Shoulder
		i(26335),	-- 65 TEST Green Hunter Wrist
		i(26972),	-- 65 TEST Green Shaman Belt
		i(26973),	-- 65 TEST Green Shaman Boot
		i(26974),	-- 65 TEST Green Shaman Chest
		i(26975),	-- 65 TEST Green Shaman Hand
		i(26976),	-- 65 TEST Green Shaman Head
		i(26977),	-- 65 TEST Green Shaman Legs
		i(26978),	-- 65 TEST Green Shaman Shoulder
		i(26979),	-- 65 TEST Green Shaman Wrist
		i(26336),	-- 66 TEST Green Hunter Belt
		i(26337),	-- 66 TEST Green Hunter Boot
		i(26338),	-- 66 TEST Green Hunter Chest
		i(26339),	-- 66 TEST Green Hunter Hand
		i(26340),	-- 66 TEST Green Hunter Head
		i(26341),	-- 66 TEST Green Hunter Legs
		i(26342),	-- 66 TEST Green Hunter Shoulder
		i(26343),	-- 66 TEST Green Hunter Wrist
		i(26980),	-- 66 TEST Green Shaman Belt
		i(26981),	-- 66 TEST Green Shaman Boot
		i(26982),	-- 66 TEST Green Shaman Chest
		i(26983),	-- 66 TEST Green Shaman Hand
		i(26984),	-- 66 TEST Green Shaman Head
		i(26985),	-- 66 TEST Green Shaman Legs
		i(26986),	-- 66 TEST Green Shaman Shoulder
		i(26987),	-- 66 TEST Green Shaman Wrist
		i(26344),	-- 67 TEST Green Hunter Belt
		i(26345),	-- 67 TEST Green Hunter Boot
		i(26346),	-- 67 TEST Green Hunter Chest
		i(26347),	-- 67 TEST Green Hunter Hand
		i(26348),	-- 67 TEST Green Hunter Head
		i(26349),	-- 67 TEST Green Hunter Legs
		i(26350),	-- 67 TEST Green Hunter Shoulder
		i(26351),	-- 67 TEST Green Hunter Wrist
		i(26988),	-- 67 TEST Green Shaman Belt
		i(26989),	-- 67 TEST Green Shaman Boot
		i(26990),	-- 67 TEST Green Shaman Chest
		i(26991),	-- 67 TEST Green Shaman Hand
		i(26992),	-- 67 TEST Green Shaman Head
		i(26993),	-- 67 TEST Green Shaman Legs
		i(26994),	-- 67 TEST Green Shaman Shoulder
		i(26995),	-- 67 TEST Green Shaman Wrist
		i(26352),	-- 68 TEST Green Hunter Belt
		i(26353),	-- 68 TEST Green Hunter Boot
		i(26354),	-- 68 TEST Green Hunter Chest
		i(26355),	-- 68 TEST Green Hunter Hand
		i(26356),	-- 68 TEST Green Hunter Head
		i(26357),	-- 68 TEST Green Hunter Legs
		i(26358),	-- 68 TEST Green Hunter Shoulder
		i(26359),	-- 68 TEST Green Hunter Wrist
		i(26996),	-- 68 TEST Green Shaman Belt
		i(26997),	-- 68 TEST Green Shaman Boot
		i(26998),	-- 68 TEST Green Shaman Chest
		i(26999),	-- 68 TEST Green Shaman Hand
		i(27000),	-- 68 TEST Green Shaman Head
		i(27001),	-- 68 TEST Green Shaman Legs
		i(27002),	-- 68 TEST Green Shaman Shoulder
		i(27003),	-- 68 TEST Green Shaman Wrist
		i(26360),	-- 69 TEST Green Hunter Belt
		i(26361),	-- 69 TEST Green Hunter Boot
		i(26362),	-- 69 TEST Green Hunter Chest
		i(26363),	-- 69 TEST Green Hunter Hand
		i(26364),	-- 69 TEST Green Hunter Head
		i(26365),	-- 69 TEST Green Hunter Legs
		i(26366),	-- 69 TEST Green Hunter Shoulder
		i(26367),	-- 69 TEST Green Hunter Wrist
		i(27004),	-- 69 TEST Green Shaman Belt
		i(27005),	-- 69 TEST Green Shaman Boot
		i(27006),	-- 69 TEST Green Shaman Chest
		i(27007),	-- 69 TEST Green Shaman Hand
		i(27008),	-- 69 TEST Green Shaman Head
		i(27009),	-- 69 TEST Green Shaman Legs
		i(27010),	-- 69 TEST Green Shaman Shoulder
		i(27011),	-- 69 TEST Green Shaman Wrist
		i(26368),	-- 70 TEST Green Hunter Belt
		i(26369),	-- 70 TEST Green Hunter Boot
		i(26370),	-- 70 TEST Green Hunter Chest
		i(26371),	-- 70 TEST Green Hunter Hand
		i(26372),	-- 70 TEST Green Hunter Head
		i(26373),	-- 70 TEST Green Hunter Legs
		i(26374),	-- 70 TEST Green Hunter Shoulder
		i(26375),	-- 70 TEST Green Hunter Wrist
		i(27012),	-- 70 TEST Green Shaman Belt
		i(27013),	-- 70 TEST Green Shaman Boot
		i(27014),	-- 70 TEST Green Shaman Chest
		i(27015),	-- 70 TEST Green Shaman Hand
		i(27016),	-- 70 TEST Green Shaman Head
		i(27017),	-- 70 TEST Green Shaman Legs
		i(27018),	-- 70 TEST Green Shaman Shoulder
		i(27019),	-- 70 TEST Green Shaman Wrist
		i(26376),	-- 71 TEST Green Hunter Belt
		i(26377),	-- 71 TEST Green Hunter Boot
		i(26378),	-- 71 TEST Green Hunter Chest
		i(26379),	-- 71 TEST Green Hunter Hand
		i(26380),	-- 71 TEST Green Hunter Head
		i(26381),	-- 71 TEST Green Hunter Legs
		i(26382),	-- 71 TEST Green Hunter Shoulder
		i(26383),	-- 71 TEST Green Hunter Wrist
		i(27020),	-- 71 TEST Green Shaman Belt
		i(27021),	-- 71 TEST Green Shaman Boot
		i(27022),	-- 71 TEST Green Shaman Chest
		i(27023),	-- 71 TEST Green Shaman Hand
		i(27024),	-- 71 TEST Green Shaman Head
		i(27025),	-- 71 TEST Green Shaman Legs
		i(27026),	-- 71 TEST Green Shaman Shoulder
		i(27027),	-- 71 TEST Green Shaman Wrist
		i(26384),	-- 72 TEST Green Hunter Belt
		i(26385),	-- 72 TEST Green Hunter Boot
		i(26386),	-- 72 TEST Green Hunter Chest
		i(26387),	-- 72 TEST Green Hunter Hand
		i(26388),	-- 72 TEST Green Hunter Head
		i(26389),	-- 72 TEST Green Hunter Legs
		i(26390),	-- 72 TEST Green Hunter Shoulder
		i(26391),	-- 72 TEST Green Hunter Wrist
		i(27028),	-- 72 TEST Green Shaman Belt
		i(27029),	-- 72 TEST Green Shaman Boot
		i(27030),	-- 72 TEST Green Shaman Chest
		i(27031),	-- 72 TEST Green Shaman Hand
		i(27032),	-- 72 TEST Green Shaman Head
		i(27033),	-- 72 TEST Green Shaman Legs
		i(27034),	-- 72 TEST Green Shaman Shoulder
		i(27035),	-- 72 TEST Green Shaman Wrist
		i(20786),	-- 90 green shaman bindings
		i(20789),	-- 90 green shaman cord
	}),
	filter(7, {	-- Plate
		i(27036),	-- 59 TEST Green Paladin Belt
		i(27037),	-- 59 TEST Green Paladin Boot
		i(27038),	-- 59 TEST Green Paladin Chest
		i(27039),	-- 59 TEST Green Paladin Hand
		i(27040),	-- 59 TEST Green Paladin Head
		i(27041),	-- 59 TEST Green Paladin Legs
		i(27042),	-- 59 TEST Green Paladin Shoulder
		i(27043),	-- 59 TEST Green Paladin Wrist
		i(26392),	-- 59 TEST Green Warrior Belt
		i(26393),	-- 59 TEST Green Warrior Boot
		i(26394),	-- 59 TEST Green Warrior Chest
		i(26395),	-- 59 TEST Green Warrior Hand
		i(26396),	-- 59 TEST Green Warrior Head
		i(26397),	-- 59 TEST Green Warrior Legs
		i(26398),	-- 59 TEST Green Warrior Shoulder
		i(26399),	-- 59 TEST Green Warrior Wrist
		i(27044),	-- 60 TEST Green Paladin Belt
		i(27045),	-- 60 TEST Green Paladin Boot
		i(27046),	-- 60 TEST Green Paladin Chest
		i(27047),	-- 60 TEST Green Paladin Hand
		i(27048),	-- 60 TEST Green Paladin Head
		i(27049),	-- 60 TEST Green Paladin Legs
		i(27050),	-- 60 TEST Green Paladin Shoulder
		i(27051),	-- 60 TEST Green Paladin Wrist
		i(26400),	-- 60 TEST Green Warrior Belt
		i(26401),	-- 60 TEST Green Warrior Boot
		i(26402),	-- 60 TEST Green Warrior Chest
		i(26403),	-- 60 TEST Green Warrior Hand
		i(26404),	-- 60 TEST Green Warrior Head
		i(26405),	-- 60 TEST Green Warrior Legs
		i(26406),	-- 60 TEST Green Warrior Shoulder
		i(26407),	-- 60 TEST Green Warrior Wrist
		i(27052),	-- 61 TEST Green Paladin Belt
		i(27053),	-- 61 TEST Green Paladin Boot
		i(27054),	-- 61 TEST Green Paladin Chest
		i(27055),	-- 61 TEST Green Paladin Hand
		i(27056),	-- 61 TEST Green Paladin Head
		i(27057),	-- 61 TEST Green Paladin Legs
		i(27058),	-- 61 TEST Green Paladin Shoulder
		i(27059),	-- 61 TEST Green Paladin Wrist
		i(26408),	-- 61 TEST Green Warrior Belt
		i(26409),	-- 61 TEST Green Warrior Boot
		i(26410),	-- 61 TEST Green Warrior Chest
		i(26411),	-- 61 TEST Green Warrior Hand
		i(26412),	-- 61 TEST Green Warrior Head
		i(26413),	-- 61 TEST Green Warrior Legs
		i(26414),	-- 61 TEST Green Warrior Shoulder
		i(26415),	-- 61 TEST Green Warrior Wrist
		i(27060),	-- 62 TEST Green Paladin Belt
		i(27061),	-- 62 TEST Green Paladin Boot
		i(27062),	-- 62 TEST Green Paladin Chest
		i(27063),	-- 62 TEST Green Paladin Hand
		i(27064),	-- 62 TEST Green Paladin Head
		i(27065),	-- 62 TEST Green Paladin Legs
		i(27066),	-- 62 TEST Green Paladin Shoulder
		i(27067),	-- 62 TEST Green Paladin Wrist
		i(26416),	-- 62 TEST Green Warrior Belt
		i(26417),	-- 62 TEST Green Warrior Boot
		i(26418),	-- 62 TEST Green Warrior Chest
		i(26419),	-- 62 TEST Green Warrior Hand
		i(26420),	-- 62 TEST Green Warrior Head
		i(26421),	-- 62 TEST Green Warrior Legs
		i(26422),	-- 62 TEST Green Warrior Shoulder
		i(26423),	-- 62 TEST Green Warrior Wrist
		i(27068),	-- 63 TEST Green Paladin Belt
		i(27069),	-- 63 TEST Green Paladin Boot
		i(27070),	-- 63 TEST Green Paladin Chest
		i(27071),	-- 63 TEST Green Paladin Hand
		i(27072),	-- 63 TEST Green Paladin Head
		i(27073),	-- 63 TEST Green Paladin Legs
		i(27074),	-- 63 TEST Green Paladin Shoulder
		i(27075),	-- 63 TEST Green Paladin Wrist
		i(26424),	-- 63 TEST Green Warrior Belt
		i(26425),	-- 63 TEST Green Warrior Boot
		i(26426),	-- 63 TEST Green Warrior Chest
		i(26427),	-- 63 TEST Green Warrior Hand
		i(26428),	-- 63 TEST Green Warrior Head
		i(26429),	-- 63 TEST Green Warrior Legs
		i(26430),	-- 63 TEST Green Warrior Shoulder
		i(26431),	-- 63 TEST Green Warrior Wrist
		i(27076),	-- 64 TEST Green Paladin Belt
		i(27077),	-- 64 TEST Green Paladin Boot
		i(27078),	-- 64 TEST Green Paladin Chest
		i(27079),	-- 64 TEST Green Paladin Hand
		i(27080),	-- 64 TEST Green Paladin Head
		i(27081),	-- 64 TEST Green Paladin Legs
		i(27082),	-- 64 TEST Green Paladin Shoulder
		i(27083),	-- 64 TEST Green Paladin Wrist
		i(26432),	-- 64 TEST Green Warrior Belt
		i(26433),	-- 64 TEST Green Warrior Boot
		i(26434),	-- 64 TEST Green Warrior Chest
		i(26435),	-- 64 TEST Green Warrior Hand
		i(26436),	-- 64 TEST Green Warrior Head
		i(26437),	-- 64 TEST Green Warrior Legs
		i(26438),	-- 64 TEST Green Warrior Shoulder
		i(26439),	-- 64 TEST Green Warrior Wrist
		i(27084),	-- 65 TEST Green Paladin Belt
		i(27085),	-- 65 TEST Green Paladin Boot
		i(27086),	-- 65 TEST Green Paladin Chest
		i(27087),	-- 65 TEST Green Paladin Hand
		i(27088),	-- 65 TEST Green Paladin Head
		i(27089),	-- 65 TEST Green Paladin Legs
		i(27090),	-- 65 TEST Green Paladin Shoulder
		i(27091),	-- 65 TEST Green Paladin Wrist
		i(26440),	-- 65 TEST Green Warrior Belt
		i(26441),	-- 65 TEST Green Warrior Boot
		i(26442),	-- 65 TEST Green Warrior Chest
		i(26443),	-- 65 TEST Green Warrior Hand
		i(26444),	-- 65 TEST Green Warrior Head
		i(26445),	-- 65 TEST Green Warrior Legs
		i(26446),	-- 65 TEST Green Warrior Shoulder
		i(26447),	-- 65 TEST Green Warrior Wrist
		i(27092),	-- 66 TEST Green Paladin Belt
		i(27093),	-- 66 TEST Green Paladin Boot
		i(27094),	-- 66 TEST Green Paladin Chest
		i(27095),	-- 66 TEST Green Paladin Hand
		i(27096),	-- 66 TEST Green Paladin Head
		i(27097),	-- 66 TEST Green Paladin Legs
		i(27098),	-- 66 TEST Green Paladin Shoulder
		i(27099),	-- 66 TEST Green Paladin Wrist
		i(26448),	-- 66 TEST Green Warrior Belt
		i(26449),	-- 66 TEST Green Warrior Boot
		i(26450),	-- 66 TEST Green Warrior Chest
		i(26451),	-- 66 TEST Green Warrior Hand
		i(26452),	-- 66 TEST Green Warrior Head
		i(26453),	-- 66 TEST Green Warrior Legs
		i(26454),	-- 66 TEST Green Warrior Shoulder
		i(26455),	-- 66 TEST Green Warrior Wrist
		i(27100),	-- 67 TEST Green Paladin Belt
		i(27101),	-- 67 TEST Green Paladin Boot
		i(27102),	-- 67 TEST Green Paladin Chest
		i(27103),	-- 67 TEST Green Paladin Hand
		i(27104),	-- 67 TEST Green Paladin Head
		i(27105),	-- 67 TEST Green Paladin Legs
		i(27106),	-- 67 TEST Green Paladin Shoulder
		i(27107),	-- 67 TEST Green Paladin Wrist
		i(26456),	-- 67 TEST Green Warrior Belt
		i(26457),	-- 67 TEST Green Warrior Boot
		i(26458),	-- 67 TEST Green Warrior Chest
		i(26459),	-- 67 TEST Green Warrior Hand
		i(26460),	-- 67 TEST Green Warrior Head
		i(26461),	-- 67 TEST Green Warrior Legs
		i(26462),	-- 67 TEST Green Warrior Shoulder
		i(26463),	-- 67 TEST Green Warrior Wrist
		i(27108),	-- 68 TEST Green Paladin Belt
		i(27109),	-- 68 TEST Green Paladin Boot
		i(27110),	-- 68 TEST Green Paladin Chest
		i(27111),	-- 68 TEST Green Paladin Hand
		i(27112),	-- 68 TEST Green Paladin Head
		i(27113),	-- 68 TEST Green Paladin Legs
		i(27114),	-- 68 TEST Green Paladin Shoulder
		i(27115),	-- 68 TEST Green Paladin Wrist
		i(26464),	-- 68 TEST Green Warrior Belt
		i(26465),	-- 68 TEST Green Warrior Boot
		i(26466),	-- 68 TEST Green Warrior Chest
		i(26467),	-- 68 TEST Green Warrior Hand
		i(26468),	-- 68 TEST Green Warrior Head
		i(26469),	-- 68 TEST Green Warrior Legs
		i(26470),	-- 68 TEST Green Warrior Shoulder
		i(26471),	-- 68 TEST Green Warrior Wrist
		i(27116),	-- 69 TEST Green Paladin Belt
		i(27117),	-- 69 TEST Green Paladin Boot
		i(27118),	-- 69 TEST Green Paladin Chest
		i(27119),	-- 69 TEST Green Paladin Hand
		i(27120),	-- 69 TEST Green Paladin Head
		i(27121),	-- 69 TEST Green Paladin Legs
		i(27122),	-- 69 TEST Green Paladin Shoulder
		i(27123),	-- 69 TEST Green Paladin Wrist
		i(26472),	-- 69 TEST Green Warrior Belt
		i(26473),	-- 69 TEST Green Warrior Boot
		i(26474),	-- 69 TEST Green Warrior Chest
		i(26475),	-- 69 TEST Green Warrior Hand
		i(26476),	-- 69 TEST Green Warrior Head
		i(26477),	-- 69 TEST Green Warrior Legs
		i(26478),	-- 69 TEST Green Warrior Shoulder
		i(26479),	-- 69 TEST Green Warrior Wrist
		i(27124),	-- 70 TEST Green Paladin Belt
		i(27125),	-- 70 TEST Green Paladin Boot
		i(27126),	-- 70 TEST Green Paladin Chest
		i(27127),	-- 70 TEST Green Paladin Hand
		i(27128),	-- 70 TEST Green Paladin Head
		i(27129),	-- 70 TEST Green Paladin Legs
		i(27130),	-- 70 TEST Green Paladin Shoulder
		i(27131),	-- 70 TEST Green Paladin Wrist
		i(26480),	-- 70 TEST Green Warrior Belt
		i(26481),	-- 70 TEST Green Warrior Boot
		i(26482),	-- 70 TEST Green Warrior Chest
		i(26483),	-- 70 TEST Green Warrior Hand
		i(26484),	-- 70 TEST Green Warrior Head
		i(26485),	-- 70 TEST Green Warrior Legs
		i(26486),	-- 70 TEST Green Warrior Shoulder
		i(26487),	-- 70 TEST Green Warrior Wrist
		i(27132),	-- 71 TEST Green Paladin Belt
		i(27133),	-- 71 TEST Green Paladin Boot
		i(27134),	-- 71 TEST Green Paladin Chest
		i(27135),	-- 71 TEST Green Paladin Hand
		i(27136),	-- 71 TEST Green Paladin Head
		i(27137),	-- 71 TEST Green Paladin Legs
		i(27138),	-- 71 TEST Green Paladin Shoulder
		i(27139),	-- 71 TEST Green Paladin Wrist
		i(26488),	-- 71 TEST Green Warrior Belt
		i(26489),	-- 71 TEST Green Warrior Boot
		i(26490),	-- 71 TEST Green Warrior Chest
		i(26491),	-- 71 TEST Green Warrior Hand
		i(26492),	-- 71 TEST Green Warrior Head
		i(26493),	-- 71 TEST Green Warrior Legs
		i(26494),	-- 71 TEST Green Warrior Shoulder
		i(26495),	-- 71 TEST Green Warrior Wrist
		i(27140),	-- 72 TEST Green Paladin Belt
		i(27141),	-- 72 TEST Green Paladin Boot
		i(27142),	-- 72 TEST Green Paladin Chest
		i(27143),	-- 72 TEST Green Paladin Hand
		i(27144),	-- 72 TEST Green Paladin Head
		i(27145),	-- 72 TEST Green Paladin Legs
		i(27146),	-- 72 TEST Green Paladin Shoulder
		i(27147),	-- 72 TEST Green Paladin Wrist
		i(26496),	-- 72 TEST Green Warrior Belt
		i(26497),	-- 72 TEST Green Warrior Boot
		i(26498),	-- 72 TEST Green Warrior Chest
		i(26499),	-- 72 TEST Green Warrior Hand
		i(26500),	-- 72 TEST Green Warrior Head
		i(26501),	-- 72 TEST Green Warrior Legs
		i(26502),	-- 72 TEST Green Warrior Shoulder
		i(26503),	-- 72 TEST Green Warrior Wrist
		i(25546),	-- QR XXXX Paladin Chest
		i(27963),	-- TEST 130 Epic Paladin DPS Belt
		i(27964),	-- TEST 130 Epic Paladin DPS Boot
		i(27965),	-- TEST 130 Epic Paladin DPS Chest
		i(27966),	-- TEST 130 Epic Paladin DPS Hand
		i(27967),	-- TEST 130 Epic Paladin DPS Head
		i(27968),	-- TEST 130 Epic Paladin DPS Legs
		i(27969),	-- TEST 130 Epic Paladin DPS Shoulder
		i(27970),	-- TEST 130 Epic Paladin DPS Wrist
		i(28010),	-- TEST 130 Epic Ret Paladin DPS Belt
		i(28011),	-- TEST 130 Epic Ret Paladin DPS Boot
		i(28012),	-- TEST 130 Epic Ret Paladin DPS Chest
		i(28013),	-- TEST 130 Epic Ret Paladin DPS Hand
		i(28014),	-- TEST 130 Epic Ret Paladin DPS Head
		i(28015),	-- TEST 130 Epic Ret Paladin DPS Legs
		i(28016),	-- TEST 130 Epic Ret Paladin DPS Shoulder
		i(28017),	-- TEST 130 Epic Ret Paladin DPS Wrist
		i(27950),	-- TEST 60 Blue Paladin DPS Belt
		i(27951),	-- TEST 60 Blue Paladin DPS Boot
		i(27952),	-- TEST 60 Blue Paladin DPS Chest
		i(27953),	-- TEST 60 Blue Paladin DPS Hand
		i(27954),	-- TEST 60 Blue Paladin DPS Head
		i(27955),	-- TEST 60 Blue Paladin DPS Legs
		i(27956),	-- TEST 60 Blue Paladin DPS Shoulder
		i(27957),	-- TEST 60 Blue Paladin DPS Wrist
		i(27997),	-- TEST 60 Blue Ret Paladin DPS Belt
		i(27998),	-- TEST 60 Blue Ret Paladin DPS Boot
		i(27999),	-- TEST 60 Blue Ret Paladin DPS Chest
		i(28000),	-- TEST 60 Blue Ret Paladin DPS Hand
		i(28001),	-- TEST 60 Blue Ret Paladin DPS Head
		i(28002),	-- TEST 60 Blue Ret Paladin DPS Legs
		i(28003),	-- TEST 60 Blue Ret Paladin DPS Shoulder
		i(28004),	-- TEST 60 Blue Ret Paladin DPS Wrist
	}),
	filter(8, {	-- Shield
		i(26546),	-- 59 TEST Green Shield
		i(26547),	-- 60 TEST Green Shield
		i(26548),	-- 61 TEST Green Shield
		i(26549),	-- 62 TEST Green Shield
		i(26550),	-- 63 TEST Green Shield
		i(26551),	-- 64 TEST Green Shield
		i(26552),	-- 65 TEST Green Shield
		i(26553),	-- 66 TEST Green Shield
		i(26554),	-- 67 TEST Green Shield
		i(26555),	-- 68 TEST Green Shield
		i(26556),	-- 69 TEST Green Shield
		i(26557),	-- 70 TEST Green Shield
		i(26558),	-- 71 TEST Green Shield
		i(26559),	-- 72 TEST Green Shield
		i(25627),	-- QR 9922 Shield
	}),
	filter(9, {	-- Tabard
	
	}),
	filter(10, {	-- Shirt
		
	}),
	filter(20, {	-- Dagger
		i(26574),	-- 59 TEST Green Dagger
		i(26770),	-- 59 TEST Green Spell Dagger
		i(26575),	-- 60 TEST Green Dagger
		i(26771),	-- 60 TEST Green Spell Dagger
		i(26576),	-- 61 TEST Green Dagger
		i(26772),	-- 61 TEST Green Spell Dagger
		i(26577),	-- 62 TEST Green Dagger
		i(26773),	-- 62 TEST Green Spell Dagger
		i(26578),	-- 63 TEST Green Dagger
		i(26774),	-- 63 TEST Green Spell Dagger
		i(26579),	-- 64 TEST Green Dagger
		i(26775),	-- 64 TEST Green Spell Dagger
		i(26580),	-- 65 TEST Green Dagger
		i(26776),	-- 65 TEST Green Spell Dagger
		i(26581),	-- 66 TEST Green Dagger
		i(26777),	-- 66 TEST Green Spell Dagger
		i(26582),	-- 67 TEST Green Dagger
		i(26778),	-- 67 TEST Green Spell Dagger
		i(26583),	-- 68 TEST Green Dagger
		i(26779),	-- 68 TEST Green Spell Dagger
		i(26584),	-- 69 TEST Green Dagger
		i(26780),	-- 69 TEST Green Spell Dagger
		i(26585),	-- 70 TEST Green Dagger
		i(26781),	-- 70 TEST Green Spell Dagger
		i(26586),	-- 71 TEST Green Dagger
		i(26782),	-- 71 TEST Green Spell Dagger
		i(26587),	-- 72 TEST Green Dagger
		i(26783),	-- 72 TEST Green Spell Dagger
	}),
	filter(21, {	-- One Handed Axe
		i(25799),	-- 130 Epic Warrior 1H Axe
		i(26673),	-- 60 TEST Green Axe1H
		i(26674),	-- 61 TEST Green Axe1H
		i(26675),	-- 62 TEST Green Axe1H
		i(26676),	-- 63 TEST Green Axe1H
		i(26677),	-- 64 TEST Green Axe1H
		i(26678),	-- 65 TEST Green Axe1H
		i(26679),	-- 66 TEST Green Axe1H
		i(26680),	-- 67 TEST Green Axe1H
		i(26681),	-- 68 TEST Green Axe1H
		i(26682),	-- 69 TEST Green Axe1H
		i(26683),	-- 70 TEST Green Axe1H
		i(26684),	-- 71 TEST Green Axe1H
		i(26685),	-- 72 TEST Green Axe1H
	}),
	filter(22, {	-- Two Handed Axe
		i(24524),	-- 130 Epic Warrior Axe
		i(26686),	-- 59 TEST Green Axe2H
		i(26687),	-- 60 TEST Green Axe2H
		i(26688),	-- 61 TEST Green Axe2H
		i(26689),	-- 62 TEST Green Axe2H
		i(20784),	-- 63 green shaman weapon
		i(26690),	-- 63 TEST Green Axe2H
		i(26691),	-- 64 TEST Green Axe2H
		i(26692),	-- 65 TEST Green Axe2H
		i(26693),	-- 66 TEST Green Axe2H
		i(26694),	-- 67 TEST Green Axe2H
		i(26695),	-- 68 TEST Green Axe2H
		i(26696),	-- 69 TEST Green Axe2H
		i(26697),	-- 70 TEST Green Axe2H
		i(26698),	-- 71 TEST Green Axe2H
		i(26699),	-- 72 TEST Green Axe2H
		i(20796),	-- 90 green shaman weapon
		i(29880),	-- Paladin 105 Test 2H Axe
		i(29881),	-- Paladin 150 Test 2H Axe
		i(29833),	-- Warrior 105 Test 2H Axe
		i(29834),	-- Warrior 150 Test 2H Axe
		i(24525),	-- zzold
	}),
	filter(23, {	-- One Handed Mace
		i(26784),	-- 59 TEST Green Healer Mace
		i(26588),	-- 59 TEST Green Mace1H
		i(26785),	-- 60 TEST Green Healer Mace
		i(26589),	-- 60 TEST Green Mace1H
		i(26786),	-- 61 TEST Green Healer Mace
		i(26590),	-- 61 TEST Green Mace1H
		i(26787),	-- 62 TEST Green Healer Mace
		i(26591),	-- 62 TEST Green Mace1H
		i(26788),	-- 63 TEST Green Healer Mace
		i(26592),	-- 63 TEST Green Mace1H
		i(26789),	-- 64 TEST Green Healer Mace
		i(26593),	-- 64 TEST Green Mace1H
		i(26790),	-- 65 TEST Green Healer Mace
		i(26594),	-- 65 TEST Green Mace1H
		i(26791),	-- 66 TEST Green Healer Mace
		i(26595),	-- 66 TEST Green Mace1H
		i(26792),	-- 67 TEST Green Healer Mace
		i(26596),	-- 67 TEST Green Mace1H
		i(26793),	-- 68 TEST Green Healer Mace
		i(26597),	-- 68 TEST Green Mace1H
		i(26794),	-- 69 TEST Green Healer Mace
		i(26598),	-- 69 TEST Green Mace1H
		i(26795),	-- 70 TEST Green Healer Mace
		i(26599),	-- 70 TEST Green Mace1H
		i(26796),	-- 71 TEST Green Healer Mace
		i(26600),	-- 71 TEST Green Mace1H
		i(26797),	-- 72 TEST Green Healer Mace
		i(26601),	-- 72 TEST Green Mace1H
	}),
	filter(24, {	-- Two Handed Mace
		i(26602),	-- 59 TEST Green Mace2H
		i(26603),	-- 60 TEST Green Mace2H
		i(26604),	-- 61 TEST Green Mace2H
		i(26605),	-- 62 TEST Green Mace2H
		i(26606),	-- 63 TEST Green Mace2H
		i(26607),	-- 64 TEST Green Mace2H
		i(26608),	-- 65 TEST Green Mace2H
		i(26609),	-- 66 TEST Green Mace2H
		i(26610),	-- 67 TEST Green Mace2H
		i(26611),	-- 68 TEST Green Mace2H
		i(26612),	-- 69 TEST Green Mace2H
		i(26613),	-- 70 TEST Green Mace2H
		i(26614),	-- 71 TEST Green Mace2H
		i(26615),	-- 72 TEST Green Mace2H
	}),
	filter(25, {	-- One Handed Sword
		i(26616),	-- 59 TEST Green Sword1H
		i(26617),	-- 60 TEST Green Sword1H
		i(26618),	-- 61 TEST Green Sword1H
		i(26619),	-- 62 TEST Green Sword1H
		i(26620),	-- 63 TEST Green Sword1H
		i(26621),	-- 64 TEST Green Sword1H
		i(26622),	-- 65 TEST Green Sword1H
		i(26623),	-- 66 TEST Green Sword1H
		i(26624),	-- 67 TEST Green Sword1H
		i(26625),	-- 68 TEST Green Sword1H
		i(26626),	-- 69 TEST Green Sword1H
		i(26627),	-- 70 TEST Green Sword1H
		i(26628),	-- 71 TEST Green Sword1H
		i(26629),	-- 72 TEST Green Sword1H
	}),
	filter(26, {	-- Two Handed Sword
		i(26630),	-- 59 TEST Green Sword2H
		i(26631),	-- 60 TEST Green Sword2H
		i(26632),	-- 61 TEST Green Sword2H
		i(26633),	-- 62 TEST Green Sword2H
		i(26634),	-- 63 TEST Green Sword2H
		i(26635),	-- 64 TEST Green Sword2H
		i(26636),	-- 65 TEST Green Sword2H
		i(26637),	-- 66 TEST Green Sword2H
		i(26638),	-- 67 TEST Green Sword2H
		i(26639),	-- 68 TEST Green Sword2H
		i(26640),	-- 69 TEST Green Sword2H
		i(26641),	-- 70 TEST Green Sword2H
		i(26642),	-- 71 TEST Green Sword2H
		i(26643),	-- 72 TEST Green Sword2H
		i(27975),	-- TEST 130 Epic Paladin DPS Sword2H Fast
		i(27974),	-- TEST 130 Epic Paladin DPS Sword2H Slow
		i(28022),	-- TEST 130 Epic Ret Paladin DPS Sword2H Fast
		i(28021),	-- TEST 130 Epic Ret Paladin DPS Sword2H Slow
		i(27962),	-- TEST 60 Blue Paladin DPS Sword2H Fast
		i(27961),	-- TEST 60 Blue Paladin DPS Sword2H Slow
		i(28009),	-- TEST 60 Blue Ret Paladin DPS Sword2H Fast
		i(28008),	-- TEST 60 Blue Ret Paladin DPS Sword2H Slow
	}),
	filter(27, {	-- Wand
		i(26756),	-- 59 TEST Green Wand
		i(26757),	-- 60 TEST Green Wand
		i(26758),	-- 61 TEST Green Wand
		i(26759),	-- 62 TEST Green Wand
		i(26760),	-- 63 TEST Green Wand
		i(26761),	-- 64 TEST Green Wand
		i(26762),	-- 65 TEST Green Wand
		i(26763),	-- 66 TEST Green Wand
		i(26764),	-- 67 TEST Green Wand
		i(26765),	-- 68 TEST Green Wand
		i(26766),	-- 69 TEST Green Wand
		i(26767),	-- 70 TEST Green Wand
		i(26768),	-- 71 TEST Green Wand
		i(26769),	-- 72 TEST Green Wand
		i(25285),	-- Bloodwood Wand
	}),
	filter(28, {	-- Staff
		i(26798),	-- 59 TEST Green Feral Staff
		i(26644),	-- 59 TEST Green Staff
		i(26799),	-- 60 TEST Green Feral Staff
		i(26645),	-- 60 TEST Green Staff
		i(26800),	-- 61 TEST Green Feral Staff
		i(26646),	-- 61 TEST Green Staff
		i(26801),	-- 62 TEST Green Feral Staff
		i(26647),	-- 62 TEST Green Staff
		i(26802),	-- 63 TEST Green Feral Staff
		i(26648),	-- 63 TEST Green Staff
		i(26803),	-- 64 TEST Green Feral Staff
		i(26649),	-- 64 TEST Green Staff
		i(26804),	-- 65 TEST Green Feral Staff
		i(26650),	-- 65 TEST Green Staff
		i(26805),	-- 66 TEST Green Feral Staff
		i(26651),	-- 66 TEST Green Staff
		i(26806),	-- 67 TEST Green Feral Staff
		i(26652),	-- 67 TEST Green Staff
		i(26807),	-- 68 TEST Green Feral Staff
		i(26653),	-- 68 TEST Green Staff
		i(26808),	-- 69 TEST Green Feral Staff
		i(26654),	-- 69 TEST Green Staff
		i(26809),	-- 70 TEST Green Feral Staff
		i(26655),	-- 70 TEST Green Staff
		i(26810),	-- 71 TEST Green Feral Staff
		i(26656),	-- 71 TEST Green Staff
		i(26811),	-- 72 TEST Green Feral Staff
		i(26657),	-- 72 TEST Green Staff
		i(25173),	-- Master's Bo Staff
	}),
	filter(29, {	-- Polearm
		i(26700),	-- 59 TEST Green Polearm
		i(26701),	-- 60 TEST Green Polearm
		i(26702),	-- 61 TEST Green Polearm
		i(26703),	-- 62 TEST Green Polearm
		i(26704),	-- 63 TEST Green Polearm
		i(26705),	-- 64 TEST Green Polearm
		i(26706),	-- 65 TEST Green Polearm
		i(26707),	-- 66 TEST Green Polearm
		i(26708),	-- 67 TEST Green Polearm
		i(26709),	-- 68 TEST Green Polearm
		i(26710),	-- 69 TEST Green Polearm
		i(26711),	-- 70 TEST Green Polearm
		i(26712),	-- 71 TEST Green Polearm
		i(26713),	-- 72 TEST Green Polearm
		i(30418),	-- Darkspear (Purple Glow)
		i(31273),	-- Monster - Polearm, Epic D
		i(32371),	-- Monster - Polearm, Epic D - Glow
		i(32729),	-- Monster - Polearm, Epic D 05
	}),
	filter(31, {	-- Gun
		i(24530),	-- 130 Epic Warrior Gun
		i(26742),	-- 59 TEST Green Gun
		i(26743),	-- 60 TEST Green Gun
		i(26744),	-- 61 TEST Green Gun
		i(26745),	-- 62 TEST Green Gun
		i(26746),	-- 63 TEST Green Gun
		i(26747),	-- 64 TEST Green Gun
		i(26748),	-- 65 TEST Green Gun
		i(26749),	-- 66 TEST Green Gun
		i(26750),	-- 67 TEST Green Gun
		i(26751),	-- 68 TEST Green Gun
		i(26752),	-- 69 TEST Green Gun
		i(26753),	-- 70 TEST Green Gun
		i(26754),	-- 71 TEST Green Gun
		i(26755),	-- 72 TEST Green Gun
		i(28165),	-- TEST GUN RocketLauncher
	}),
	filter(32, {	-- Bow
		i(26714),	-- 59 TEST Green Bow
		i(26715),	-- 60 TEST Green Bow
		i(26716),	-- 61 TEST Green Bow
		i(26717),	-- 62 TEST Green Bow
		i(26718),	-- 63 TEST Green Bow
		i(26719),	-- 64 TEST Green Bow
		i(26720),	-- 65 TEST Green Bow
		i(26721),	-- 66 TEST Green Bow
		i(26722),	-- 67 TEST Green Bow
		i(26723),	-- 68 TEST Green Bow
		i(26724),	-- 69 TEST Green Bow
		i(26725),	-- 70 TEST Green Bow
		i(26726),	-- 71 TEST Green Bow
		i(26727),	-- 72 TEST Green Bow
	}),
	filter(33, {	-- Crossbow
		i(26728),	-- 59 TEST Green Crossbow
		i(26729),	-- 60 TEST Green Crossbow
		i(26730),	-- 61 TEST Green Crossbow
		i(26731),	-- 62 TEST Green Crossbow
		i(26732),	-- 63 TEST Green Crossbow
		i(26733),	-- 64 TEST Green Crossbow
		i(26734),	-- 65 TEST Green Crossbow
		i(26735),	-- 66 TEST Green Crossbow
		i(26736),	-- 67 TEST Green Crossbow
		i(26737),	-- 68 TEST Green Crossbow
		i(26738),	-- 69 TEST Green Crossbow
		i(26739),	-- 70 TEST Green Crossbow
		i(26740),	-- 71 TEST Green Crossbow
		i(26741),	-- 72 TEST Green Crossbow
	}),
	filter(34, {	-- Fist Weapon
		i(26658),	-- 59 TEST Green FistWeapon
		i(26659),	-- 60 TEST Green FistWeapon
		i(26660),	-- 61 TEST Green FistWeapon
		i(26661),	-- 62 TEST Green FistWeapon
		i(26662),	-- 63 TEST Green FistWeapon
		i(26663),	-- 64 TEST Green FistWeapon
		i(26664),	-- 65 TEST Green FistWeapon
		i(26665),	-- 66 TEST Green FistWeapon
		i(26666),	-- 67 TEST Green FistWeapon
		i(26667),	-- 68 TEST Green FistWeapon
		i(26668),	-- 69 TEST Green FistWeapon
		i(26669),	-- 70 TEST Green FistWeapon
		i(26670),	-- 71 TEST Green FistWeapon
		i(26671),	-- 72 TEST Green FistWeapon
	}),
	filter(36, {	-- Thrown
		i(25871),	-- Standard Thrown Weapon
	}),
	filter(37, {	-- Ammo
		i(29885),	-- Hunter 120 Epic Test Bullets
		i(24412),	-- Warden's Arrow
	}),
	filter(50, {	-- Miscellaneous
		
	}),
	filter(51, {	-- Neck
		i(26532),	-- 59 TEST Green Cloth Necklace
		i(27218),	-- 59 TEST Green Druid/Warrior Necklace
		i(27302),	-- 59 TEST Green Paladin Necklace
		i(27176),	-- 59 TEST Green Rogue/Hunter Necklace
		i(27260),	-- 59 TEST Green Shaman Necklace
		i(26533),	-- 60 TEST Green Cloth Necklace
		i(27219),	-- 60 TEST Green Druid/Warrior Necklace
		i(27303),	-- 60 TEST Green Paladin Necklace
		i(27177),	-- 60 TEST Green Rogue/Hunter Necklace
		i(27261),	-- 60 TEST Green Shaman Necklace
		i(26534),	-- 61 TEST Green Cloth Necklace
		i(27220),	-- 61 TEST Green Druid/Warrior Necklace
		i(27304),	-- 61 TEST Green Paladin Necklace
		i(27178),	-- 61 TEST Green Rogue/Hunter Necklace
		i(27262),	-- 61 TEST Green Shaman Necklace
		i(26535),	-- 62 TEST Green Cloth Necklace
		i(27221),	-- 62 TEST Green Druid/Warrior Necklace
		i(27305),	-- 62 TEST Green Paladin Necklace
		i(27179),	-- 62 TEST Green Rogue/Hunter Necklace
		i(27263),	-- 62 TEST Green Shaman Necklace
		i(26536),	-- 63 TEST Green Cloth Necklace
		i(27222),	-- 63 TEST Green Druid/Warrior Necklace
		i(27306),	-- 63 TEST Green Paladin Necklace
		i(27180),	-- 63 TEST Green Rogue/Hunter Necklace
		i(27264),	-- 63 TEST Green Shaman Necklace
		i(26537),	-- 64 TEST Green Cloth Necklace
		i(27223),	-- 64 TEST Green Druid/Warrior Necklace
		i(27307),	-- 64 TEST Green Paladin Necklace
		i(27181),	-- 64 TEST Green Rogue/Hunter Necklace
		i(27265),	-- 64 TEST Green Shaman Necklace
		i(26538),	-- 65 TEST Green Cloth Necklace
		i(27224),	-- 65 TEST Green Druid/Warrior Necklace
		i(27308),	-- 65 TEST Green Paladin Necklace
		i(27182),	-- 65 TEST Green Rogue/Hunter Necklace
		i(27266),	-- 65 TEST Green Shaman Necklace
		i(26539),	-- 66 TEST Green Cloth Necklace
		i(27225),	-- 66 TEST Green Druid/Warrior Necklace
		i(27309),	-- 66 TEST Green Paladin Necklace
		i(27183),	-- 66 TEST Green Rogue/Hunter Necklace
		i(27267),	-- 66 TEST Green Shaman Necklace
		i(26540),	-- 67 TEST Green Cloth Necklace
		i(27226),	-- 67 TEST Green Druid/Warrior Necklace
		i(27310),	-- 67 TEST Green Paladin Necklace
		i(27184),	-- 67 TEST Green Rogue/Hunter Necklace
		i(27268),	-- 67 TEST Green Shaman Necklace
		i(26541),	-- 68 TEST Green Cloth Necklace
		i(27227),	-- 68 TEST Green Druid/Warrior Necklace
		i(27311),	-- 68 TEST Green Paladin Necklace
		i(27185),	-- 68 TEST Green Rogue/Hunter Necklace
		i(27269),	-- 68 TEST Green Shaman Necklace
		i(26542),	-- 69 TEST Green Cloth Necklace
		i(27228),	-- 69 TEST Green Druid/Warrior Necklace
		i(27312),	-- 69 TEST Green Paladin Necklace
		i(27186),	-- 69 TEST Green Rogue/Hunter Necklace
		i(27270),	-- 69 TEST Green Shaman Necklace
		i(26543),	-- 70 TEST Green Cloth Necklace
		i(27229),	-- 70 TEST Green Druid/Warrior Necklace
		i(27313),	-- 70 TEST Green Paladin Necklace
		i(27187),	-- 70 TEST Green Rogue/Hunter Necklace
		i(27271),	-- 70 TEST Green Shaman Necklace
		i(26544),	-- 71 TEST Green Cloth Necklace
		i(27230),	-- 71 TEST Green Druid/Warrior Necklace
		i(27314),	-- 71 TEST Green Paladin Necklace
		i(27188),	-- 71 TEST Green Rogue/Hunter Necklace
		i(27272),	-- 71 TEST Green Shaman Necklace
		i(26545),	-- 72 TEST Green Cloth Necklace
		i(27231),	-- 72 TEST Green Druid/Warrior Necklace
		i(27315),	-- 72 TEST Green Paladin Necklace
		i(27189),	-- 72 TEST Green Rogue/Hunter Necklace
		i(27273),	-- 72 TEST Green Shaman Necklace
		i(27971),	-- TEST 130 Epic Paladin DPS Necklace
		i(28018),	-- TEST 130 Epic Ret Paladin DPS Necklace
		i(27958),	-- TEST 60 Blue Paladin DPS Necklace
		i(28005),	-- TEST 60 Blue Ret Paladin DPS Necklace
	}),
	filter(52, {	-- Ring
		i(26518),	-- 59 TEST Green Cloth Ring
		i(27204),	-- 59 TEST Green Druid/Warrior Ring
		i(27288),	-- 59 TEST Green Paladin Ring
		i(27162),	-- 59 TEST Green Rogue/Hunter Ring
		i(27246),	-- 59 TEST Green Shaman Ring
		i(26519),	-- 60 TEST Green Cloth Ring
		i(27205),	-- 60 TEST Green Druid/Warrior Ring
		i(27289),	-- 60 TEST Green Paladin Ring
		i(27163),	-- 60 TEST Green Rogue/Hunter Ring
		i(27247),	-- 60 TEST Green Shaman Ring
		i(26520),	-- 61 TEST Green Cloth Ring
		i(27206),	-- 61 TEST Green Druid/Warrior Ring
		i(27290),	-- 61 TEST Green Paladin Ring
		i(27164),	-- 61 TEST Green Rogue/Hunter Ring
		i(27248),	-- 61 TEST Green Shaman Ring
		i(26521),	-- 62 TEST Green Cloth Ring
		i(27207),	-- 62 TEST Green Druid/Warrior Ring
		i(27291),	-- 62 TEST Green Paladin Ring
		i(27165),	-- 62 TEST Green Rogue/Hunter Ring
		i(27249),	-- 62 TEST Green Shaman Ring
		i(20783),	-- 63 green shaman ring
		i(26522),	-- 63 TEST Green Cloth Ring
		i(27208),	-- 63 TEST Green Druid/Warrior Ring
		i(27292),	-- 63 TEST Green Paladin Ring
		i(27166),	-- 63 TEST Green Rogue/Hunter Ring
		i(27250),	-- 63 TEST Green Shaman Ring
		i(26523),	-- 64 TEST Green Cloth Ring
		i(27209),	-- 64 TEST Green Druid/Warrior Ring
		i(27293),	-- 64 TEST Green Paladin Ring
		i(27167),	-- 64 TEST Green Rogue/Hunter Ring
		i(27251),	-- 64 TEST Green Shaman Ring
		i(26524),	-- 65 TEST Green Cloth Ring
		i(27210),	-- 65 TEST Green Druid/Warrior Ring
		i(27294),	-- 65 TEST Green Paladin Ring
		i(27168),	-- 65 TEST Green Rogue/Hunter Ring
		i(27252),	-- 65 TEST Green Shaman Ring
		i(26525),	-- 66 TEST Green Cloth Ring
		i(27211),	-- 66 TEST Green Druid/Warrior Ring
		i(27295),	-- 66 TEST Green Paladin Ring
		i(27169),	-- 66 TEST Green Rogue/Hunter Ring
		i(27253),	-- 66 TEST Green Shaman Ring
		i(26526),	-- 67 TEST Green Cloth Ring
		i(27212),	-- 67 TEST Green Druid/Warrior Ring
		i(27296),	-- 67 TEST Green Paladin Ring
		i(27170),	-- 67 TEST Green Rogue/Hunter Ring
		i(27254),	-- 67 TEST Green Shaman Ring
		i(26527),	-- 68 TEST Green Cloth Ring
		i(27213),	-- 68 TEST Green Druid/Warrior Ring
		i(27297),	-- 68 TEST Green Paladin Ring
		i(27171),	-- 68 TEST Green Rogue/Hunter Ring
		i(27255),	-- 68 TEST Green Shaman Ring
		i(26528),	-- 69 TEST Green Cloth Ring
		i(27214),	-- 69 TEST Green Druid/Warrior Ring
		i(27298),	-- 69 TEST Green Paladin Ring
		i(27172),	-- 69 TEST Green Rogue/Hunter Ring
		i(27256),	-- 69 TEST Green Shaman Ring
		i(26529),	-- 70 TEST Green Cloth Ring
		i(27215),	-- 70 TEST Green Druid/Warrior Ring
		i(27299),	-- 70 TEST Green Paladin Ring
		i(27173),	-- 70 TEST Green Rogue/Hunter Ring
		i(27257),	-- 70 TEST Green Shaman Ring
		i(26530),	-- 71 TEST Green Cloth Ring
		i(27216),	-- 71 TEST Green Druid/Warrior Ring
		i(27300),	-- 71 TEST Green Paladin Ring
		i(27174),	-- 71 TEST Green Rogue/Hunter Ring
		i(27258),	-- 71 TEST Green Shaman Ring
		i(26531),	-- 72 TEST Green Cloth Ring
		i(27217),	-- 72 TEST Green Druid/Warrior Ring
		i(27301),	-- 72 TEST Green Paladin Ring
		i(27175),	-- 72 TEST Green Rogue/Hunter Ring
		i(27259),	-- 72 TEST Green Shaman Ring
		i(20794),	-- 90 green shaman ring
		i(27972),	-- TEST 130 Epic Paladin DPS Ring
		i(28019),	-- TEST 130 Epic Ret Paladin DPS Ring
		i(27959),	-- TEST 60 Blue Paladin DPS Ring
		i(28006),	-- TEST 60 Blue Ret Paladin DPS Ring
	}),
	filter(53, {	-- Trinket
		i(35485),	-- Goblin Rocket Launcher PH
	}),
	filter(55, {	-- Consumable
		
	}),
	filter(100, {	-- Mount
		i(33183),	-- Old Magic Broom
		i(33182),	-- Swift Flying Broom
		i(33184),	-- Swift Magic Broom
	}),
	filter(101, {	-- Battle Pet
		
	}),
	filter(113, {	-- Bag
		i(34466),	-- Test Fel Iron Toolbox
		i(33027),	-- TEST Mike's Dagger
		i(35874),	-- Whizzlespark's Portable Pet Mansion
	}),
	filter(200, {	-- Recipe
		
	}),
});
-- #endif