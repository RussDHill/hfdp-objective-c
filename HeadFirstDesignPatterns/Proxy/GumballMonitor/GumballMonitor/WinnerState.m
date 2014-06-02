//
//  WinnerState.m
//  GumballMonitor
//
//  Created by Russell Hill on 28/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "WinnerState.h"
#import "GumballMachine.h"

@implementation WinnerState

- (id)initWithGumballMachine: (GumballMachine*)gumballMachine {
    if (!(self = [super init]))
		return nil;
	
    _gumballMachine = gumballMachine;
	
	return self;
}

- (void)insertQuarter {
    NSLog(@"Please wait, we're already giving you a gumball");
}

- (void)ejectQuarter {
    NSLog(@"Please wait, we're already giving you a gumball");
}

- (void)turnCrank {
    NSLog(@"Turning twice doesn't get you another gumball!");
}

- (void)dispense {
	NSLog(@"YOU'RE A WINNER! You get two gumballs for your quarter");
    [_gumballMachine releaseBall];
	if ([_gumballMachine getCount] == 0) {
		[_gumballMachine setState: [_gumballMachine getSoldOutState]];
	} else {
        [_gumballMachine releaseBall];
        if ([_gumballMachine getCount] > 0) {
            [_gumballMachine setState: [_gumballMachine getNoQuarterState]];
        } else {
            NSLog(@"Oops, out of gumballs!");
            [_gumballMachine setState: [_gumballMachine getSoldOutState]];
        }
	}
}

- (NSString*)description {
	return @"dispensing two gumballs for your quarter, because YOU'RE A WINNER!";
}

@end
