//
//  NoQuarterState.m
//  GumballMachine
//
//  Created by Russell Hill on 29/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "NoQuarterState.h"
#import "GumballMachine.h"

@implementation NoQuarterState

- (id)initWithGumballMachine: (GumballMachine*)gumballMachine {
    if (!(self = [super init]))
		return nil;
	
    _gumballMachine = gumballMachine;
	
	return self;
}

- (void)insertQuarter {
    NSLog(@"You inserted a quarter");
    [_gumballMachine setState : [_gumballMachine getHasQuarterState]];
}

- (void)ejectQuarter {
    NSLog(@"You haven't inserted a quarter");
}

- (void)turnCrank {
    NSLog(@"You turned, but there's no quarter");
}

- (void)dispense {
	NSLog(@"You need to pay first");
}

- (NSString*)description {
	return @"waiting for quarter";
}
@end
