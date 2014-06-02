//
//  HomeTheaterFacade.m
//  HomeTheater
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "HomeTheaterFacade.h"
#import "Amplifier.h"
#import "Tuner.h"
#import "DvdPlayer.h"
#import "CdPlayer.h"
#import "Projector.h"
#import "TheaterLights.h"
#import "Screen.h"
#import "PopcornPopper.h"

@implementation HomeTheaterFacade
- (id) initWithAll : (Amplifier*) amp : (Tuner*) tuner :
                     (DvdPlayer*) dvd : (CdPlayer*) cd :
                     (Projector*) projector : (TheaterLights*) lights :
                     (Screen*) screen : (PopcornPopper*) popper

{
    if (!(self = [super init]))
		return nil;
	
    _amp = amp;
    _tuner = tuner;
    _dvd = dvd;
    _cd = cd;
    _projector = projector;
    _lights = lights;
    _screen = screen;
    _popper = popper;
	
	return self;
}

- (void) watchMovie : (NSString*) movie; {
	NSLog(@"Get ready to watch a movie...");
    [_popper on];
    [_popper pop];
    [_lights dim : 10];
    [_screen down];
    [_projector on];
    [_projector wideScreenMode];
    [_amp on];
    [_amp setDvd : _dvd];
    [_amp setSurroundSound];
    [_amp setVolume : 5];
    [_dvd on];
    [_dvd playTitle : movie];
}

- (void) endMovie {
	NSLog(@"Shutting movie theater down...");
    [_popper off];
    [_lights on];
    [_screen up];
    [_projector off];
    [_amp off];
    [_dvd stop];
    [_dvd eject];
    [_dvd off];
}

- (void) listenToCd : (NSString*) cdTitle {
    NSLog(@"Get ready to listen to awesome sounds...");
    [_lights on];
    [_amp on];
    [_amp setCd : _cd];
    [_amp setStereoSound];
    [_amp setVolume : 5];
    [_cd on];
    [_cd playTitle : cdTitle];
}

- (void) endCd {
    NSLog(@"Shutting down CD...");
    [_amp off];
    [_cd stop];
    [_cd eject];
    [_cd off];
}

- (void) listenToRadio : (double) frequency; {
    NSLog(@"Tuning in the airwaves...");
    [_tuner on];
    [_tuner setFrequency : frequency];
    [_amp on];
    [_amp setVolume : 5];
    [_amp setTuner : _tuner];
}

- (void) endRadio {
    NSLog(@"Shutting down the tuner...");
    [_tuner off];
    [_amp off];
}

@end
