//
//  BT_ViewController.h
//  Pirate Adventure
//
//  Created by Boyd Thompson on 9/22/14.
//  Copyright (c) 2014 WyvarKahn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BT_Character.h"
#import "BT_Boss.h"

@interface BT_ViewController : UIViewController

//iVars (instance variables) this allows us to access the properties from multiple methods
@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;
@property (strong, nonatomic) BT_Character *character;
@property (strong, nonatomic) BT_Boss *boss;

//IBOutlets
@property (strong, nonatomic) IBOutlet UILabel *lblPlayerHealth;
@property (strong, nonatomic) IBOutlet UILabel *lblPlayerDamage;
@property (strong, nonatomic) IBOutlet UILabel *lblPlayerWeapon;
@property (strong, nonatomic) IBOutlet UILabel *lblPlayerArmor;
@property (strong, nonatomic) IBOutlet UILabel *lblPlayerStory;
@property (strong, nonatomic) IBOutlet UIImageView *imgBackground;
@property (strong, nonatomic) IBOutlet UIButton *btnPlayerAction;
@property (strong, nonatomic) IBOutlet UIButton *btnNorth;
@property (strong, nonatomic) IBOutlet UIButton *btnWest;
@property (strong, nonatomic) IBOutlet UIButton *btnEast;
@property (strong, nonatomic) IBOutlet UIButton *btnSouth;


//IBActions
//-(void)hideShowButtons:(CGPoint)point;
- (IBAction)btnPlayerAction:(UIButton *)sender;
- (IBAction)btnNorth:(UIButton *)sender;
- (IBAction)btnWest:(UIButton *)sender;
- (IBAction)btnEast:(UIButton *)sender;
- (IBAction)btnSouth:(UIButton *)sender;
- (IBAction)btnReset:(UIButton *)sender;



@end
