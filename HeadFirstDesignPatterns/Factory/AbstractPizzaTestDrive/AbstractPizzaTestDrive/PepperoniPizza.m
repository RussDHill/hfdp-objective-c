//
//  PepperoniPizza.m
//  AbstractPizzaTestDrive
//
//  Created by Russell Hill on 14/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "PepperoniPizza.h"

@implementation PepperoniPizza

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
    [_ingredientFactory createVeggies:_veggies];
	_pepperoni = [_ingredientFactory createPepperoni];
	_clam = NULL;
}

@end
