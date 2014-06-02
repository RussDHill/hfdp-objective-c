//
//  GumballMonitor.m
//  GumballMonitor
//
//  Created by Russell Hill on 28/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "GumballMonitor.h"
#import "GumballMachine.h"

@implementation GumballMonitor

- (id)initWithGumballMachine: (GumballMachine*)gumballMachine {
    if (!(self = [super init]))
		return nil;
	
    _gumballMachine = gumballMachine;
	
	return self;
}

- (void)report {
    NSLog(@"Gumball Machine: %@", [_gumballMachine getLocation]);
    NSLog(@"Current inventory: %i gumballs", [_gumballMachine getCount]);
    NSLog(@"Current state: %@", [_gumballMachine getState]);
}

@end
