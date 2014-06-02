//
//  ChicagoPizzaStore.m
//  StandardPizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "ChicagoPizzaStore.h"
#import "ChicagoStyleCheesePizza.h"
#import "ChicagoStyleVeggiePizza.h"
#import "ChicagoStyleClamPizza.h"
#import "ChicagoStylePepperoniPizza.h"


@implementation ChicagoPizzaStore

- (id<Pizza>)createPizza: (NSString*)type
{
    id<Pizza> pizza = NULL;
    
	if ([type isEqualToString: @"cheese"]) {
		pizza = [[ChicagoStyleCheesePizza alloc] init];
	} else if ([type isEqualToString: @"pepperoni"]) {
		pizza = [[ChicagoStylePepperoniPizza alloc] init];
	} else if ([type isEqualToString: @"clam"]) {
		pizza = [[ChicagoStyleClamPizza alloc] init];
	} else if ([type isEqualToString: @"veggie"]) {
		pizza = [[ChicagoStyleVeggiePizza alloc] init];
	}
    
    return pizza;
}

@end
