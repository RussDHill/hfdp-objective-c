//
//  CheesePizza.m
//  SimplePizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "CheesePizza.h"

@implementation CheesePizza

- (id)init {
	if (!(self = [super init]))
		return nil;
    
    _name = @"Cheese Pizza";
	_dough = @"Regular Crust";
	_sauce = @"Marinara Pizza Sauce";
	[_toppings addObject: @"Fresh Mozzarella"];
	[_toppings addObject: @"Parmesan"];
	
	return self;
}

@end
