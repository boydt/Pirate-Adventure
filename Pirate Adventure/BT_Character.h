//
//  BT_Character.h
//  Pirate Adventure
//
//  Created by Boyd Thompson on 9/25/14.
//  Copyright (c) 2014 WyvarKahn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BT_Weapon.h"
#import "BT_Armor.h"

@interface BT_Character : NSObject

@property (strong, nonatomic) BT_Weapon *weapon;
@property (strong, nonatomic) BT_Armor *armor;
@property (nonatomic) int damage;
@property (nonatomic) int health;

@end
