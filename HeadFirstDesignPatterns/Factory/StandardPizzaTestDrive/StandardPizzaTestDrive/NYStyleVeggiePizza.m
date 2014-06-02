//
//  NYStyleVeggiePizza.m
//  StandardPizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "NYStyleVeggiePizza.h"

@implementation NYStyleVeggiePizza

- (id)init {
	if (!(self = [super init]))
		return nil;
    
    _name = @"NY Style Veggie Pizza";
	_dough = @"Thin Crust Dough";
	_sauce = @"Marinara Sauce";
	[_toppings addObject: @"Grated Reggiano Cheese"];
    [_toppings addObject: @"Garlic"];
    [_toppings addObject: @"Onion"];
    [_toppings addObject: @"Mushrooms"];
    [_toppings addObject: @"Red Pepper"];
	
    return self;
}

@end
