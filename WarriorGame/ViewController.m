//
//  ViewController.m
//  WarriorGame
//
//  Created by Hayden on 2014-03-27.
//  Copyright (c) 2014 Hayden. All rights reserved.
//

#import "ViewController.h"
#import "Factory.h"
#import "Tile.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    Factory *factory = [[Factory alloc] init];
    self.warrior = [factory warrior];
    self.tiles = [factory tiles];
    self.currentPoint = CGPointMake(0, 0);
    [self updateTile];
    [self updateButtons];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//BUTTONS

- (IBAction)actionButtonPressed:(id)sender {

}

- (IBAction)northButtonPressed:(UIButton *)sender {
    
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)westButtonPressed:(UIButton *)sender {

    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];}

- (IBAction)southButtonPressed:(UIButton *)sender {
    
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)eastButtonPressed:(UIButton *)sender {
    
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}



// HELPER METHODS

- (void) updateButtons
{
    self.westButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
    self.eastButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
    self.northButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
    self.southButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)];
    
}

-(void) updateTile {
    Tile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.storyLabel.text = tileModel.story;
    self.bgImageView.image = tileModel.bgImage;
    self.healthLabel.text = [NSString stringWithFormat:@"%i", self.warrior.healthStat];
    self.armorLabel.text = self.warrior.armor.name;
    self.weaponLabel.text = self.warrior.weapon.name;
    [self.actionButton setTitle:tileModel.actionButtonName forState:UIControlStateNormal];
    
    
}

// return NO when you do not want to hide the Navigation button, YES otherwise

- (BOOL) tileExistsAtPoint:(CGPoint)point;
{
    if (point.y >= 0 && point.x >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count]) {
        return NO;
    }
    return YES;
}

- (void) updateCharaterStatsForArmor:(Armor *)armor withWeapon:(Weapon *) weapon
                    withHealthEffect:(int) healthEffect
{
    if (armor !=nil) {
        self.warrior.healthStat = self.warrior.healthStat - self.warrior.armor.health + armor.health;
        self.warrior.armor = armor;
    }
    else if (weapon !=nil) {
        self.warrior.damageStat = self.warrior.damageStat - self.warrior.weapon.damage + weapon.damage;
        self.warrior.weapon = weapon;
    }
    else if (healthEffect != 0) {
        self.warrior.healthStat = self.warrior.healthStat + healthEffect;
    }
    else {
        self.warrior.healthStat = self.warrior.healthStat + self.warrior.armor.health;
        self.warrior.damageStat = self.warrior.damageStat + self.warrior.damageStat;
    }
}

@end
