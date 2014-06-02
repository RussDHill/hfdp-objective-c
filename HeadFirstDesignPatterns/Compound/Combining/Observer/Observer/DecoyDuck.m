//
//  DecoyDuck.m
//  Ducks
//
//  Created by Russell Hill on 07/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "DecoyDuck.h"
#import "Observable.h"
#import "Observer.h"

@implementation DecoyDuck

- (void)quack {
    NSLog(@"<< Silence >>");
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
