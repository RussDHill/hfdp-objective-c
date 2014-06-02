//
//  NYStyleClamPizza.m
//  StandardPizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "NYStyleClamPizza.h"

@implementation NYStyleClamPizza

- (id)init {
	if (!(self = [super init]))
		return nil;
    
    _name = @"NY Style Clam Pizza";
	_dough = @"Thin Crust Dough";
	_sauce = @"Marinara Sauce";
	[_toppings addObject: @"Grated Reggiano Cheese"];
    [_toppings addObject: @"Fresh Clams from Long Island Sound"];
	
    return self;
}

@end
