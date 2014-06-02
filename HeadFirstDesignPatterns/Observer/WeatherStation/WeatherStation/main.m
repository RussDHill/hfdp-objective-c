//
//  main.m
//  WeatherStation
//
//  Created by Russell Hill on 11/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeatherData.h"
#import "CurrentConditionsDisplay.h"
#import "StatisticsDisplay.h"
#import "ForecastDisplay.h"
#import "HeatIndexDisplay.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        WeatherData* weatherData = [[WeatherData alloc] init];
        CurrentConditionsDisplay* currentDisplay = [[CurrentConditionsDisplay alloc] initWithSubject: weatherData];
        StatisticsDisplay* statisticsDisplay = [[StatisticsDisplay alloc] initWithSubject: weatherData];
        ForecastDisplay* forecastDisplay = [[ForecastDisplay alloc] initWithSubject: weatherData];
        HeatIndexDisplay* heatIndexDisplay = [[HeatIndexDisplay alloc] initWithSubject: weatherData];
        
        [weatherData setMeasurements: 80 : 65 : 30.4f];
        [weatherData setMeasurements: 82 : 70 : 29.2f];
        [weatherData setMeasurements: 78 : 90 : 29.2f];
        
    }
    return 0;
}

