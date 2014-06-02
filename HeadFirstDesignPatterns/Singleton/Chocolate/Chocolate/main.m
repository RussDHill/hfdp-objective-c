//
//  main.m
//  Chocolate
//
//  Created by Russell Hill on 19/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChocolateBoiler.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
       	ChocolateBoiler* boiler = [ChocolateBoiler getInstance];
        [boiler fill];
        [boiler boil];
        [boiler drain];
        
        // will return the existing instance
        ChocolateBoiler* boiler2 = [ChocolateBoiler getInstance];
        NSLog(@"Is boiled:%@", ([boiler2 isBoiled] ? @"true" : @"false"));
    }
    return 0;
}

