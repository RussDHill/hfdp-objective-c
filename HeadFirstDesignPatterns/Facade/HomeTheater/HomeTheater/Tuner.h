//
//  Tuner.h
//  HomeTheater
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Amplifier;

@interface Tuner : NSObject
{
    NSString* _description;
    Amplifier* _amplifier;
    double _frequency;
}
- (id) initWithDescAndAmp : (NSString*) description : (Amplifier*) amplifier;
- (void) on;
- (void) off;
- (void) setFrequency : (double) frequency;
- (void) setAm;
- (void) setFm;
- (NSString*) description;
@end
