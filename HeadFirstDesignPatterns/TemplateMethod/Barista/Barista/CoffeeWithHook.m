//
//  CoffeeWithHook.m
//  Barista
//
//  Created by Russell Hill on 22/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "CoffeeWithHook.h"

#include <stdio.h>

@implementation CoffeeWithHook

- (void) brew {
    NSLog(@"Dripping Coffee through filter");
}

- (void) addCondiments {
    NSLog(@"Adding Sugar and Milk");
}

- (bool) customerWantsCondiments {
    NSString* answer = [self getUserInput];
    
    if ([[answer lowercaseString] hasPrefix:@"y"])
        return true;
    else
        return false;
}

- (NSString*) getUserInput {
    char inputChars[10];
    NSLog(@"Would you like milk and sugar with your coffee (y/n)? ");
    fgets(inputChars, sizeof inputChars, stdin);
    return [[NSString alloc] initWithUTF8String : inputChars];
}

@end
