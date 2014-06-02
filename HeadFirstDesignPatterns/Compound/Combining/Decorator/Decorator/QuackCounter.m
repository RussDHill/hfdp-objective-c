//
//  QuackCounter.m
//  Decorator
//
//  Created by Russell Hill on 07/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "QuackCounter.h"

@implementation QuackCounter

static int numberOfQuacks;

- (id)initWithDuck: (id<Quackable>)duck {
	if (!(self = [super init]))
		return nil;
	
	_duck = duck;
	
	return self;
}

- (void)quack {
    [_duck quack];
    numberOfQuacks++;
}

+ (int)getQuacks {
    return numberOfQuacks;
}

@end
