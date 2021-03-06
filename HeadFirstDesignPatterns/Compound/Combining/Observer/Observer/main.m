//
//  main.m
//  Observer
//
//  Created by Russell Hill on 07/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DuckSimulator.h"
#import "CountingDuckFactory.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        DuckSimulator* simulator = [DuckSimulator new];
        id<DuckFactory> duckFactory = [CountingDuckFactory new];
        
        [simulator simulate: duckFactory];

    }
    return 0;
}

