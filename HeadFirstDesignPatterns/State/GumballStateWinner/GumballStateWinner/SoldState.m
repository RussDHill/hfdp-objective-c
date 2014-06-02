//
//  SoldState.m
//  GumballStateWinner
//
//  Created by Russell Hill on 27/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "SoldState.h"
#import "GumballMachine.h"

@implementation SoldState

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
    NSLog(@"Sorry, you already turned the crank");
}

- (void)turnCrank {
    NSLog(@"Turning twice doesn't get you another gumball!");
}

- (void)dispense {
    [_gumballMachine releaseBall];
	if ([_gumballMachine getCount] > 0) {
		[_gumballMachine setState: [_gumballMachine getNoQuarterState]];
	} else {
		NSLog(@"Oops, out of gumballs!");
		[_gumballMachine setState: [_gumballMachine getSoldOutState]];
	}
}

- (NSString*)description {
	return @"dispensing a gumball";
}
@end
