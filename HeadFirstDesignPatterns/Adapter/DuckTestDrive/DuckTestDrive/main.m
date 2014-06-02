//
//  main.m
//  DuckTestDrive
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MallardDuck.h"
#import "WildTurkey.h"
#import "TurkeyAdapter.h"

void testDuck(id<Duck> duck) {
	[duck quack];
	[duck fly];
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        MallardDuck* duck = [[MallardDuck alloc] init];
        
        WildTurkey* turkey = [[WildTurkey alloc] init];
        id<Duck> turkeyAdapter = [[TurkeyAdapter alloc] initWithTurkey : turkey];
        
        NSLog(@"The turkey says...");
        [turkey gobble];
        [turkey fly];
        
        NSLog(@"The Duck says...");
        testDuck(duck);
        
        NSLog(@"The TurkeyAdapter says...");
        testDuck(turkeyAdapter);
        
    }
    return 0;
}

