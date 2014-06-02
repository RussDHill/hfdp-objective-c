//
//  StatisticsDisplay.h
//  WeatherStation
//
//  Created by Russell Hill on 11/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"
#import "DisplayElement.h"

@protocol Subject;

@interface StatisticsDisplay: NSObject<Observer, DisplayElement>
{
	id<Subject> _weatherData;
	float _maxTemp;
	float _minTemp;
	float _tempSum;
	int _numReadings;
}
- (void)display;
- (void)update: (float)temperature : (float)humidity : (float)pressure;
- (id)initWithSubject: (id<Subject>)weatherData;
@end
