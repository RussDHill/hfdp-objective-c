//
//  RubberDuck.m
//  Ducks
//
//  Created by Russell Hill on 07/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "RubberDuck.h"
#import "Observable.h"
#import "Observer.h"

@implementation RubberDuck

- (void)quack {
    NSLog(@"Squeak");
}

- (id)init {
	if (!(self = [super init]))
		return nil;
	
    _observable = [[Observable alloc] initWithObservable: self];
	
	return self;
}

- (void)registerObserver: (id<Observer>)observer {
    [_observable registerObserver: observer];
}

- (void)notifyObservers {
    [_observable notifyObservers];
}

- (NSString*) description {
	return @"Decoy Duck";
}

@end
