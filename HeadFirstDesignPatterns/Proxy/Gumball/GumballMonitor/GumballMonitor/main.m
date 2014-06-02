//
//  main.m
//  GumballMonitor
//
//  Created by Russell Hill on 29/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GumballMonitor.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray* gumballMonitors = @[ [[GumballMonitor alloc] initWithName: @"London"], [[GumballMonitor alloc] initWithName: @"Dublin"] ];
        
        GumballMonitor* gumballMonitor;
        for (gumballMonitor in gumballMonitors) {
            [gumballMonitor report];
        }
  
    }
    return 0;
}

