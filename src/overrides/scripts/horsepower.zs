#modloaded horsepower

// Author : AnodeCathode & ACGaming
// Mod required : Horse Power
// Scripts required : -

import mods.horsepower.ChoppingBlock;
import mods.horsepower.Grindstone;
import mods.horsepower.Press;
import mods.jei.JEI;
import mods.terrafirmacraft.ItemRegistry;

// REMOVE AND HIDE
JEI.removeAndHide(<horsepower:dough>);
JEI.removeAndHide(<horsepower:flour>);
JEI.removeAndHide(<horsepower:hand_grindstone>);

// REMOVE
recipes.remove(<horsepower:chopper>);
recipes.remove(<horsepower:chopping_block>);
recipes.remove(<horsepower:grindstone>);
recipes.remove(<horsepower:press>);

// CHOPPER
recipes.addShaped("horsepower_chopper_acacia", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/acacia"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/acacia>, <ore:saw>.noReturn(), <tfc:wood/log/acacia>], [<ore:stickWood>, <tfc:wood/log/acacia>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_ash", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/ash"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/ash>, <ore:saw>.noReturn(), <tfc:wood/log/ash>], [<ore:stickWood>, <tfc:wood/log/ash>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_aspen", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/aspen"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/aspen>, <ore:saw>.noReturn(), <tfc:wood/log/aspen>], [<ore:stickWood>, <tfc:wood/log/aspen>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_birch", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/birch"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/birch>, <ore:saw>.noReturn(), <tfc:wood/log/birch>], [<ore:stickWood>, <tfc:wood/log/birch>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_blackwood", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/blackwood"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/blackwood>, <ore:saw>.noReturn(), <tfc:wood/log/blackwood>], [<ore:stickWood>, <tfc:wood/log/blackwood>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_chestnut", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/chestnut"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/chestnut>, <ore:saw>.noReturn(), <tfc:wood/log/chestnut>], [<ore:stickWood>, <tfc:wood/log/chestnut>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_douglas_fir", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/douglas_fir"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/douglas_fir>, <ore:saw>.noReturn(), <tfc:wood/log/douglas_fir>], [<ore:stickWood>, <tfc:wood/log/douglas_fir>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_hevea", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/hevea"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/hevea>, <ore:saw>.noReturn(), <tfc:wood/log/hevea>], [<ore:stickWood>, <tfc:wood/log/hevea>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_hickory", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/hickory"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/hickory>, <ore:saw>.noReturn(), <tfc:wood/log/hickory>], [<ore:stickWood>, <tfc:wood/log/hickory>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_kapok", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/kapok"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/kapok>, <ore:saw>.noReturn(), <tfc:wood/log/kapok>], [<ore:stickWood>, <tfc:wood/log/kapok>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_maple", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/maple"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/maple>, <ore:saw>.noReturn(), <tfc:wood/log/maple>], [<ore:stickWood>, <tfc:wood/log/maple>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_oak", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/oak"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/oak>, <ore:saw>.noReturn(), <tfc:wood/log/oak>], [<ore:stickWood>, <tfc:wood/log/oak>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_palm", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/palm"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/palm>, <ore:saw>.noReturn(), <tfc:wood/log/palm>], [<ore:stickWood>, <tfc:wood/log/palm>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_pine", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/pine"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/pine>, <ore:saw>.noReturn(), <tfc:wood/log/pine>], [<ore:stickWood>, <tfc:wood/log/pine>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_rosewood", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/rosewood"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/rosewood>, <ore:saw>.noReturn(), <tfc:wood/log/rosewood>], [<ore:stickWood>, <tfc:wood/log/rosewood>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_sequoia", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/sequoia"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/sequoia>, <ore:saw>.noReturn(), <tfc:wood/log/sequoia>], [<ore:stickWood>, <tfc:wood/log/sequoia>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_spruce", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/spruce"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/spruce>, <ore:saw>.noReturn(), <tfc:wood/log/spruce>], [<ore:stickWood>, <tfc:wood/log/spruce>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_sycamore", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/sycamore"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/sycamore>, <ore:saw>.noReturn(), <tfc:wood/log/sycamore>], [<ore:stickWood>, <tfc:wood/log/sycamore>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_white_cedar", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/white_cedar"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/white_cedar>, <ore:saw>.noReturn(), <tfc:wood/log/white_cedar>], [<ore:stickWood>, <tfc:wood/log/white_cedar>, <ore:stickWood>]]);
recipes.addShaped("horsepower_chopper_willow", <horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/willow"}), [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<tfc:wood/log/willow>, <ore:saw>.noReturn(), <tfc:wood/log/willow>], [<ore:stickWood>, <tfc:wood/log/willow>, <ore:stickWood>]]);

JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/acacia"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/ash"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/aspen"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/birch"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/blackwood"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/chestnut"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/douglas_fir"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/hevea"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/hickory"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/kapok"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/maple"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/oak"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/palm"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/pine"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/rosewood"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/sequoia"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/spruce"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/sycamore"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/white_cedar"}));
JEI.addItem(<horsepower:chopper>.withTag({textureBlock: "tfc:wood/log/willow"}));

// ITEM SIZES
ItemRegistry.registerItemSize(<horsepower:chopper>,"LARGE", "HEAVY");
ItemRegistry.registerItemSize(<horsepower:grindstone>,"LARGE", "HEAVY");
ItemRegistry.registerItemSize(<horsepower:press>,"LARGE", "HEAVY");

// GRINDSTONE
recipes.addShaped("horsepower_grindstone", <horsepower:grindstone>, [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>]]);

Grindstone.add(<ca:coffee_beans:*>, <ca:coffee_ground> * 2, 8);
Grindstone.add(<ca:coffee_cherries_dried:*>, <ca:coffee_beans_green> * 2, 8);
Grindstone.add(<firmalife:cinnamon>, <firmalife:ground_cinnamon> * 4, 8);
Grindstone.add(<minecraft:bone>, <minecraft:dye:15> * 5, 8);
Grindstone.add(<minecraft:coal:1>, <tfc:powder/charcoal> * 8, 8);
Grindstone.add(<ore:rockFlux>, <tfc:powder/flux> * 4, 8);
Grindstone.add(<patchouli:guide_book>, <minecraft:paper> * 3, 8);
Grindstone.add(<tfc:food/barley:*>, <tfc:food/barley_grain> * 2, 8, false, <tfc:straw>, 50);
Grindstone.add(<tfc:food/barley_grain:*>, <tfc:food/barley_flour> * 2, 8);
Grindstone.add(<tfc:food/maize:*>, <tfc:food/maize_grain> * 2, 8, false, <tfc:straw>, 50);
Grindstone.add(<tfc:food/maize_grain:*>, <tfc:food/cornmeal_flour> * 2, 8);
Grindstone.add(<tfc:food/oat:*>, <tfc:food/oat_grain> * 2, 8, false, <tfc:straw>, 50);
Grindstone.add(<tfc:food/oat_grain:*>, <tfc:food/oat_flour> * 2, 8);
Grindstone.add(<tfc:food/olive:*>, <tfc:food/olive_paste> * 2, 8);
Grindstone.add(<tfc:food/rice:*>, <tfc:food/rice_grain> * 2, 8, false, <tfc:straw>, 50);
Grindstone.add(<tfc:food/rice_grain:*>, <tfc:food/rice_flour> * 2, 8);
Grindstone.add(<tfc:food/rye:*>, <tfc:food/rye_grain> * 2, 8, false, <tfc:straw>, 50);
Grindstone.add(<tfc:food/rye_grain:*>, <tfc:food/rye_flour> * 2, 8);
Grindstone.add(<tfc:food/soybean:*>, <firmalife:ground_soybeans> * 2, 8);
Grindstone.add(<tfc:food/sugarcane:*>, <minecraft:sugar>, 4);
Grindstone.add(<tfc:food/wheat:*>, <tfc:food/wheat_grain> * 2, 8, false, <tfc:straw>, 50);
Grindstone.add(<tfc:food/wheat_grain:*>, <tfc:food/wheat_flour> * 2, 8);
Grindstone.add(<tfc:ore/borax>, <tfc:metal/dust/boron> * 6, 8);
Grindstone.add(<tfc:ore/cinnabar>, <minecraft:redstone> * 8, 8);
Grindstone.add(<tfc:ore/cryolite>, <minecraft:redstone> * 8, 8);
Grindstone.add(<tfc:ore/graphite>, <tfc:powder/graphite> * 6, 8);
Grindstone.add(<tfc:ore/halite>, <tfc:powder/salt> * 6, 8);
Grindstone.add(<tfc:ore/kaolinite>, <tfc:powder/kaolinite> * 6, 8);
Grindstone.add(<tfc:ore/kimberlite>, <tfc:gem/diamond:1> * 2, 8, false, null, 20);
Grindstone.add(<tfc:ore/kimberlite>, <tfc:gem/diamond:2> * 2, 8, false, null, 20);
Grindstone.add(<tfc:ore/kimberlite>, <tfc:gem/diamond:3> * 2, 8, false, null, 20);
Grindstone.add(<tfc:ore/kimberlite>, <tfc:gem/diamond:4> * 2, 8, false, null, 20);
Grindstone.add(<tfc:ore/kimberlite>, <tfc:gem/diamond> * 2, 8, false, null, 20);
Grindstone.add(<tfc:ore/lapis_lazuli>, <tfc:powder/lapis_lazuli> * 8, 8);
Grindstone.add(<tfc:ore/pitchblende>, <tfc:metal/dust/uranium> * 6, 8);
Grindstone.add(<tfc:ore/saltpeter>, <tfc:powder/saltpeter> * 8, 8);
Grindstone.add(<tfc:ore/selenite>, <minecraft:glowstone_dust> * 8, 8);
Grindstone.add(<tfc:ore/sulfur>, <tfc:powder/sulfur> * 8, 8);
Grindstone.add(<tfc:ore/sylvite>, <tfc:powder/fertilizer> * 8, 8);
Grindstone.add(<tfc:plants/allium>, <minecraft:dye:5> * 2, 8);
Grindstone.add(<tfc:plants/athyrium_fern>, <minecraft:dye:13> * 2, 8);
Grindstone.add(<tfc:plants/barrel_cactus>, <minecraft:dye:2> * 3, 8);
Grindstone.add(<tfc:plants/black_orchid>, <minecraft:dye:5> * 2, 8);
Grindstone.add(<tfc:plants/blood_lily>, <minecraft:dye:13> * 2, 8);
Grindstone.add(<tfc:plants/blue_orchid>, <tfc:dye/blue> * 2, 8);
Grindstone.add(<tfc:plants/butterfly_milkweed>, <minecraft:dye:14> * 2, 8);
Grindstone.add(<tfc:plants/calendula>, <minecraft:dye:11> * 2, 8);
Grindstone.add(<tfc:plants/canna>, <minecraft:dye:14> * 2, 8);
Grindstone.add(<tfc:plants/dandelion>, <minecraft:dye:11> * 2, 8);
Grindstone.add(<tfc:plants/duckweed>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/field_horsetail>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/fountain_grass>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/foxglove>, <minecraft:dye:9> * 2, 8);
Grindstone.add(<tfc:plants/goldenrod>, <minecraft:dye:11> * 2, 8);
Grindstone.add(<tfc:plants/grape_hyacinth>, <tfc:dye/blue> * 2, 8);
Grindstone.add(<tfc:plants/guzmania>, <minecraft:dye:1> * 2, 8);
Grindstone.add(<tfc:plants/houstonia>, <tfc:dye/white> * 2, 8);
Grindstone.add(<tfc:plants/labrador_tea>, <minecraft:dye:12> * 2, 8);
Grindstone.add(<tfc:plants/lady_fern>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/licorice_fern>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/lotus>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/meads_milkweed>, <minecraft:dye:11> * 2, 8);
Grindstone.add(<tfc:plants/morning_glory>, <minecraft:dye:13> * 2, 8);
Grindstone.add(<tfc:plants/moss>, <minecraft:dye:10> * 2, 8);
Grindstone.add(<tfc:plants/nasturtium>, <minecraft:dye:14> * 2, 8);
Grindstone.add(<tfc:plants/orchard_grass>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/ostrich_fern>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/oxeye_daisy>, <tfc:dye/white> * 2, 8);
Grindstone.add(<tfc:plants/pampas_grass>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/perovskia>, <minecraft:dye:5> * 2, 8);
Grindstone.add(<tfc:plants/pistia>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/poppy>, <minecraft:dye:1> * 2, 8);
Grindstone.add(<tfc:plants/primrose>, <tfc:dye/white> * 2, 8);
Grindstone.add(<tfc:plants/pulsatilla>, <minecraft:dye:13> * 2, 8);
Grindstone.add(<tfc:plants/reindeer_lichen>, <tfc:dye/white> * 2, 8);
Grindstone.add(<tfc:plants/rose>, <minecraft:dye:1> * 3, 8);
Grindstone.add(<tfc:plants/rough_horsetail>, <tfc:dye/brown>, 8);
Grindstone.add(<tfc:plants/ryegrass>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/sacred_datura>, <minecraft:dye:9> * 2, 8);
Grindstone.add(<tfc:plants/sagebrush>, <minecraft:dye:11> * 2, 8);
Grindstone.add(<tfc:plants/sapphire_tower>, <minecraft:dye:12> * 2, 8);
Grindstone.add(<tfc:plants/sargassum>, <tfc:dye/brown>, 8);
Grindstone.add(<tfc:plants/scutch_grass>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/snapdragon_pink>, <minecraft:dye:9> * 2, 8);
Grindstone.add(<tfc:plants/snapdragon_red>, <minecraft:dye:1> * 2, 8);
Grindstone.add(<tfc:plants/snapdragon_white>, <tfc:dye/white> * 2, 8);
Grindstone.add(<tfc:plants/snapdragon_yellow>, <minecraft:dye:11> * 2, 8);
Grindstone.add(<tfc:plants/spanish_moss>, <tfc:dye/white>, 8);
Grindstone.add(<tfc:plants/strelitzia>, <minecraft:dye:14> * 2, 8);
Grindstone.add(<tfc:plants/switchgrass>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/sword_fern>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/tall_fescue_grass>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/timothy_grass>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/toquilla_palm>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/tree_fern>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/trillium>, <tfc:dye/white> * 2, 8);
Grindstone.add(<tfc:plants/tropical_milkweed>, <minecraft:dye:1> * 2, 8);
Grindstone.add(<tfc:plants/tulip_orange>, <minecraft:dye:14> * 2, 8);
Grindstone.add(<tfc:plants/tulip_pink>, <minecraft:dye:9> * 2, 8);
Grindstone.add(<tfc:plants/tulip_red>, <minecraft:dye:1> * 2, 8);
Grindstone.add(<tfc:plants/tulip_white>, <tfc:dye/white> * 2, 8);
Grindstone.add(<tfc:plants/vriesea>, <minecraft:dye:1> * 2, 8);
Grindstone.add(<tfc:plants/water_canna>, <minecraft:dye:14> * 2, 8);
Grindstone.add(<tfc:plants/water_lily>, <minecraft:dye:2>, 8);
Grindstone.add(<tfc:plants/yucca>, <minecraft:dye:7> * 2, 8);
Grindstone.add(<tfc:rock/rocksalt>, <tfc:powder/salt> * 8, 8);

// CHOPPING BLOCK
ChoppingBlock.add(<tfc:wood/log/acacia:0>, <tfc:wood/lumber/acacia> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/ash:0>, <tfc:wood/lumber/ash> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/aspen:0>, <tfc:wood/lumber/aspen> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/birch:0>, <tfc:wood/lumber/birch> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/blackwood:0>, <tfc:wood/lumber/blackwood> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/chestnut:0>, <tfc:wood/lumber/chestnut> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/douglas_fir:0>, <tfc:wood/lumber/douglas_fir> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/hevea:0>, <tfc:wood/lumber/hevea> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/hickory:0>, <tfc:wood/lumber/hickory> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/kapok:0>, <tfc:wood/lumber/kapok> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/maple:0>, <tfc:wood/lumber/maple> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/oak:0>, <tfc:wood/lumber/oak> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/palm:0>, <tfc:wood/lumber/palm> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/pine:0>, <tfc:wood/lumber/pine> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/rosewood:0>, <tfc:wood/lumber/rosewood> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/sequoia:0>, <tfc:wood/lumber/sequoia> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/spruce:0>, <tfc:wood/lumber/spruce> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/sycamore:0>, <tfc:wood/lumber/sycamore> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/white_cedar:0>, <tfc:wood/lumber/white_cedar> * 10, 4, false);
ChoppingBlock.add(<tfc:wood/log/willow:0>, <tfc:wood/lumber/willow> * 10, 4, false);

// PRESS
recipes.addShaped("horsepower_press", <horsepower:press>, [[<minecraft:lead>, <ore:stickWood>, <minecraft:lead>], [<ore:plankWood>, <minecraft:hopper>, <ore:plankWood>], [<ore:plankWood>, <tfc:wooden_bucket>.noReturn(), <ore:plankWood>]]);

Press.add(<minecraft:string> * 22, <tfc:animal/product/silk_cloth>);
Press.add(<ore:logWoodTannin>, <liquid:creosote> * 125);
Press.add(<tfc:animal/product/wool_yarn> * 14, <tfc:animal/product/wool_cloth>);
Press.add(<tfc:crop/product/jute_fiber> * 10, <tfc:crop/product/burlap_cloth>);
Press.add(<tfc:food/olive:*>, <liquid:olive_oil_water> * 250);