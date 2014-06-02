//
//  ClamPizza.m
//  SimplePizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "ClamPizza.h"

@implementation ClamPizza

- (id)init {
	if (!(self = [super init]))
		return nil;
    
    _name = @"Clam Pizza";
	_dough = @"Thin Crust";
	_sauce = @"White Garlic Sauce";
	[_toppings addObject: @"Clams"];
	
	return self;
}

@end
