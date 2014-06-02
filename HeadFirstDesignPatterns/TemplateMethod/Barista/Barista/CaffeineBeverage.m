//
//  CaffeineBeverage.m
//  Barista
//
//  Created by Russell Hill on 22/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "CaffeineBeverage.h"

@implementation CaffeineBeverage

- (void) prepareRecipe {
    [self boilWater];
    [self brew];
    [self pourInCup];
    [self addCondiments];
}

- (void) brew {
    NSLog(@"This abstract method should not be called");
}

- (void) addCondiments {
    NSLog(@"This abstract method should not be called");
}

- (void) boilWater {
    NSLog(@"Boiling water");
}

- (void) pourInCup {
    NSLog(@"Pouring into cup");
}
@end
