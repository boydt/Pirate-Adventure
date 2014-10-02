//
//  BT_Factory.h
//  Pirate Adventure
//
//  Created by Boyd Thompson on 9/22/14.
//  Copyright (c) 2014 WyvarKahn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BT_Character.h"
#import "BT_Boss.h"

@interface BT_Factory : NSObject

-(NSArray *)tiles;
-(BT_Character *)character;
-(BT_Boss *)boss;

@property (strong, nonatomic) NSArray *tileStory;
@property (strong, nonatomic) NSArray *piratePictures;
@property (strong, nonatomic) NSArray *tileActions;
@property (strong, nonatomic) NSArray *tileWeapon;
@property (strong, nonatomic) NSArray *tileArmor;
@property (strong, nonatomic) NSArray *tileHealthEffect;
@property (strong, nonatomic) NSArray *tileRandomSeeder;
@property (strong, nonatomic) NSMutableArray *tileScenarioPicked;



@end
