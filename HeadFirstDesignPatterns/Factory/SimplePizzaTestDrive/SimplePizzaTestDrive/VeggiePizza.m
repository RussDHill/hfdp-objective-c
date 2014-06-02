//
//  VeggiePizza.m
//  SimplePizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "VeggiePizza.h"

@implementation VeggiePizza

- (id)init {
	if (!(self = [super init]))
		return nil;
    
    _name = @"Veggie Pizza";
	_dough = @"Regular Crust";
	_sauce = @"Marinara Sauce";
	[_toppings addObject: @"Shredded Mozzarella"];
    [_toppings addObject: @"Grated Parmesan Cheese"];
    [_toppings addObject: @"Diced Onion"];
    [_toppings addObject: @"Sliced Mushrooms"];
    [_toppings addObject: @"Sliced Red Pepper"];
    [_toppings addObject: @"Sliced Black Olives"];
	
	return self;
}

@end
