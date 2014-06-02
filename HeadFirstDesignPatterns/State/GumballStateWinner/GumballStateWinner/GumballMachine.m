//
//  GumballMachine.m
//  GumballStateWinner
//
//  Created by Russell Hill on 27/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "GumballMachine.h"
#import "HasQuarterState.h"
#import "NoQuarterState.h"
#import "SoldOutState.h"
#import "SoldState.h"
#import "WinnerState.h"

@implementation GumballMachine

- (id)initWithCount: (int)count {
    if (!(self = [super init]))
		return nil;
    
    _soldOutState = [[SoldOutState alloc] initWithGumballMachine: self];
    _noQuarterState = [[NoQuarterState alloc] initWithGumballMachine: self];
    _hasQuarterState = [[HasQuarterState alloc] initWithGumballMachine: self];
    _soldState = [[SoldState alloc] initWithGumballMachine: self];
    _winnerState = [[WinnerState alloc] initWithGumballMachine: self];
	
    _count = count;
	_state = _soldOutState;
    
    if (_count > 0)
        _state = _noQuarterState;
	
	return self;
}

- (void)insertQuarter {
    [_state insertQuarter];
}

- (void)ejectQuarter {
    [_state ejectQuarter];
}

- (void)turnCrank {
    [_state turnCrank];
    [_state dispense];
}

- (void)setState: (id<State>)state {
    _state = state;
}

- (void)releaseBall {
	NSLog(@"A gumball comes rolling out the slot...");
	if (_count != 0) {
		_count--;
	}
}

- (int)getCount {
    return _count;
}

- (void)refill: (int)amount {
    _count = amount;
    _state = _noQuarterState;
}

- (id<State>)getState {
    return _state;
}

- (id<State>)getSoldOutState {
    return _soldOutState;
}

- (id<State>)getNoQuarterState {
    return _noQuarterState;
}

- (id<State>)getHasQuarterState {
    return _hasQuarterState;
}

- (id<State>)getSoldState {
    return _soldState;
}

- (id<State>)getWinnerState {
    return _winnerState;
}

- (NSString*)description {
    
    NSString* str = @"";
    if (_count != 1)
        str = @"s";
    
    NSString* result = @"\rMighty Gumball, Inc.\rObjective C enabled Standing Gumball Model #2014\rInventory: ";
    result = [result stringByAppendingFormat: @"%i gumball%@\rMachine is %@\r", _count, str, _state];
    
	return result;
}
@end
