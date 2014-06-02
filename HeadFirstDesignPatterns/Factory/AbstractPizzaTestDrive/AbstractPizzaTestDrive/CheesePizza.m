//
//  CheesePizza.m
//  AbstractPizzaTestDrive
//
//  Created by Russell Hill on 14/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "CheesePizza.h"

@implementation CheesePizza

- (id)initWithFactory: (id<PizzaIngredientFactory>)factory {
	if (!(self = [super init]))
		return nil;
	
	_ingredientFactory = factory;
	
	return self;
}

- (void) prepare {
    NSLog(@"Preparing %@", _name);
	_dough = [_ingredientFactory createDough];
	_sauce = [_ingredientFactory createSauce];
	_cheese = [_ingredientFactory createCheese];
	_clam = NULL;
	_pepperoni = NULL;
}

@end
