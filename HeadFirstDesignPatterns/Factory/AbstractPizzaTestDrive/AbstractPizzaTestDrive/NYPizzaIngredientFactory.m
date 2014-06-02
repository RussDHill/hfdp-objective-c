//
//  NYPizzaIngredientFactory.m
//  AbstractPizzaTestDrive
//
//  Created by Russell Hill on 14/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "NYPizzaIngredientFactory.h"
#import "ThinCrustDough.h"
#import "MarinaraSauce.h"
#import "ReggianoCheese.h"
#import "SlicedPepperoni.h"
#import "FreshClams.h"
#import "Garlic.h"
#import "Onion.h"
#import "Mushroom.h"
#import "RedPepper.h"

@implementation NYPizzaIngredientFactory

- (id<Dough>)createDough {
    return [[ThinCrustDough alloc] init];
}

- (id<Sauce>)createSauce {
    return [[MarinaraSauce alloc] init];
}

- (id<Cheese>)createCheese {
    return [[ReggianoCheese alloc] init];
}

- (id<Pepperoni>)createPepperoni {
    return [[SlicedPepperoni alloc] init];
}

- (id<Clams>)createClams {
    return [[FreshClams alloc] init];
}

- (void)createVeggies: (NSMutableArray*)veggies {
    [veggies addObject: [[Garlic alloc]  init]];
    [veggies addObject: [[Onion alloc]  init]];
    [veggies addObject: [[Mushroom alloc]  init]];
    [veggies addObject: [[RedPepper alloc]  init]];
}
@end
