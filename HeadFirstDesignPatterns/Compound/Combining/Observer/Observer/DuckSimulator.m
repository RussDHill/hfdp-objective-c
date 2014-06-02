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
#import "Flock.h"
#import "Quackologist.h"

@implementation DuckSimulator

- (void)simulate: (id<DuckFactory>)duckFactory {
    
    id<Quackable> redheadDuck = [duckFactory createRedheadDuck];
    id<Quackable> duckCall = [duckFactory createDuckCall];
    id<Quackable> rubberDuck = [duckFactory createRubberDuck];
    id<Quackable> gooseDuck = [[GooseAdapter alloc] initWithGoose: [Goose new]];
    
	NSLog(@"Duck Simulator: With Observer");
    
    Flock* flockOfDucks = [Flock new];
    [flockOfDucks add: redheadDuck];
    [flockOfDucks add: duckCall];
    [flockOfDucks add: rubberDuck];
    [flockOfDucks add: gooseDuck];
    
    Flock* flockOfMallards = [Flock new];
    
	id<Quackable> mallardOne = [duckFactory createMallardDuck];
    id<Quackable> mallardTwo = [duckFactory createMallardDuck];
    id<Quackable> mallardThree = [duckFactory createMallardDuck];
    id<Quackable> mallardFour = [duckFactory createMallardDuck];
    
    [flockOfMallards add: mallardOne];
    [flockOfMallards add: mallardTwo];
    [flockOfMallards add: mallardThree];
    [flockOfMallards add: mallardFour];
    
    [flockOfDucks add: flockOfMallards];
    
    Quackologist* quackologist = [Quackologist new];
    [flockOfDucks registerObserver: quackologist];
    
	[self simulateWithDuck: flockOfDucks];
    
    NSLog(@"The ducks quacked %i times", [QuackCounter getQuacks]);
}

- (void)simulateWithDuck: (id<Quackable>)duck {
    [duck quack];
}

@end
