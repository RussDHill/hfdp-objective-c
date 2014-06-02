//
//  DecoyDuck.h
//  Ducks
//
//  Created by Russell Hill on 07/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Quackable.h"
#import "QuackObservable.h"

@protocol Observer;

@interface DecoyDuck : NSObject<Quackable, QuackObservable>
{
    id<QuackObservable> _observable;
}
- (void)quack;
- (void)registerObserver: (id<Observer>)observer;
- (void)notifyObservers;
- (NSString*) description;
@end
