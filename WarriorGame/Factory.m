//
//  Factory.m
//  WarriorGame
//
//  Created by Hayden on 2014-04-04.
//  Copyright (c) 2014 Hayden. All rights reserved.
//

#import "Factory.h"
#import "Tile.h"
@implementation Factory

-(NSArray *) tiles
{
    Tile *tile1 = [[Tile alloc] init];
    tile1.story = @"story1";
    
    Tile *tile2 = [[Tile alloc] init];
    tile2.story = @"story2";

    Tile *tile3 = [[Tile alloc] init];
    tile3.story = @"story3";

    NSMutableArray *column1 = [[NSMutableArray init] alloc];
    [column1 addObject:tile1];
    [column1 addObject:tile2];
    [column1 addObject:tile3];
    
    Tile *tile4 = [[Tile alloc] init];
    tile4.story = @"story4";

    Tile *tile5 = [[Tile alloc] init];
    tile5.story = @"story5";

    Tile *tile6 = [[Tile alloc] init];
    tile6.story = @"story6";

    NSMutableArray *column2 = [[NSMutableArray init] alloc];
    [column2 addObject:tile4];
    [column2 addObject:tile5];
    [column2 addObject:tile6];

    Tile *tile7 = [[Tile alloc] init];
    tile7.story = @"story7";

    Tile *tile8 = [[Tile alloc] init];
    tile8.story = @"story8";

    Tile *tile9 = [[Tile alloc] init];
    tile9.story = @"story9";

    NSMutableArray *column3 = [[NSMutableArray init] alloc];
    [column3 addObject:tile7];
    [column3 addObject:tile8];
    [column3 addObject:tile9];
    
    Tile *tile10 = [[Tile alloc] init];
    tile10.story = @"story10";
    
    Tile *tile11 = [[Tile alloc] init];
    tile11.story = @"story11 ";
    
    Tile *tile12 = [[Tile alloc] init];
    tile12.story = @"story12";
    
    NSMutableArray *column4 = [[NSMutableArray init] alloc];
    [column4 addObject:tile10];
    [column4 addObject:tile11];
    [column4 addObject:tile12];

    NSArray *tiles = [[NSArray alloc] initWithObjects:column1, column2, column3, column4, nil];
    
    return tiles;
}

@end
