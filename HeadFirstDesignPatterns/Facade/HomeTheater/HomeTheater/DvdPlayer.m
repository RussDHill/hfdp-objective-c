//
//  DvdPlayer.m
//  HomeTheater
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "DvdPlayer.h"

@implementation DvdPlayer
- (id) initWithDescAndAmp : (NSString*) description : (Amplifier*) amplifier
{
    if (!(self = [super init]))
		return nil;
	
	_description = description;
    _amplifier = amplifier;
	
	return self;
}

- (void) on {
	NSLog(@"%@ on", _description);
}

- (void) off {
	NSLog(@"%@ off", _description);
}

- (void) eject {
    _movie = @"";
	NSLog(@"%@ eject", _description);
}

- (void) playTitle : (NSString*) movie {
    _movie = movie;
    _currentTrack = 0;
	NSLog(@"%@ playing ""%@""", _description, _movie);
}

- (void) playTrack : (int) track {
    if ([_movie length] == 0) {
        NSLog(@"%@ can't play track %i, no dvd inserted", _description, track);
    } else {
        _currentTrack = track;
        NSLog(@"%@ playing track %i of ""%@""", _description, track, _movie);
    }
}

- (void) stop {
    _currentTrack = 0;
	NSLog(@"%@ stopped ""%@""", _description, _movie);
}

- (void) pause {
	NSLog(@"%@ paused ""%@""", _description, _movie);
}

- (void) setTwoChannelAudio {
    _currentTrack = 0;
	NSLog(@"%@ set two channel audio", _description);
}

- (void) setSurroundAudio {
	NSLog(@"%@ set surround audio", _description);
}

- (NSString*) description {
	return _description;
}

@end
