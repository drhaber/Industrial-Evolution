import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import mods.tfctech.WireDrawing;


//Gun Grip
recipes.remove(<immersiveengineering:material:13>);
recipes.addShaped(<immersiveengineering:material:13>,[
	[null,<contenttweaker:treatedlumber>,<contenttweaker:treatedlumber>],
	[<contenttweaker:treatedlumber>,<contenttweaker:treatedlumber>,null],
	[<contenttweaker:treatedlumber>,<tfctech:metal/brass_bolt>,null]]);
//Gun Barrel
<immersiveengineering:material:14>.displayName = "Gun Barrel";

//Bottling
mods.immersiveengineering.BottlingMachine.removeRecipe(<minecraft:paper>);
mods.immersiveengineering.BottlingMachine.removeRecipe(<immersiveintelligence:material:23>);
mods.immersiveengineering.BottlingMachine.removeRecipe(<immersiveintelligence:material:24>);
mods.immersiveengineering.BottlingMachine.removeRecipe(<immersiveintelligence:material:17>);
mods.immersiveengineering.BottlingMachine.removeRecipe(<minecraft:sponge:1>);

//Treated Wood and products
#mods.terrafirmacraft.Barrel.addRecipe("Hemp_Fibre", <tfc:crop/product/jute_fiber>, <liquid:creosote>*10, <immersiveengineering:material:4>, <liquid:creosote>*8, 4);
mods.terrafirmacraft.Barrel.addRecipe("Treated_Lumber", <ore:lumber>, <liquid:creosote>*100, <contenttweaker:treatedlumber>, 4);
mods.terrafirmacraft.Barrel.addRecipe("Treated_Stick", <ore:stickWood>, <liquid:creosote>*25, <immersiveengineering:material>, 4);
mods.terrafirmacraft.Barrel.addRecipe("Treated_String", <ore:string>, <liquid:creosote>*25, <contenttweaker:creosote_string>, 4);
mods.terrafirmacraft.Barrel.addRecipe("Treated_planks", <ore:plankWood>, <liquid:creosote>*125, <immersiveengineering:treated_wood>, 4);

recipes.removeShaped(<immersiveengineering:treated_wood>*8);
recipes.removeShaped(<engineersdecor:treated_wood_pole>);
mods.terrafirmacraft.Barrel.addRecipe("Treated_Pole",<ore:support>, <liquid:creosote>*125, <engineersdecor:treated_wood_pole>, 4);

recipes.addShapeless(<immersiveengineering:material>*4,[<contenttweaker:treatedlumber>*2,<ore:saw>.transformDamage(1)]);
recipes.addShaped(<immersiveengineering:treated_wood>,[
	[<contenttweaker:treatedlumber>,<contenttweaker:treatedlumber>],
	[<contenttweaker:treatedlumber>,<contenttweaker:treatedlumber>]]);

//Thermoelectric Generator
recipes.remove(<immersiveengineering:metal_device1:3>);
recipes.addShaped(<immersiveengineering:metal_device1:3>,[
	[<tfctech:metal/steel_long_rod>,<immersiveengineering:metal_decoration0>,<tfctech:metal/steel_long_rod>],
	[<tfc:metal/sheet/tungsten>,<contenttweaker:tkt>,<tfc:metal/sheet/tungsten>],
	[<tfc:metal/sheet/tungsten>,<contenttweaker:tkt>,<tfc:metal/sheet/tungsten>]]);
//Wires
val wires = <immersiveengineering:material>.definition;
for i in 20 to 24{
	recipes.remove(wires.makeStack(i));
}
recipes.remove(<alternatingflux:material>);

val plates = <immersiveengineering:metal:30>.definition;
for i in 30 to 41{
	recipes.remove(plates.makeStack(i));
}

mods.immersivetechnology.Distiller.addRecipe(<liquid:fresh_water>*10,<liquid:salt_water>*30,<tfc:powder/salt>);
mods.immersivetechnology.Distiller.addRecipe(<liquid:water>*1000,<liquid:fresh_water>*1000,<tfc:powder/salt>);
mods.immersivetechnology.SolarTower.addRecipe(<liquid:fresh_water>*2000, <liquid:steam>*500, 1);

//Hammer and blocked Machines
val blockedhammer = <immersiveengineering:tool>.withTag({multiblockInterdiction: ["IE:BlastFurnace"]});
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped(<immersiveengineering:tool>,[
	[<contenttweaker:bismuth_engineers_hammer_head>],
	[<ore:stickWood>]]);
//Glove
recipes.remove(<immersiveengineering:toolupgrade:12>);
recipes.addShaped(<immersiveengineering:toolupgrade:12>,[
	[null,null,<contenttweaker:leatherglove>],
	[null,<railcraft:charge>,null],
	[<ore:itemBattery>,null,null]]);
//Scaffold
recipes.remove(<immersiveengineering:wooden_decoration:1>);
recipes.addShaped(<immersiveengineering:wooden_decoration:1>,[
	[<contenttweaker:treatedlumber>,<contenttweaker:treatedlumber>,<contenttweaker:treatedlumber>],
	[null,<immersiveengineering:material>,null],
	[<immersiveengineering:material>,null,<immersiveengineering:material>]]);
//Belts
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}));
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})*16,[
	[<tfctech:wiredraw/leather_belt>,<tfctech:wiredraw/leather_belt>,<tfctech:wiredraw/leather_belt>],
	[<ore:sheetWroughtIron>,<ore:sheetWroughtIron>,<ore:sheetWroughtIron>]]);
//Kiln Brick
val n = <minecraft:netherbrick>;
val f = <tfc:ceramics/fired/fire_brick>;
recipes.remove(<immersiveengineering:stone_decoration:10>);
recipes.addShaped(<immersiveengineering:stone_decoration:10>,[
	[n,f,n],
	[f,n,f],
	[n,f,n]]);
//Vacuum Tube
recipes.addShaped(<immersiveengineering:material:26>*3,[
	[null,<contenttweaker:casing_electron_tube>,null],
	[null,<ore:stripCopper>,null],
	[<tfctech:metal/copper_wire>,<ore:stripCopper>,<tfctech:metal/copper_wire>]]);
//Insultaing Glass	
recipes.remove(<immersiveengineering:stone_decoration:8>);
recipes.addShaped(<immersiveengineering:stone_decoration:8>*4,[
	[null,<contenttweaker:glass_fibre>,null],
	[<contenttweaker:glass_fibre>,<contenttweaker:ceramic_insulator>,<contenttweaker:glass_fibre>],
	[null,<contenttweaker:glass_fibre>,null]]);	
//Leather
mods.immersiveengineering.Squeezer.removeItemRecipe(<minecraft:leather>);
mods.immersiveengineering.Squeezer.addRecipe(<contenttweaker:squeezed_flesh>, <liquid:blood>*50, <minecraft:rotten_flesh>*5, 2048);
//Liquid Catalyst
mods.immersiveengineering.ArcFurnace.addRecipe(<forge:bucketfilled>.withTag({FluidName: "liquidcatalyst", Amount: 1000}), <minecraft:bucket>,<immersiveengineering:material:7>, 2000, 2048, [<ore:dustObsidian>,<tfc:powder/salt>, <ore:dustGlowstone>,<ore:dustTin>]);
//Graphite & HOP Graphite
mods.immersiveengineering.CokeOven.addRecipe(<tfc:ore/graphite>, 0, <ore:fuelCoke>, 2400);
mods.immersiveengineering.Squeezer.removeItemRecipe(<immersiveengineering:material:18>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:material:19>);
mods.embers.Stamper.add(<immersiveengineering:material:18>,<liquid:coal>*1152, <embers:stamp_flat>,null);

#mods.nuclearcraft.pressurizer.addRecipe(<immersiveengineering:material:18>, <immersiveengineering:material:19>);
mods.pneumaticcraft.pressurechamber.addRecipe([<immersiveengineering:material:18>], 15, [<immersiveengineering:material:19>]);

	//Electrodes
	mods.advancedrocketry.Lathe.addRecipe(<immersiveengineering:graphite_electrode>.withTag({graphDmg: 0})*1, 80, 100, <immersiveengineering:material:19>*4);
	mods.pneumaticcraft.assembly.addDrillLaserRecipe(<immersiveengineering:material:19>*4, <immersiveengineering:graphite_electrode>.withTag({graphDmg: 0}));
//Potassium Carbonate
mods.immersiveengineering.CokeOven.addRecipe(<contenttweaker:potassiumcarbonate>, 0, <ore:dustPotash>, 2400);
//Powered Lantern
recipes.remove(<immersiveengineering:metal_device1:4>);
recipes.addShaped("Tungsten_Lantern",<immersiveengineering:metal_device1:4>,[
	[null,<ore:plateLead>,null],
	[<ore:paneGlass>,<tfctech:metal/tungsten_wire>,<ore:paneGlass>],
	[<ore:plateCopper>,<ore:plateLead>,<ore:plateCopper>]]);
recipes.addShaped("Magic_Lantern",<immersiveengineering:metal_device1:4>,[
	[null,<ore:plateLead>,null],
	[<ore:paneGlass>,<astralsorcery:itemrockcrystalsimple>,<ore:paneGlass>],
	[<ore:plateCopper>,<ore:plateLead>,<ore:plateCopper>]]);
//Iron Rod
recipes.remove(<immersiveengineering:material:1>);
//Silicon
mods.immersiveengineering.ArcFurnace.addRecipe(<projectred-core:resource_item:300>*2, <ore:dustQuartz>, <forge:bucketfilled>.withTag({FluidName: "carbon_dioxide", Amount: 1000}), 2000, 2048, [<minecraft:bucket>, <ore:dustCoal>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<projectred-core:resource_item:300>*4, <ore:dustQuartz>, <forge:bucketfilled>.withTag({FluidName: "carbon_dioxide", Amount: 1000}), 2000, 2048, [<minecraft:bucket>, <ore:dustGraphite>]);
//Slag Recyling

mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:material:7>);
mods.immersiveengineering.Crusher.addRecipe(<railcraft:dust:4>, <immersiveengineering:material:7>, 2048);
mods.terrafirmacraft.Barrel.addRecipe("slag_to_flux", <railcraft:dust:4>*4, <liquid:bleach>*1000, <tfc:powder/flux>, <liquid:waste>*1000,16);

//Capaciators
recipes.remove(<immersiveengineering:metal_device0>); #LV
recipes.addShaped(<immersiveengineering:metal_device0>,[
	[<tfctech:metal/wrought_iron_bolt>,<railcraft:charge:1>,<tfctech:metal/wrought_iron_bolt>],
	[<railcraft:charge:6>,<nuclearcraft:compound:6>,<railcraft:charge:8>],
	[<contenttweaker:treatedlumber>,<tfctech:metal/copper_long_rod>,<contenttweaker:treatedlumber>]]);

recipes.remove(<immersiveengineering:metal_device0:1>); #MV
recipes.addShaped(<immersiveengineering:metal_device0:1>,[
	[<tfctech:metal/constantan_bolt>,<railcraft:charge:1>,<tfctech:metal/constantan_bolt>],
	[<railcraft:charge:6>,<appliedenergistics2:material:10>,<railcraft:charge:7>],
	[<contenttweaker:treatedlumber>,<tfctech:metal/electrum_long_rod>,<contenttweaker:treatedlumber>]]);

recipes.remove(<immersiveengineering:metal_device0:2>); #HV
recipes.addShaped(<immersiveengineering:metal_device0:2>,[
	[<tfctech:metal/electrum_bolt>,<railcraft:charge:1>,<tfctech:metal/electrum_bolt>],
	[<nuclearcraft:part:13>,<libvulpes:productgem>,<nuclearcraft:part:13>],
	[<nuclearcraft:part:4>,<tfctech:metal/steel_long_rod>,<nuclearcraft:part:4>]]);
#=============================================================================================================================================		
//Blueprint Rework
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:26>);
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:graphite_electrode>);
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:8>);
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:9>);

mods.immersiveengineering.Blueprint.addRecipe("molds", <contenttweaker:mold_circuit>, [<ore:sheetDoubleSteel>,<immersiveengineering:tool:1>]);

recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "components"}));

var IE_molds = <immersiveengineering:mold>.definition;
for i in 0 to 8 {
mods.immersiveengineering.Blueprint.removeRecipe(IE_molds.makeStack(i));
mods.immersiveengineering.Blueprint.addRecipe("molds", IE_molds.makeStack(i), [<ore:sheetDoubleSteel>,<immersiveengineering:tool:1>]);
}
mods.immersiveengineering.Blueprint.addRecipe("molds", <contenttweaker:striking_die>, [<ore:sheetDoubleSteel>,<tfc:metal/hammer_head/steel>]);

recipes.addShapeless(<contenttweaker:blank_blueprint>,
	[<minecraft:paper>,<ore:dyeBlue>]);
#mods.terrafirmacraft.Barrel.addRecipe("blueprint", <minecraft:paper>, <liquid:dyeblue>*10, <contenttweaker:blank_blueprint>, null, 1);
		
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}));
recipes.addShapeless(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}),
	[<tfc:metal/double_sheet/steel>,<contenttweaker:blank_blueprint>]);

recipes.addShapeless(<immersiveengineering:blueprint>.withTag({blueprint: "Electronics"}),
	[<contenttweaker:blank_blueprint>,<opencomputers:material:4>,<immersiveengineering:material:26>]);	

recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "bullet"}));
recipes.addShapeless(<immersiveengineering:blueprint>.withTag({blueprint: "bullet"}),
	[<contenttweaker:blank_blueprint>,<immersiveengineering:bullet:0>,<immersiveengineering:bullet:1>]);		

recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"}));
recipes.addShapeless(<immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"}),
	[<contenttweaker:blank_blueprint>,<minecraft:glass_bottle>,<minecraft:tnt>]);		
#=============================================================================================================================================		
//Fibre Cables
WireDrawing.addRecipe("quartz_wire", <appliedenergistics2:material>, 3, <contenttweaker:quartz_wire>*4, 0xFFA9CDD1);
WireDrawing.addRecipe("fluix_wire", <appliedenergistics2:material:7>, 3, <contenttweaker:fluix_wire>*4, 0xFF614EAB);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:quartz_wire>*6, <appliedenergistics2:material>, <immersiveengineering:mold:4>, 1024);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:fluix_wire>*6, <appliedenergistics2:material:7>, <immersiveengineering:mold:4>, 1024);


//Wire Coils
val sp = <contenttweaker:emptyspool>;
recipes.addShaped(sp,[
	[<ore:gearWood>,null,null],
	[null,<ore:lumber>,null],
	[null,null,<ore:gearWood>]]);
recipes.remove(<alternatingflux:wirecoil>); #AF Wire
recipes.addShaped(<alternatingflux:wirecoil>*4,[
	[<ore:wireConstantan>,<ore:wireConstantan>,<ore:wireConstantan>],
	[<ore:wireConstantan>,sp,<ore:wireConstantan>],
	[<ore:wireConstantan>,<ore:wireConstantan>,<ore:wireConstantan>]]);

recipes.remove(<immersivecables:wire_coil>); #fluix wire
recipes.addShaped(<immersivecables:wire_coil>*4,[
	[<contenttweaker:glass_wire>,<contenttweaker:fluix_wire>,<contenttweaker:glass_wire>],
	[<contenttweaker:fluix_wire>,sp,<contenttweaker:fluix_wire>],
	[<contenttweaker:glass_wire>,<contenttweaker:fluix_wire>,<contenttweaker:glass_wire>]]);
recipes.remove(<immersivecables:wire_coil:1>); #dense fluix wire
recipes.addShaped(<immersivecables:wire_coil:1>*4,[
	[<ore:wireSteel>,<contenttweaker:fluix_wire>,<ore:wireSteel>],
	[<contenttweaker:fluix_wire>,sp,<contenttweaker:fluix_wire>],
	[<ore:wireSteel>,<contenttweaker:fluix_wire>,<ore:wireSteel>]]);
recipes.remove(<immersivecables:wire_coil:2>); #quartz wire
recipes.addShaped(<immersivecables:wire_coil:2>*4,[
	[<contenttweaker:glass_wire>,<contenttweaker:quartz_wire>,<contenttweaker:glass_wire>],
	[<contenttweaker:quartz_wire>,sp,<contenttweaker:quartz_wire>],
	[<contenttweaker:glass_wire>,<contenttweaker:quartz_wire>,<contenttweaker:glass_wire>]]);

recipes.remove(<immersiveengineering:wirecoil>); #lv wire #Copper Wire
recipes.addShaped(<immersiveengineering:wirecoil>*4,[
	[<ore:wireCopper>,<ore:wireCopper>,<ore:wireCopper>],
	[<ore:wireCopper>,sp,<ore:wireCopper>],
	[<ore:wireCopper>,<ore:wireCopper>,<ore:wireCopper>]]);
recipes.remove(<immersiveengineering:wirecoil:1>); #mv wirer #electrum wire
recipes.addShaped(<immersiveengineering:wirecoil:1>*4,[
	[<ore:wireElectrum>,<ore:wireElectrum>,<ore:wireElectrum>],
	[<ore:wireElectrum>,sp,<ore:wireElectrum>],
	[<ore:wireElectrum>,<ore:wireElectrum>,<ore:wireElectrum>]]);
recipes.remove(<immersiveengineering:wirecoil:2>); #hv wire #aluminium and steel
recipes.addShaped(<immersiveengineering:wirecoil:2>*4,[
	[<ore:wireAluminium>,<ore:wireSteel>,<ore:wireAluminium>],
	[<ore:wireSteel>,sp,<ore:wireSteel>],
	[<ore:wireAluminium>,<ore:wireSteel>,<ore:wireAluminium>]]);
recipes.remove(<immersiveengineering:wirecoil:3>); #hemp
recipes.addShaped(<immersiveengineering:wirecoil:3>*4,[
	[<ore:fiberHemp>,<ore:fiberHemp>,<ore:fiberHemp>],
	[<ore:fiberHemp>,sp,<ore:fiberHemp>],
	[<ore:fiberHemp>,<ore:fiberHemp>,<ore:fiberHemp>]]);

recipes.remove(<projectred-core:resource_item:401>); #iron coil
recipes.addShaped(<projectred-core:resource_item:401>*2,[
	[null,<ore:wireWroughtIron>,null],
	[<ore:wireWroughtIron>,sp,<ore:wireWroughtIron>],
	[null,<ore:wireWroughtIron>,null]]);
recipes.remove(<projectred-core:resource_item:400>); #copper coil
recipes.addShaped(<projectred-core:resource_item:400>*2,[
	[null,<ore:wireCopper>,null],
	[<ore:wireCopper>,sp,<ore:wireCopper>],
	[null,<ore:wireCopper>,null]]);
recipes.remove(<projectred-core:resource_item:402>); #gold coil
recipes.addShaped(<projectred-core:resource_item:402>*2,[
	[null,<ore:wireGold>,null],
	[<ore:wireGold>,sp,<ore:wireGold>],
	[null,<ore:wireGold>,null]]);

val cc = <projectred-core:resource_item:400>;
recipes.remove(<railcraft:charge:2>); #small
recipes.addShaped(<railcraft:charge:2>*4,[
	[cc,cc,cc]]);
recipes.remove(<railcraft:charge:3>); #medium
recipes.addShaped(<railcraft:charge:3>*4,[
	[cc,cc,cc],
	[cc,cc,cc]]);
recipes.remove(<railcraft:charge:4>); #large
recipes.addShaped(<railcraft:charge:4>*4,[
	[cc,cc,cc],
	[cc,cc,cc],
	[cc,cc,cc]]);

recipes.remove(<immersiveengineering:wirecoil:4>); #steel
recipes.addShaped(<immersiveengineering:wirecoil:4>*4,[
	[<ore:wireSteel>,<ore:wireSteel>,<ore:wireSteel>],
	[<ore:wireSteel>,sp,<ore:wireSteel>],
	[<ore:wireSteel>,<ore:wireSteel>,<ore:wireSteel>]]);
recipes.remove(<immersiveengineering:wirecoil:5>); #redstone #redalloy wire
recipes.addShaped(<immersiveengineering:wirecoil:5>*4,[
	[<ore:wireRedAlloy>,<ore:wireRedAlloy>,<ore:wireRedAlloy>],
	[<ore:wireRedAlloy>,sp,<ore:wireRedAlloy>],
	[<ore:wireRedAlloy>,<ore:wireRedAlloy>,<ore:wireRedAlloy>]]);
/*
recipes.remove(<immersiveengineering:wirecoil:6>); #insulated lv
recipes.addShaped(<immersiveengineering:wirecoil:6>*4,[
	[,,],
	[,sp,],
	[,,]]);
recipes.remove(<immersiveengineering:wirecoil:7>); #insulated mv
recipes.addShaped(<immersiveengineering:wirecoil:7>*4,[
	[,,],
	[,sp,],
	[,,]]);
*/
mods.jei.JEI.removeAndHide(<immersivecables:wire_coil:3>);
mods.jei.JEI.removeAndHide(<immersivecables:coil_block:3>);

#=============================================================================================================================================		
//Connectors & Relays
val CI = <contenttweaker:ceramic_insulator>;
recipes.remove(<immersiveengineering:connector>); #LV
recipes.addShaped(<immersiveengineering:connector>*2,[
	[<ore:stickLongCopper>],
	[CI]]);
recipes.remove(<immersiveengineering:connector:2>); #MV
recipes.addShaped(<immersiveengineering:connector:2>*2,[
	[<ore:stickLongElectrum>],
	[CI],
	[CI]]);
recipes.remove(<immersiveengineering:connector:4>); #HV
recipes.addShaped(<immersiveengineering:connector:4>*2,[
	[<ore:stickLongAluminium>],
	[CI,CI],
	[CI,CI]]);		

recipes.remove(<immersiveengineering:connector:1>); #LV
recipes.addShaped(<immersiveengineering:connector:1>*4,[
	[<ore:stickLongCopper>],
	[<ore:hardenedClay>]]);
recipes.remove(<immersiveengineering:connector:3>); #MV
recipes.addShaped(<immersiveengineering:connector:3>*4,[
	[<ore:stickLongElectrum>],
	[<ore:hardenedClay>],
	[<ore:hardenedClay>]]);
recipes.remove(<immersiveengineering:connector:5>); #HV
recipes.addShaped(<immersiveengineering:connector:5>*4,[
	[<ore:stickLongAluminium>],
	[<immersiveengineering:stone_decoration:8>,<immersiveengineering:stone_decoration:8>],
	[<immersiveengineering:stone_decoration:8>,<immersiveengineering:stone_decoration:8>]]);

recipes.remove(<alternatingflux:connector>); #AF
recipes.addShaped(<alternatingflux:connector>*4,[
	[<ore:stickLongConstantan>],
	[<immersiveengineering:stone_decoration:8>,<immersiveengineering:stone_decoration:8>],
	[<immersiveengineering:stone_decoration:8>,<immersiveengineering:stone_decoration:8>]]);		
#=============================================================================================================================================		

//Pressed Sheets

mods.immersiveengineering.MetalPress.removeRecipeByMold(<immersiveengineering:mold>);

val sheets =[<tfc:metal/sheet/bismuth>,<tfc:metal/sheet/bismuth_bronze>,<tfc:metal/sheet/black_bronze>,<tfc:metal/sheet/brass>,
<tfc:metal/sheet/bronze>,<tfc:metal/sheet/copper>,<tfc:metal/sheet/gold>,<tfc:metal/sheet/lead>,<tfc:metal/sheet/nickel>,
<tfc:metal/sheet/rose_gold>,<tfc:metal/sheet/silver>,<tfc:metal/sheet/tin>,<tfc:metal/sheet/zinc>,<tfc:metal/sheet/sterling_silver>,
<tfc:metal/sheet/wrought_iron>,<tfc:metal/sheet/pig_iron>,<tfc:metal/sheet/steel>,<tfc:metal/sheet/platinum>,<tfc:metal/sheet/black_steel>,
<tfc:metal/sheet/blue_steel>,<tfc:metal/sheet/red_steel>,<tfc:metal/sheet/antimony>,<tfc:metal/sheet/constantan>,
<tfc:metal/sheet/electrum>,<tfc:metal/sheet/mithril>,<tfc:metal/sheet/invar>,<tfc:metal/sheet/aluminium>,<tfc:metal/sheet/aluminium_brass>,
<tfc:metal/sheet/ardite>,<tfc:metal/sheet/cobalt>,<tfc:metal/sheet/manyullyn>,<tfc:metal/sheet/osmium>,<tfc:metal/sheet/titanium>,
<tfc:metal/sheet/tungsten>,<tfc:metal/sheet/tungsten_steel>] as IItemStack[];

val ingots =[<tfc:metal/ingot/bismuth>,<tfc:metal/ingot/bismuth_bronze>,<tfc:metal/ingot/black_bronze>,<tfc:metal/ingot/brass>,
<tfc:metal/ingot/bronze>,<tfc:metal/ingot/copper>,<tfc:metal/ingot/gold>,<tfc:metal/ingot/lead>,<tfc:metal/ingot/nickel>,
<tfc:metal/ingot/rose_gold>,<tfc:metal/ingot/silver>,<tfc:metal/ingot/tin>,<tfc:metal/ingot/zinc>,<tfc:metal/ingot/sterling_silver>,
<tfc:metal/ingot/wrought_iron>,<tfc:metal/ingot/pig_iron>,<tfc:metal/ingot/steel>,<tfc:metal/ingot/platinum>,<tfc:metal/ingot/black_steel>,
<tfc:metal/ingot/blue_steel>,<tfc:metal/ingot/red_steel>,<tfc:metal/ingot/antimony>,<tfc:metal/ingot/constantan>,
<tfc:metal/ingot/electrum>,<tfc:metal/ingot/mithril>,<tfc:metal/ingot/invar>,<tfc:metal/ingot/aluminium>,<tfc:metal/ingot/aluminium_brass>,
<tfc:metal/ingot/ardite>,<tfc:metal/ingot/cobalt>,<tfc:metal/ingot/manyullyn>,<tfc:metal/ingot/osmium>,<tfc:metal/ingot/titanium>,
<tfc:metal/ingot/tungsten>,<tfc:metal/ingot/tungsten_steel>] as IItemStack[];

val double_sheets =[<tfc:metal/double_sheet/bismuth>,<tfc:metal/double_sheet/bismuth_bronze>,<tfc:metal/double_sheet/black_bronze>,<tfc:metal/double_sheet/brass>,
<tfc:metal/double_sheet/bronze>,<tfc:metal/double_sheet/copper>,<tfc:metal/double_sheet/gold>,<tfc:metal/double_sheet/lead>,<tfc:metal/double_sheet/nickel>,
<tfc:metal/double_sheet/rose_gold>,<tfc:metal/double_sheet/silver>,<tfc:metal/double_sheet/tin>,<tfc:metal/double_sheet/zinc>,<tfc:metal/double_sheet/sterling_silver>,
<tfc:metal/double_sheet/wrought_iron>,<tfc:metal/double_sheet/pig_iron>,<tfc:metal/double_sheet/steel>,<tfc:metal/double_sheet/platinum>,<tfc:metal/double_sheet/black_steel>,
<tfc:metal/double_sheet/blue_steel>,<tfc:metal/double_sheet/red_steel>,<tfc:metal/double_sheet/antimony>,<tfc:metal/double_sheet/constantan>,
<tfc:metal/double_sheet/electrum>,<tfc:metal/double_sheet/mithril>,<tfc:metal/double_sheet/invar>,<tfc:metal/double_sheet/aluminium>,<tfc:metal/double_sheet/aluminium_brass>,
<tfc:metal/double_sheet/ardite>,<tfc:metal/double_sheet/cobalt>,<tfc:metal/double_sheet/manyullyn>,<tfc:metal/double_sheet/osmium>,<tfc:metal/double_sheet/titanium>,
<tfc:metal/double_sheet/tungsten>,<tfc:metal/double_sheet/tungsten_steel>] as IItemStack[];

val double_ingots =[<tfc:metal/double_ingot/bismuth>,<tfc:metal/double_ingot/bismuth_bronze>,<tfc:metal/double_ingot/black_bronze>,<tfc:metal/double_ingot/brass>,
<tfc:metal/double_ingot/bronze>,<tfc:metal/double_ingot/copper>,<tfc:metal/double_ingot/gold>,<tfc:metal/double_ingot/lead>,<tfc:metal/double_ingot/nickel>,
<tfc:metal/double_ingot/rose_gold>,<tfc:metal/double_ingot/silver>,<tfc:metal/double_ingot/tin>,<tfc:metal/double_ingot/zinc>,<tfc:metal/double_ingot/sterling_silver>,
<tfc:metal/double_ingot/wrought_iron>,<tfc:metal/double_ingot/pig_iron>,<tfc:metal/double_ingot/steel>,<tfc:metal/double_ingot/platinum>,<tfc:metal/double_ingot/black_steel>,
<tfc:metal/double_ingot/blue_steel>,<tfc:metal/double_ingot/red_steel>,<tfc:metal/double_ingot/antimony>,<tfc:metal/double_ingot/constantan>,
<tfc:metal/double_ingot/electrum>,<tfc:metal/double_ingot/mithril>,<tfc:metal/double_ingot/invar>,<tfc:metal/double_ingot/aluminium>,<tfc:metal/double_ingot/aluminium_brass>,
<tfc:metal/double_ingot/ardite>,<tfc:metal/double_ingot/cobalt>,<tfc:metal/double_ingot/manyullyn>,<tfc:metal/double_ingot/osmium>,<tfc:metal/double_ingot/titanium>,
<tfc:metal/double_ingot/tungsten>,<tfc:metal/double_ingot/tungsten_steel>] as IItemStack[];

for i, iIngot in ingots{
mods.immersiveengineering.MetalPress.addRecipe(sheets[i], iIngot, <immersiveengineering:mold>, 2000, 2);
mods.immersiveengineering.MetalPress.addRecipe(double_sheets[i], sheets[i], <immersiveengineering:mold>, 2000, 2);
mods.immersiveengineering.MetalPress.addRecipe(double_ingots[i], iIngot, <immersiveengineering:mold:5>, 2000, 2); #Place Holder Mold
}

