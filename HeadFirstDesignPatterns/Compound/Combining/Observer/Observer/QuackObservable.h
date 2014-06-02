//
//  QuackObservable.h
//  Observer
//
//  Created by Russell Hill on 09/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Observer;

@protocol QuackObservable <NSObject>
- (void)registerObserver: (id<Observer>)observer;
- (void)notifyObservers;
@end
