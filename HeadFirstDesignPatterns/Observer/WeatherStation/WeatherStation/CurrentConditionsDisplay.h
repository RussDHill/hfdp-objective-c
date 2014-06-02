//
//  CurrentConditionsDisplay.h
//  WeatherStation
//
//  Created by Russell Hill on 11/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"
#import "DisplayElement.h"

@protocol Subject;

@interface CurrentConditionsDisplay : NSObject<Observer, DisplayElement>
{
	id<Subject> _weatherData;
	float _humidity;
	float _temperature;
}
- (void)display;
- (void)update: (float)temperature : (float)humidity : (float)pressure;
- (id)initWithSubject: (id<Subject>)weatherData;
@end
