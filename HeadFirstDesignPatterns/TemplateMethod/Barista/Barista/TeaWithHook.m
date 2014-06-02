//
//  TeaWithHook.m
//  Barista
//
//  Created by Russell Hill on 22/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "TeaWithHook.h"

@implementation TeaWithHook

- (void) brew {
    NSLog(@"Steeping the tea");
}

- (void) addCondiments {
    NSLog(@"Adding Lemon");
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
    NSLog(@"Would you like lemon with your tea (y/n)? ");
    fgets(inputChars, sizeof inputChars, stdin);
    return [[NSString alloc] initWithUTF8String : inputChars];
}

@end
