//
//  Light.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Light.h"

@implementation Light

- (id)initWithLocation: (NSString*)location {
	if (!(self = [super init]))
		return nil;
	
	_location = location;
	
	return self;
}

- (void)on {
    _level = 100;
    NSLog(@"%@ light is on", _location);
}

- (void) off {
    _level = 0;
    NSLog(@"%@ light is off", _location);
}

- (void)dim: (int)level {
	_level = level;
	if (level == 0) {
		[self off];
	} else {
		NSLog(@"Light is dimmed to %i%%\r", _level);
	}
}

@end
