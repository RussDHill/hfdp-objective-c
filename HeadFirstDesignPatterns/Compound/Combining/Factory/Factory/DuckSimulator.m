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
#import "DuckFactory.h"

@implementation DuckSimulator

- (void)simulate: (id<DuckFactory>)duckFactory {
    
	id<Quackable> mallardDuck = [duckFactory createMallardDuck];
    id<Quackable> redheadDuck = [duckFactory createRedheadDuck];
    id<Quackable> duckCall = [duckFactory createDuckCall];
    id<Quackable> rubberDuck = [duckFactory createRubberDuck];
    id<Quackable> gooseDuck = [[GooseAdapter alloc] initWithGoose: [Goose new]];

    
	NSLog(@"Duck Simulator: With Abstract Factory");
    
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
