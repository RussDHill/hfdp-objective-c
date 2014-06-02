//
//  AbstractPizzaStore.m
//  StandardPizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "AbstractPizzaStore.h"
#import "Pizza.h"

@implementation AbstractPizzaStore

- (id<Pizza>)orderPizza : (NSString*)type
{
    id<Pizza> pizza = NULL;
    
    pizza = [self createPizza: type];
	NSLog(@"--- Making a %@ ---", [pizza getName]);
    
    [pizza prepare];
    [pizza bake];
    [pizza cut];
    [pizza box];
    
    return pizza;
}

- (id<Pizza>)createPizza: (NSString*)item
{
    NSLog(@"This abstract method should not be called");
    return NULL;
}

@end
