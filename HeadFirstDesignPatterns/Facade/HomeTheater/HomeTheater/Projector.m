//
//  Projector.m
//  HomeTheater
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Projector.h"

@implementation Projector
- (id) initWithDescAndPlayer : (NSString*) description : (DvdPlayer*) dvd
{
    if (!(self = [super init]))
		return nil;
	
	_description = description;
    _dvd = dvd;
	
	return self;
}

- (void) on {
	NSLog(@"%@ on", _description);
}

- (void) off {
	NSLog(@"%@ off", _description);
}

- (void) wideScreenMode {
	NSLog(@"%@ in widescreen mode (16x9 aspect ratio)", _description);
}

- (void) tvMode {
	NSLog(@"%@ in tv mode (4x3 aspect ratio)", _description);
}

- (NSString*) description {
	return _description;
}

@end
