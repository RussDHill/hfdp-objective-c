//
//  ChicagoPizzaStore.m
//  AbstractPizzaTestDrive
//
//  Created by Russell Hill on 14/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "ChicagoPizzaStore.h"
#import "ChicagoPizzaIngredientFactory.h"
#import "CheesePizza.h"
#import "VeggiePizza.h"
#import "ClamPizza.h"
#import "PepperoniPizza.h"

@implementation ChicagoPizzaStore

- (id)init {
	if (!(self = [super init]))
		return nil;
	
	_ingredientFactory = [[ChicagoPizzaIngredientFactory alloc] init];
	
	return self;
}

- (id<Pizza>)createPizza: (NSString*)type {
    id<Pizza> pizza = nil;
    
	if ([type isEqualToString: @"cheese"]) {
		pizza = [[CheesePizza alloc] initWithFactory: _ingredientFactory];
        [pizza setName: @"Chicago Style Cheese Pizza"];
	} else if ([type isEqualToString: @"pepperoni"]) {
		pizza = [[PepperoniPizza alloc] initWithFactory: _ingredientFactory];
        [pizza setName: @"Chicago Style Pepperoni Pizza"];
	} else if ([type isEqualToString: @"clam"]) {
		pizza = [[ClamPizza alloc] initWithFactory: _ingredientFactory];
        [pizza setName: @"Chicago Style Clam Pizza"];
	} else if ([type isEqualToString: @"veggie"]) {
		pizza = [[VeggiePizza alloc] initWithFactory: _ingredientFactory];
        [pizza setName: @"Chicago Style Veggie Pizza"];
	}
    
    return pizza;
}

@end
