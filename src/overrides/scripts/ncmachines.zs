recipes.remove(<nuclearcraft:salt_mixer_idle>);
recipes.remove(<nuclearcraft:chemical_reactor_idle>);
recipes.remove(<nuclearcraft:pressurizer_idle>);
recipes.remove(<nuclearcraft:ingot_former_idle>);
recipes.remove(<nuclearcraft:melter_idle>);
recipes.remove(<nuclearcraft:infuser_idle>);
recipes.remove(<nuclearcraft:fuel_reprocessor_idle>);
recipes.remove(<nuclearcraft:isotope_separator_idle>);
recipes.remove(<nuclearcraft:manufactory_idle>);
recipes.remove(<nuclearcraft:rock_crusher_idle>);
recipes.remove(<nuclearcraft:supercooler_idle>);
recipes.remove(<nuclearcraft:extractor_idle>);
recipes.remove(<nuclearcraft:dissolver_idle>);
recipes.remove(<nuclearcraft:crystallizer_idle>);

val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val freezer = mods.gregtech.recipe.RecipeMap.getByName("vacuum_freezer");
val extractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val reactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");


centrifuge.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2449> * 1)
    .chancedOutput(<nuclearcraft:gem_dust:1>, 8000, 800)
    .chancedOutput(<gregtech:meta_item_1:2065>, 6000, 800)
    .chancedOutput(<nuclearcraft:gem_dust:8>, 3500, 800)
    .duration(240)
    .EUt(18)
    .buildAndRegister();


centrifuge.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2242> * 1)
    .chancedOutput(<gregtech:meta_item_1:2703>, 9000, 800)
    .chancedOutput(<nuclearcraft:gem_dust:9>, 7000, 800)
    .chancedOutput(<gregtech:meta_item_1:2912>, 4000, 800)
    .duration(240)
    .EUt(18)
    .buildAndRegister();

centrifuge.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2241> * 1)
    .chancedOutput(<gregtech:meta_item_1:2007>, 10000, 800)
    .chancedOutput(<nuclearcraft:compound:10>, 5000, 800)
    .chancedOutput(<gregtech:meta_item_1:2005>, 3000, 800)
    .duration(240)
    .EUt(18)
    .buildAndRegister();

freezer.recipeBuilder()
    .fluidInputs([<liquid:helium> * 5000])
    .fluidOutputs([<liquid:liquidhelium> * 5000])
    .duration(20)
    .EUt(480)
    .buildAndRegister();


extractor.recipeBuilder()
    .inputs(<nuclearcraft:ground_cocoa_nibs> * 1)
    .outputs(<nuclearcraft:cocoa_solids> * 1)
    .fluidOutputs([<liquid:cocoa_butter> * 114])
    .duration(120)
    .EUt(8)
    .buildAndRegister();

reactor.recipeBuilder()
    .fluidInputs([<liquid:fluorite_water> * 670])
    .outputs(<gregtech:meta_item_1:2703> * 1)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

reactor.recipeBuilder()
    .fluidInputs([<liquid:sodium_hydroxide_solution> * 670])
    .outputs(<gregtech:meta_item_1:2373> * 1)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

reactor.recipeBuilder()
    .fluidInputs([<liquid:potassium_fluoride_solution> * 670])
    .outputs(<gregtech:meta_item_1:2772> * 1)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

reactor.recipeBuilder()
    .fluidInputs([<liquid:sodium_fluoride_solution> * 670])
    .outputs(<gregtech:meta_item_1:2773> * 1)
    .duration(200)
    .EUt(30)
    .buildAndRegister();