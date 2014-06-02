//
//  SimplePizzaFactory.m
//  SimplePizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "SimplePizzaFactory.h"
#import "Pizza.h"
#import "CheesePizza.h"
#import "PepperoniPizza.h"
#import "ClamPizza.h"
#import "VeggiePizza.h"


@implementation SimplePizzaFactory

- (id<Pizza>)createPizza: (NSString*)type
{
    id<Pizza> pizza = NULL;
    
	if ([type isEqualToString: @"cheese"]) {
		pizza = [[CheesePizza alloc] init];
	} else if ([type isEqualToString: @"pepperoni"]) {
		pizza = [[PepperoniPizza alloc] init];
	} else if ([type isEqualToString: @"clam"]) {
		pizza = [[ClamPizza alloc] init];
	} else if ([type isEqualToString: @"veggie"]) {
		pizza = [[VeggiePizza alloc] init];
	}
    
	return pizza;
}
@end




