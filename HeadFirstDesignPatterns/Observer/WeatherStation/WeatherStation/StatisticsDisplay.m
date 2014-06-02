//
//  StatisticsDisplay.m
//  WeatherStation
//
//  Created by Russell Hill on 11/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "StatisticsDisplay.h"
#import "Subject.h"

@implementation StatisticsDisplay

- (id)initWithSubject : (id<Subject>) weatherData {
	if (!(self = [super init]))
		return nil;
	
	_weatherData = weatherData;
	[_weatherData registerObserver: self];
    
	_maxTemp = 0;
	_minTemp = 200;
	_tempSum = 0;
	_numReadings = 0;
    
	return self;
}

- (void)update: (float)temperature : (float)humidity : (float)pressure {
    
    _tempSum += temperature;
    _numReadings++;
    
    if (temperature > _maxTemp) {
        _maxTemp = temperature;
    }
    
    if (temperature < _minTemp) {
        _minTemp = temperature;
    }
    
    [self display];
}

- (void)display {
    float avTemp = _tempSum/_numReadings;
    NSLog(@"Avg/Max/Min temperature = %.1f/%.1f/%.1f\n", avTemp, _maxTemp, _minTemp);
}
@end
