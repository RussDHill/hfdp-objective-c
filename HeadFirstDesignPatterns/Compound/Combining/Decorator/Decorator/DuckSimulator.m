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
#import "GooseAdapter.h"
#import "Goose.h"
#import "QuackCounter.h"

@implementation DuckSimulator

- (void)simulate {
    
	id<Quackable> mallardDuck = [[QuackCounter alloc] initWithDuck: [MallardDuck new]];
    id<Quackable> redheadDuck = [[QuackCounter alloc] initWithDuck: [RedheadDuck new]];
    id<Quackable> duckCall = [[QuackCounter alloc] initWithDuck: [DuckCall new]];
    id<Quackable> rubberDuck = [[QuackCounter alloc] initWithDuck: [RubberDuck new]];
    id<Quackable> gooseDuck = [[GooseAdapter alloc] initWithGoose: [Goose new]];

    
	NSLog(@"Duck Simulator: With Decorator");
    
    [self simulateWithDuck: mallardDuck];
	[self simulateWithDuck: redheadDuck];
	[self simulateWithDuck: duckCall];
	[self simulateWithDuck: rubberDuck];
	[self simulateWithDuck: gooseDuck];
    
    NSLog(@"The ducks quacked %i times", [QuackCounter getQuacks]);
}

- (void)simulateWithDuck: (id<Quackable>)duck {
    [duck quack];
}

@end
