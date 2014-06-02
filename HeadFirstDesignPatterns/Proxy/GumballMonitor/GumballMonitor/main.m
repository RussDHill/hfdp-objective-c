//
//  main.m
//  GumballMonitor
//
//  Created by Russell Hill on 28/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GumballMachine.h"
#import "GumballMonitor.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int count = 0;
        
        if (argc < 3) {
            NSLog(@"GumballMachine <name> <inventory>");
            return 1;
        }
        
        NSString* location = [NSString stringWithUTF8String: argv[1]];
        NSString* countAsString = [NSString stringWithUTF8String: argv[2]];
        count = (int)[countAsString integerValue];
        
        GumballMachine* gumballMachine = [[GumballMachine alloc] initWithLocationAndCount: location : count];
        GumballMonitor* gumballMonitor = [[GumballMonitor alloc] initWithGumballMachine: gumballMachine];
        
        NSLog(@"%@", gumballMachine);
        
        [gumballMachine insertQuarter];
        [gumballMachine turnCrank];
        [gumballMachine insertQuarter];
        [gumballMachine turnCrank];
        
        NSLog(@"%@", gumballMachine);
        
        [gumballMachine insertQuarter];
        [gumballMachine turnCrank];
        [gumballMachine insertQuarter];
        [gumballMachine turnCrank];
        
        NSLog(@"%@", gumballMachine);
        
        [gumballMachine insertQuarter];
        [gumballMachine turnCrank];
        [gumballMachine insertQuarter];
        [gumballMachine turnCrank];
        
        NSLog(@"%@", gumballMachine);
        
        [gumballMachine insertQuarter];
        [gumballMachine turnCrank];
        [gumballMachine insertQuarter];
        [gumballMachine turnCrank];
        
        NSLog(@"%@", gumballMachine);
        
        [gumballMachine insertQuarter];
        [gumballMachine turnCrank];
        [gumballMachine insertQuarter];
        [gumballMachine turnCrank];
       
        NSLog(@"%@", gumballMachine);
        
        [gumballMonitor report];
        
    }
    return 0;
}

