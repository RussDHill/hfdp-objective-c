//
//  ChicagoStyleCheesePizza.m
//  StandardPizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "ChicagoStyleCheesePizza.h"

@implementation ChicagoStyleCheesePizza

- (id)init {
	if (!(self = [super init]))
		return nil;
    
    _name = @"Chicago Style Deep Dish Cheese Pizza";
	_dough = @"Extra Thick Crust Dough";
	_sauce = @"Plum Tomato Sauce";
	[_toppings addObject: @"Shredded Mozzarella Cheese"];
	
	return self;
}

- (void)cut
{
    NSLog(@"Cutting the pizza into square slices");
}

@end
