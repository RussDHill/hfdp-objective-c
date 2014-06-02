//
//  main.m
//  AbstractPizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChicagoPizzaStore.h"
#import "NYPizzaStore.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        id<PizzaStore> nyStore = [[NYPizzaStore alloc] init];
        id<PizzaStore> chicagoStore = [[ChicagoPizzaStore alloc] init];
        
        id<Pizza> pizza = [nyStore orderPizza: @"cheese"];
        NSLog(@"Ethan ordered a %@", [pizza toString]);
        
        pizza = nil;
        
        pizza = [chicagoStore orderPizza: @"cheese"];
        NSLog(@"Joel ordered a %@", [pizza toString]);
        
        pizza = nil;
        
        pizza = [nyStore orderPizza: @"clam"];
        NSLog(@"Ethan ordered a %@", [pizza toString]);
        
        pizza = nil;
        
        pizza = [chicagoStore orderPizza: @"clam"];
        NSLog(@"Joel ordered a %@", [pizza toString]);
        
        pizza = nil;
        
        pizza = [nyStore orderPizza: @"pepperoni"];
        NSLog(@"We ordered a %@", [pizza toString]);
        
        pizza = nil;
        
        pizza = [chicagoStore orderPizza: @"pepperoni"];
        NSLog(@"Joel ordered a %@", [pizza toString]);
        
        pizza = nil;
        
        pizza = [nyStore orderPizza: @"veggie"];
        NSLog(@"Ethan ordered a %@", [pizza toString]);
        
        pizza = nil;
        
        pizza = [chicagoStore orderPizza: @"veggie"];
        NSLog(@"Joel ordered a %@", [pizza toString]);
        
    }
    return 0;
}

