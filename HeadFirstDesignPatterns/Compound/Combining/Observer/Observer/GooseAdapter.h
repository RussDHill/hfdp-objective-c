//
//  GooseAdapter.h
//  Adapter
//
//  Created by Russell Hill on 07/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Quackable.h"
#import "QuackObservable.h"
#import "Observable.h"

@class Goose;

@interface GooseAdapter : NSObject<Quackable, QuackObservable>
{
    Goose* _goose;
    id<QuackObservable> _observable;
}
- (id)initWithGoose: (Goose*)goose;
- (void)quack;
- (void)registerObserver: (id<Observer>)observer;
- (void)notifyObservers;
- (NSString*) description;
@end
