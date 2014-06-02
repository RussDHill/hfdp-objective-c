//
//  AbstractPizza.m
//  SimplePizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "AbstractPizza.h"

@implementation AbstractPizza

- (id)init {
	if (!(self = [super init]))
		return nil;
	
	_toppings = [[NSMutableArray alloc] init];
	
	return self;
}

- (NSString*)getName {
    return _name;
}

- (void)box {
    NSLog(@"Boxing %@", _name);
}

- (void)cut {
    NSLog(@"Cutting %@", _name);
}

- (void)bake {
    NSLog(@"Baking %@", _name);
}

- (void)prepare {
    NSLog(@"Preparing %@", _name);
}

- (NSString*)description {
    NSString* display = [NSString stringWithFormat: @"\r---- %@ ---\r", _name];
    display = [display stringByAppendingFormat: @"%@\r", _dough];
    display = [display stringByAppendingFormat: @"%@\r", _sauce];
    for (NSString* topping in _toppings) {
        display = [display stringByAppendingFormat: @"%@\r", topping];
    }
    display = [display stringByAppendingString: @"\r"];
    
    return display;
}

@end
