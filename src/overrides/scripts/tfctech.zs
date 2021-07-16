#modloaded tfc tfctech

// Author : SpeeeDCraft, ACGaming
// Mod required : TerraFirmaCraft, TFCTech Unofficial
// Scripts required : -

import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Barrel;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Heating;
import mods.jei.JEI;

// JEI
JEI.removeAndHide(<tfctech:wire_draw_bench>);
JEI.removeAndHide(<tfctech:smeltery_firebox>);
JEI.removeAndHide(<tfctech:smeltery_cauldron>);
JEI.removeAndHide(<tfctech:wiredraw/leather_belt>);
JEI.removeAndHide(<tfctech:wiredraw/winch>);

// ANVIL
Anvil.removeRecipe(<tfctech:metal/aluminium_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/beryllium_copper_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/black_steel_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/black_steel_draw_plate>);
Anvil.removeRecipe(<tfctech:metal/blue_steel_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/boron_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/cobalt_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/invar_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/iron_bowl_mount>);
Anvil.removeRecipe(<tfctech:metal/iron_draw_plate>);
Anvil.removeRecipe(<tfctech:metal/iron_groove>);
Anvil.removeRecipe(<tfctech:metal/iron_tongs>);
Anvil.removeRecipe(<tfctech:metal/manyullyn_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/osmium_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/red_steel_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/steel_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/steel_draw_plate>);
Anvil.removeRecipe(<tfctech:metal/titanium_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/tungsten_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/tungsten_steel_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/wrought_iron_blowpipe>);
Anvil.removeRecipe(<tfctech:metal/zircaloy_blowpipe>);

// BARREL
Barrel.removeRecipe(<tfctech:latex/rubber_mix>*6);

// CLAY KNAPPING
ClayKnapping.removeRecipe(<tfc:ceramics/unfired/mold/hammer_head>);
ClayKnapping.removeRecipe(<tfc:ceramics/unfired/mold/propick_head>);
ClayKnapping.removeRecipe(<tfctech:ceramics/unfired/glass_block>);
ClayKnapping.removeRecipe(<tfctech:ceramics/unfired/glass_pane>);
ClayKnapping.removeRecipe(<tfctech:ceramics/unfired/rackwheel_piece>);
ClayKnapping.removeRecipe(<tfctech:ceramics/unfired/sleeve>);

// HEATING
Heating.removeRecipe(<tfctech:ceramics/mold/glass_block>);
Heating.removeRecipe(<tfctech:ceramics/mold/glass_pane>);
Heating.removeRecipe(<tfctech:ceramics/mold/rackwheel_piece>);
Heating.removeRecipe(<tfctech:ceramics/mold/sleeve>);
Heating.removeRecipe(<tfctech:latex/rubber>);

// RECIPES
recipes.remove(<tfctech:electric_forge>);
recipes.remove(<tfctech:fridge>);
recipes.remove(<tfctech:induction_crucible>);
recipes.remove(<tfctech:metal/copper_inductor>);
recipes.addShaped(<tfctech:electric_forge>,[[<ore:plateSteel>, <ore:wireGtSingleCopper>, <ore:plateSteel>], [<tfctech:metal/copper_inductor>, <tfc:fire_bricks>, <tfctech:metal/copper_inductor>], [<ore:plateSteel>, <ore:wireGtSingleCopper>, <ore:plateSteel>]]);
recipes.addShaped(<tfctech:fridge>,[[<ore:plateSteel>, <tfctech:metal/copper_inductor>, <ore:plateSteel>], [<ore:plateSteel>, <ore:sheetDoubleWroughtIron>, <ore:plateSteel>], [<ore:plateSteel>, <tfctech:metal/copper_inductor>, <ore:plateSteel>]]);
recipes.addShaped(<tfctech:induction_crucible>,[[<ore:plateSteel>, null, <ore:plateSteel>], [<tfctech:metal/copper_inductor>, <tfc:crucible>, <tfctech:metal/copper_inductor>], [<ore:plateSteel>, <ore:wireGtSingleCopper>, <ore:plateSteel>]]);
recipes.addShaped(<tfctech:metal/copper_inductor>,[[null, <ore:wireGtSingleCopper>, null], [<ore:wireGtSingleCopper>, <ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <ore:wireGtSingleCopper>], [null, <ore:wireGtSingleCopper>, null]]);

print("Initialized 'tfctech.zs'");