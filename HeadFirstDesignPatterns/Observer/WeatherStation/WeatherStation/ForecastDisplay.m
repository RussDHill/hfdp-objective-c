//
//  ForecastDisplay.m
//  WeatherStation
//
//  Created by Russell Hill on 11/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "ForecastDisplay.h"
#import "Subject.h"

@implementation ForecastDisplay

- (id)initWithSubject: (id <Subject>)weatherData {
	if (!(self = [super init]))
		return nil;
	
	_weatherData = weatherData;
	[_weatherData registerObserver : self];
    
    _currentPressure = 29.92f;
    
	return self;
}

- (void)update: (float)temperature : (float)humidity : (float)pressure {
    _lastPressure = _currentPressure;
    _currentPressure = pressure;
    [self display];
}

- (void)display {
    NSLog(@"Forecast:");
    if (_currentPressure > _lastPressure) {
		NSLog(@"    Improving weather on the way!");
	} else if (_currentPressure == _lastPressure) {
		NSLog(@"    More of the same");
	} else if (_currentPressure < _lastPressure) {
		NSLog(@"    Watch out for cooler, rainy weather");
	}
}
@end
