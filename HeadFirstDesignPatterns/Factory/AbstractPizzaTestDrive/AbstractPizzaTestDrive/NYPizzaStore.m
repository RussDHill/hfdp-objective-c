//
//  NYPizzaStore.m
//  AbstractPizzaTestDrive
//
//  Created by Russell Hill on 14/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "NYPizzaStore.h"
#import "NYPizzaIngredientFactory.h"
#import "CheesePizza.h"
#import "VeggiePizza.h"
#import "ClamPizza.h"
#import "PepperoniPizza.h"

@implementation NYPizzaStore

- (id)init {
	if (!(self = [super init]))
		return nil;
	
	_ingredientFactory = [[NYPizzaIngredientFactory alloc] init];
	
	return self;
}

- (id<Pizza>)createPizza: (NSString*)type {
    id<Pizza> pizza = NULL;
    
	if ([type isEqualToString: @"cheese"]) {
		pizza = [[CheesePizza alloc] initWithFactory: _ingredientFactory];
        [pizza setName: @"New York Style Cheese Pizza"];
	} else if ([type isEqualToString: @"pepperoni"]) {
		pizza = [[PepperoniPizza alloc] initWithFactory: _ingredientFactory];
        [pizza setName: @"New York Style Pepperoni Pizza"];
	} else if ([type isEqualToString: @"clam"]) {
		pizza = [[ClamPizza alloc] initWithFactory: _ingredientFactory];
        [pizza setName: @"New York Style Clam Pizza"];
	} else if ([type isEqualToString: @"veggie"]) {
		pizza = [[VeggiePizza alloc] initWithFactory: _ingredientFactory];
        [pizza setName: @"New York Style Veggie Pizza"];
	}
    
    return pizza;
}

@end
