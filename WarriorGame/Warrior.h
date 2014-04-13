//
//  Warrior.h
//  WarriorGame
//
//  Created by Hayden on 2014-04-06.
//  Copyright (c) 2014 Hayden. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weapon.h"
#import "Armor.h"

@interface Warrior : NSObject

@property (nonatomic) int healthStat;
@property (nonatomic) int damageStat;

@property (strong, nonatomic) Weapon *weapon;
@property (strong, nonatomic) Armor *armor;

@end
