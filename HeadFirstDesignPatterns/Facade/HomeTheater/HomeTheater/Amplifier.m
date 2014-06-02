//
//  Amplifier.m
//  HomeTheater
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Amplifier.h"
#import "Tuner.h"
#import "DvdPlayer.h"
#import "CdPlayer.h"

@implementation Amplifier
- (id) initWithDescription : (NSString*) description
{
    if (!(self = [super init]))
		return nil;
	
	_description = description;
	
	return self;
}

- (void) on {
	NSLog(@"%@ on", _description);
}

- (void) off {
	NSLog(@"%@ off", _description);
}

- (void) setStereoSound {
	NSLog(@"%@ stereo mode on", _description);
}

- (void) setSurroundSound {
	NSLog(@"%@ surround sound on (5 speakers, 1 subwoofer)", _description);
}

- (void) setVolume : (int) level {
	NSLog(@"%@ setting volume to %i", _description, level);
}

- (void) setTuner : (Tuner*) tuner {
	NSLog(@"%@ setting tuner to %@", _description, tuner);
	_tuner = tuner;
}

- (void) setDvd : (DvdPlayer*) dvd {
	NSLog(@"%@ setting DVD player to %@", _description, dvd);
	_dvd = dvd;
}

- (void) setCd : (CdPlayer*) cd {
	NSLog(@"%@ setting CD player to %@", _description, cd);
	_cd = cd;
}

- (NSString*) description {
	return _description;
}
@end
