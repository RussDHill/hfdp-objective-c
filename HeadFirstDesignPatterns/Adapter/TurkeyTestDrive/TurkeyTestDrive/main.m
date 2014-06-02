//
//  main.m
//  TurkeyTestDrive
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MallardDuck.h"
#import "DuckAdapter.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        MallardDuck* duck = [[MallardDuck alloc] init];
        id<Turkey> duckAdapter = [[DuckAdapter alloc] initWithDuck : duck];
        
        for (int i=0;i <10;i++) {
            NSLog(@"The DuckAdapter says...");
            [duckAdapter gobble];
            [duckAdapter fly];
        }
        
        
    }
    return 0;
}

