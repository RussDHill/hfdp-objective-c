//
//  CountingDuckFactory.m
//  Factory
//
//  Created by Russell Hill on 07/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "CountingDuckFactory.h"
#import "DecoyDuck.h"
#import "DuckCall.h"
#import "MallardDuck.h"
#import "RedheadDuck.h"
#import "RubberDuck.h"
#import "QuackCounter.h"

@implementation CountingDuckFactory

- (id<Quackable>)createMallardDuck {
    return [[QuackCounter alloc] initWithDuck: [MallardDuck new]];
}

- (id<Quackable>)createRedheadDuck {
    return [[QuackCounter alloc] initWithDuck: [RedheadDuck new]];
}

- (id<Quackable>)createDuckCall {
    return [[QuackCounter alloc] initWithDuck: [DuckCall new]];
}

- (id<Quackable>)createRubberDuck {
    return [[QuackCounter alloc] initWithDuck: [RubberDuck new]];
}

@end
