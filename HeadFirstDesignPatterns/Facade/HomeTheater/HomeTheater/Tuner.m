//
//  Tuner.m
//  HomeTheater
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Tuner.h"

@implementation Tuner
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

- (void) setFrequency : (double) frequency {
    NSLog(@"%@ setting frequency to %f", _description, frequency);
    _frequency = frequency;
}

- (void) setAm {
	NSLog(@"%@ setting AM mode", _description);
}

- (void) setFm {
	NSLog(@"%@ setting FM mode", _description);
}

- (NSString*) description {
	return _description;
}
@end
