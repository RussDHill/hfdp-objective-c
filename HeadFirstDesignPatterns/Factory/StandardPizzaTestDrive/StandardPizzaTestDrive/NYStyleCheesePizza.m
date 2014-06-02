//
//  NYStyleCheesePizza.m
//  StandardPizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "NYStyleCheesePizza.h"

@implementation NYStyleCheesePizza

- (id)init {
	if (!(self = [super init]))
		return nil;
    
    _name = @"NY Style Sauce and Cheese Pizza";
	_dough = @"Thin Crust Dough";
	_sauce = @"Marinara Sauce";
	[_toppings addObject: @"Grated Reggiano Cheese"];
	
	return self;
}

@end
