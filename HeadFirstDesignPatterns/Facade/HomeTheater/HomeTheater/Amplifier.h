//
//  Amplifier.h
//  HomeTheater
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Tuner;
@class DvdPlayer;
@class CdPlayer;

@interface Amplifier : NSObject
{
    NSString* _description;
    Tuner* _tuner;
    DvdPlayer* _dvd;
    CdPlayer* _cd;
}
- (id) initWithDescription : (NSString*) description;
- (void) on;
- (void) off;
- (void) setStereoSound;
- (void) setSurroundSound;
- (void) setVolume : (int) level;
- (void) setTuner : (Tuner*) tuner;
- (void) setDvd : (DvdPlayer*) dvd;
- (void) setCd : (CdPlayer*) cd;
- (NSString*) description;
@end
