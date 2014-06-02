//
//  main.m
//  GCD
//
//  Created by Russell Hill on 19/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //now using @property feature
        
        Singleton* singleton = [Singleton getInstance];
        singleton.value = 10;
        
        Singleton* singleton2 = [Singleton getInstance];
        NSLog(@"%i", singleton2.value);
        
        singleton2.value = 5;
        NSLog(@"%i", singleton.value);
        
    }
    return 0;
}

