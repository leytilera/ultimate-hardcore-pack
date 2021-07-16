#loader contenttweaker
#modloaded contenttweaker

// Author : SpeeeDCraft, ACGaming
// Mod required : ContentTweaker
// Scripts required : -

import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

VanillaFactory.createItem("glassmix").register();

var aquamarine_andesite_sand = VanillaFactory.createBlock("aquamarine_andesite_sand", <blockmaterial:sand>);
aquamarine_andesite_sand.setBlockHardness(1.0);
aquamarine_andesite_sand.setBlockResistance(1.0);
aquamarine_andesite_sand.setBlockSoundType(<soundtype:sand>);
aquamarine_andesite_sand.register();

var furnaceblock = VanillaFactory.createBlock("furnaceblock", <blockmaterial:rock>);
furnaceblock.setBlockHardness(1.0);
furnaceblock.setBlockResistance(1.0);
furnaceblock.setBlockSoundType(<soundtype:stone>);
furnaceblock.register();

VanillaFactory.createItem("part_plate_advanced").register();
VanillaFactory.createItem("part_plate_basic").register();
VanillaFactory.createItem("part_plate_du").register();
VanillaFactory.createItem("part_plate_elite").register();