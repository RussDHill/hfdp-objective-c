//
//  main.m
//  SimplePizzaTestDrive
//
//  Created by Russell Hill on 13/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SimplePizzaFactory.h"
#import "PizzaStore.h"
#import "Pizza.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        SimplePizzaFactory* factory = [[SimplePizzaFactory alloc] init];
        PizzaStore* store = [[PizzaStore alloc] initWithFactory: factory];
        
        id<Pizza> pizza = [store orderPizza: @"cheese"];
        NSLog(@"We ordered a %@", [pizza getName]);
        
        pizza = NULL;
        
        pizza = [store orderPizza: @"veggie"];
        NSLog(@"We ordered a %@", [pizza getName]);
        
    }
    return 0;
}

