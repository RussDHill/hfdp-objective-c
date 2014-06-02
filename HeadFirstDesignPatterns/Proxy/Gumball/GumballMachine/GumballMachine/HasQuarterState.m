//
//  HasQuarterState.m
//  GumballMachine
//
//  Created by Russell Hill on 29/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "HasQuarterState.h"
#import "GumballMachine.h"

#include <stdlib.h>

@implementation HasQuarterState

- (id)initWithGumballMachine: (GumballMachine*)gumballMachine {
    if (!(self = [super init]))
		return nil;
	
    _gumballMachine = gumballMachine;
	
	return self;
}

- (void)insertQuarter {
    NSLog(@"You can't insert another quarter");
}

- (void)ejectQuarter {
    NSLog(@"Quarter returned");
	[_gumballMachine setState : [_gumballMachine getNoQuarterState]];
}

- (void)turnCrank {
    NSLog(@"You turned...");
    int winner = arc4random_uniform(10);
    if ((winner == 0) && ([_gumballMachine getCount] > 1)) {
        [_gumballMachine setState: [_gumballMachine getWinnerState]];
    } else {
        [_gumballMachine setState: [_gumballMachine getSoldState]];
    }
}

- (void)dispense {
	NSLog(@"No gumball dispensed");
}

- (NSString*)description {
	return @"waiting for turn of crank";
}

@end
