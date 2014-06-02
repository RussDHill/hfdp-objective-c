//
//  ChicagoPizzaIngredientFactory.m
//  AbstractPizzaTestDrive
//
//  Created by Russell Hill on 14/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "ChicagoPizzaIngredientFactory.h"
#import "ThickCrustDough.h"
#import "PlumTomatoSauce.h"
#import "MozzarellaCheese.h"
#import "SlicedPepperoni.h"
#import "FrozenClams.h"
#import "BlackOlives.h"
#import "Spinach.h"
#import "Eggplant.h"

@implementation ChicagoPizzaIngredientFactory

- (id<Dough>)createDough {
    return [[ThickCrustDough alloc] init];
}

- (id<Sauce>)createSauce {
    return [[PlumTomatoSauce alloc] init];
}

- (id<Cheese>)createCheese {
    return [[MozzarellaCheese alloc] init];    
}

- (id<Pepperoni>)createPepperoni {
    return [[SlicedPepperoni alloc] init];    
}

- (id<Clams>)createClams {
    return [[FrozenClams alloc] init];    
}

- (void)createVeggies: (NSMutableArray*)veggies
{
    [veggies addObject: [[BlackOlives alloc]  init]];
    [veggies addObject: [[Spinach alloc]  init]];
    [veggies addObject: [[Eggplant alloc]  init]];
}
@end
