//
//  ViewController.h
//  WarriorGame
//
//  Created by Hayden on 2014-03-27.
//  Copyright (c) 2014 Hayden. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Warrior.h"

@interface ViewController : UIViewController

//IVars

@property (nonatomic) CGPoint currentPoint;
@property (nonatomic) NSArray *tiles;

@property (strong, nonatomic) Warrior *warrior;

// IBOutlets
@property (strong, nonatomic) IBOutlet UIImageView *bgImageView;
@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorLabel;
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;
@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;

//IBActions

- (IBAction)actionButtonPressed:(UIButton *)sender;
- (IBAction)northButtonPressed:(UIButton *)sender;
- (IBAction)westButtonPressed:(UIButton *)sender;
- (IBAction)southButtonPressed:(UIButton *)sender;
- (IBAction)eastButtonPressed:(UIButton *)sender;

@end
