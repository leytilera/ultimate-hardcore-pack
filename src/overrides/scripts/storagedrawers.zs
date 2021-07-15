#modloaded storagedrawers

// Author : ACGaming
// Mod required : Storage Drawers
// Scripts required : -

// REMOVE
recipes.remove(<storagedrawers:controller>);
recipes.remove(<storagedrawers:upgrade_storage:3>);
recipes.remove(<storagedrawers:upgrade_storage:4>);

// ADD
recipes.addShaped(<storagedrawers:controller>, [[<ore:stone>, <ore:stone>, <ore:stone>], [<minecraft:comparator>, <ore:drawerBasic>, <minecraft:comparator>], [<ore:stone>, <ore:gemChippedDiamond> | <ore:gemFlawedDiamond> | <ore:gemDiamond> | <ore:gemFlawlessDiamond> | <ore:gemExquisiteDiamond>, <ore:stone>]]);
recipes.addShaped(<storagedrawers:upgrade_storage:3>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:gemChippedDiamond> | <ore:gemFlawedDiamond> | <ore:gemDiamond> | <ore:gemFlawlessDiamond> | <ore:gemExquisiteDiamond>, <storagedrawers:upgrade_template>, <ore:gemChippedDiamond> | <ore:gemFlawedDiamond> | <ore:gemDiamond> | <ore:gemFlawlessDiamond> | <ore:gemExquisiteDiamond>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
recipes.addShaped(<storagedrawers:upgrade_storage:4>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:gemChippedEmerald> | <ore:gemFlawedEmerald> | <ore:gemEmerald> | <ore:gemFlawlessEmerald> | <ore:gemExquisiteEmerald>, <storagedrawers:upgrade_template>, <ore:gemChippedEmerald> | <ore:gemFlawedEmerald> | <ore:gemEmerald> | <ore:gemFlawlessEmerald> | <ore:gemExquisiteEmerald>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);