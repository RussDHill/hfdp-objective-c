//
//  main.m
//  Gumball
//
//  Created by Russell Hill on 27/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GumballMachine.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        GumballMachine* gumballMachine = [[GumballMachine alloc] initWithCount : 5];
        
        NSLog(@"%@", gumballMachine);
        
        [gumballMachine insertQuarter];
        [gumballMachine turnCrank];
        
        NSLog(@"%@", gumballMachine);
        
        [gumballMachine insertQuarter];
        [gumballMachine ejectQuarter];
        [gumballMachine turnCrank];
        
        NSLog(@"%@", gumballMachine);
        
        [gumballMachine insertQuarter];
        [gumballMachine turnCrank];
        [gumballMachine insertQuarter];
        [gumballMachine turnCrank];
        [gumballMachine ejectQuarter];
        
        NSLog(@"%@", gumballMachine);
        
        [gumballMachine insertQuarter];
        [gumballMachine insertQuarter];
        [gumballMachine turnCrank];
        [gumballMachine insertQuarter];
        [gumballMachine turnCrank];
        [gumballMachine insertQuarter];
        [gumballMachine turnCrank];
        
        NSLog(@"%@", gumballMachine);
        
    }
    return 0;
}

