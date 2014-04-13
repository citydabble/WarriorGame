//
//  Factory.h
//  WarriorGame
//
//  Created by Hayden on 2014-04-04.
//  Copyright (c) 2014 Hayden. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"

@interface Factory : NSObject


-(NSArray *) tiles;
-(Warrior *) warrior;

@end
