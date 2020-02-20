import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
//Coals
furnace.setFuel(<tfc:ore/bituminous_coal>, 1600);
furnace.setFuel(<tfc:ore/lignite>, 800);
//Bowl
<tfc:ceramics/fired/bowl>.displayName = "Clay Bowl";
//Sleeves
recipes.addShaped(<tfctech:metal/tin_sleeve>*4,[
	[null,<ore:sheetTin>,null],
	[<ore:sheetTin>,<ore:chisel>.transformDamage(4),<ore:sheetTin>],
	[null,<ore:sheetTin>,null]]);
recipes.addShaped(<tfctech:metal/brass_sleeve>*4,[
	[null,<ore:sheetBrass>,null],
	[<ore:sheetBrass>,<ore:chisel>.transformDamage(4),<ore:sheetBrass>],
	[null,<ore:sheetBrass>,null]]);
recipes.addShaped(<tfctech:metal/steel_sleeve>*4,[
	[null,<ore:sheetSteel>,null],
	[<ore:sheetSteel>,<ore:chisel>.transformDamage(4),<ore:sheetSteel>],
	[null,<ore:sheetSteel>,null]]);
//Soot
mods.terrafirmacraft.Quern.addRecipe("Soot", <ore:charcoal>, <contenttweaker:soot>*4);
//Saw Dust
mods.terrafirmacraft.Quern.addRecipe("Sawdust", <ore:logWood>, <contenttweaker:sawdust>*4);
//Glass_Bottle
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<minecraft:glass>, 0.35, 1300, true);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<minecraft:glass_bottle>, 0.35, 1300, true);
#mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:splashbottle>, 0.35, 1300, true);
mods.terrafirmacraft.Anvil.addRecipe("Glass_Bottle", <minecraft:glass>, <minecraft:glass_bottle>, 1, "general","BEND_NOT_LAST","SHRINK_NOT_LAST","DRAW_LAST");
#mods.terrafirmacraft.Anvil.addRecipe("Splash_Bottle", <minecraft:glass_bottle>, <contenttweaker:splashbottle>, 1, "general","BEND_NOT_LAST","SHRINK_NOT_LAST","DRAW_LAST");
//TFC Coal Stack Size
<tfc:ore/bituminous_coal>.maxStackSize = 32;
//Silicon
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<projectred-core:resource_item:250>, 0.35, 1600 , false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<projectred-core:resource_item:300>, 0.35, 1600 , false);
mods.terrafirmacraft.Heating.addRecipe("Primitive_Silicon", <projectred-core:resource_item:250>, <projectred-core:resource_item:300>, 1300, 1600 );
//Seared Brick
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<tconstruct:soil>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<tconstruct:seared:1>, 1, 1599, false);
mods.terrafirmacraft.Heating.addRecipe("Seared_Brick", <tconstruct:soil>, <tconstruct:seared:1>, 1500, 3200);
//Fire Clay
recipes.addShaped(<tfc:ceramics/fire_clay>,[
	[<contenttweaker:bauxitedust>,<ore:dustGraphite>,<contenttweaker:bauxitedust>],
	[<ore:dustGraphite>,<ore:clay>,<ore:dustGraphite>],
	[<contenttweaker:bauxitedust>,<ore:dustGraphite>,<contenttweaker:bauxitedust>]]);
//Iron Ore Tool Tip
val oreIrons = [<tfc:ore/hematite>,<tfc:ore/hematite:1>,<tfc:ore/hematite:2>,<tfc:ore/small/hematite>,
<tfc:ore/magnetite>,<tfc:ore/magnetite:1>,<tfc:ore/magnetite:2>,<tfc:ore/small/magnetite>,
<tfc:ore/limonite>,<tfc:ore/limonite:1>,<tfc:ore/limonite:2>,<tfc:ore/small/limonite>] as IItemStack[];
for i, oreIron in oreIrons{
oreIron.addTooltip(format.red("This ore is unprocessed!"));
mods.jei.JEI.addDescription(oreIron,"This ore is unprocessed, in order to acquire Wrought Iron Ingots or use it in alloys one must first process it in a bloomery.");
}
//Anvils
val Anvils = [<tfc:metal/anvil/mithril>,<tfc:metal/anvil/invar>,<tfc:metal/anvil/aluminium>,<tfc:metal/anvil/cobalt>,<tfc:metal/anvil/manyullyn>,<tfc:metal/anvil/osmium>,<tfc:metal/anvil/titanium>,<tfc:metal/anvil/tungsten>,<tfc:metal/anvil/tungsten_steel>] as IItemStack[];
val DBI = [<tfc:metal/double_ingot/mithril>,<tfc:metal/double_ingot/invar>,<tfc:metal/double_ingot/aluminium>,<tfc:metal/double_ingot/cobalt>,<tfc:metal/double_ingot/manyullyn>,<tfc:metal/double_ingot/osmium>,<tfc:metal/double_ingot/titanium>,<tfc:metal/double_ingot/tungsten>,<tfc:metal/double_ingot/tungsten_steel>] as IItemStack[];
for i, anvil in Anvils{
recipes.addShaped(anvil,[
	[DBI[i],DBI[i],DBI[i]],
	[null,DBI[i],null],
	[DBI[i],DBI[i],DBI[i]]]);
}
//Bauxite Dust
mods.terrafirmacraft.Quern.addRecipe("bauxite_dust_rich",<ore:oreAluminiumRich>,<contenttweaker:bauxitedust>*7);
mods.terrafirmacraft.Quern.addRecipe("bauxite_dust_normal",<ore:oreAluminiumNormal>,<contenttweaker:bauxitedust>*5);
mods.terrafirmacraft.Quern.addRecipe("bauxite_dust_poor",<ore:oreAluminiumPoor>,<contenttweaker:bauxitedust>*3);
mods.terrafirmacraft.Quern.addRecipe("bauxite_dust_small",<ore:oreAluminiumSmall>,<contenttweaker:bauxitedust>*2);

//Casts
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:unfired_material_engineering_processor_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:unfired_material_calculation_processor_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:unfired_material_logic_processor_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:unfired_material_silicon_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:fired_material_engineering_processor_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:fired_material_calculation_processor_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:fired_material_logic_processor_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:fired_material_silicon_press>, 1, 1599, false);
mods.terrafirmacraft.Heating.addRecipe("Engineering_Kiln", <contenttweaker:unfired_material_engineering_processor_press>, <contenttweaker:fired_material_engineering_processor_press>, 1500, 3200);
mods.terrafirmacraft.Heating.addRecipe("Calculation_Kiln", <contenttweaker:unfired_material_calculation_processor_press>, <contenttweaker:fired_material_calculation_processor_press>, 1500, 3200);
mods.terrafirmacraft.Heating.addRecipe("Logic_Kiln", <contenttweaker:unfired_material_logic_processor_press>, <contenttweaker:fired_material_logic_processor_press>,1500, 3200);
mods.terrafirmacraft.Heating.addRecipe("Silicon_Kiln", <contenttweaker:unfired_material_silicon_press>, <contenttweaker:fired_material_silicon_press>, 1500, 3200);

mods.terrafirmacraft.ClayKnapping.addRecipe("Engineering_Knap", <contenttweaker:unfired_material_engineering_processor_press>, 
																	"XX  X", 
																	"X X X", 
																	"XXXXX", 
																	"X X X", 
																	"X  XX");
																   
mods.terrafirmacraft.ClayKnapping.addRecipe("Calculation_Knap", <contenttweaker:unfired_material_calculation_processor_press>, 
																	"  X X", 
																	"  XX ", 
																	"XXXXX", 
																	" XX  ", 
																	"X X  ");

mods.terrafirmacraft.ClayKnapping.addRecipe("Logic_Knap", <contenttweaker:unfired_material_logic_processor_press>, 
																	"  X  ", 
																	"  XX ", 
																	"XXXXX", 
																	" XX  ", 
																	"  X  ");

mods.terrafirmacraft.ClayKnapping.addRecipe("Silicon_Knap", <contenttweaker:unfired_material_silicon_press>, 
																	"X X X", 
																	" XXX ", 
																	"XX XX", 
																	" XXX ", 
																	"X X X");

mods.terrafirmacraft.StoneKnapping.addRecipe("Stone_Rod", [<tconstruct:stone_stick>*2], ["all"],
																	"    X", 
																	"   X ", 
																	"  X  ", 
																	" X   ", 
																	"X    ");															   																   																   														   