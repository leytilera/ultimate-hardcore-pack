#priority 9999
#modloaded tfc unlimitedchiselworks gregtech

// Author : SpeeeDCraft, ACGaming
// Mod required : TerraFirmaCraft, Unlimited Chisel Works, GregTech
// Scripts required : -

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

var GenRockII = [<tfc:raw/granite>,<tfc:raw/gabbro>,<tfc:raw/rhyolite>,<tfc:raw/diorite>] as IItemStack[];
var gen1_GenRockII = <ore:GenRockII>;
for item in GenRockII {
	gen1_GenRockII.add(item);
}

var GenRockMetamorf = [
<tfc:raw/marble>,
<tfc:raw/gneiss>,
<tfc:raw/schist>,
<tfc:raw/quartzite>,
<tfc:raw/phyllite>,
<tfc:raw/slate>
] as IItemStack[];
var gen2_GenRockMetamorf = <ore:GenRockMetamorf>;
for item in GenRockMetamorf {
	gen2_GenRockMetamorf.add(item);
}

var GenRockSedimentary = [
<tfc:raw/shale>,
<tfc:raw/dolomite>,
<tfc:raw/conglomerate>,
<tfc:raw/limestone>,
<tfc:raw/rocksalt>,
<tfc:raw/claystone>,
<tfc:raw/chert>,
<tfc:raw/chalk>
] as IItemStack[];
var gen3_GenRockSedimentary = <ore:GenRockSedimentary>;
for item in GenRockSedimentary {
	gen3_GenRockSedimentary.add(item);
}

var GenRockIE = [<tfc:raw/basalt>,<tfc:raw/dacite>,<tfc:raw/andesite>] as IItemStack[];
var gen4_GenRockIE = <ore:GenRockIE>;
for item in GenRockIE {
	gen4_GenRockIE.add(item);
}

// RAW STONES
<ore:GenAndesite>.add(<tfc:raw/andesite>);
<ore:GenAndesiteSand>.add(<tfc:sand/andesite>);
<ore:GenBasalt>.add(<tfc:raw/basalt>);
<ore:GenChalk>.add(<tfc:raw/chalk>);
<ore:GenChert>.add(<tfc:raw/chert>);
<ore:GenClaystone>.add(<tfc:raw/claystone>);
<ore:GenConglomerate>.add(<tfc:raw/conglomerate>);
<ore:GenDacite>.add(<tfc:raw/dacite>);
<ore:GenDiorite>.add(<tfc:raw/diorite>);
<ore:GenDolomite>.add(<tfc:raw/dolomite>);
<ore:GenGabbro>.add(<tfc:raw/gabbro>);
<ore:GenGneiss>.add(<tfc:raw/gneiss>);
<ore:GenGranite>.add(<tfc:raw/granite>);
<ore:GenLimestone>.add(<tfc:raw/limestone>);
<ore:GenMarble>.add(<tfc:raw/marble>);
<ore:GenPhyllite>.add(<tfc:raw/phyllite>);
<ore:GenQuartzite>.add(<tfc:raw/quartzite>);
<ore:GenRhyolite>.add(<tfc:raw/rhyolite>);
<ore:GenRocksalt>.add(<tfc:raw/rocksalt>);
<ore:GenSchist>.add(<tfc:raw/schist>);
<ore:GenShale>.add(<tfc:raw/shale>);
<ore:GenSlate>.add(<tfc:raw/slate>);
<ore:stoneBasalt>.add(<tfc:raw/basalt>);
<ore:stoneMarble>.add(<tfc:raw/marble>);

// VANILLA ORES
<ore:dye>.remove(<minecraft:dye:4>);
<ore:dyeBlue>.remove(<minecraft:dye:4>);
<ore:gemDiamond>.remove(<minecraft:diamond>);
<ore:gemEmerald>.remove(<minecraft:emerald>);
<ore:gemLapis>.remove(<minecraft:dye:4>);
<ore:ingotGold>.remove(<minecraft:gold_ingot>);
<ore:ingotIron>.remove(<minecraft:iron_ingot>);
<ore:oreCoal>.remove(<minecraft:coal_ore>);
<ore:oreDiamond>.remove(<minecraft:diamond_ore>);
<ore:oreEmerald>.remove(<minecraft:emerald_ore>);
<ore:oreGold>.remove(<minecraft:gold_ore>);
<ore:oreIron>.remove(<minecraft:iron_ore>);
<ore:oreRedstone>.remove(<minecraft:redstone_ore>);

// UCW STONE
var TFCCrackedStoneBricksArray = [
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_andesite_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_basalt_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_chalk_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_chert_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_claystone_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_conglomerate_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_dacite_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_diorite_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_dolomite_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_gabbro_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_gneiss_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_granite_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_limestone_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_marble_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_phyllite_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_quartzite_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_rhyolite_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_rocksalt_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_schist_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_shale_0:2>,
<unlimitedchiselworks:chisel_cobblestone_tfc_cobble_slate_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_andesite_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_basalt_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_chalk_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_chert_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_claystone_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_conglomerate_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_dacite_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_diorite_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_dolomite_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_gabbro_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_gneiss_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_granite_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_limestone_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_marble_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_phyllite_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_quartzite_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_rhyolite_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_rocksalt_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_schist_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_shale_0:2>,
<unlimitedchiselworks:chisel_stonebrick_tfc_bricks_slate_0:2>
] as IItemStack[];
var TFCCSB1 = <ore:stoneCracked>;
for item in TFCCrackedStoneBricksArray {
	TFCCSB1.add(item);
}

// WOODEN BUTTONS
var ButtonWood = [
<tfc:wood/button/acacia>,
<tfc:wood/button/ash>,
<tfc:wood/button/aspen>,
<tfc:wood/button/birch>,
<tfc:wood/button/blackwood>,
<tfc:wood/button/chestnut>,
<tfc:wood/button/douglas_fir>,
<tfc:wood/button/hevea>,
<tfc:wood/button/hickory>,
<tfc:wood/button/kapok>,
<tfc:wood/button/maple>,
<tfc:wood/button/oak>,
<tfc:wood/button/palm>,
<tfc:wood/button/pine>,
<tfc:wood/button/rosewood>,
<tfc:wood/button/sequoia>,
<tfc:wood/button/spruce>,
<tfc:wood/button/sycamore>,
<tfc:wood/button/white_cedar>,
<tfc:wood/button/willow>
] as IItemStack[];
var oreButtonWood = <ore:ButtonWood>;
for item in ButtonWood {
	oreButtonWood.add(item);
}

// STONE BUTTONS
var ButtonStone = [
<tfc:stone/button/andesite>,
<tfc:stone/button/basalt>,
<tfc:stone/button/chalk>,
<tfc:stone/button/chert>,
<tfc:stone/button/claystone>,
<tfc:stone/button/conglomerate>,
<tfc:stone/button/dacite>,
<tfc:stone/button/diorite>,
<tfc:stone/button/dolomite>,
<tfc:stone/button/gabbro>,
<tfc:stone/button/gneiss>,
<tfc:stone/button/granite>,
<tfc:stone/button/limestone>,
<tfc:stone/button/marble>,
<tfc:stone/button/phyllite>,
<tfc:stone/button/quartzite>,
<tfc:stone/button/rhyolite>,
<tfc:stone/button/rocksalt>,
<tfc:stone/button/schist>,
<tfc:stone/button/shale>,
<tfc:stone/button/slate>
] as IItemStack[];
var oreButtonStone = <ore:ButtonStone>;
for item in ButtonStone {
	oreButtonStone.add(item);
}

// MISC
<ore:dustWroughtIron>.remove(<tfc:metal/dust/wrought_iron>);
<ore:hammer>.addAll(<ore:craftingToolHardHammer>);
<ore:ingotWroughtIron>.remove(<tfc:metal/ingot/wrought_iron>);
<ore:knife>.addAll(<ore:craftingToolKnife>);
<ore:nuggetWroughtIron>.remove(<tfc:metal/nugget/wrought_iron>);
<ore:plateWroughtIron>.remove(<tfc:metal/sheet/wrought_iron>);
<ore:saw>.addAll(<ore:craftingToolSaw>);
<ore:sheetWroughtIron>.remove(<tfc:metal/sheet/wrought_iron>);
<ore:toolCuttingboard>.add(<gregtech:meta_tool:17>.withTag({}));

print("Initialized 'ore_dictionary.zs'");