//
//  PizzaStore.m
//  SimplePizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "PizzaStore.h"
#import "SimplePizzaFactory.h"
#import "Pizza.h"

@implementation PizzaStore

- (id)initWithFactory: (SimplePizzaFactory*)factory {
	if (!(self = [super init]))
		return nil;
	
	_factory = factory;
	
	return self;
}

- (id<Pizza>)orderPizza: (NSString*)type
{
    id<Pizza> pizza = NULL;
    
    pizza = [_factory createPizza: type];
    
    [pizza prepare];
    [pizza bake];
    [pizza cut];
    [pizza box];
    
    return pizza;
}

@end
