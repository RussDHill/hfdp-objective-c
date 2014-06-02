//
//  Observable.h
//  Observer
//
//  Created by Russell Hill on 09/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "QuackObservable.h"

@interface Observable : NSObject<QuackObservable>
{
    id<QuackObservable> _duck;
    NSMutableArray* _observers;
}
- (id)initWithObservable: (id<QuackObservable>)duck;
- (void)registerObserver: (id<Observer>)observer;
- (void)notifyObservers;
@end
