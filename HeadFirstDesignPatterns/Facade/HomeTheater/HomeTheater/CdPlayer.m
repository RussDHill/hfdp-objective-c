//
//  CdPlayer.m
//  HomeTheater
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "CdPlayer.h"
#import "Amplifier.h"

@implementation CdPlayer
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
    _title = @"";
	NSLog(@"%@ eject", _description);
}

- (void) playTitle : (NSString*) title {
    _title = title;
    _currentTrack = 0;
	NSLog(@"%@ playing ""%@""", _description, _title);
}

- (void) playTrack : (int) track {
    if ([_title length] == 0) {
        NSLog(@"%@ can't play track %i, no disk inserted", _description, track);
    } else {
        _currentTrack = track;
        NSLog(@"%@ playing track %i", _description, track);
    }
}

- (void) stop {
    _currentTrack = 0;
	NSLog(@"%@ stopped", _description);
}

- (void) pause {
	NSLog(@"%@ paused", _description);
}

- (NSString*) description {
	return _description;
}
@end
