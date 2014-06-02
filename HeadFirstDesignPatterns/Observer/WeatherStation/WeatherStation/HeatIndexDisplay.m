//
//  HeatIndexDisplay.m
//  WeatherStation
//
//  Created by Russell Hill on 11/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "HeatIndexDisplay.h"
#import "Subject.h"

@implementation HeatIndexDisplay
- (id)initWithSubject: (id<Subject>) weatherData {
	if (!(self = [super init]))
		return nil;
	
	_weatherData = weatherData;
	[_weatherData registerObserver: self];
    
	return self;
}

- (void)update: (float)temperature : (float)humidity : (float)pressure {
    _heatIndex = [self computeHeatIndex: temperature:humidity];
    [self display];
}

- (void)display {
    NSLog(@"Heat index is %.5f", _heatIndex);
}

- (float)computeHeatIndex: (float)t : (float)rh {
    
    float index = (float)
        (
        (16.923 + (0.185212 * t)) +
        (5.37941 * rh) -
        (0.100254 * t * rh) +
        (0.00941695 * (t * t)) + (0.00728898 * (rh * rh)) +
        (0.000345372 * (t * t * rh)) -
        (0.000814971 * (t * rh * rh)) +
        (0.0000102102 * (t * t * rh * rh)) -
        (0.000038646 * (t * t * t)) +
        (0.0000291583 * (rh * rh * rh)) +
        (0.00000142721 * (t * t * t * rh)) +
        (0.000000197483 * (t * rh * rh * rh)) -
        (0.0000000218429 * (t * t * t * rh * rh)) +
        (0.000000000843296 * (t * t * rh * rh * rh)) -
        (0.0000000000481975 * (t * t * t * rh * rh * rh)));
    
	return index;
}
@end
