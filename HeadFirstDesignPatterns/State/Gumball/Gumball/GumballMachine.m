//
//  GumballMachine.m
//  Gumball
//
//  Created by Russell Hill on 27/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "GumballMachine.h"

@implementation GumballMachine

- (id)initWithCount: (int)count {
    if (!(self = [super init]))
		return nil;
	
    _count = count;
	_state = SOLD_OUT;
    
    if (_count > 0)
        _state = NO_QUARTER;
	
	return self;
}

- (void)insertQuarter {
	if (_state == HAS_QUARTER) {
		NSLog(@"You can't insert another quarter");
	} else if (_state == NO_QUARTER) {
		_state = HAS_QUARTER;
		NSLog(@"You inserted a quarter");
	} else if (_state == SOLD_OUT) {
		NSLog(@"You can't insert a quarter, the machine is sold out");
	} else if (_state == SOLD) {
		NSLog(@"Please wait, we're already giving you a gumball");
	}
}

- (void)ejectQuarter {
	if (_state == HAS_QUARTER) {
		NSLog(@"Quarter returned");
		_state = NO_QUARTER;
	} else if (_state == NO_QUARTER) {
		NSLog(@"You haven't inserted a quarter");
	} else if (_state == SOLD) {
		NSLog(@"Sorry, you already turned the crank");
	} else if (_state == SOLD_OUT) {
		NSLog(@"You can't eject, you haven't inserted a quarter yet");
	}
}

- (void)turnCrank {
	if (_state == SOLD) {
		NSLog(@"Turning twice doesn't get you another gumball!");
	} else if (_state == NO_QUARTER) {
		NSLog(@"You turned but there's no quarter");
	} else if (_state == SOLD_OUT) {
		NSLog(@"You turned, but there are no gumballs");
	} else if (_state == HAS_QUARTER) {
		NSLog(@"You turned...");
		_state = SOLD;
		[self dispense];
	}
}

- (void) dispense {
	if (_state == SOLD) {
		NSLog(@"A gumball comes rolling out the slot");
		_count--;
		if (_count == 0) {
			NSLog(@"Oops, out of gumballs!");
			_state = SOLD_OUT;
		} else {
			_state = NO_QUARTER;
		}
	} else if (_state == NO_QUARTER) {
		NSLog(@"You need to pay first");
	} else if (_state == SOLD_OUT) {
		NSLog(@"No gumball dispensed");
	} else if (_state == HAS_QUARTER) {
		NSLog(@"No gumball dispensed");
	}
}

- (void)refill: (int)amount {
	_count = amount;
	_state = NO_QUARTER;
}

- (NSString*)description {
    
    NSString* str = @"";
    if (_count != 1)
        str = @"s";
    
    NSString* result = @"\rMighty Gumball, Inc.\rObjective C enabled Standing Gumball Model #2014\rInventory: ";
    result = [result stringByAppendingFormat: @"%i gumball%@\rMachine is ", _count, str];
 	if (_state == SOLD_OUT) {
        result = [result stringByAppendingString: @"sold out"];
	} else if (_state == NO_QUARTER) {
        result = [result stringByAppendingString: @"waiting for quarter"];
	} else if (_state == HAS_QUARTER) {
        result = [result stringByAppendingString: @"waiting for turn of crank"];
	} else if (_state == SOLD) {
        result = [result stringByAppendingString: @"delivering a gumball"];
	}
	result = [result stringByAppendingString: @"\r"];
    
	return result;
}
@end
