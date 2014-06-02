//
//  main.m
//  Barista
//
//  Created by Russell Hill on 22/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tea.h"
#import "Coffee.h"
#import "TeaWithHook.h"
#import "CoffeeWithHook.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Tea* tea = [[Tea alloc] init];
        Coffee* coffee = [[Coffee alloc] init];
        
        NSLog(@"Making tea...");
        [tea prepareRecipe];
        
        NSLog(@"Making coffee...");
        [coffee prepareRecipe];
        

        TeaWithHook* teaHook = [[TeaWithHook alloc] init];
        CoffeeWithHook* coffeeHook = [[CoffeeWithHook alloc] init];
        
        NSLog(@"Making tea...");
        [teaHook prepareRecipe];
        
        NSLog(@"Making coffee...");
        [coffeeHook prepareRecipe];
        
    }
    return 0;
}

