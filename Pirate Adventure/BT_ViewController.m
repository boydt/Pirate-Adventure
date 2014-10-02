//
//  BT_ViewController.m
//  Pirate Adventure
//
//  Created by Boyd Thompson on 9/22/14.
//  Copyright (c) 2014 WyvarKahn. All rights reserved.
//

#import "BT_ViewController.h"
#import "BT_Factory.h"
#import "BT_Tile.h"

@interface BT_ViewController ()

@end

@implementation BT_ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    BT_Factory *factory = [[BT_Factory alloc] init];
    self.tiles = [factory tiles]; //this property type was set up in the .h file
    self.character = [factory character];
    self.boss = [factory boss];
    
    self.currentPoint = CGPointMake(0,0);//this property type was set up in the .h file

    [self updateCharacterStats:nil withWeapons:nil withHealthEffect:0];
    [self updateTile];
    [self hideShowMoveButtons];
    
    
//    NSLog(@"%@", [[tiles objectAtIndex:0] objectAtIndex:1]);
//    NSLog(@"%@", tiles);
    
//    BT_Tile *currentTile = [[BT_Tile alloc] init];
//    currentTile = [[tiles objectAtIndex:point.x] objectAtIndex:point.y];
    
//    NSLog(@"%@%@%@", currentTile.story, currentTile.actionButtonName, currentTile.backgroundImage);
    
//    [point hideShowButtons];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)updateTile //doesn't need to be added to header file because only this .m file will be using it
{
    BT_Tile *currentTile = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    //change Story
    self.lblPlayerStory.text = currentTile.story;
    //change Action button title
    [self.btnPlayerAction setTitle:currentTile.actionButtonName forState:UIControlStateNormal];
    //change background image
    self.imgBackground.image = [UIImage imageNamed:currentTile.backgroundImage];
    
    self.lblPlayerHealth.text = [NSString stringWithFormat:@"%i", self.character.health];
    self.lblPlayerDamage.text = [NSString stringWithFormat:@"%i", self.character.damage];
    self.lblPlayerArmor.text = self.character.armor.name;
    self.lblPlayerWeapon.text = self.character.weapon.name;
}

//hides or shows the directional buttons depending on whether they are on the edge of the grid
-(void)hideShowMoveButtons
{
    if (self.currentPoint.x == 0) {self.btnWest.hidden = YES;} else {self.btnWest.hidden = NO;}
    if (self.currentPoint.x == 3) {self.btnEast.hidden = YES;} else {self.btnEast.hidden = NO;}
    if (self.currentPoint.y == 0) {self.btnSouth.hidden = YES;} else {self.btnSouth.hidden = NO;}
    if (self.currentPoint.y == 2) {self.btnNorth.hidden = YES;} else {self.btnNorth.hidden = NO;}

}

//- (IBAction)cmdPlayerAction:(UIButton *)sender {
//}
- (IBAction)btnPlayerAction:(UIButton *)sender
{
    BT_Tile *tile = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    if ([tile.actionButtonName isEqual: @"Fight!"]) {
        self.boss.health = self.boss.health - self.character.damage;
    }
    [self updateCharacterStats:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
    
    if (self.character.health <= 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Death Message" message:@"You have died.  Please restart the game." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [alertView show];
    }
    else if (self.boss.health <= 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Victory message" message:@"You have defeated the evil pirate boss!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [alertView show];
    }
    
    [self updateTile];
}

- (IBAction)btnNorth:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x + 0, self.currentPoint.y + 1);
    [self updateTile];
    [self hideShowMoveButtons];
}

- (IBAction)btnWest:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    [self updateTile];
    [self hideShowMoveButtons];
}

- (IBAction)btnEast:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    [self updateTile];
    [self hideShowMoveButtons];
}

- (IBAction)btnSouth:(UIButton *)sender
{
    self.currentPoint = CGPointMake(self.currentPoint.x + 0, self.currentPoint.y - 1);
    [self updateTile];
    [self hideShowMoveButtons];
}

- (IBAction)btnReset:(UIButton *)sender
{
    self.character = nil;
    self.boss = nil;
    [self viewDidLoad];
}

-(void)updateCharacterStats:(BT_Armor *)armor withWeapons:(BT_Weapon *)weapon withHealthEffect:(int)healthEffect
{
    if (armor != nil) {
        self.character.health = self.character.health - self.character.armor.health + armor.health;
        self.character.armor = armor;
    }
    else if (weapon != nil){
        self.character.damage = self.character.damage - self.character.weapon.damage + weapon.damage;
        self.character.weapon = weapon;
    }
    else if (healthEffect != 0) {
        self.character.health = self.character.health + healthEffect;
    }
    else {
        self.character.health = self.character.health + self.character.armor.health;
        self.character.damage = self.character.damage + self.character.weapon.damage;
    }
}
@end
