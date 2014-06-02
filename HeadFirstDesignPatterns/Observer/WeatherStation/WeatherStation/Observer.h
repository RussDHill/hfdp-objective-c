//
//  Observer.h
//  WeatherStation
//
//  Created by Russell Hill on 11/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

@class NSNumber;

@protocol Observer
- (void)update: (float)temperature : (float)humidity : (float)pressure;
@end
