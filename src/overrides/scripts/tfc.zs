#modloaded tfc tfcdryingrack gregtech

// Author : SpeeeDCraft, ACGaming
// Mod required : TerraFirmaCraft, TFC Drying Rack, GregTech
// Scripts required : -

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import mods.gregtech.recipe.RecipeMap;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Barrel;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Quern;
import mods.terrafirmacraft.Welding;
import mods.tfcdryingrack.Rack;

val assembler as RecipeMap = RecipeMap.getByName("assembler");
val bio_reactor as RecipeMap = RecipeMap.getByName("bio_reactor");
val brewer as RecipeMap = RecipeMap.getByName("brewer");
val centrifuge as RecipeMap = RecipeMap.getByName("centrifuge");
val chemical_bath as RecipeMap = RecipeMap.getByName("chemical_bath");
val chemical_plant as RecipeMap = RecipeMap.getByName("chemical_plant");
val chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");
val compressor as RecipeMap = RecipeMap.getByName("compressor");
val distillery as RecipeMap = RecipeMap.getByName("distillery");
val electrolyzer as RecipeMap = RecipeMap.getByName("electrolyzer");
val extractor as RecipeMap = RecipeMap.getByName("extractor");
val fluid_extractor as RecipeMap = RecipeMap.getByName("fluid_extractor");
val fluid_heater as RecipeMap = RecipeMap.getByName("fluid_heater");
val forge_hammer as RecipeMap = RecipeMap.getByName("forge_hammer");
val green_house as RecipeMap = RecipeMap.getByName("green_house");
val large_centrifuge as RecipeMap = RecipeMap.getByName("large_centrifuge");
val large_chemical_reactor as RecipeMap = RecipeMap.getByName("large_chemical_reactor");
val large_mixer as RecipeMap = RecipeMap.getByName("large_mixer");
val macerator as RecipeMap = RecipeMap.getByName("macerator");
val mixer as RecipeMap = RecipeMap.getByName("mixer");

// JEI
global ItemsToRemoveTFCJEI as IItemStack[] = [
	<tfc:metal/hammer/aluminium>,
	<tfc:metal/hammer/beryllium_copper>,
	<tfc:metal/hammer/bismuth_bronze>,
	<tfc:metal/hammer/black_bronze>,
	<tfc:metal/hammer/black_steel>,
	<tfc:metal/hammer/blue_steel>,
	<tfc:metal/hammer/boron>,
	<tfc:metal/hammer/bronze>,
	<tfc:metal/hammer/cobalt>,
	<tfc:metal/hammer/copper>,
	<tfc:metal/hammer/invar>,
	<tfc:metal/hammer/manyullyn>,
	<tfc:metal/hammer/mithril>,
	<tfc:metal/hammer/nickel_silver>,
	<tfc:metal/hammer/osmium>,
	<tfc:metal/hammer/red_steel>,
	<tfc:metal/hammer/steel>,
	<tfc:metal/hammer/titanium>,
	<tfc:metal/hammer/tungsten>,
	<tfc:metal/hammer/tungsten_steel>,
	<tfc:metal/hammer/wrought_iron>,
	<tfc:metal/hammer/zircaloy>,
	<tfc:metal/hammer_head/aluminium>,
	<tfc:metal/hammer_head/beryllium_copper>,
	<tfc:metal/hammer_head/bismuth_bronze>,
	<tfc:metal/hammer_head/black_bronze>,
	<tfc:metal/hammer_head/black_steel>,
	<tfc:metal/hammer_head/blue_steel>,
	<tfc:metal/hammer_head/boron>,
	<tfc:metal/hammer_head/bronze>,
	<tfc:metal/hammer_head/cobalt>,
	<tfc:metal/hammer_head/invar>,
	<tfc:metal/hammer_head/manyullyn>,
	<tfc:metal/hammer_head/mithril>,
	<tfc:metal/hammer_head/nickel_silver>,
	<tfc:metal/hammer_head/osmium>,
	<tfc:metal/hammer_head/red_steel>,
	<tfc:metal/hammer_head/steel>,
	<tfc:metal/hammer_head/titanium>,
	<tfc:metal/hammer_head/tungsten>,
	<tfc:metal/hammer_head/tungsten_steel>,
	<tfc:metal/hammer_head/wrought_iron>,
	<tfc:metal/hammer_head/zircaloy>,
	<tfc:metal/knife/aluminium>,
	<tfc:metal/knife/beryllium_copper>,
	<tfc:metal/knife/bismuth_bronze>,
	<tfc:metal/knife/black_bronze>,
	<tfc:metal/knife/black_steel>,
	<tfc:metal/knife/blue_steel>,
	<tfc:metal/knife/boron>,
	<tfc:metal/knife/bronze>,
	<tfc:metal/knife/cobalt>,
	<tfc:metal/knife/copper>,
	<tfc:metal/knife/invar>,
	<tfc:metal/knife/manyullyn>,
	<tfc:metal/knife/mithril>,
	<tfc:metal/knife/nickel_silver>,
	<tfc:metal/knife/osmium>,
	<tfc:metal/knife/red_steel>,
	<tfc:metal/knife/steel>,
	<tfc:metal/knife/titanium>,
	<tfc:metal/knife/tungsten>,
	<tfc:metal/knife/tungsten_steel>,
	<tfc:metal/knife/wrought_iron>,
	<tfc:metal/knife/zircaloy>,
	<tfc:metal/knife_blade/aluminium>,
	<tfc:metal/knife_blade/beryllium_copper>,
	<tfc:metal/knife_blade/bismuth_bronze>,
	<tfc:metal/knife_blade/black_bronze>,
	<tfc:metal/knife_blade/black_steel>,
	<tfc:metal/knife_blade/blue_steel>,
	<tfc:metal/knife_blade/boron>,
	<tfc:metal/knife_blade/bronze>,
	<tfc:metal/knife_blade/cobalt>,
	<tfc:metal/knife_blade/copper>,
	<tfc:metal/knife_blade/copper>,
	<tfc:metal/knife_blade/invar>,
	<tfc:metal/knife_blade/manyullyn>,
	<tfc:metal/knife_blade/mithril>,
	<tfc:metal/knife_blade/nickel_silver>,
	<tfc:metal/knife_blade/osmium>,
	<tfc:metal/knife_blade/red_steel>,
	<tfc:metal/knife_blade/steel>,
	<tfc:metal/knife_blade/titanium>,
	<tfc:metal/knife_blade/tungsten>,
	<tfc:metal/knife_blade/tungsten_steel>,
	<tfc:metal/knife_blade/wrought_iron>,
	<tfc:metal/knife_blade/zircaloy>,
	<tfc:metal/propick/aluminium>,
	<tfc:metal/propick/bismuth_bronze>,
	<tfc:metal/propick/black_bronze>,
	<tfc:metal/propick/black_steel>,
	<tfc:metal/propick/blue_steel>,
	<tfc:metal/propick/bronze>,
	<tfc:metal/propick/cobalt>,
	<tfc:metal/propick/copper>,
	<tfc:metal/propick/invar>,
	<tfc:metal/propick/manyullyn>,
	<tfc:metal/propick/mithril>,
	<tfc:metal/propick/nickel_silver>,
	<tfc:metal/propick/osmium>,
	<tfc:metal/propick/red_steel>,
	<tfc:metal/propick/steel>,
	<tfc:metal/propick/titanium>,
	<tfc:metal/propick/tungsten>,
	<tfc:metal/propick/tungsten_steel>,
	<tfc:metal/propick/wrought_iron>,
	<tfc:metal/propick_head/aluminium>,
	<tfc:metal/propick_head/bismuth_bronze>,
	<tfc:metal/propick_head/black_bronze>,
	<tfc:metal/propick_head/black_steel>,
	<tfc:metal/propick_head/blue_steel>,
	<tfc:metal/propick_head/bronze>,
	<tfc:metal/propick_head/cobalt>,
	<tfc:metal/propick_head/copper>,
	<tfc:metal/propick_head/invar>,
	<tfc:metal/propick_head/manyullyn>,
	<tfc:metal/propick_head/mithril>,
	<tfc:metal/propick_head/nickel_silver>,
	<tfc:metal/propick_head/osmium>,
	<tfc:metal/propick_head/red_steel>,
	<tfc:metal/propick_head/steel>,
	<tfc:metal/propick_head/titanium>,
	<tfc:metal/propick_head/tungsten>,
	<tfc:metal/propick_head/tungsten_steel>,
	<tfc:metal/propick_head/wrought_iron>,
	<tfc:metal/saw/aluminium>,
	<tfc:metal/saw/beryllium_copper>,
	<tfc:metal/saw/bismuth_bronze>,
	<tfc:metal/saw/black_bronze>,
	<tfc:metal/saw/black_steel>,
	<tfc:metal/saw/blue_steel>,
	<tfc:metal/saw/boron>,
	<tfc:metal/saw/bronze>,
	<tfc:metal/saw/cobalt>,
	<tfc:metal/saw/copper>,
	<tfc:metal/saw/invar>,
	<tfc:metal/saw/manyullyn>,
	<tfc:metal/saw/mithril>,
	<tfc:metal/saw/nickel_silver>,
	<tfc:metal/saw/osmium>,
	<tfc:metal/saw/red_steel>,
	<tfc:metal/saw/steel>,
	<tfc:metal/saw/titanium>,
	<tfc:metal/saw/tungsten>,
	<tfc:metal/saw/tungsten_steel>,
	<tfc:metal/saw/wrought_iron>,
	<tfc:metal/saw/zircaloy>,
	<tfc:metal/saw_blade/aluminium>,
	<tfc:metal/saw_blade/beryllium_copper>,
	<tfc:metal/saw_blade/boron>,
	<tfc:metal/saw_blade/copper>,
	<tfc:metal/saw_blade/manyullyn>,
	<tfc:metal/saw_blade/mithril>,
	<tfc:metal/saw_blade/nickel_silver>,
	<tfc:metal/saw_blade/osmium>,
	<tfc:metal/saw_blade/titanium>,
	<tfc:metal/saw_blade/tungsten>,
	<tfc:metal/saw_blade/tungsten_steel>,
	<tfc:metal/saw_blade/zircaloy>
	<tfc:sluice>,
] as IItemStack[];
for item in ItemsToRemoveTFCJEI{
    mods.jei.JEI.removeAndHide(item);
}

// ANVIL
Anvil.removeRecipe(<tfc:metal/hammer_head/aluminium>);
Anvil.removeRecipe(<tfc:metal/hammer_head/beryllium_copper>);
Anvil.removeRecipe(<tfc:metal/hammer_head/bismuth_bronze>);
Anvil.removeRecipe(<tfc:metal/hammer_head/black_bronze>);
Anvil.removeRecipe(<tfc:metal/hammer_head/black_steel>);
Anvil.removeRecipe(<tfc:metal/hammer_head/blue_steel>);
Anvil.removeRecipe(<tfc:metal/hammer_head/boron>);
Anvil.removeRecipe(<tfc:metal/hammer_head/bronze>);
Anvil.removeRecipe(<tfc:metal/hammer_head/cobalt>);
Anvil.removeRecipe(<tfc:metal/hammer_head/copper>);
Anvil.removeRecipe(<tfc:metal/hammer_head/invar>);
Anvil.removeRecipe(<tfc:metal/hammer_head/manyullyn>);
Anvil.removeRecipe(<tfc:metal/hammer_head/mithril>);
Anvil.removeRecipe(<tfc:metal/hammer_head/nickel_silver>);
Anvil.removeRecipe(<tfc:metal/hammer_head/osmium>);
Anvil.removeRecipe(<tfc:metal/hammer_head/red_steel>);
Anvil.removeRecipe(<tfc:metal/hammer_head/steel>);
Anvil.removeRecipe(<tfc:metal/hammer_head/titanium>);
Anvil.removeRecipe(<tfc:metal/hammer_head/tungsten>);
Anvil.removeRecipe(<tfc:metal/hammer_head/tungsten_steel>);
Anvil.removeRecipe(<tfc:metal/hammer_head/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/hammer_head/zircaloy>);
Anvil.removeRecipe(<tfc:metal/knife_blade/aluminium>);
Anvil.removeRecipe(<tfc:metal/knife_blade/beryllium_copper>);
Anvil.removeRecipe(<tfc:metal/knife_blade/bismuth_bronze>);
Anvil.removeRecipe(<tfc:metal/knife_blade/black_bronze>);
Anvil.removeRecipe(<tfc:metal/knife_blade/black_steel>);
Anvil.removeRecipe(<tfc:metal/knife_blade/blue_steel>);
Anvil.removeRecipe(<tfc:metal/knife_blade/boron>);
Anvil.removeRecipe(<tfc:metal/knife_blade/bronze>);
Anvil.removeRecipe(<tfc:metal/knife_blade/cobalt>);
Anvil.removeRecipe(<tfc:metal/knife_blade/copper>);
Anvil.removeRecipe(<tfc:metal/knife_blade/invar>);
Anvil.removeRecipe(<tfc:metal/knife_blade/manyullyn>);
Anvil.removeRecipe(<tfc:metal/knife_blade/mithril>);
Anvil.removeRecipe(<tfc:metal/knife_blade/nickel_silver>);
Anvil.removeRecipe(<tfc:metal/knife_blade/osmium>);
Anvil.removeRecipe(<tfc:metal/knife_blade/red_steel>);
Anvil.removeRecipe(<tfc:metal/knife_blade/steel>);
Anvil.removeRecipe(<tfc:metal/knife_blade/titanium>);
Anvil.removeRecipe(<tfc:metal/knife_blade/tungsten>);
Anvil.removeRecipe(<tfc:metal/knife_blade/tungsten_steel>);
Anvil.removeRecipe(<tfc:metal/knife_blade/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/knife_blade/zircaloy>);
Anvil.removeRecipe(<tfc:metal/propick_head/aluminium>);
Anvil.removeRecipe(<tfc:metal/propick_head/beryllium_copper>);
Anvil.removeRecipe(<tfc:metal/propick_head/bismuth_bronze>);
Anvil.removeRecipe(<tfc:metal/propick_head/black_bronze>);
Anvil.removeRecipe(<tfc:metal/propick_head/black_steel>);
Anvil.removeRecipe(<tfc:metal/propick_head/blue_steel>);
Anvil.removeRecipe(<tfc:metal/propick_head/boron>);
Anvil.removeRecipe(<tfc:metal/propick_head/bronze>);
Anvil.removeRecipe(<tfc:metal/propick_head/cobalt>);
Anvil.removeRecipe(<tfc:metal/propick_head/copper>);
Anvil.removeRecipe(<tfc:metal/propick_head/invar>);
Anvil.removeRecipe(<tfc:metal/propick_head/manyullyn>);
Anvil.removeRecipe(<tfc:metal/propick_head/mithril>);
Anvil.removeRecipe(<tfc:metal/propick_head/nickel_silver>);
Anvil.removeRecipe(<tfc:metal/propick_head/osmium>);
Anvil.removeRecipe(<tfc:metal/propick_head/red_steel>);
Anvil.removeRecipe(<tfc:metal/propick_head/steel>);
Anvil.removeRecipe(<tfc:metal/propick_head/titanium>);
Anvil.removeRecipe(<tfc:metal/propick_head/tungsten>);
Anvil.removeRecipe(<tfc:metal/propick_head/tungsten_steel>);
Anvil.removeRecipe(<tfc:metal/propick_head/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/propick_head/zircaloy>);
Anvil.removeRecipe(<tfc:metal/saw_blade/aluminium>);
Anvil.removeRecipe(<tfc:metal/saw_blade/beryllium_copper>);
Anvil.removeRecipe(<tfc:metal/saw_blade/boron>);
Anvil.removeRecipe(<tfc:metal/saw_blade/copper>);
Anvil.removeRecipe(<tfc:metal/saw_blade/manyullyn>);
Anvil.removeRecipe(<tfc:metal/saw_blade/mithril>);
Anvil.removeRecipe(<tfc:metal/saw_blade/nickel_silver>);
Anvil.removeRecipe(<tfc:metal/saw_blade/osmium>);
Anvil.removeRecipe(<tfc:metal/saw_blade/titanium>);
Anvil.removeRecipe(<tfc:metal/saw_blade/tungsten>);
Anvil.removeRecipe(<tfc:metal/saw_blade/tungsten_steel>);
Anvil.removeRecipe(<tfc:metal/saw_blade/zircaloy>);
Anvil.addRecipe("tfc:file_head/BismuthBronze", <ore:ingotBlackBronze>, <gregtech:meta_item_2:6229>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/BlackBronze", <ore:ingotBismuthBronze>, <gregtech:meta_item_2:6230>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/BlackSteel", <ore:ingotBlackSteel>, <gregtech:meta_item_2:6231>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/BlueSteel", <ore:ingotBlueSteel>, <gregtech:meta_item_2:6233>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/Brass", <ore:ingotBrass>, <gregtech:meta_item_2:6094>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/Bronze", <ore:ingotBronze>, <gregtech:meta_item_2:6095>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/Cobalt", <ore:ingotCobalt>, <gregtech:meta_item_2:6017>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/Iron", <ore:ingotIron>, <gregtech:meta_item_2:6033>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/RedSteel", <ore:ingotRedSteel>, <gregtech:meta_item_2:6232>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/RoseGold", <ore:ingotRoseGold>, <gregtech:meta_item_2:6228>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/Steel", <ore:ingotSteel>, <gregtech:meta_item_2:6184>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/SterlingSilver", <ore:ingotSterlingSilver>, <gregtech:meta_item_2:6227>, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:gold_rod_fixed", <tfc:metal/ingot/gold>, <gregtech:meta_item_1:14026>*2, 1, "tools", "DRAW_LAST", "DRAW_NOT_LAST", "PUNCH_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BismuthBronzeF", <ore:ingotBismuthBronze>, <gregtech:meta_item_2:5230>, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BlackBronzeF", <ore:ingotBlackBronze>, <gregtech:meta_item_2:5229>, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BlackSteelF", <ore:ingotBlackSteel>, <gregtech:meta_item_2:5231>, 5, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BlueSteelF", <ore:ingotBlueSteel>, <gregtech:meta_item_2:5233>, 6, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BronzeF", <ore:ingotBronze>, <gregtech:meta_item_2:5095>, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/CobaltF", <ore:ingotCobalt>, <gregtech:meta_item_2:5017>, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/CopperF", <ore:ingotCopper>, <tfc:metal/hammer_head/copper>, 0, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/InvarF", <ore:ingotInvar>, <gregtech:meta_item_2:5126>, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/RedSteelF", <ore:ingotRedSteel>, <gregtech:meta_item_2:5232>, 6, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/SteelF", <ore:ingotSteel>, <gregtech:meta_item_2:5184>, 4, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/WroughtIronF", <ore:ingotWroughtIron>, <gregtech:meta_item_2:5197>, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:irontrapdoortweaked", <tfc:metal/double_sheet/wrought_iron>, <minecraft:iron_trapdoor>, 3, "general", "UPSET_NOT_LAST", "BEND_NOT_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfc:steel_rod_fixed", <tfc:metal/ingot/steel>, <gregtech:meta_item_1:14184>*2, 3, "tools", "DRAW_LAST", "DRAW_NOT_LAST", "PUNCH_NOT_LAST");
Anvil.addRecipe("tfc:wrought_iron_axe_fixed", <tfc:metal/ingot/wrought_iron>, <tfc:metal/axe_head/wrought_iron>, 3, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfc:wrought_iron_chisel_fixed", <tfc:metal/ingot/wrought_iron>, <tfc:metal/chisel_head/wrought_iron>, 3, "tools", "HIT_LAST", "HIT_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfc:wrought_iron_hoe_fixed", <tfc:metal/ingot/wrought_iron>, <tfc:metal/hoe_head/wrought_iron>, 3, "tools", "PUNCH_LAST", "HIT_NOT_LAST", "BEND_NOT_LAST");
Anvil.addRecipe("tfc:wrought_iron_javelin_fixed", <tfc:metal/ingot/wrought_iron>, <tfc:metal/javelin_head/wrought_iron>, 3, "tools", "HIT_LAST", "HIT_SECOND_LAST", "DRAW_THIRD_LAST");
Anvil.addRecipe("tfc:wrought_iron_pick_fixed", <tfc:metal/ingot/wrought_iron>, <tfc:metal/pick_head/wrought_iron>, 3, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfc:wrought_iron_rod_fixed", <tfc:metal/ingot/wrought_iron>, <gregtech:meta_item_1:14033>*2, 3, "tools", "DRAW_LAST", "DRAW_NOT_LAST", "PUNCH_NOT_LAST");
Anvil.addRecipe("tfc:wrought_iron_saw_fixed", <tfc:metal/ingot/wrought_iron>, <tfc:metal/saw_blade/wrought_iron>, 3, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfc:wrought_iron_scythe_fixed", <tfc:metal/ingot/wrought_iron>, <tfc:metal/scythe_blade/wrought_iron>, 3, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfc:wrought_iron_shovel_fixed", <tfc:metal/ingot/wrought_iron>, <tfc:metal/shovel_head/wrought_iron>, 3, "tools", "PUNCH_LAST", "HIT_NOT_LAST");
Anvil.addRecipe("tfc:wrought_iron_unf_boots_fixed", <ore:plateIron>, <tfc:metal/unfinished_boots/wrought_iron>, 3, "tools", "BEND_LAST", "BEND_SECOND_LAST", "SHRINK_THIRD_LAST");

// ASSEMBLER
assembler.findRecipe(4, [<minecraft:planks>*3, <gregtech:meta_item_1:32766>.withTag({Configuration: 3})], null).remove();
assembler.findRecipe(4, [<minecraft:planks>*6, <minecraft:book>*3], null).remove();
assembler.findRecipe(4, [<minecraft:planks>*8, <gregtech:meta_item_1:32766>.withTag({Configuration: 8})], null).remove();
assembler.recipeBuilder().inputs(<ore:plateSteel>*6).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 22})).outputs(<contenttweaker:furnaceblock>).duration(20).EUt(4).buildAndRegister();

// BARREL
Barrel.addRecipe("tfc:hotwatertodwater", <liquid:hot_water>*5, <liquid:distilled_water>*1, 6);

// BIO REACTOR
bio_reactor.findRecipe(30720, [<minecraft:beef>, <gtadditions:ga_meta_item:32399>], [<liquid:bacterial_growth_medium>*1000]).remove();
bio_reactor.recipeBuilder().inputs(<ore:categoryMeat>, <gtadditions:ga_meta_item:32399>).fluidInputs([<liquid:bacterial_growth_medium>*1000]).outputs(<gtadditions:ga_meta_item:32477>).duration(500).EUt(30720).buildAndRegister();

// BREWER
brewer.findRecipe(3, [<minecraft:beetroot>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:beetroot>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:beetroot>], [<liquid:water>*20]).remove();
brewer.findRecipe(3, [<minecraft:brown_mushroom>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:brown_mushroom>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:brown_mushroom>], [<liquid:water>*20]).remove();
brewer.findRecipe(3, [<minecraft:cactus>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:cactus>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:cactus>], [<liquid:water>*20]).remove();
brewer.findRecipe(3, [<minecraft:carrot>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:carrot>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:carrot>], [<liquid:water>*20]).remove();
brewer.findRecipe(3, [<minecraft:potato>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:potato>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:potato>], [<liquid:water>*20]).remove();
brewer.findRecipe(3, [<minecraft:red_mushroom>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:red_mushroom>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:red_mushroom>], [<liquid:water>*20]).remove();
brewer.findRecipe(3, [<minecraft:reeds>], [<liquid:for.honey>*20]).remove();
brewer.findRecipe(3, [<minecraft:reeds>], [<liquid:juice>*20]).remove();
brewer.findRecipe(3, [<minecraft:reeds>], [<liquid:water>*20]).remove();
brewer.recipeBuilder().inputs(<ore:categoryFruit>).fluidInputs([<liquid:for.honey> * 20]).fluidOutputs(<liquid:biomass>*30).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryFruit>).fluidInputs([<liquid:juice> * 20]).fluidOutputs(<liquid:biomass>*30).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryFruit>).fluidInputs([<liquid:water> * 20]).fluidOutputs(<liquid:biomass>*20).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryGrain>).fluidInputs([<liquid:for.honey> * 20]).fluidOutputs(<liquid:biomass>*10).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryGrain>).fluidInputs([<liquid:juice> * 20]).fluidOutputs(<liquid:biomass>*10).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryGrain>).fluidInputs([<liquid:water> * 20]).fluidOutputs(<liquid:biomass>*5).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryVegetable>).fluidInputs([<liquid:for.honey> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryVegetable>).fluidInputs([<liquid:juice> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:categoryVegetable>).fluidInputs([<liquid:water> * 20]).fluidOutputs(<liquid:biomass>*30).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:food/sugarcane>).fluidInputs([<liquid:for.honey> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:food/sugarcane>).fluidInputs([<liquid:juice> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:food/sugarcane>).fluidInputs([<liquid:water> * 20]).fluidOutputs(<liquid:biomass>*30).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:plants/barrel_cactus>).fluidInputs([<liquid:for.honey> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:plants/barrel_cactus>).fluidInputs([<liquid:juice> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:plants/barrel_cactus>).fluidInputs([<liquid:water> * 20]).fluidOutputs(<liquid:biomass>*30).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:plants/porcini>).fluidInputs([<liquid:for.honey> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:plants/porcini>).fluidInputs([<liquid:juice> * 20]).fluidOutputs(<liquid:biomass>*40).duration(20).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<tfc:plants/porcini>).fluidInputs([<liquid:water> * 20]).fluidOutputs(<liquid:biomass>*30).duration(20).EUt(3).buildAndRegister();

// CENTRIFUGE
centrifuge.findRecipe(30, [<gregtech:log>], null).remove();
centrifuge.findRecipe(30, [<minecraft:dirt>], null).remove();
centrifuge.findRecipe(30, [<minecraft:grass>], null).remove();
centrifuge.findRecipe(5, [<minecraft:brown_mushroom>], null).remove();
centrifuge.findRecipe(5, [<minecraft:red_mushroom>], null).remove();
centrifuge.recipeBuilder().fluidInputs(<liquid:salt_water>*1000).chancedOutput(<gregtech:meta_item_1:2155>, 2500, 2500).fluidOutputs(<liquid:fresh_water>*750).duration(100).EUt(10).buildAndRegister();
centrifuge.recipeBuilder().inputs(<ore:categoryCookedMeat>).fluidOutputs(<liquid:methane>*34).duration(20).EUt(5).buildAndRegister();
centrifuge.recipeBuilder().inputs(<ore:categoryMeat>).fluidOutputs(<liquid:methane>*72).duration(20).EUt(5).buildAndRegister();
centrifuge.recipeBuilder().inputs(<ore:dirt>).chancedOutput(<gregtech:meta_item_2:32570>, 1250, 750).chancedOutput(<tfc:sand/basalt>, 5000, 1200).chancedOutput(<gregtech:meta_item_1:105>, 4000, 900).duration(20).EUt(30).buildAndRegister();
centrifuge.recipeBuilder().inputs(<ore:grass>).chancedOutput(<gregtech:meta_item_2:32570>, 3000, 1200).chancedOutput(<tfc:sand/basalt>, 5000, 1200).chancedOutput(<gregtech:meta_item_1:105>, 5000, 900).duration(20).EUt(30).buildAndRegister();
centrifuge.recipeBuilder().inputs([<tfc:wood/log/hevea> * 1]).chancedOutput(<gregtech:meta_item_1:32627>, 5000, 1200).chancedOutput(<gregtech:meta_item_1:2012>, 2500, 600).chancedOutput(<gregtech:meta_item_1:2196>, 2500, 700).chancedOutput(<gregtech:meta_item_2:32570>, 3750, 900).fluidOutputs(<liquid:methane> * 60).duration(200).EUt(20).buildAndRegister();

// CHEMICAL BATH
chemical_bath.findRecipe(8, [<minecraft:reeds>], [<liquid:distilled_water>*100]).remove();
chemical_bath.findRecipe(8, [<minecraft:reeds>], [<liquid:water>*100]).remove();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:black_dye> * 125]).outputs(<minecraft:concrete:15>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:blue_dye> * 125]).outputs(<minecraft:concrete:11>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:brown_dye> * 125]).outputs(<minecraft:concrete:12>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:cyan_dye> * 125]).outputs(<minecraft:concrete:9>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:gray_dye> * 125]).outputs(<minecraft:concrete:7>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:green_dye> * 125]).outputs(<minecraft:concrete:13>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:light_blue_dye> * 125]).outputs(<minecraft:concrete:3>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:light_gray_dye> * 125]).outputs(<minecraft:concrete:8>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:lime_dye> * 125]).outputs(<minecraft:concrete:5>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:magenta_dye> * 125]).outputs(<minecraft:concrete:2>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:orange_dye> * 125]).outputs(<minecraft:concrete:1>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:pink_dye> * 125]).outputs(<minecraft:concrete:6>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:purple_dye> * 125]).outputs(<minecraft:concrete:1>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:red_dye> * 125]).outputs(<minecraft:concrete:14>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:white_dye> * 125]).outputs(<minecraft:concrete>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:aggregate>).fluidInputs([<liquid:yellow_dye> * 125]).outputs(<minecraft:concrete:4>).duration(15).EUt(8).buildAndRegister();
chemical_bath.recipeBuilder().inputs(<tfc:food/sugarcane>).fluidInputs([<liquid:water>*100]).outputs(<minecraft:paper>).duration(160).EUt(30).buildAndRegister();

// CHEMICAL PLANT
chemical_plant.findRecipe(30, [<minecraft:beetroot>*10], [<liquid:for.honey>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:beetroot>*10], [<liquid:juice>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:beetroot>*10], [<liquid:water>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:brown_mushroom>*10], [<liquid:for.honey>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:brown_mushroom>*10], [<liquid:juice>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:brown_mushroom>*10], [<liquid:water>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:cactus>*10], [<liquid:for.honey>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:cactus>*10], [<liquid:juice>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:cactus>*10], [<liquid:water>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:carrot>*10], [<liquid:for.honey>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:carrot>*10], [<liquid:juice>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:carrot>*10], [<liquid:water>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:potato>*10], [<liquid:for.honey>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:potato>*10], [<liquid:juice>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:potato>*10], [<liquid:water>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:red_mushroom>*10], [<liquid:for.honey>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:red_mushroom>*10], [<liquid:juice>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:red_mushroom>*10], [<liquid:water>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:reeds>*10], [<liquid:for.honey>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:reeds>*10], [<liquid:juice>*250]).remove();
chemical_plant.findRecipe(30, [<minecraft:reeds>*10], [<liquid:water>*250]).remove();

// CHEMICAL REACTOR
chemical_reactor.findRecipe(30, [<minecraft:apple>, <minecraft:gold_block>*8], null).remove();
chemical_reactor.findRecipe(30, [<minecraft:apple>, <tfc:metal/ingot/gold>*8], null).remove();
chemical_reactor.findRecipe(30, [<minecraft:carrot>, <minecraft:gold_nugget>*8], null).remove();
chemical_reactor.findRecipe(30, [<minecraft:melon>, <minecraft:gold_nugget>*8], null).remove();
chemical_reactor.recipeBuilder().inputs(<minecraft:gold_block>*8, <tfc:food/green_apple>|<tfc:food/red_apple>).outputs(<minecraft:golden_apple:1>).duration(15).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs(<ore:nuggetGold>*8, <tfc:food/carrot>).outputs(<minecraft:golden_carrot>).duration(15).EUt(30).buildAndRegister();
chemical_reactor.recipeBuilder().inputs(<tfc:metal/ingot/gold>*8, <tfc:food/green_apple>|<tfc:food/red_apple>).outputs(<minecraft:golden_apple>).duration(15).EUt(30).buildAndRegister();

// COMPRESSOR
compressor.findRecipe(2, [<minecraft:beetroot>*8], null).remove();
compressor.findRecipe(2, [<minecraft:brown_mushroom>*8], null).remove(); 
compressor.findRecipe(2, [<minecraft:cactus>*8], null).remove();
compressor.findRecipe(2, [<minecraft:carrot>*8], null).remove();
compressor.findRecipe(2, [<minecraft:cookie>*9], null).remove();
compressor.findRecipe(2, [<minecraft:diamond>*9], null).remove();
compressor.findRecipe(2, [<minecraft:potato>*8], null).remove();
compressor.findRecipe(2, [<minecraft:red_mushroom>*8], null).remove(); 
compressor.findRecipe(2, [<minecraft:reeds>*8], null).remove();
compressor.findRecipe(2, [<minecraft:wheat>*9], null).remove();
compressor.findRecipe(2, [<tfc:gem/amethyst:2>*9], null).remove();
compressor.findRecipe(2, [<tfc:gem/opal:2>*9], null).remove();
compressor.findRecipe(2, [<tfc:gem/ruby:2>*9], null).remove();
compressor.findRecipe(2, [<tfc:gem/sapphire:2>*9], null).remove();
compressor.findRecipe(2, [<tfc:gem/topaz:2>*9], null).remove();
compressor.findRecipe(2, [<tfc:ore/lapis_lazuli>*9], null).remove();
compressor.findRecipe(2, [<tfc:straw>*9], null).remove();
compressor.recipeBuilder().inputs(<ore:categoryFruit>*8).outputs(<gregtech:meta_item_2:32570>).duration(20).EUt(8).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:categoryGrain>*8).outputs(<gregtech:meta_item_2:32570>).duration(20).EUt(8).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:categoryVegetable>*8).outputs(<gregtech:meta_item_2:32570>).duration(20).EUt(8).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemAmethyst>*9).outputs(<gregtech:meta_block_compressed_13:6>).duration(40).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemOpal>*9).outputs(<gregtech:meta_block_compressed_13:5>).duration(40).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemRuby>*9).outputs(<gregtech:meta_block_compressed_9:10>).duration(40).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemSapphire>*9).outputs(<gregtech:meta_block_compressed_9:13>).duration(40).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<ore:gemTopaz>*9).outputs(<gregtech:meta_block_compressed_11:14>).duration(40).EUt(2).buildAndRegister();
compressor.recipeBuilder().inputs(<tfc:food/sugarcane>*8).outputs(<gregtech:meta_item_2:32570>).duration(20).EUt(8).buildAndRegister();
compressor.recipeBuilder().inputs(<tfc:plants/barrel_cactus>*8).outputs(<gregtech:meta_item_2:32570>).duration(20).EUt(8).buildAndRegister();
compressor.recipeBuilder().inputs(<tfc:plants/porcini>*8).outputs(<gregtech:meta_item_2:32570>).duration(20).EUt(8).buildAndRegister();
compressor.recipeBuilder().inputs(<tfc:straw>*9).outputs(<tfc:thatch>).duration(20).EUt(2).buildAndRegister();

// DISTILLERY
distillery.recipeBuilder().fluidInputs(<liquid:hot_water>*576).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 9})).fluidOutputs(<liquid:distilled_water>*510).duration(100).EUt(8).buildAndRegister();

// ELECTROLYZER
electrolyzer.findRecipe(25, [<minecraft:sand>*8], null).remove();
electrolyzer.recipeBuilder().inputs(<ore:sand>*8).outputs(<gregtech:meta_item_1:2159>).chancedOutput(<gregtech:meta_item_1:2159>, 2500, 2500).duration(150).EUt(25).buildAndRegister();

// EXTRACTOR
extractor.findRecipe(2, [<minecraft:beetroot>], null).remove();
extractor.recipeBuilder().inputs([<tfc:wood/log/hevea> * 1]).chancedOutput(<gregtech:meta_item_1:32627>, 2500, 0).duration(200).EUt(2).buildAndRegister();

// FLUID EXTRACTOR
fluid_extractor.findRecipe(4, [<minecraft:fish:1>], null).remove();
fluid_extractor.findRecipe(4, [<minecraft:fish:2>], null).remove();
fluid_extractor.findRecipe(4, [<minecraft:fish:3>], null).remove();
fluid_extractor.findRecipe(4, [<minecraft:fish>], null).remove();
fluid_extractor.recipeBuilder().inputs(<tfc:food/fish>).fluidOutputs(<liquid:fish_oil>*40).duration(20).EUt(20).buildAndRegister();

// FLUID HEATER
fluid_heater.recipeBuilder().fluidInputs(<liquid:fresh_water>*1000).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3})).fluidOutputs(<liquid:hot_water>*950).duration(50).EUt(8).buildAndRegister();

// FORGE HAMMER
forge_hammer.findRecipe(16, [<gregtech:meta_item_1:10140>*3], null).remove();
forge_hammer.recipeBuilder().inputs(<tfc:food/sugarcane>*3).outputs(<gregtech:meta_item_1:2325>*2).duration(40).EUt(9).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<tfc:metal/ingot/pig_iron>).outputs(<tfc:metal/ingot/steel>).duration(400).EUt(2).buildAndRegister();

// FURNACE
furnace.addRecipe(<minecraft:brick>, <tfc:ceramics/unfired/clay_brick>);
furnace.addRecipe(<minecraft:flower_pot>, <tfc:ceramics/unfired/clay_flower_pot>);
furnace.addRecipe(<tfc:ceramics/fired/bowl>, <tfc:ceramics/unfired/bowl>);
furnace.addRecipe(<tfc:ceramics/fired/fire_brick>, <tfc:ceramics/unfired/fire_brick>);
furnace.addRecipe(<tfc:ceramics/fired/jug>, <tfc:ceramics/unfired/jug>);
furnace.addRecipe(<tfc:ceramics/fired/large_vessel>, <tfc:ceramics/unfired/large_vessel>);
furnace.addRecipe(<tfc:ceramics/fired/mold/hammer_head>, <tfc:ceramics/unfired/mold/hammer_head>);
furnace.addRecipe(<tfc:ceramics/fired/mold/propick_head>, <tfc:ceramics/unfired/mold/propick_head>);
furnace.addRecipe(<tfc:ceramics/fired/pot>, <tfc:ceramics/unfired/pot>);
furnace.addRecipe(<tfc:ceramics/fired/spindle>, <tfc:ceramics/unfired/spindle>);
furnace.addRecipe(<tfc:ceramics/fired/vessel>, <tfc:ceramics/unfired/vessel>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/axe_head>, <tfc:ceramics/fired/mold/axe_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/chisel_head>, <tfc:ceramics/fired/mold/chisel_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/hoe_head>, <tfc:ceramics/fired/mold/hoe_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/ingot>, <tfc:ceramics/fired/mold/ingot>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/javelin_head>, <tfc:ceramics/fired/mold/javelin_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/knife_blade>, <tfc:ceramics/fired/mold/knife_blade>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/mace_head>, <tfc:ceramics/fired/mold/mace_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/pick_head>, <tfc:ceramics/fired/mold/pick_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/saw_blade>, <tfc:ceramics/fired/mold/saw_blade>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/scythe_blade>, <tfc:ceramics/fired/mold/scythe_blade>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/shovel_head>, <tfc:ceramics/fired/mold/shovel_head>);
furnace.addRecipe(<tfc:ceramics/unfired/mold/sword_blade>, <tfc:ceramics/fired/mold/sword_blade>);
furnace.addRecipe(<tfc:food/cooked_bear>, <tfc:food/bear>);
furnace.addRecipe(<tfc:food/cooked_beef>, <tfc:food/beef>);
furnace.addRecipe(<tfc:food/cooked_calamari>, <tfc:food/calamari>);
furnace.addRecipe(<tfc:food/cooked_camelidae>, <tfc:food/camelidae>);
furnace.addRecipe(<tfc:food/cooked_chicken>, <tfc:food/chicken>);
furnace.addRecipe(<tfc:food/cooked_fish>, <tfc:food/fish>);
furnace.addRecipe(<tfc:food/cooked_gran_feline>, <tfc:food/gran_feline>);
furnace.addRecipe(<tfc:food/cooked_horse_meat>, <tfc:food/horse_meat>);
furnace.addRecipe(<tfc:food/cooked_mongoose>, <tfc:food/mongoose>);
furnace.addRecipe(<tfc:food/cooked_mutton>, <tfc:food/mutton>);
furnace.addRecipe(<tfc:food/cooked_pheasant>, <tfc:food/pheasant>);
furnace.addRecipe(<tfc:food/cooked_pork>, <tfc:food/pork>);
furnace.addRecipe(<tfc:food/cooked_rabbit>, <tfc:food/rabbit>);
furnace.addRecipe(<tfc:food/cooked_venison>, <tfc:food/venison>);
furnace.addRecipe(<tfc:food/cooked_wolf>, <tfc:food/wolf>);

// GREEN HOUSE
green_house.findRecipe(16, [<minecraft:beetroot>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:beetroot>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:brown_mushroom>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:brown_mushroom>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:cactus>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:cactus>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:carrot>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:carrot>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:melon_seeds>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:melon_seeds>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:melon_seeds>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:potato>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:potato>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:pumpkin_seeds>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:pumpkin_seeds>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:pumpkin_seeds>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:red_mushroom>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:red_mushroom>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:reeds>, <gregtech:meta_item_1:2754>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:water>*2000]).remove();
green_house.findRecipe(16, [<minecraft:reeds>, <minecraft:dye:15>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:water>*2000]).remove();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/barley>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/barley>).chancedOutput(<tfc:crop/seeds/barley>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/barley>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/barley>, <tfc:crop/seeds/barley>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/beet>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/beet>).chancedOutput(<tfc:crop/seeds/beet>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/beet>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/beet>, <tfc:crop/seeds/beet>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/cabbage>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/cabbage>).chancedOutput(<tfc:crop/seeds/cabbage>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/cabbage>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/cabbage>, <tfc:crop/seeds/cabbage>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/carrot>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/carrot>).chancedOutput(<tfc:crop/seeds/carrot>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/carrot>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/carrot>, <tfc:crop/seeds/carrot>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/garlic>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/garlic>).chancedOutput(<tfc:crop/seeds/garlic>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/garlic>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/garlic>, <tfc:crop/seeds/garlic>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/green_bean>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/green_bean>).chancedOutput(<tfc:crop/seeds/green_bean>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/green_bean>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/green_bean>, <tfc:crop/seeds/green_bean>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/jute>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:crop/product/jute>).chancedOutput(<tfc:crop/seeds/jute>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/jute>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:crop/product/jute>, <tfc:crop/seeds/jute>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/maize>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/maize>).chancedOutput(<tfc:crop/seeds/maize>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/maize>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/maize>, <tfc:crop/seeds/maize>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/oat>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/oat>).chancedOutput(<tfc:crop/seeds/oat>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/oat>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/oat>, <tfc:crop/seeds/oat>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/onion>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/onion>).chancedOutput(<tfc:crop/seeds/onion>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/onion>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/onion>, <tfc:crop/seeds/onion>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/potato>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/potato>).chancedOutput(<tfc:crop/seeds/potato>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/potato>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/potato>, <tfc:crop/seeds/potato>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/red_bell_pepper>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/red_bell_pepper>).chancedOutput(<tfc:crop/seeds/red_bell_pepper>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/red_bell_pepper>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/red_bell_pepper>, <tfc:crop/seeds/red_bell_pepper>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/rice>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/rice>).chancedOutput(<tfc:crop/seeds/rice>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/rice>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/rice>, <tfc:crop/seeds/rice>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/rye>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/rye>).chancedOutput(<tfc:crop/seeds/rye>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/rye>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/rye>, <tfc:crop/seeds/rye>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/soybean>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/soybean>).chancedOutput(<tfc:crop/seeds/soybean>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/soybean>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/soybean>, <tfc:crop/seeds/soybean>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/squash>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/squash>).chancedOutput(<tfc:crop/seeds/squash>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/squash>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/squash>, <tfc:crop/seeds/squash>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/sugarcane>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/sugarcane>).chancedOutput(<tfc:crop/seeds/sugarcane>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/sugarcane>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/sugarcane>, <tfc:crop/seeds/sugarcane>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/tomato>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/tomato>).chancedOutput(<tfc:crop/seeds/tomato>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/tomato>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/tomato>, <tfc:crop/seeds/tomato>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/wheat>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/wheat>).chancedOutput(<tfc:crop/seeds/wheat>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/wheat>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/wheat>, <tfc:crop/seeds/wheat>*2).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/yellow_bell_pepper>).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 32})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/yellow_bell_pepper>).chancedOutput(<tfc:crop/seeds/yellow_bell_pepper>, 2500, 2500).duration(2500).EUt(26).buildAndRegister();
green_house.recipeBuilder().inputs(<tfc:crop/seeds/yellow_bell_pepper>, <gregtech:meta_item_1:2754>*2).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 31})).fluidInputs([<liquid:fresh_water> * 5000]).outputs(<tfc:food/yellow_bell_pepper>, <tfc:crop/seeds/yellow_bell_pepper>*2).duration(2500).EUt(26).buildAndRegister();

// HEATING
Heating.addRecipe("tfc:glassmixtoglass", <contenttweaker:glassmix>, <minecraft:glass>, 700.0, 1000.0);
Heating.removeRecipe(<minecraft:glass>);

// ITEM REGISTRY
ItemRegistry.registerFuel(<ore:fuelCoke>, 3200, 1450, true, true);
ItemRegistry.registerFuel(<ore:gemCoal>, 1600, 1400, true, true);
ItemRegistry.registerFuel(<ore:gemLignite>, 1200, 1300, true, true);
ItemRegistry.registerFuel(<tfc:peat>, 3200, 500, true, false);
ItemRegistry.registerItemHeat(<contenttweaker:glassmix>, 0.7, 1000.0, false);
ItemRegistry.registerItemMetal(<gregtech:machine:802>,"BRONZE",400,true);
ItemRegistry.registerItemMetal(<gregtech:machine:803>,"STEEL",400,true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:1008>, "BISMUTH", 25, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:1018>, "COPPER", 25, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:1026>, "GOLD", 25, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:1033>, "WROUGHT_IRON", 25, false);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:1062>, "SILVER", 25, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:1071>, "TIN", 25, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12003>, "ANTIMONY", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12017>, "COBALT", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12018>, "COPPER", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12026>, "GOLD", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12033>, "WROUGHT_IRON", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12035>, "LEAD", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12036>, "LITHIUM", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12044>, "NICKEL", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12062>, "SILVER", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12071>, "TIN", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12079>, "ZINC", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12094>, "BRASS", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12095>, "BRONZE", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12112>, "ELECTRUM", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12126>, "INVAR", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12140>, "PIG_IRON", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12184>, "STEEL", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12227>, "STERLING_SILVER", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12228>, "ROSE_GOLD", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12229>, "BLACK_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12230>, "BISMUTH_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12231>, "BLACK_STEEL", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12232>, "RED_STEEL", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12233>, "BLUE_STEEL", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12237>, "RED_ALLOY", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13003>, "ANTIMONY", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13017>, "COBALT", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13018>, "COPPER", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13026>, "GOLD", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13033>, "WROUGHT_IRON", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13035>, "LEAD", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13036>, "LITHIUM", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13044>, "NICKEL", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13062>, "SILVER", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13071>, "TIN", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13079>, "ZINC", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13094>, "BRASS", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13095>, "BRONZE", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13112>, "ELECTRUM", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13126>, "INVAR", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13140>, "PIG_IRON", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13184>, "STEEL", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13197>, "WROUGHT_IRON", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13227>, "STERLING_SILVER", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13228>, "ROSE_GOLD", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13229>, "BLACK_BRONZE", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13230>, "BISMUTH_BRONZE", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13231>, "BLACK_STEEL", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13232>, "RED_STEEL", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13233>, "BLUE_STEEL", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13237>, "RED_ALLOY", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:14026>, "GOLD", 50, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:14033>, "WROUGHT_IRON", 50, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:14184>, "STEEL", 50, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:18>, "COPPER", 10, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2033>, "WROUGHT_IRON", 100, false);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2090>, "WROUGHT_IRON", 40, false);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2096>, "WROUGHT_IRON", 30, false);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2098>, "TIN", 40, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2099>, "TIN", 35, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2100>, "COPPER", 30, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2107>, "COBALT", 90, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2114>, "LEAD", 40, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2115>, "NICKEL", 50, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2131>, "WROUGHT_IRON", 40, false);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2148>, "WROUGHT_IRON", 15, false);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2182>, "ZINC", 60, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2188>, "COPPER", 40, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2199>, "WROUGHT_IRON", 30, false);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2271>, "NICKEL", 40, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2282>, "COPPER", 30, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2358>, "COPPER", 50, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2359>, "COPPER", 70, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2360>, "COPPER", 50, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2361>, "COPPER", 70, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2362>, "COPPER", 35, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:26>, "GOLD", 10, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3008>, "BISMUTH", 80, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3017>, "COBALT", 80, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3018>, "COPPER", 80, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3026>, "GOLD", 80, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3033>, "WROUGHT_IRON", 80, false);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3035>, "LEAD", 80, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3044>, "NICKEL", 80, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3062>, "SILVER", 80, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3071>, "TIN", 80, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3079>, "ZINC", 80, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3090>, "WROUGHT_IRON", 30, false);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3096>, "WROUGHT_IRON", 20, false);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3098>, "TIN", 30, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3099>, "TIN", 25, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3100>, "COPPER", 20, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3107>, "COBALT", 70, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3114>, "LEAD", 20, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3115>, "NICKEL", 40, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3131>, "WROUGHT_IRON", 30, false);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3148>, "WROUGHT_IRON", 15, false);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3182>, "ZINC", 50, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3188>, "COPPER", 30, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3199>, "WROUGHT_IRON", 20, false);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3271>, "NICKEL", 30, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3282>, "COPPER", 10, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3358>, "COPPER", 40, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3359>, "COPPER", 60, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3360>, "COPPER", 40, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3361>, "COPPER", 60, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3362>, "COPPER", 15, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:33>, "WROUGHT_IRON", 10, false);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:62>, "SILVER", 10, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:71>, "TIN", 10, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:8>, "BISMUTH", 10, true);

// LARGE CENTRIFUGE
large_centrifuge.findRecipe(30, [<gregtech:log>], null).remove();
large_centrifuge.findRecipe(30, [<minecraft:dirt>], null).remove();
large_centrifuge.findRecipe(30, [<minecraft:grass>], null).remove();
large_centrifuge.findRecipe(5, [<minecraft:brown_mushroom>], null).remove();
large_centrifuge.findRecipe(5, [<minecraft:red_mushroom>], null).remove();

// LARGE CHEMICAL REACTOR
large_chemical_reactor.findRecipe(30, [<minecraft:apple>, <minecraft:gold_block>*8], null).remove();
large_chemical_reactor.findRecipe(30, [<minecraft:apple>, <tfc:metal/ingot/gold>*8], null).remove();
large_chemical_reactor.findRecipe(30, [<minecraft:carrot>, <minecraft:gold_nugget>*8], null).remove();
large_chemical_reactor.findRecipe(30, [<minecraft:melon>, <minecraft:gold_nugget>*8], null).remove();

// LARGE MIXER
large_mixer.findRecipe(480, [<minecraft:brown_mushroom>, <gtadditions:ga_meta_item:32396>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], null).remove();
large_mixer.findRecipe(480, [<minecraft:red_mushroom>, <gtadditions:ga_meta_item:32396>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})], null).remove();
large_mixer.recipeBuilder().inputs(<tfc:plants/porcini>, <gtadditions:ga_meta_item:32396>, <gregtech:meta_item_1:32766>.withTag({Configuration: 2})).fluidOutputs(<liquid:chitin>*100).duration(150).EUt(480).buildAndRegister();

// MACERATOR
macerator.findRecipe(120, [<minecraft:apple>], null).remove();
macerator.findRecipe(16, [<minecraft:beef>], null).remove();
macerator.findRecipe(16, [<minecraft:chicken>], null).remove();
macerator.findRecipe(16, [<minecraft:mutton>], null).remove();
macerator.findRecipe(16, [<minecraft:porkchop>], null).remove();
macerator.findRecipe(16, [<minecraft:rabbit>], null).remove();
macerator.findRecipe(2, [<minecraft:melon>], null).remove();
macerator.findRecipe(2, [<minecraft:melon_block>], null).remove();
macerator.findRecipe(2, [<minecraft:reeds>], null).remove();
macerator.recipeBuilder().inputs(<ore:categoryMeat>).outputs(<gregtech:meta_item_1:1996>*6).duration(20).EUt(30).buildAndRegister();
macerator.recipeBuilder().inputs(<tfc:food/green_apple>|<tfc:food/red_apple>).chancedOutput(<gtadditions:ga_dust:26>, 500, 250).duration(20).EUt(120).buildAndRegister();
macerator.recipeBuilder().inputs(<tfc:food/sugarcane>).outputs(<minecraft:sugar>).duration(20).EUt(2).buildAndRegister();

// MIXER
mixer.findRecipe(480, [<minecraft:brown_mushroom>, <gtadditions:ga_meta_item:32396>], null).remove();
mixer.findRecipe(480, [<minecraft:red_mushroom>, <gtadditions:ga_meta_item:32396>], null).remove();

// RACK
Rack.addRecipe("tfc:fertilizerFix", <tfc:wood_ash>, <tfc:powder/fertilizer>, 8, 1.0);

// RECIPES
recipes.remove(<gregtech:machine:13>);
recipes.remove(<gregtech:machine:14>);
recipes.remove(<tfcthings:crown/gold_agate>);
recipes.remove(<tfcthings:crown/gold_amethyst>);
recipes.remove(<tfcthings:crown/gold_beryl>);
recipes.remove(<tfcthings:crown/gold_diamond>);
recipes.remove(<tfcthings:crown/gold_emerald>);
recipes.remove(<tfcthings:crown/gold_garnet>);
recipes.remove(<tfcthings:crown/gold_jade>);
recipes.remove(<tfcthings:crown/gold_jasper>);
recipes.remove(<tfcthings:crown/gold_opal>);
recipes.remove(<tfcthings:crown/gold_ruby>);
recipes.remove(<tfcthings:crown/gold_sapphire>);
recipes.remove(<tfcthings:crown/gold_topaz>);
recipes.remove(<tfcthings:crown/gold_tourmaline>);
recipes.remove(<tfcthings:crown/platinum_agate>);
recipes.remove(<tfcthings:crown/platinum_amethyst>);
recipes.remove(<tfcthings:crown/platinum_beryl>);
recipes.remove(<tfcthings:crown/platinum_diamond>);
recipes.remove(<tfcthings:crown/platinum_emerald>);
recipes.remove(<tfcthings:crown/platinum_garnet>);
recipes.remove(<tfcthings:crown/platinum_jade>);
recipes.remove(<tfcthings:crown/platinum_jasper>);
recipes.remove(<tfcthings:crown/platinum_opal>);
recipes.remove(<tfcthings:crown/platinum_ruby>);
recipes.remove(<tfcthings:crown/platinum_sapphire>);
recipes.remove(<tfcthings:crown/platinum_topaz>);
recipes.remove(<tfcthings:crown/platinum_tourmaline>);
recipes.remove(<tfcthings:diamond_grit>);
recipes.remove(<tfcthings:grindstone_diamond>);
recipes.remove(<tfcthings:sling_ammo_light>);
recipes.remove(<tfcthings:sling_ammo_spread>);
recipes.removeByRecipeName("gregtech:dust_bronze");
recipes.removeByRecipeName("gregtech:gravel_to_flint");
recipes.removeByRecipeName("gregtech:plank_to_wooden_shape");
recipes.removeByRecipeName("gtadditions:coke_brick");
recipes.removeByRecipeName("gtadditions:ga_casing_lv");
recipes.removeByRecipeName("gtadditions:ga_wrought");
recipes.removeByRecipeName("minecraft:golden_carrot");
recipes.removeByRecipeName("tfc:flux");
recipes.removeByRecipeName("tfctech:glassworking/pot_ash");
recipes.removeByRecipeName("tfctech:glassworking/pot_potash");
recipes.removeByRecipeName("tfcthings:grindstone_base");
recipes.addShaped(<gregtech:machine:13>,[[<ore:pipeSmallBronze>, <ore:craftingPiston>, <ore:pipeSmallBronze>], [<ore:pipeSmallBronze>, <gregtech:machine_casing:10>, <ore:pipeSmallBronze>], [<ore:pipeSmallBronze>, <tfc:metal/anvil/wrought_iron>, <ore:pipeSmallBronze>]]);
recipes.addShaped(<gregtech:machine:14>,[[<ore:pipeSmallSteel>, <ore:craftingPiston>, <ore:pipeSmallSteel>], [<ore:pipeSmallSteel>, <gregtech:machine_casing:12>, <ore:pipeSmallSteel>], [<ore:pipeSmallSteel>, <tfc:metal/anvil/steel>, <ore:pipeSmallSteel>]]);
recipes.addShaped(<gregtech:machine_casing:1>,[[<ore:plateRedSteel>, <ore:plateBlueSteel>, <ore:plateRedSteel>], [<ore:plateBlueSteel>, <ore:craftingToolWrench>.firstItem.withEmptyTag(), <ore:plateBlueSteel>], [<ore:plateRedSteel>, <ore:plateBlueSteel>, <ore:plateRedSteel>]]);
recipes.addShaped(<gregtech:meta_item_2:32011>,[[null, <ore:lumber>, null], [null, <ore:lumber>, null], [<ore:craftingToolSaw>.firstItem.withEmptyTag(), <ore:lumber>, null]]);
recipes.addShaped(<gtadditions:ga_meta_item:32036>*3,[[<tfc:ceramics/unfired/clay_brick>, <tfc:ceramics/unfired/clay_brick>, <tfc:ceramics/unfired/clay_brick>], [<ore:sand>, <gregtech:meta_item_2:32012>, <ore:sand>], [<ore:sand>, <ore:sand>, <ore:sand>]]);
recipes.addShaped(<tfcthings:grindstone_base>,[[<ore:stickIron>, <ore:stickIron>, <ore:stickIron>], [<ore:lumber>, null, <ore:lumber>]]);
recipes.addShaped(<tfcthings:grindstone_diamond>,[[<ore:dustDiamond>, <ore:dustDiamond>, <ore:dustDiamond>], [<ore:dustDiamond>, <tfcthings:grindstone_steel>, <ore:dustDiamond>], [<ore:dustDiamond>, <ore:dustDiamond>, <ore:dustDiamond>]]);
recipes.addShapeless (<contenttweaker:glassmix>, [<ore:dustPotash>, <ore:sand>, <tfc:powder/flux>]);
recipes.addShapeless (<minecraft:flint>, [<ore:craftingToolMortar>.firstItem.withEmptyTag(), <ore:gravel>]);
recipes.addShapeless (<tfc:powder/flux>*2, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <ore:rockFlux>]);
recipes.addShapeless (<tfcthings:crown/gold_agate>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteAgate>]);
recipes.addShapeless (<tfcthings:crown/gold_amethyst>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteAmethyst>]);
recipes.addShapeless (<tfcthings:crown/gold_beryl>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteBeryl>]);
recipes.addShapeless (<tfcthings:crown/gold_diamond>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteDiamond>]);
recipes.addShapeless (<tfcthings:crown/gold_emerald>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteEmerald>]);
recipes.addShapeless (<tfcthings:crown/gold_garnet>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteGarnet>]);
recipes.addShapeless (<tfcthings:crown/gold_jade>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteJade>]);
recipes.addShapeless (<tfcthings:crown/gold_jasper>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteJasper>]);
recipes.addShapeless (<tfcthings:crown/gold_opal>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteOpal>]);
recipes.addShapeless (<tfcthings:crown/gold_ruby>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteRuby>]);
recipes.addShapeless (<tfcthings:crown/gold_sapphire>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteSapphire>]);
recipes.addShapeless (<tfcthings:crown/gold_topaz>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteTopaz>]);
recipes.addShapeless (<tfcthings:crown/gold_tourmaline>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteTourmaline>]);
recipes.addShapeless (<tfcthings:crown/platinum_agate>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteAgate>]);
recipes.addShapeless (<tfcthings:crown/platinum_amethyst>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteAmethyst>]);
recipes.addShapeless (<tfcthings:crown/platinum_beryl>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteBeryl>]);
recipes.addShapeless (<tfcthings:crown/platinum_diamond>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteDiamond>]);
recipes.addShapeless (<tfcthings:crown/platinum_emerald>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteEmerald>]);
recipes.addShapeless (<tfcthings:crown/platinum_garnet>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteGarnet>]);
recipes.addShapeless (<tfcthings:crown/platinum_jade>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteJade>]);
recipes.addShapeless (<tfcthings:crown/platinum_jasper>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteJasper>]);
recipes.addShapeless (<tfcthings:crown/platinum_opal>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteOpal>]);
recipes.addShapeless (<tfcthings:crown/platinum_ruby>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteRuby>]);
recipes.addShapeless (<tfcthings:crown/platinum_sapphire>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteSapphire>]);
recipes.addShapeless (<tfcthings:crown/platinum_topaz>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteTopaz>]);
recipes.addShapeless (<tfcthings:crown/platinum_tourmaline>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteTourmaline>]);
recipes.addShapeless(<gregtech:meta_item_1:2095>*10, [<ore:dustTin>*1, <ore:dustCopper>*9]);
recipes.addShapeless(<minecraft:stick>*2, [<ore:craftingToolSaw>.firstItem.withEmptyTag(), <ore:lumber>]);
recipes.addShapeless(<tfctech:pot_ash>, [<tfc:wood_ash>|<ore:dustAsh>, <tfc:wood_ash>|<ore:dustAsh>, <tfc:wood_ash>|<ore:dustAsh>, <tfc:wood_ash>|<ore:dustAsh>, <tfc:ceramics/fired/pot>.noReturn(), <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}})]);
recipes.addShapeless(<tfctech:powder/potash>*4, [<tfctech:pot_potash>]);
recipes.addShapeless(<tfcthings:sling_ammo_light>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:sling_ammo>, <ore:craftingToolFile>.firstItem.withEmptyTag()]);
recipes.addShapeless(<tfcthings:sling_ammo_spread>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:sling_ammo>]);

// WELDING
Welding.addRecipe("tfc:boots_wrought_iron_fixed", <tfc:metal/unfinished_boots/wrought_iron>, <ore:plateIron>, <tfc:metal/boots/wrought_iron>, 2);
Welding.addRecipe("tfc:double_ingot_wrought_iron_fixed", <tfc:metal/ingot/wrought_iron>, <tfc:metal/ingot/wrought_iron>, <tfc:metal/double_ingot/wrought_iron>, 2);
Welding.addRecipe("tfc:double_plate_wrought_iron_fixed", <ore:plateIron>, <ore:plateIron>, <tfc:metal/double_sheet/wrought_iron>, 2);
Welding.addRecipe("tfc:greaves_wrought_iron_fixed", <tfc:metal/unfinished_greaves/wrought_iron>, <ore:plateIron>, <tfc:metal/greaves/wrought_iron>, 2);
Welding.addRecipe("tfc:helmet_wrought_iron_fixed", <tfc:metal/unfinished_helmet/wrought_iron>, <ore:plateIron>, <tfc:metal/helmet/wrought_iron>, 2);
Welding.addRecipe("tfc:honing_steel_diamond", <tfcthings:honing_steel>, <ore:dustDiamond>, <tfcthings:honing_steel_diamond>, 5);
Welding.addRecipe("tfc:honing_steel_head_diamond", <tfcthings:honing_steel_head>, <ore:dustDiamond>, <tfcthings:honing_steel_head_diamond>, 5);
Welding.addRecipe("tfc:shears_wrought_iron_fixed", <gregtech:meta_tool:17>.withTag({"GT.ToolStats": {Material: "iron"}}), <gregtech:meta_tool:17>.withTag({"GT.ToolStats": {Material: "iron"}}), <tfc:metal/shears/wrought_iron>, 2);
Welding.removeRecipe(<tfc:metal/double_ingot/wrought_iron>);
Welding.removeRecipe(<tfc:metal/double_sheet/wrought_iron>);
Welding.removeRecipe(<tfcthings:honing_steel_diamond>);
Welding.removeRecipe(<tfcthings:honing_steel_head_diamond>);

print("Initialized 'tfc.zs'");