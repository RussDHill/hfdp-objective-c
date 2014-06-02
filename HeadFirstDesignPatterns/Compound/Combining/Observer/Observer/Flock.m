//
//  Flock.m
//  Composite
//
//  Created by Russell Hill on 09/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Flock.h"
#import "Quackable.h"
#import "Observer.h"

@implementation Flock

- (id)init {
	if (!(self = [super init]))
		return nil;
	
	_ducks = [NSMutableArray new];
	
	return self;
}

- (void)add: (id<Quackable>)duck {
    [_ducks addObject: duck];
}

- (void)quack {
    for (id<Quackable> duck in _ducks) {
        [duck quack];
    }
}

- (void)registerObserver: (id<Observer>)observer {
    for (id<QuackObservable> duck in _ducks) {
        [duck registerObserver: observer];
    }
}

- (void)notifyObservers {
    
}

@end
