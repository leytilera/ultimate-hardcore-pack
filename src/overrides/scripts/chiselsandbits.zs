#modloaded chiselsandbits

// Author : AnodeCathode, ACGaming
// Mod required : Chisels & Bits
// Scripts required : -

import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;

// REMOVE
recipes.remove(<chiselsandbits:bitsaw_diamond>);
recipes.remove(<chiselsandbits:chisel_diamond>);
recipes.remove(<chiselsandbits:chisel_gold>);
recipes.remove(<chiselsandbits:chisel_iron>);
recipes.remove(<chiselsandbits:chisel_stone>);
recipes.remove(<chiselsandbits:tape_measure>);

// ADD
recipes.addShaped("chiselsandbits_bitsaw_gems", <chiselsandbits:bitsaw_diamond>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:stickWood>, <ore:gemFlawless> | <ore:gemExquisite>, <ore:gemFlawless> | <ore:gemExquisite>]]);
recipes.addShaped("chiselsandbits_chisel_diamond", <chiselsandbits:chisel_diamond>, [[<ore:gemDiamond>, <ore:stickLongBlueSteel>]]);
recipes.addShaped("chiselsandbits_chisel_gold", <chiselsandbits:chisel_gold>, [[<tfc:metal/ingot/gold>, <ore:rodGold>]]);
recipes.addShaped("chiselsandbits_chisel_iron", <chiselsandbits:chisel_iron>, [[<tfc:metal/ingot/wrought_iron>, <ore:rodWroughtIron>]]);
recipes.addShaped("chiselsandbits_chisel_stone", <chiselsandbits:chisel_stone>, [[<ore:cobblestone>, <ore:stickWood>]]);
recipes.addShaped("chiselsandbits_tape_measure", <chiselsandbits:tape_measure>, [[null, null, <ore:string>], [<tfc:metal/ingot/wrought_iron>, <ore:string>, <ore:dyeYellow>], [<tfc:metal/ingot/wrought_iron>, <tfc:metal/ingot/wrought_iron>, null]]);
recipes.addShapeless("chiselsandbits_mirrorprint", <chiselsandbits:mirrorprint>, [<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}}).transformReplace(<tfc:wooden_bucket>), <minecraft:paper>, <ore:dyeYellow>]);
recipes.addShapeless("chiselsandbits_negativeprint", <chiselsandbits:negativeprint>, [<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}}).transformReplace(<tfc:wooden_bucket>), <minecraft:paper>, <ore:dyeRed>]);
recipes.addShapeless("chiselsandbits_positiveprint", <chiselsandbits:positiveprint>, [<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}}).transformReplace(<tfc:wooden_bucket>), <minecraft:paper>, <ore:dyeBlue>]);

// HARDNESS
val cbrock = <chiselsandbits:chiseled_rock>.asBlock();
val def = cbrock.definition;
//sets chiseled rock hardness
def.hardness = 40.0;

val cbground = <chiselsandbits:chiseled_ground>.asBlock().definition;
//sets chiseled ground hardness
cbground.hardness = 40.0;

val cbsand = <chiselsandbits:chiseled_sand>.asBlock().definition;
//sets chiseled sand hardness
cbsand.hardness = 40.0;

print("Initialized 'chiselsandbits.zs'");