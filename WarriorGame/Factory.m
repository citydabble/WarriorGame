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
    tile1.story = @"You are on the verge of a quest to slay the greatest evil soldier of all time, a warrior by the name of Gardan.  To start your quest pick up your weapon and make a move";
    tile1.bgImage = [UIImage imageNamed:@"Warrior.jpg"];
    Weapon *bluntedSword = [[Weapon alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 14;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take Sword";
    
    
    Tile *tile2 = [[Tile alloc] init];
    tile2.story = @"You have encountered Rex, he is a good soldier that can help you, but you must show him who is in charge, wield your power so he will join you";
    tile2.bgImage = [UIImage imageNamed:@"rex.jpg"];
    Armor *steelArmor = [[Armor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 12;
    tile2.armor = steelArmor;
    tile2.actionButtonName = @"Take Armor";
    
    

    Tile *tile3 = [[Tile alloc] init];
    tile3.story = @"You've encountered Luthansa Queen, you must fight her to continue";
    tile3.bgImage = [UIImage imageNamed:@"warrior-queen.jpg"];
    tile3.actionButtonName = @"Fight the Queen";
    


    NSMutableArray *column1 = [[NSMutableArray alloc] init];
    [column1 addObject:tile1];
    [column1 addObject:tile2];
    [column1 addObject:tile3];
    
    Tile *tile4 = [[Tile alloc] init];
    tile4.story = @"Cavalinia is the princess warrior of the underworld, she has come to fight. Try to take her down by attacking her horse";
    tile4.bgImage = [UIImage imageNamed:@"woman-horse.jpg"];
    tile4.actionButtonName = @"Attack her horse";


    Tile *tile5 = [[Tile alloc] init];
    tile5.story = @"This warrior possesses great strength... he seems to be able to predict your every move...  it may be futile to try to fight....try to run away";
    tile5.bgImage = [UIImage imageNamed:@"Fantasy-Warrior.jpg"];
    tile5.healthEffect = -20;
    tile5.actionButtonName = @"Run away";

    Tile *tile6 = [[Tile alloc] init];
    tile6.story = @"Geppetto de Noir is putting a charm on you... but it seems to like you... something seems to be happening to your armor...";
    tile6.bgImage = [UIImage imageNamed:@"cat.jpg"];
    Armor *catArmor = [[Armor alloc] init];
    catArmor.name = @"Cat Armor";
    catArmor.health = 25;
    tile6.armor = catArmor;
    tile6.actionButtonName = @"Continue Quest";
    


    NSMutableArray *column2 = [[NSMutableArray alloc] init];
    [column2 addObject:tile4];
    [column2 addObject:tile5];
    [column2 addObject:tile6];

    Tile *tile7 = [[Tile alloc] init];
    tile7.story = @"You have found Gadan... fight with all your might to try to defeat him";
    tile7.bgImage = [UIImage imageNamed:@"boss.jpg"];
    tile7.healthEffect = -25;
    tile7.actionButtonName = @"Fight the Boss";


    Tile *tile8 = [[Tile alloc] init];
    tile8.story = @"The black knights have come to fight you... pick a knight to fight and if you succeed the other will flee";
    tile8.bgImage = [UIImage imageNamed:@"w2.jpg"];
    tile8.healthEffect = -15;
    tile8.actionButtonName = @"Fight";
    

    Tile *tile9 = [[Tile alloc] init];
    tile9.story = @"A Druid with warrior status comes and hands you a potion... do you drink it?";
    tile9.bgImage = [UIImage imageNamed:@"w3.jpg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Drink it";
    


    NSMutableArray *column3 = [[NSMutableArray alloc] init];
    [column3 addObject:tile7];
    [column3 addObject:tile8];
    [column3 addObject:tile9];
    
    Tile *tile10 = [[Tile alloc] init];
    tile10.story = @"The princess of the mist has a new weapon she gives you";
    tile10.bgImage = [UIImage imageNamed:@"w4.jpg"];
    Weapon *swordOfMist = [[Weapon alloc] init];
    swordOfMist.name = @"Sword of the Mist";
    swordOfMist.damage = 50;
    tile10.weapon = swordOfMist;
    tile10.actionButtonName = @"Take the sword";
    
    Tile *tile11 = [[Tile alloc] init];
    tile11.story = @"You have found Lonely Joe... you speak with him and share stories of your adventures";
    tile11.bgImage = [UIImage imageNamed:@"w5.jpg"];
    tile11.healthEffect = 11;
    tile11.actionButtonName = @"talk with Joe";

    
    Tile *tile12 = [[Tile alloc] init];
    tile12.story = @"You find yourself... taking a break... taking some much needed rest";
    tile12.bgImage = [UIImage imageNamed:@"w6.jpg"];
    tile12.healthEffect = 50;
    tile12.actionButtonName = @"take a break";

    
    NSMutableArray *column4 = [[NSMutableArray alloc] init];
    [column4 addObject:tile10];
    [column4 addObject:tile11];
    [column4 addObject:tile12];

    NSArray *tiles = [[NSArray alloc] initWithObjects:column1, column2, column3, column4, nil];
    
    return tiles;
}


-(Warrior *) warrior
{
    Warrior *warrior  = [[Warrior alloc] init];
    warrior.healthStat = 100;
    Armor *armor = [[Armor alloc] init];
    armor.name =  @"Cloak";
    armor.health = 5;
    warrior.armor = armor;
    return warrior;
}


@end
