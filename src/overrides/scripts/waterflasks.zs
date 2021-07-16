#modloaded waterflasks

// Author : ACGaming
// Mod required : Waterflasks
// Scripts required : -

// REMOVE
recipes.remove(<waterflasks:iron_flask>);
recipes.remove(<waterflasks:leather_flask>);

// ADD
recipes.addShaped(<waterflasks:iron_flask>, [[<waterflasks:broken_iron_flask:*>, <waterflasks:bladder>], [<tfc:crop/product/burlap_cloth>, <ore:knife>.transformDamage()]]);
recipes.addShaped(<waterflasks:iron_flask>, [[<waterflasks:iron_flask:*>, <waterflasks:bladder>], [<tfc:crop/product/burlap_cloth>, <ore:knife>.transformDamage()]]);
recipes.addShaped(<waterflasks:iron_flask>, [[null, <ore:string>, <ore:knife>.transformDamage()], [<tfc:crop/product/burlap_cloth>, <waterflasks:bladder>, <tfc:crop/product/burlap_cloth>], [<waterflasks:leather_side>, <waterflasks:unfinished_iron_flask>, <waterflasks:leather_side>]]);
recipes.addShaped(<waterflasks:leather_flask>, [[<waterflasks:broken_leather_flask:*>, <waterflasks:bladder>]]);
recipes.addShaped(<waterflasks:leather_flask>, [[<waterflasks:leather_flask:*>, <waterflasks:bladder>]]);
recipes.addShaped(<waterflasks:leather_flask>, [[null, <ore:string>, null], [<waterflasks:leather_side>, <waterflasks:bladder>, <waterflasks:leather_side>], [null, <ore:string>, <ore:knife>.transformDamage()]]);
recipes.addShaped(<waterflasks:leather_flask>, [[null, <waterflasks:leather_side>, null], [<ore:string>, <waterflasks:bladder>, <tfc:animal/product/wool_yarn> | <ore:string>], [null, <waterflasks:leather_side>, <ore:knife>.transformDamage()]]);

print("Initialized 'waterflasks.zs'");