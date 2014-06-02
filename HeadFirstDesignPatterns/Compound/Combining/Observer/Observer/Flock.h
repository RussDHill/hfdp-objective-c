//
//  Flock.h
//  Composite
//
//  Created by Russell Hill on 09/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Quackable.h"
#import "QuackObservable.h"

@protocol Quackable;
@protocol Observer;

@interface Flock : NSObject<Quackable, QuackObservable>
{
    NSMutableArray* _ducks;
}
- (void)add: (id<Quackable>)duck;
- (void)quack;
- (void)registerObserver: (id<Observer>)observer;
- (void)notifyObservers;
@end
