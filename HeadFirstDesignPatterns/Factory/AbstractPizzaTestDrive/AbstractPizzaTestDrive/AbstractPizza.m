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
	
	_veggies = [[NSMutableArray alloc] init];
	
	return self;
}

- (NSString*)getName {
    return _name;
}

- (void) setName: (NSString*)name {
    _name = name;
}

- (void)box {
    NSLog(@"Place pizza in official PizzaStore box");
}

- (void)cut {
    NSLog(@"Cutting the pizza into diagonal slices");
}

- (void)bake {
    NSLog(@"Bake for 25 minutes at 350");
}

- (void)prepare {
    NSLog(@"This abstract method should not be called");
}

- (NSString*)toString {
    NSString* result = [NSString stringWithFormat: @"\r---- %@ ---\r", _name];
    if (_dough != NULL)
        result = [result stringByAppendingFormat: @"%@\r", [_dough toString]];
    
    if (_sauce != NULL)
        result = [result stringByAppendingFormat: @"%@\r", [_sauce toString]];
    
    for (id<Veggies> veg in _veggies) {
        result = [result stringByAppendingFormat: @"%@\r", [veg toString]];
    }
    result = [result stringByAppendingString: @"\r"];
    
    return result;
}

@end
