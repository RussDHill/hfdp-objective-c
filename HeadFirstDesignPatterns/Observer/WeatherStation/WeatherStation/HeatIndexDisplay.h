//
//  HeatIndexDisplay.h
//  WeatherStation
//
//  Created by Russell Hill on 11/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "Observer.h"
#import "DisplayElement.h"

@protocol Subject;
@interface HeatIndexDisplay : NSObject<Observer, DisplayElement> {
	id<Subject> _weatherData;
	float _heatIndex;
}
- (float)computeHeatIndex: (float)t : (float)rh;
- (void)display;
- (void)update: (float)temperature : (float)humidity : (float)pressure;
- (id)initWithSubject: (id<Subject>)weatherData;
@end
