//
//  main.m
//  StarbuzzCoffee
//
//  Created by Russell Hill on 12/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Beverage.h"
#import "Espresso.h"
#import "DarkRoast.h"
#import "HouseBlend.h"
#import "Decaf.h"
#import "Mocha.h"
#import "Soy.h"
#import "SteamedMilk.h"
#import "Whip.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        id<Beverage> beverage = [[Espresso alloc] init];
        NSLog(@"%@ $%.2f", [beverage getDescription], [beverage cost]);
        
        id<Beverage> beverage2 = [[DarkRoast alloc] init];
        beverage2 = [[Mocha alloc] initDecorator: beverage2];
        beverage2 = [[Mocha alloc] initDecorator: beverage2];
        beverage2 = [[Whip alloc] initDecorator: beverage2];
        NSLog(@"%@ $%.2f", [beverage2 getDescription], [beverage2 cost]);
        
        
        id<Beverage> beverage3 = [[HouseBlend alloc] init];
        beverage3 = [[Soy alloc] initDecorator: beverage3];
        beverage3 = [[Mocha alloc] initDecorator: beverage3];
        beverage3 = [[Whip alloc] initDecorator: beverage3];
        NSLog(@"%@ $%.2f", [beverage3 getDescription], [beverage3 cost]);
        
    }
    return 0;
}

