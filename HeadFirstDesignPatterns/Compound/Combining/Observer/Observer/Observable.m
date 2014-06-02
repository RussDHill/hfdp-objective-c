//
//  Observable.m
//  Observer
//
//  Created by Russell Hill on 09/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Observable.h"
#import "Observer.h"

@implementation Observable

- (id)initWithObservable: (id<QuackObservable>)duck {
    if (!(self = [super init]))
		return nil;
	
	_duck = duck;
    _observers = [NSMutableArray new];
	
	return self;
}

- (void)registerObserver: (id<Observer>)observer {
    [_observers addObject: observer];
}

- (void)notifyObservers {
    for (id<Observer> observer in _observers) {
        [observer update: _duck];
    }
    
}

@end
