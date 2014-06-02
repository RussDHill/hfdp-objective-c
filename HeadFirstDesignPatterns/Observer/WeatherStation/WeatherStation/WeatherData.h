//
//  WeatherData.h
//  WeatherStation
//
//  Created by Russell Hill on 11/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"

@protocol Observer;

@interface WeatherData : NSObject<Subject>
{
	float _pressure;
	float _humidity;
	float _temperature;
	NSMutableArray* _observers;
}
- (void)setMeasurements: (float)temperature : (float)humidity : (float)pressure;
- (void)measurementsChanged;
- (void)notifyObservers;
- (void)removeObserver: (id<Observer>)o;
- (void)registerObserver: (id<Observer>)o;
@end
