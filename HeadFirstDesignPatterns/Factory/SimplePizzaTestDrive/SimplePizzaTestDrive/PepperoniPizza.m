//
//  PepperoniPizza.m
//  SimplePizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "PepperoniPizza.h"

@implementation PepperoniPizza

- (id)init {
	if (!(self = [super init]))
		return nil;
    
    _name = @"Pepperoni Pizza";
	_dough = @"Regular Crust";
	_sauce = @"Marinara Sauce";
	[_toppings addObject: @"Sliced Pepperoni"];
    [_toppings addObject: @"Sliced Onion"];
    [_toppings addObject: @"Grated Parmesan Cheese"];
	
	return self;
}


@end
