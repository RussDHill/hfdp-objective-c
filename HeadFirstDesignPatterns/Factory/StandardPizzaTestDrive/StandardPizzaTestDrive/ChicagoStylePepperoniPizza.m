//
//  ChicagoStylePepperoniPizza.m
//  StandardPizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "ChicagoStylePepperoniPizza.h"

@implementation ChicagoStylePepperoniPizza

- (id)init {
	if (!(self = [super init]))
		return nil;
    
    _name = @"Chicago Style Pepperoni Pizza";
	_dough = @"Extra Thick Crust Dough";
	_sauce = @"Plum Tomato Sauce";
	[_toppings addObject: @"Shredded Mozzarella Cheese"];
    [_toppings addObject: @"Black Olives"];
    [_toppings addObject: @"Spinach"];
    [_toppings addObject: @"Eggplant"];
    [_toppings addObject: @"Sliced Pepperoni"];
	
	return self;
}

- (void)cut
{
    NSLog(@"Cutting the pizza into square slices");
}

@end
