//
//  DuckSimulator.m
//  Ducks
//
//  Created by Russell Hill on 07/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "DuckSimulator.h"
#import "DecoyDuck.h"
#import "DuckCall.h"
#import "MallardDuck.h"
#import "RedheadDuck.h"
#import "RubberDuck.h"

@implementation DuckSimulator

- (void)simulate {
    
	id<Quackable> mallardDuck = [MallardDuck new];
    id<Quackable> redheadDuck = [RedheadDuck new];
    id<Quackable> duckCall = [DuckCall new];
    id<Quackable> rubberDuck = [RubberDuck new];
    
	NSLog(@"Duck Simulator");
    
    [self simulateWithDuck: mallardDuck];
	[self simulateWithDuck: redheadDuck];
	[self simulateWithDuck: duckCall];
	[self simulateWithDuck: rubberDuck];
}

- (void)simulateWithDuck: (id<Quackable>)duck {
    [duck quack];
}

@end
