-------------------------------------------------------
--   O B J E C T   D A T A B A S E   M O D U L E   --
-------------------------------------------------------
local _ = select(2, ...);
_.ObjectNames = {
	[31] = "Old Lion Statue",
	[34] = "Old Jug",
	[35] = "Captain's Footlocker",
	[36] = "Broken Barrel",
	[47] = "Wanted: Lieutenant Fangore",
	[55] = "A half-eaten body",
	[56] = "Rolf's corpse",
	[59] = "Mound of loose dirt",
	[60] = "Wanted: Gath'Ilzogg",
	[61] = "A Weathered Grave",
	[68] = "Wanted Poster",
	[256] = "Wanted!",
	[257] = "Suspicious Barrel",
	[259] = "Half-buried Barrel",
	[261] = "Damaged Crate",
	[269] = "Guarded Thunder Ale Barrel",
	[270] = "Unguarded Thunder Ale Barrel",
	[287] = "Bookie Herod's Records",
	[288] = "Bookie Herod's Strongbox",
	[711] = "Wanted!",
	[1557] = "Lillith's Dinner Table",
	[1561] = "Sealed Crate",
	[1585] = "Explosive Charge",
	[1586] = "Crate of Candles",
	[1593] = "Corpse Laden Boat",
	[1599] = "Shallow Grave",
	[1609] = "Dragonmaw Catapult",
	[1627] = "Dalaran Crate",
	[1738] = "Syndicate Documents",
	[1740] = "Syndicate Documents",
	[1763] = "WANTED",
	[1765] = "Worn Wooden Chest",
	[2008] = "Wanted Poster",
	[2059] = "A Dwarven Corpse",
	[2076] = "Bubbling Cauldron",
	[2083] = "Bloodsail Correspondence",
	[2289] = "Ruined Lifeboat",
	[2553] = "A Soggy Scroll",
	[2555] = "Musty Scroll",
	[2652] = "Ebenezer Rustlocke's Corpse",
	[2688] = "Keystone",
	[2689] = "Stone of West Binding",
	[2690] = "Stone of Outer Binding",
	[2691] = "Stone of East Binding",
	[2701] = "Iridescent Shards",
	[2702] = "Stone of Inner Binding",
	[2704] = "Cache of Explosives",
	[2713] = "Wanted Board",
	[2734] = "Waterlogged Chest",
	[2868] = "Crumpled Map",
	[2875] = "Battered Dwarven Skeleton",
	[2908] = "Sealed Supply Crate",
	[2933] = "Seal of the Earth",
	[3189] = "Attack Plan: Valley of Trials",
	[3190] = "Attack Plan: Sen'jin Village",
	[3192] = "Attack Plan: Orgrimmar",
	[3239] = "Benedict's Chest",
	[3643] = "Old Footlocker",
	[3972] = "WANTED",
	[4141] = "Control Console",
	[5620] = "Flawed Power Stones",
	[6751] = "Strange Fruited Plant",
	[6752] = "Strange Fronded Plant",
	[7510] = "Sprouted Frond",
	[10076] = "Scrying Bowl",
	[12564] = "Assassination Notice",
	[12666] = "Twilight Tome",
	[15084] = "The Sparklematic 5200",
	[15085] = "The Sparklematic 5200",
	[17182] = "Buzzbox 827",
	[17183] = "Buzzbox 411",
	[17184] = "Buzzbox 323",
	[19022] = "Worn Chest",
	[19024] = "Hidden Shrine",
	[19030] = "Mound of Dirt",
	[19877] = "Velinde's Locker",
	[20805] = "Rizzle's Unguarded Plans",
	[20985] = "Loose Dirt",
	[20992] = "Black Shield",
	[21015] = "Hoofprints",
	[21016] = "Hoofprints",
	[21042] = "Theramore Guard Badge",
	[35251] = "Karnitol's Chest",
	[37099] = "Atal'ai Tablet",
	[50961] = "Malem Chest",
	[51708] = "Eliza's Grave Dirt",
	[61934] = "Brazier of the Dormant Flame",
	[91138] = "Jordan's Hammer",
	[103821] = "Doan's Strongbox",
	[112888] = "Dusty Shelf",
	[112948] = "Intrepid's Locked Strongbox",
	[113757] = "Shadowforge Cache",
	[113768] = "Brightly Colored Egg",
	[113791] = "Brazier of Everfount",
	[123329] = "Baelog's Chest",
	[125477] = "Conspicuous Urn",
	[126260] = "Ancient Chest",
	[131474] = "The Discs of Norgannon",
	[138492] = "Shards of Myzrael",
	[141832] = "Gong of Zul'Farrak",
	[141979] = "Ancient Treasure",
	[142088] = "Tablet of Will",
	[142122] = "Wanted Poster",
	[142127] = "Rin'ji's Secret",
	[142151] = "Sealed Barrel",
	[142179] = "Solarsal Gazebo",
	[142185] = "Flame of Byltan",
	[142186] = "Flame of Lahassa",
	[142187] = "Flame of Imbel",
	[142188] = "Flame of Samha",
	[142195] = "Woodpaw Battle Map",
	[142343] = "Uldum Pedestal",
	[142344] = "Artificial Extrapolator",
	[142345] = "Matrix Punchograph 3005-A",
	[142475] = "Matrix Punchograph 3005-B",
	[142476] = "Matrix Punchograph 3005-C",
	[142487] = "The Sparklematic 5200",
	[142696] = "Matrix Punchograph 3005-D",
	[142702] = "Venom Bottle",
	[142958] = "Feralas: A History",
	[144063] = "Equinex Monolith",
	[144066] = "First Witherbark Cage",
	[144067] = "Second Witherbark Cage",
	[144068] = "Third Witherbark Cage",
	[148504] = "A Conspicuous Gravestone",
	[149036] = "Marvon's Chest",
	[149502] = "Hoard of the Black Dragonflight",
	[150075] = "Wanted Poster",
	[151286] = "Kaldorei Tome of Summoning",
	[156561] = "Wanted Poster",
	[160836] = "Relic Coffer",
	[161495] = "Secret Safe",
	[161504] = "A Small Pack",
	[161505] = "A Wrecked Raft",
	[164820] = "Dark Keeper Nameplate",
	[164867] = "WANTED",
	[164868] = "KILL ON SIGHT",
	[164869] = "Spectral Chalice",
	[164885] = "Corrupted Night Dragon",
	[164886] = "Corrupted Songflower",
	[164887] = "Corrupted Windblossom",
	[164888] = "Corrupted Whipper Root",
	[164909] = "Wrecked Row Boat",
	[164953] = "Large Leather Backpacks",
	[164954] = "Zukk'ash Pod",
	[169243] = "Chest of The Seven",
	[171939] = "Corrupted Songflower",
	[171942] = "Corrupted Songflower",
	[173232] = "Blacksmithing Plans",
	[173265] = "Wooden Outhouse",
	[173284] = "Corrupted Whipper Root",
	[173324] = "Corrupted Night Dragon",
	[173327] = "Corrupted Windblossom",
	[174594] = "Corrupted Songflower",
	[174595] = "Corrupted Songflower",
	[174596] = "Corrupted Songflower",
	[174597] = "Corrupted Songflower",
	[174598] = "Corrupted Songflower",
	[174599] = "Corrupted Windblossom",
	[174600] = "Corrupted Windblossom",
	[174601] = "Corrupted Windblossom",
	[174602] = "Corrupted Windblossom",
	[174603] = "Corrupted Windblossom",
	[174604] = "Corrupted Windblossom",
	[174605] = "Corrupted Whipper Root",
	[174606] = "Corrupted Whipper Root",
	[174607] = "Corrupted Whipper Root",
	[174608] = "Corrupted Night Dragon",
	[174682] = "Beware of Pterrordax",
	[174684] = "Corrupted Night Dragon",
	[174686] = "Corrupted Whipper Root",
	[174708] = "Corrupted Windblossom",
	[174709] = "Corrupted Windblossom",
	[174712] = "Corrupted Songflower",
	[174713] = "Corrupted Songflower",
	[174848] = "Testing Equipment",
	[175226] = "Beached Sea Creature",
	[175227] = "Beached Sea Creature",
	[175230] = "Beached Sea Creature",
	[175233] = "Beached Sea Creature",
	[175320] = "WANTED: Murkdeep!",
	[175524] = "Mysterious Red Crystal",
	[175586] = "Jaron's Wagon",
	[175587] = "Damaged Crate",
	[175606] = "Spire Spider Egg",
	[175894] = "Janice's Parcel",
	[175924] = "Locked Cabinet",
	[175925] = "Outhouse",
	[175926] = "Mrs. Dalson's Diary",
	[175965] = "Frostwhisper's Embalming Fluid",
	[176090] = "Human Remains",
	[176091] = "Deadwood Cauldron",
	[176115] = "Wanted Poster - Arnak Grimtotem",
	[176190] = "Beached Sea Creature",
	[176191] = "Beached Sea Creature",
	[176192] = "Catalogue of the Wayward",
	[176196] = "Beached Sea Creature",
	[176197] = "Beached Sea Creature",
	[176198] = "Beached Sea Creature",
	[176361] = "Scourge Cauldron",
	[176392] = "Scourge Cauldron",
	[176393] = "Scourge Cauldron",
	[176484] = "The Deed to Brill",
	[176485] = "The Deed to Caer Darrow",
	[176486] = "The Deed to Southshore",
	[176487] = "The Deed to Tarren Mill",
	[176544] = "Remains of Eva Sarkhoff",
	[176545] = "Remains of Lucien Sarkhoff",
	[176582] = "Shellfish Trap",
	[176631] = "Menethil's Gift",
	[177289] = "Scourge Cauldron",
	[177491] = "Termite Barrel",
	[177667] = "Torn Scroll",
	[177787] = "Rackmore's Log",
	[177904] = "Wanted Poster: Besseleth",
	[177964] = "Fathom Stone",
	[178144] = "Troll Chest",
	[178227] = "Murgut's Totem Basket",
	[178553] = "Hive'Ashi Pod",
	[178609] = "Holiday Snow",
	[179485] = "A Broken Trap",
	[179499] = "Ogre Tannin Basket",
	[179501] = "Knot Thimblejack's Cache",
	[179564] = "Gordok Tribute Chest",
	[179565] = "Dusty Reliquary",
	[179697] = "Arena Treasure Chest",
	[179827] = "Wanted/Missing/Lost & Found",
	[179832] = "Pillaclencher's Ornate Pillow",
	[179913] = "Call to Arms!",
	[180229] = "Jinxed Hoodoo Pile",
	[180248] = "School of Tastyfish",
	[180327] = "Brazier of Madness",
	[180366] = "Battered Tackle Box",
	[180368] = "Tablet of Madness",
	[180448] = "Wanted Poster: Deathclasp",
	[180456] = "Lesser Wind Stone",
	[180461] = "Wind Stone",
	[180466] = "Greater Wind Stone",
	[180503] = "Sandy Cookbook",
	[180570] = "Keg",
	[180633] = "Crystalline Tear",
	[180642] = "Inconspicuous Crate",
	[180652] = "Freshly Dug Dirt",
	[180690] = "Large Scarab Coffer",
	[180691] = "Scarab Coffer",
	[180717] = "The Scarab Gong",
	[180743] = "Carefully Wrapped Present",
	[180746] = "Gently Shaken Gift",
	[180747] = "Gaily Wrapped Present",
	[180748] = "Ticking Present",
	[180793] = "Festive Gift",
	[180794] = "Journal of Jandice Barov",
	[180918] = "Wanted: Thaelis the Hungerer",
	[181011] = "Magister Duskwither's Journal",
	[181073] = "Fragrant Cauldron",
	[181074] = "Arena Spoils",
	[181083] = "Sothos and Jarien's Heirlooms",
	[181147] = "Wanted Poster",
	[181150] = "Dusty Journal",
	[181153] = "Wanted Poster: Kel'gash the Wicked",
	[181638] = "Wanted Poster",
	[181643] = "Featherbeard's Remains",
	[181649] = "Featherbeard's Journal",
	[181672] = "Wickerman Effigy",
	[181698] = "Voidstone",
	[181748] = "Blood Crystal",
	[181756] = "Battered Ancient Book",
	[181889] = "Wanted Poster",
	[182011] = "Crate of Ingots",
	[182032] = "Galaen's Journal",
	[182058] = "Scourge Meat Wagon",
	[182115] = "Wanted Poster",
	[182165] = "Wanted Poster",
	[182392] = "Garadar Bulletin Board",
	[182393] = "Telaar Bulletin Board",
	[182549] = "Fel Orc Plans",
	[182587] = "Wanted Poster",
	[182588] = "Wanted Poster",
	[182947] = "The Codex of Blood",
	[182952] = "Steam Pump Flotsam",
	[183284] = "Wanted Poster",
	[183770] = "B'naar Control Console",
	[183811] = "Wanted Poster",
	[184300] = "Necromantic Focus",
	[184465] = "Cache of the Legion",
	[184660] = "Wanted Poster",
	[184684] = "Ravenous Flayer Egg",
	[184825] = "Lashh'an Tome",
	[184945] = "Wanted Poster",
	[184946] = "Wanted Poster",
	[185035] = "Wanted Poster",
	[185126] = "Crystal Prison",
	[185165] = "Legion Communicator",
	[185166] = "Wanted Poster",
	[185168] = "Reinforced Fel Iron Chest",
	[186267] = "Pumpkin Shrine",
	[186426] = "Wanted Poster",
	[186881] = "Dark Iron Sabotage Plans",
	[186887] = "Large Jack-o'-Lantern",
	[187072] = "Razorthorn Root",
	[187236] = "Winter Veil Gift",
	[187333] = "Bloodberry Bush",
	[187559] = "Horde Bonfire",
	[187564] = "Alliance Bonfire",
	[187914] = "Alliance Bonfire",
	[187916] = "Alliance Bonfire",
	[187917] = "Alliance Bonfire",
	[187919] = "Alliance Bonfire",
	[187920] = "Alliance Bonfire",
	[187921] = "Alliance Bonfire",
	[187922] = "Alliance Bonfire",
	[187923] = "Alliance Bonfire",
	[187924] = "Alliance Bonfire",
	[187925] = "Alliance Bonfire",
	[187926] = "Alliance Bonfire",
	[187927] = "Alliance Bonfire",
	[187928] = "Alliance Bonfire",
	[187929] = "Alliance Bonfire",
	[187930] = "Alliance Bonfire",
	[187931] = "Alliance Bonfire",
	[187932] = "Alliance Bonfire",
	[187933] = "Alliance Bonfire",
	[187934] = "Alliance Bonfire",
	[187935] = "Alliance Bonfire",
	[187936] = "Alliance Bonfire",
	[187937] = "Alliance Bonfire",
	[187938] = "Alliance Bonfire",
	[187939] = "Alliance Bonfire",
	[187940] = "Alliance Bonfire",
	[187941] = "Alliance Bonfire",
	[187942] = "Alliance Bonfire",
	[187943] = "Alliance Bonfire",
	[187944] = "Alliance Bonfire",
	[187945] = "Alliance Bonfire",
	[187946] = "Alliance Bonfire",
	[187947] = "Horde Bonfire",
	[187948] = "Horde Bonfire",
	[187949] = "Horde Bonfire",
	[187950] = "Horde Bonfire",
	[187951] = "Horde Bonfire",
	[187952] = "Horde Bonfire",
	[187953] = "Horde Bonfire",
	[187954] = "Horde Bonfire",
	[187955] = "Horde Bonfire",
	[187956] = "Horde Bonfire",
	[187957] = "Horde Bonfire",
	[187958] = "Horde Bonfire",
	[187959] = "Horde Bonfire",
	[187960] = "Horde Bonfire",
	[187961] = "Horde Bonfire",
	[187962] = "Horde Bonfire",
	[187963] = "Horde Bonfire",
	[187964] = "Horde Bonfire",
	[187965] = "Horde Bonfire",
	[187966] = "Horde Bonfire",
	[187967] = "Horde Bonfire",
	[187968] = "Horde Bonfire",
	[187969] = "Horde Bonfire",
	[187970] = "Horde Bonfire",
	[187971] = "Horde Bonfire",
	[187972] = "Horde Bonfire",
	[187973] = "Horde Bonfire",
	[187974] = "Horde Bonfire",
	[187975] = "Horde Bonfire",
	[189989] = "Dark Iron Mole Machine Wreckage",
	[189990] = "Dark Iron Mole Machine Wreckage",
	[194032] = "Alliance Bonfire",
	[194033] = "Horde Bonfire",
	[194034] = "Horde Bonfire",
	[194035] = "Alliance Bonfire",
	[194036] = "Alliance Bonfire",
	[194037] = "Horde Bonfire",
	[194038] = "Alliance Bonfire",
	[194039] = "Horde Bonfire",
	[194040] = "Alliance Bonfire",
	[194042] = "Horde Bonfire",
	[194043] = "Horde Bonfire",
	[194044] = "Alliance Bonfire",
	[194045] = "Alliance Bonfire",
	[194046] = "Horde Bonfire",
	[194048] = "Horde Bonfire",
	[194049] = "Alliance Bonfire",
	[194378] = "Stolen Explorers' League Document",
	[194387] = "Stolen Explorers' League Document",
	[194388] = "Stolen Explorers' League Document",
	[194389] = "Stolen Explorers' League Document",
	[194390] = "Stolen Explorers' League Document",
	[194391] = "Stolen Explorers' League Document",
	[202083] = "Razormaw Matriarch's Nest",
	[203733] = "Bounty Board",
	[204344] = "Wanted!",
	[204351] = "Ettin Control Orb",
	[204817] = "Lightforged Rod",
	[204824] = "Lightforged Arch",
	[204825] = "Lightforged Crest",
	[205143] = "Abandoned Outhouse",
	[205258] = "Broken Weapons Crate",
	[205350] = "Horde Communication Panel",
	[205476] = "Book of Lost Souls",
	[205875] = "Crusader's Flare",
	[206335] = "Stone Slab",
	[206336] = "Marble Slab",
	[206374] = "Trove of the Watchers",
	[207303] = "Adventure Board",
	[207304] = "Adventure Board",
	[207496] = "Dark Iron Treasure Chest",
	[207982] = "Alliance Bonfire",
	[207983] = "Horde Bonfire",
	[207984] = "Alliance Bonfire",
	[207985] = "Alliance Bonfire",
	[207986] = "Horde Bonfire",
	[207987] = "Alliance Bonfire",
	[207988] = "Alliance Bonfire",
	[207989] = "Horde Bonfire",
	[207990] = "Horde Bonfire",
	[207991] = "Horde Bonfire",
	[207992] = "Horde Bonfire",
	[207993] = "Alliance Bonfire",
	[208089] = "Alliance Bonfire",
	[208090] = "Horde Bonfire",
	[208093] = "Alliance Bonfire",
	[208094] = "Horde Bonfire",
	[209072] = "Stolen Crate",
	[209076] = "Anson's Crate",
	[209094] = "Stolen Crate",
	[209095] = "Edgar's Crate",
	[217851] = "Alliance Bonfire",
	[217852] = "Horde Bonfire",
	[240622] = "Warden's Scroll Case",
	[240624] = "Faerie Dragon Nest",
	[243911] = "Snow Mound",
	[259806] = "Love Potion Recipe",
	[259870] = "Horde Bonfire",
	[259871] = "Alliance Bonfire",
	[259926] = "Horde Bonfire",
	[259927] = "Alliance Bonfire",
	[266289] = "Time Lost Chest",
	[307277] = "Old Jug",
	[307307] = "Broken Barrel",
	[307330] = "Captain's Footlocker",
	[316788] = "Alliance Bonfire",
	[316791] = "Alliance Bonfire",
	[316793] = "Alliance Bonfire",
	[316795] = "Horde Bonfire",
	[316796] = "Horde Bonfire",
	[316801] = "Horde Bonfire",
	[327669] = "Contained Alemental",
	[328343] = "Direbrew Cog",
	[328413] = "Hozen Totem",
	[330168] = "Contained Alemental",
	[330169] = "Direbrew Cog",
	[330170] = "Hozen Totem",
};
_.ObjectIcons = {
	[31] = "Interface/Icons/INV_Mount_AllianceLionG",
	[34] = "Interface/Icons/INV_Drink_11",
	[55] = "Interface/Icons/INV_Misc_Bone_HumanSkull_01",
	[56] = "Interface/Icons/INV_Misc_Bone_HumanSkull_01",
	[61] = "Interface/Icons/Achievement_BG_Xkills_AVgraveyard",
	[256] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[259] = "Interface/Icons/Archaeology_5_0_EmptyKegOfBrewfatherXinWoYin",
	[261] = "Interface/Icons/inv_crate_02",
	[270] = "Interface/Icons/INV_Holiday_BrewfestBuff_01",
	[711] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[1593] = "Interface/Icons/inv_garrison_cargoship",
	[1627] = "Interface/Icons/inv_crate_01",
	[1738] = "Interface/Icons/inv_scroll_03",
	[1740] = "Interface/Icons/inv_scroll_03",
	[1763] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[1765] = "Interface/Icons/INV_Crate_03",
	[2008] = "Interface/Icons/inv_misc_head_human_01",
	[2059] = "Interface/Icons/INV_Misc_Bone_DwarfSkull_01",
	[2076] = "Interface/Icons/INV_Misc_Cauldron_Arcane",
	[2083] = "Interface/Icons/inv_misc_scrollunrolled04",
	[2553] = "Interface/Icons/inv_scroll_03",
	[2555] = "Interface/Icons/inv_scroll_03",
	[2688] = "Interface/Icons/inv_enchanting_wod_crystal2",
	[2701] = "Interface/Icons/inv_enchanting_wod_crystal2",
	[2702] = "Interface/Icons/inv_enchanting_wod_crystal2",
	[2704] = "Interface/Icons/inv_crate_01",
	[2713] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[2908] = "Interface/Icons/INV_Crate_03",
	[3972] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[4141] = "Interface/Icons/Icon_PetFamily_Mechanical",
	[5620] = "Interface/Icons/inv_misc_gem_diamond_02",
	[6751] = "Interface/Icons/INV_Misc_Herb_Ragveil",
	[6752] = "Interface/Icons/INV_Misc_Herb_AzsharasVeil_Stem",
	[7510] = "Interface/Icons/INV_Misc_Herb_AzsharasVeil",
	[12564] = "Interface/Icons/inv_letter_17",
	[15084] = "Interface/Icons/inv_misc_enggizmos_09",
	[15085] = "Interface/Icons/inv_misc_enggizmos_09",
	[19030] = "Interface/Icons/INV_MISC_DUST_05",
	[20805] = "Interface/Icons/inv_scroll_07",
	[20985] = "Interface/Icons/inv_misc_dust",
	[20992] = "Interface/Icons/inv_shield_04",
	[21042] = "Interface/Icons/inv_shield_05",
	[35251] = "Interface/Icons/Garrison_BronzeChest",
	[37099] = "Interface/Icons/INV_Misc_StoneTablet_03",
	[112948] = "Interface/Icons/battleground_strongbox_skirmish_horde",
	[113768] = _.asset("Holiday_noblegarden"),
	[131474] = "Interface/Icons/Creatureportrait_Nexus_Floating_Disc",
	[138492] = "Interface/Icons/inv_enchanting_wod_crystal2",
	[141832] = "Interface/Icons/inv_hammer_19",
	[141979] = "Interface/Icons/INV_Plate_BlackrockClan_B_01Chest",
	[142122] = "Interface/Icons/Inv_Inscription_ScrollOfWisdom_01",
	[142151] = "Interface/Icons/inv_cask_03",
	[142195] = "Interface/Icons/INV_Misc_Map07",
	[142343] = "Interface/Icons/inv_misc_platnumdisks",
	[142344] = "Interface/Icons/inv_gizmo_01",
	[142345] = "Interface/Icons/inv_misc_punchcards_white",
	[142475] = "Interface/Icons/inv_misc_punchcards_yellow",
	[142476] = "Interface/Icons/inv_misc_punchcards_blue",
	[142487] = "Interface/Icons/inv_misc_enggizmos_09",
	[142696] = "Interface/Icons/inv_misc_punchcards_red",
	[142702] = "Interface/Icons/inv_potion_19",
	[144066] = "Interface/Icons/inv_crate_01",
	[144067] = "Interface/Icons/inv_crate_01",
	[144068] = "Interface/Icons/inv_crate_01",
	[149036] = "Interface/Icons/INV_Box_01",
	[156561] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[160836] = "Interface/Icons/Battleground_Strongbox_Silver_Alliance",
	[161495] = "Interface/Icons/Battleground_Strongbox_Silver_Alliance",
	[164820] = "Interface/Icons/Achievement_Character_Dwarf_Male",
	[164867] = "Interface/Icons/inv_inscription_scrollofwisdom_01",
	[164868] = "Interface/Icons/inv_inscription_scrollofwisdom_01",
	[164869] = "Interface/Icons/INV_Misc_Bowl_01",
	[169243] = "Interface/Icons/INV_Plate_BlackrockClan_B_01Chest",
	[173232] = "Interface/Icons/INV_Misc_ScrollUnrolled01",
	[175606] = "Interface/Icons/inv_egg_02",
	[175894] = "Interface/Icons/inv_misc_gift_05",
	[175926] = "Interface/Icons/inv_misc_book_07",
	[176091] = "Interface/Icons/INV_Misc_Cauldron_Arcane",
	[176115] = "Interface/Icons/inv_misc_foot_centaur",
	[176192] = "Interface/Icons/INV_Misc_Book_08",
	[176582] = "Interface/Icons/inv_misc_fish_14",
	[176631] = "Interface/Icons/inv_misc_book_04",
	[177491] = "Interface/Icons/inv_cask_01",
	[177904] = "Interface/Icons/ability_hunter_pet_spider",
	[178609] = "Interface/Icons/INV_Ammo_Snowball",
	[179485] = "Interface/Icons/Ability_Hunter_TrapLauncher",
	[179501] = "Interface/Icons/INV_Crate_01",
	[179564] = "Interface/Icons/INV_Plate_BlackrockClan_B_01Chest",
	[179697] = "Interface/Icons/INV_Box_02",
	[179827] = "Interface/Icons/INV_inscription_scrollofwisdom_01",
	[179832] = "Interface/Icons/inv_misc_armorkit_06",
	[180248] = "Interface/Icons/inv_misc_fish_21",
	[180327] = "Interface/Icons/inv_poison_mindnumbing",
	[180366] = "Interface/Icons/INV_Fishingpole_02",
	[180368] = "Interface/Icons/INV_Misc_StoneTablet_08",
	[180448] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[180503] = "Interface/Icons/INV_Misc_Book_09",
	[180690] = "Interface/Icons/INV_Box_02",
	[180691] = "Interface/Icons/INV_Box_01",
	[180743] = "Interface/Icons/inv_holiday_christmas_present_01",
	[180746] = "Interface/Icons/inv_holiday_christmas_present_01",
	[180747] = "Interface/Icons/inv_holiday_christmas_present_01",
	[180748] = "Interface/Icons/inv_holiday_christmas_present_01",
	[180793] = "Interface/Icons/inv_holiday_christmas_present_01",
	[180794] = "Interface/Icons/INV_Misc_Book_06",
	[180918] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[181011] = "Interface/Icons/INV_Misc_Book_11",
	[181074] = "Interface/Icons/INV_Box_04",
	[181083] = "Interface/Icons/INV_Box_04",
	[181147] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[181150] = "Interface/Icons/INV_Misc_Book_11",
	[181153] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[181638] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[181643] = "Interface/Icons/INV_Misc_Bone_DwarfSkull_01",
	[181649] = "Interface/Icons/INV_Misc_Book_11",
	[181672] = "Interface/Icons/INV_Misc_Statue_08",
	[181698] = "Interface/Icons/inv_misc_gem_azuredraenite_01",
	[181748] = "Interface/Icons/Creatureportrait_IllidanCrystal01",
	[181889] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[182011] = "Interface/Icons/inv_crate_02",
	[182032] = "Interface/Icons/INV_Misc_Book_09",
	[182115] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[182165] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[182549] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[182587] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[182588] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[182947] = "Interface/Icons/inv_misc_book_06",
	[182952] = "Interface/Icons/INV_Crate_01",
	[183770] = "Interface/Icons/Spell_Mage_FocusingCrystal",
	[183811] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[184465] = "Interface/Icons/INV_Gizmo_KhoriumPowerCore",
	[184660] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[184825] = "Interface/Icons/INV_Misc_Book_05",
	[184945] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[184946] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[185035] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[185126] = "Interface/Icons/inv_misc_enggizmos_09",
	[185165] = "Interface/Icons/ToolTip_CrystallizedFel",
	[186426] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[186881] = "Interface/Icons/INV_Misc_Map_01",
	[186887] = "Interface/Icons/INV_Misc_Bag_28_Halloween",
	[187236] = "Interface/Icons/inv_holiday_christmas_present_01",
	[187559] = "Interface/Icons/spell_fire_fire",
	[187564] = "Interface/Icons/spell_fire_bluefire",
	[187914] = "Interface/Icons/spell_fire_bluefire",
	[187916] = "Interface/Icons/spell_fire_bluefire",
	[187917] = "Interface/Icons/spell_fire_bluefire",
	[187919] = "Interface/Icons/spell_fire_bluefire",
	[187920] = "Interface/Icons/spell_fire_bluefire",
	[187921] = "Interface/Icons/spell_fire_bluefire",
	[187922] = "Interface/Icons/spell_fire_bluefire",
	[187923] = "Interface/Icons/spell_fire_bluefire",
	[187924] = "Interface/Icons/spell_fire_bluefire",
	[187925] = "Interface/Icons/spell_fire_bluefire",
	[187926] = "Interface/Icons/spell_fire_bluefire",
	[187927] = "Interface/Icons/spell_fire_bluefire",
	[187928] = "Interface/Icons/spell_fire_bluefire",
	[187929] = "Interface/Icons/spell_fire_bluefire",
	[187930] = "Interface/Icons/spell_fire_bluefire",
	[187931] = "Interface/Icons/spell_fire_bluefire",
	[187932] = "Interface/Icons/spell_fire_bluefire",
	[187933] = "Interface/Icons/spell_fire_bluefire",
	[187934] = "Interface/Icons/spell_fire_bluefire",
	[187935] = "Interface/Icons/spell_fire_bluefire",
	[187936] = "Interface/Icons/spell_fire_bluefire",
	[187937] = "Interface/Icons/spell_fire_bluefire",
	[187938] = "Interface/Icons/spell_fire_bluefire",
	[187939] = "Interface/Icons/spell_fire_bluefire",
	[187940] = "Interface/Icons/spell_fire_bluefire",
	[187941] = "Interface/Icons/spell_fire_bluefire",
	[187942] = "Interface/Icons/spell_fire_bluefire",
	[187943] = "Interface/Icons/spell_fire_bluefire",
	[187944] = "Interface/Icons/spell_fire_bluefire",
	[187945] = "Interface/Icons/spell_fire_bluefire",
	[187946] = "Interface/Icons/spell_fire_bluefire",
	[187947] = "Interface/Icons/spell_fire_fire",
	[187948] = "Interface/Icons/spell_fire_fire",
	[187949] = "Interface/Icons/spell_fire_fire",
	[187950] = "Interface/Icons/spell_fire_fire",
	[187951] = "Interface/Icons/spell_fire_fire",
	[187952] = "Interface/Icons/spell_fire_fire",
	[187953] = "Interface/Icons/spell_fire_fire",
	[187954] = "Interface/Icons/spell_fire_fire",
	[187955] = "Interface/Icons/spell_fire_fire",
	[187956] = "Interface/Icons/spell_fire_fire",
	[187957] = "Interface/Icons/spell_fire_fire",
	[187958] = "Interface/Icons/spell_fire_fire",
	[187959] = "Interface/Icons/spell_fire_fire",
	[187960] = "Interface/Icons/spell_fire_fire",
	[187961] = "Interface/Icons/spell_fire_fire",
	[187962] = "Interface/Icons/spell_fire_fire",
	[187963] = "Interface/Icons/spell_fire_fire",
	[187964] = "Interface/Icons/spell_fire_fire",
	[187965] = "Interface/Icons/spell_fire_fire",
	[187966] = "Interface/Icons/spell_fire_fire",
	[187967] = "Interface/Icons/spell_fire_fire",
	[187968] = "Interface/Icons/spell_fire_fire",
	[187969] = "Interface/Icons/spell_fire_fire",
	[187970] = "Interface/Icons/spell_fire_fire",
	[187971] = "Interface/Icons/spell_fire_fire",
	[187972] = "Interface/Icons/spell_fire_fire",
	[187973] = "Interface/Icons/spell_fire_fire",
	[187974] = "Interface/Icons/spell_fire_fire",
	[187975] = "Interface/Icons/spell_fire_fire",
	[189989] = "Interface/Icons/INV_Misc_WartornScrap_Plate",
	[189990] = "Interface/Icons/INV_Misc_WartornScrap_Plate",
	[194032] = "Interface/Icons/spell_fire_bluefire",
	[194033] = "Interface/Icons/spell_fire_fire",
	[194034] = "Interface/Icons/spell_fire_fire",
	[194035] = "Interface/Icons/spell_fire_bluefire",
	[194036] = "Interface/Icons/spell_fire_bluefire",
	[194037] = "Interface/Icons/spell_fire_fire",
	[194038] = "Interface/Icons/spell_fire_bluefire",
	[194039] = "Interface/Icons/spell_fire_fire",
	[194040] = "Interface/Icons/spell_fire_bluefire",
	[194042] = "Interface/Icons/spell_fire_fire",
	[194043] = "Interface/Icons/spell_fire_fire",
	[194044] = "Interface/Icons/spell_fire_bluefire",
	[194045] = "Interface/Icons/spell_fire_bluefire",
	[194046] = "Interface/Icons/spell_fire_fire",
	[194048] = "Interface/Icons/spell_fire_fire",
	[194049] = "Interface/Icons/spell_fire_bluefire",
	[194378] = "Interface/Icons/INV_Scroll_11",
	[194387] = "Interface/Icons/INV_Scroll_11",
	[194388] = "Interface/Icons/INV_Scroll_11",
	[194389] = "Interface/Icons/INV_Scroll_11",
	[194390] = "Interface/Icons/INV_Scroll_11",
	[194391] = "Interface/Icons/INV_Scroll_11",
	[202083] = "Interface/Icons/INV_Pet_PinkMurlocEgg",
	[203733] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[204344] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[204351] = "Interface/Icons/INV_chaos_orb",
	[204817] = "Interface/Icons/INV_Misc_Dust_02",
	[204824] = "Interface/Icons/INV_Misc_Dust_02",
	[204825] = "Interface/Icons/INV_Misc_Dust_02",
	[205143] = "Interface/Icons/INV_Misc_Key_12",
	[205258] = "Interface/Icons/inv_misc_desecrated_mailchest",
	[205350] = "Interface/Icons/INV_Gizmo_GoblinBoomBox_01",
	[205476] = "Interface/Icons/inv_misc_book_17",
	[205875] = "Interface/Icons/Spell_Fire_Flare",
	[206335] = "Interface/Icons/INV_Misc_StoneTablet_01",
	[206336] = "Interface/Icons/INV_Misc_StoneTablet_01",
	[206374] = "Interface/Icons/Buff_FelTreasures",
	[207303] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[207304] = "Interface/Icons/INV_Inscription_ScrollOfWisdom_01",
	[207496] = "Interface/Icons/INV_Plate_BlackrockClan_B_01Chest",
	[207982] = "Interface/Icons/spell_fire_bluefire",
	[207983] = "Interface/Icons/spell_fire_fire",
	[207984] = "Interface/Icons/spell_fire_bluefire",
	[207985] = "Interface/Icons/spell_fire_bluefire",
	[207986] = "Interface/Icons/spell_fire_fire",
	[207987] = "Interface/Icons/spell_fire_bluefire",
	[207988] = "Interface/Icons/spell_fire_bluefire",
	[207989] = "Interface/Icons/spell_fire_fire",
	[207990] = "Interface/Icons/spell_fire_fire",
	[207991] = "Interface/Icons/spell_fire_fire",
	[207992] = "Interface/Icons/spell_fire_fire",
	[207993] = "Interface/Icons/spell_fire_bluefire",
	[208089] = "Interface/Icons/spell_fire_bluefire",
	[208090] = "Interface/Icons/spell_fire_fire",
	[208093] = "Interface/Icons/spell_fire_bluefire",
	[208094] = "Interface/Icons/spell_fire_fire",
	[209076] = "Interface/Icons/INV_Crate_01",
	[209095] = "Interface/Icons/INV_Crate_01",
	[217851] = "Interface/Icons/spell_fire_bluefire",
	[217852] = "Interface/Icons/spell_fire_fire",
	[240624] = "Interface/Icons/INV_FaerieDragonMount",
	[243911] = "Interface/Icons/INV_Ammo_Snowball",
	[259870] = "Interface/Icons/spell_fire_fire",
	[259871] = "Interface/Icons/spell_fire_bluefire",
	[259926] = "Interface/Icons/spell_fire_fire",
	[259927] = "Interface/Icons/spell_fire_bluefire",
	[307277] = "Interface/Icons/inv_drink_11",
	[307307] = "Interface/Icons/inv_cask_03",
	[307330] = "Interface/Icons/inv_misc_crate01",
	[316788] = "Interface/Icons/spell_fire_bluefire",
	[316791] = "Interface/Icons/spell_fire_bluefire",
	[316793] = "Interface/Icons/spell_fire_bluefire",
	[316795] = "Interface/Icons/spell_fire_fire",
	[316796] = "Interface/Icons/spell_fire_fire",
	[316801] = "Interface/Icons/spell_fire_fire",
	[327669] = "Interface/Icons/inv_pet_pandarenelementa_fire",
	[328343] = "Interface/Icons/inv_misc_gear_01",
	[328413] = "Interface/Icons/spell_totem_wardofdraining",
	[330168] = "Interface/Icons/inv_pet_pandarenelementa_fire",
	[330169] = "Interface/Icons/inv_misc_gear_01",
	[330170] = "Interface/Icons/spell_totem_wardofdraining",
};
_.ObjectModels = {
	[31] = 189908,
	[55] = 198343,
	[56] = 198343,
	[61] = 189541,
	[270] = 199563,
	[6751] = 190381,
	[6752] = 190380,
	[7510] = 189772,
	[15084] = 201020,
	[15085] = 201020,
	[35251] = 196979,
	[123329] = 196979,
	[131474] = 203420,
	[141979] = 199748,
	[142343] = 201041,
	[142344] = 201018,
	[142345] = 201022,
	[142475] = 201022,
	[142476] = 201022,
	[142487] = 201020,
	[142696] = 201022,
	[160836] = 196976,
	[161495] = 196976,
	[164820] = 203051,
	[169243] = 200953,
	[173232] = 203431,
	[175606] = 198527,
	[175965] = 219399,
	[176192] = 200902,
	[176484] = 198455,
	[176485] = 198455,
	[176486] = 198455,
	[176487] = 198455,
	[176544] = 198343,
	[176545] = 198343,
	[177787] = 200910,
	[177964] = 200024,
	[179485] = 199580,
	[179564] = 200953,
	[180743] = 199604,
	[180746] = 199605,
	[180747] = 199606,
	[180748] = 199608,
	[180793] = 199609,
	[180794] = 198032,
	[180918] = 192133,
	[181011] = 191948,
	[181074] = 196976,
	[181083] = 196976,
	[181147] = 192133,
	[181150] = 198020,
	[181153] = 192133,
	[181748] = 191579,
	[181756] = 198027,
	[181889] = 192468,
	[182032] = 198028,
	[182115] = 199428,
	[182165] = 199421,
	[182392] = 199475,
	[182393] = 192468,
	[182549] = 198457,
	[182587] = 199473,
	[182588] = 199475,
	[182952] = 219411,
	[183284] = 192468,
	[184465] = 193577,
	[184660] = 191094,
	[184825] = 198020,
	[184945] = 199475,
	[184946] = 199476,
	[185035] = 199473,
	[185126] = 192011,
	[185165] = 192342,
	[185168] = 196989,
	[186426] = 192468,
	[187236] = 199604,
	[202083] = 199226,
	[203733] = 199473,
	[204344] = 198409,
	[204351] = 203892,
	[204817] = 189528,
	[204824] = 189528,
	[204825] = 189528,
	[207303] = 199475,
	[207304] = 199475,
	[207496] = 446673,
	[240622] = 521201,
	[240624] = 975382,
};