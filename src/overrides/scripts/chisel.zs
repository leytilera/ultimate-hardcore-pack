#modloaded chisel

// Author : SpeeeDCraft, ACGaming
// Mod required : Chisel
// Scripts required : -

import crafttweaker.item.IItemStack;

global ItemsToRemove as IItemStack[] = [
	<chisel:brownstone>,
	<chisel:chisel_diamond>,
	<chisel:chisel_hitech>,
	<chisel:chisel_iron>,
	<chisel:factory>,
	<chisel:laboratory>,
	<chisel:temple>,
	<chisel:tyrian>
] as IItemStack[];
for item in ItemsToRemove{
    recipes.remove(item);
}

recipes.addShaped(<chisel:brownstone>*8,[[<ore:sand>, <ore:sand>, <ore:sand>], [<ore:sand>, <minecraft:clay_ball>, <ore:sand>], [<ore:sand>, <ore:sand>, <ore:sand>]]);
recipes.addShaped(<chisel:chisel_diamond>,[[null, <ore:plateDiamond>, null], [null, <ore:chisel>, null], [null, <ore:stickWood>, null]]);
recipes.addShaped(<chisel:chisel_hitech>,[[null, <ore:plateBlueSteel>, null], [null, <chisel:chisel_diamond>, null], [null, <ore:stickWood>, null]]);
recipes.addShaped(<chisel:chisel_iron>,[[null, <ore:plateIron>, null], [null, <ore:chisel>, null], [null, <ore:stickWood>, null]]);
recipes.addShaped(<chisel:factory>*8,[[<ore:ingotIron>, <ore:stone>, <ore:ingotIron>], [<ore:stone>, null, <ore:stone>], [<ore:ingotIron>, <ore:stone>, <ore:ingotIron>]]);
recipes.addShaped(<chisel:laboratory>*8,[[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, <minecraft:quartz>, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>]]);
recipes.addShaped(<chisel:temple>*8,[[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, <ore:dyeCyan>, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>]]);
recipes.addShaped(<chisel:tyrian>*8,[[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, <ore:ingotIron>, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>]]);

print("Initialized 'chisel.zs'");