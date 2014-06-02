//
//  WeatherData.m
//  WeatherStation
//
//  Created by Russell Hill on 11/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "WeatherData.h"
#import "Observer.h"
#import "CurrentConditionsDisplay.h"

@implementation WeatherData

- (id)init {
	if (!(self = [super init]))
		return nil;
	
	_observers = [[NSMutableArray alloc] init];
	
	return self;
}

- (void)registerObserver: (id<Observer>)o {
	[_observers addObject: o];
}

- (void)removeObserver:(id<Observer>)o {
	[_observers removeObject: o];
}

- (void)notifyObservers {
    
    for (id observer in _observers) {
        [observer update: _temperature : _humidity : _pressure];
    }
}

- (void)measurementsChanged {
	[self notifyObservers];
}

- (void)setMeasurements: (float)temperature : (float)humidity : (float)pressure {
	_temperature = temperature;
	_humidity = humidity;
	_pressure = pressure;
	[self measurementsChanged];
}
@end