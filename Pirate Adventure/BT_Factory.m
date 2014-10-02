//
//  BT_Factory.m
//  Pirate Adventure
//
//  Created by Boyd Thompson on 9/22/14.
//  Copyright (c) 2014 WyvarKahn. All rights reserved.
//

#import "BT_Factory.h"
#import "BT_Tile.h"

@implementation BT_Factory

-(NSArray *)tiles
{
    self.piratePictures = [[NSArray alloc] initWithObjects:
        @"PirateBlacksmith.jpeg",
        @"PirateFriendlyDock.jpg",
        @"PirateParrot.jpg",
        @"PirateWeapons.jpeg",
        @"PiratePlank.jpg",
        @"PirateShipBattle.jpeg",
        @"PirateOctopusAttack.jpg",
        @"PirateTreasure.jpeg",
        @"PirateAttack.jpg",
        @"PirateTreasurer2.jpeg",
        @"PirateBoss.jpeg", nil];
    
    self.tileActions = [[NSArray alloc] initWithObjects:
        @"Take armor",
        @"Stop at the dock",
        @"Adopt parrot",
        @"Use pistol",
        @"Show no fear",
        @"Fight those scum",
        @"Abandon ship",
        @"Take treasure",
        @"Repel the invaders",
        @"Swim deeper",
        @"Fight!", nil];

    self.tileStory = [[NSArray alloc] initWithObjects:
        @"You have come accross an armory.  Would you like to upgrade your armor to steel armor?",
        @"A mysterious dock appears on the horizon.  Should we stop and look around?",
        @"You have found a parrot.  This can be used in your armor slot.  Parrots are a great defender and are fiercely loyal to their captain!",
        @"You have stumbled upon a cache of pirate weapons.  Would you like to upgrade to a pistol?",
        @"You have been captured by pirates and are ordered to walk the plank.",
        @"You have sighted a pirate battle off the coast.  Should we help out?",
        @"The legend of the deep.  The mighty Kraken appears!",
        @"You have stumbled upon a hidden cave of pirate treasure.",
        @"A group of pirates attempts to board your ship.",
        @"In the deep of the sea many things live and many things can be found.  Will the fortune bring help or ruin?",
        @"Your final faceoff with the fearsome pirate boss!", nil];
    
    self.tileWeapon = [[NSArray alloc] initWithObjects:
        @"empty",
        @"empty",
        @"empty",
        @"Pistol",
        @"empty",
        @"empty",
        @"empty",
        @"empty",
        @"empty",
        @"empty",
        @"empty", nil];
    
    self.tileArmor = [[NSArray alloc] initWithObjects:
        @"Steel Armor",
        @"empty",
        @"Parrot",
        @"empty",
        @"empty",
        @"empty",
        @"empty",
        @"empty",
        @"empty",
        @"empty",
        @"empty", nil];
    
    //The health effect applies to the weapon or armor (if any) otherwise it represents the outcome of the random event
    self.tileHealthEffect = [[NSArray alloc] initWithObjects:
        @7,
        @17,
        @20,
        @20,
        @-20,
        @-10,
        @-40,
        @20,
        @15,
        @-7,
        @-15, nil];
    
    self.tileRandomSeeder = [[NSArray alloc] initWithObjects:
                                 @0,
                                 @0,
                                 @5,
                                 @4,
                                 @-10,
                                 @-15,
                                 @-20,
                                 @10,
                                 @5,
                                 @-7,
                                 @-15, nil];
    
  
    self.tileScenarioPicked = [[NSMutableArray alloc] initWithObjects:@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,nil];
    
    BT_Tile *tile1 = [[BT_Tile alloc] init];
    tile1.story = @"Captain, we need a fearless leader such as yourself to undertake a voyage.  You must stop the evil pirate Boss.  Grab the blunted sword and get started.";
    tile1.backgroundImage = @"PirateStart.jpg";
    tile1.actionButtonName = @"Take the sword";
    BT_Weapon *bluntedSword = [[BT_Weapon alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    
    BT_Tile *tile2 = [[BT_Tile alloc] init];
    tile2 = [self tileEvents];
    
    BT_Tile *tile3 = [[BT_Tile alloc] init];
    tile3 = [self tileEvents];
    
    NSMutableArray *column1 = [[NSMutableArray alloc] init];
    [column1 addObject:tile1];
    [column1 addObject:tile2];
    [column1 addObject:tile3];
    
    BT_Tile *tile4 = [[BT_Tile alloc] init];
    tile4 = [self tileEvents];
    
    BT_Tile *tile5 = [[BT_Tile alloc] init];
    tile5 = [self tileEvents];

    BT_Tile *tile6 = [[BT_Tile alloc] init];
    tile6 = [self tileEvents];
    
    NSMutableArray *column2 = [[NSMutableArray alloc] init];
    [column2 addObject:tile4];
    [column2 addObject:tile5];
    [column2 addObject:tile6];
    
    BT_Tile *tile7 = [[BT_Tile alloc] init];
    tile7 = [self tileEvents];

    BT_Tile *tile8 = [[BT_Tile alloc] init];
    tile8 = [self tileEvents];

    BT_Tile *tile9 = [[BT_Tile alloc] init];
    tile9 = [self tileEvents];
    
    NSMutableArray *column3 = [[NSMutableArray alloc] init];
    [column3 addObject:tile7];
    [column3 addObject:tile8];
    [column3 addObject:tile9];
    
    BT_Tile *tile10 = [[BT_Tile alloc] init];
    tile10 = [self tileEvents];

    BT_Tile *tile11 = [[BT_Tile alloc] init];
    tile11 = [self tileEvents];

    BT_Tile *tile12 = [[BT_Tile alloc] init];
    tile12 = [self tileEvents];
    
    NSMutableArray *column4 = [[NSMutableArray alloc] init];
    [column4 addObject:tile10];
    [column4 addObject:tile11];
    [column4 addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:column1, column2, column3, column4, nil];
    

//    NSLog(@"%@ | %@ | %@ | %@",tile3.story, tile6.story, tile9.story, tile12.story);
//    NSLog(@"%@ | %@ | %@ | %@",tile2.story, tile5.story, tile8.story, tile11.story);
//    NSLog(@"%@ | %@ | %@ | %@",tile1.story, tile4.story, tile7.story, tile10.story);
    
    
    
    return tiles;
    
}

-(BT_Character *)character
{
    BT_Character *character = [[BT_Character alloc] init];
    character.health = 100;
    
    BT_Armor *armor = [[BT_Armor alloc] init];
    armor.name  = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    
    BT_Weapon *weapon = [[BT_Weapon alloc] init];
    weapon.damage = 10;
    weapon.name = @"Fists";
    character.weapon = weapon;
    
    
    return character;
}

-(BT_Boss *)boss;
{
    BT_Boss *boss = [[BT_Boss alloc] init];
    boss.health = 65;
    return boss;
}

-(BT_Tile *)tileEvents
{
    BT_Tile *protoTile = [[BT_Tile alloc] init];
    BT_Weapon *protoWeapon = [[BT_Weapon alloc] init];
    BT_Armor *protoArmor = [[BT_Armor alloc] init];
    
    int rndNumber = [self randomNumber:self.tileScenarioPicked];
    
    protoTile.story = self.tileStory[rndNumber];
    protoTile.backgroundImage = self.piratePictures[rndNumber];
    protoTile.actionButtonName = self.tileActions[rndNumber];
    
    if (![self.tileWeapon[rndNumber]  isEqual: @"empty"]) {
        protoWeapon.name = [self.tileWeapon objectAtIndex:rndNumber];
        protoWeapon.damage = [[self.tileHealthEffect objectAtIndex:rndNumber] integerValue];
        
        protoTile.weapon = protoWeapon;
    }
    else if (![self.tileArmor[rndNumber]  isEqual: @"empty"]) {
        protoArmor.name = [self.tileArmor objectAtIndex:rndNumber];
        protoArmor.health = [[self.tileHealthEffect objectAtIndex:rndNumber] integerValue]; //this tripped me up (need to set up armor object first, then set that equal to protoTile NOT try to change prototile.armor.health directly!) 
        
        protoTile.armor = protoArmor;
    }
    else {
        protoTile.healthEffect = [self.tileHealthEffect[rndNumber] integerValue];
        
    }
    
    return protoTile;
}

//HOW IS "tileScenarioPicked" GETTING UPDATED HERE???
// tileScenarioPicked is send as an argument to this method and becomes "availableTileScenarios"
// "availableTileScenarios" acts as an object that is pointing to memory whereas "tileScenarioPicked" was just an integer array.
// "availableTileScenarios" then updates itself in this mehtod which is then reflected within "tileScenarioPicked" which is NOT in this method.  WTF?!?!?
-(int)randomNumber:(NSMutableArray *)availableTileScenarios;
{
    int number = arc4random() % 11;
    while ([availableTileScenarios[number]  isEqual: @1]) {
        number = arc4random() % 11;
    }
    [availableTileScenarios replaceObjectAtIndex:number withObject:@1];
    return number;
}



@end
