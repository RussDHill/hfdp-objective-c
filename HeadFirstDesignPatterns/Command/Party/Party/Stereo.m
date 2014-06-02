//
//  Stereo.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Stereo.h"

@implementation Stereo

- (id)initWithLocation: (NSString*)location {
	if (!(self = [super init]))
		return nil;
	
	_location = location;
	
	return self;
}

- (void)on {
    NSLog(@"%@ stereo is on", _location);
}

- (void)off {
    NSLog(@"%@ stereo is off", _location);
}

- (void)setCD {
    NSLog(@"%@ stereo is set for CD input", _location);
}

- (void)setDVD {
    NSLog(@"%@ stereo is set for DVD input", _location);
}

- (void)setRadio {
    NSLog(@"%@ stereo is set for Radio", _location);
}

- (void)setVolume: (int)volume {
    // code to set the volume
	// valid range: 1-11 (after all 11 is better than 10, right?)
    NSLog(@"%@ stereo volume set to %i", _location, volume);
}

@end
