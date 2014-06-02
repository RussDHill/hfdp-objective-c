//
//  GooseAdapter.m
//  Adapter
//
//  Created by Russell Hill on 07/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "GooseAdapter.h"
#import "Goose.h"
#import "QuackObservable.h"

@protocol Observer;

@implementation GooseAdapter

- (id)initWithGoose: (Goose*)goose {
	if (!(self = [super init]))
		return nil;
	
	_goose = goose;
    _observable = [[Observable alloc] initWithObservable: self];
	
	return self;
}

- (void)quack {
    [_goose honk];
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
