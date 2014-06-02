//
//  NYPizzaStore.m
//  StandardPizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "NYPizzaStore.h"
#import "NYStyleCheesePizza.h"
#import "NYStyleVeggiePizza.h"
#import "NYStyleClamPizza.h"
#import "NYStylePepperoniPizza.h"

@implementation NYPizzaStore

- (id<Pizza>)createPizza: (NSString*)type
{
    id<Pizza> pizza = NULL;
    
	if ([type isEqualToString: @"cheese"]) {
		pizza = [[NYStyleCheesePizza alloc] init];
	} else if ([type isEqualToString: @"pepperoni"]) {
		pizza = [[NYStylePepperoniPizza alloc] init];
	} else if ([type isEqualToString: @"clam"]) {
		pizza = [[NYStyleClamPizza alloc] init];
	} else if ([type isEqualToString: @"veggie"]) {
		pizza = [[NYStyleVeggiePizza alloc] init];
	}
    
    return pizza;
}

@end
