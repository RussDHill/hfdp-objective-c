//
//  SoldOutState.m
//  GumballMonitor
//
//  Created by Russell Hill on 28/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "SoldOutState.h"
#import "GumballMachine.h"

@implementation SoldOutState

- (id)initWithGumballMachine: (GumballMachine*)gumballMachine {
    if (!(self = [super init]))
		return nil;
	
    _gumballMachine = gumballMachine;
	
	return self;
}

- (void)insertQuarter {
    NSLog(@"You can't insert a quarter, the machine is sold out");
}

- (void)ejectQuarter {
    NSLog(@"You can't eject, you haven't inserted a quarter yet");
}

- (void)turnCrank {
    NSLog(@"You turned, but there are no gumballs");
}

- (void)dispense {
	NSLog(@"No gumball dispensed");
}

- (NSString*)description {
	return @"sold out";
}
@end
