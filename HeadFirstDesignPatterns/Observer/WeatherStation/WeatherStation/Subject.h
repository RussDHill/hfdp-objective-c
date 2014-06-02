//
//  Subject.h
//  WeatherStation
//
//  Created by Russell Hill on 11/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Observer;

@protocol Subject <NSObject>
- (void)registerObserver: (id<Observer>)o;
- (void)removeObserver: (id<Observer>)o;
- (void)notifyObservers;
@end