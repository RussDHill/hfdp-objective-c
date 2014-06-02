//
//  HomeTheaterFacade.h
//  HomeTheater
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Amplifier;
@class Tuner;
@class DvdPlayer;
@class CdPlayer;
@class Projector;
@class TheaterLights;
@class Screen;
@class PopcornPopper;

@interface HomeTheaterFacade : NSObject
{
    Amplifier* _amp;
    Tuner* _tuner;
    DvdPlayer* _dvd;
    CdPlayer* _cd;
    Projector* _projector;
    TheaterLights* _lights;
    Screen* _screen;
    PopcornPopper* _popper;
}
- (id) initWithAll : (Amplifier*) amp : (Tuner*) tuner :
                     (DvdPlayer*) dvd : (CdPlayer*) cd :
                     (Projector*) projector : (TheaterLights*) lights :
                     (Screen*) screen : (PopcornPopper*) popper;

- (void) watchMovie : (NSString*) movie;
- (void) endMovie;
- (void) listenToCd : (NSString*) cdTitle;
- (void) endCd;
- (void) listenToRadio : (double) frequency;
- (void) endRadio;

@end
