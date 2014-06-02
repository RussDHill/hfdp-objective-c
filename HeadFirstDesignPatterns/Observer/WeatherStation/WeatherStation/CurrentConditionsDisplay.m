//
//  CurrentConditionsDisplay.m
//  WeatherStation
//
//  Created by Russell Hill on 11/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "CurrentConditionsDisplay.h"
#import "Subject.h"

@implementation CurrentConditionsDisplay

- (id)initWithSubject: (id<Subject>)weatherData {
	if (!(self = [super init]))
		return nil;
	
	_weatherData = weatherData;
	[_weatherData registerObserver: self];
	
	return self;
}

- (void)update: (float)temperature : (float)humidity : (float)pressure {
    _temperature = temperature;
    _humidity = humidity;
    [self display];
}
	
- (void)display {
    NSLog(@"Current conditions: %.1fF degrees and %.1f%% humidity", _temperature, _humidity);
}
@end
