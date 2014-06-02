//
//  CaffeineBeverageWithHook.m
//  Barista
//
//  Created by Russell Hill on 22/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "CaffeineBeverageWithHook.h"

@implementation CaffeineBeverageWithHook

- (void) prepareRecipe {
    [self boilWater];
    [self brew];
    [self pourInCup];
    if ([self customerWantsCondiments]) {
        [self addCondiments];
    }
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

- (bool) customerWantsCondiments {
    return true;
}

@end
