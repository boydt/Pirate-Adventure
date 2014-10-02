//
//  BT_Tile.h
//  Pirate Adventure
//
//  Created by Boyd Thompson on 9/22/14.
//  Copyright (c) 2014 WyvarKahn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BT_Weapon.h"
#import "BT_Armor.h"

@interface BT_Tile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) NSString *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) BT_Weapon *weapon;
@property (strong, nonatomic) BT_Armor *armor;
@property (nonatomic) int healthEffect;

@end
