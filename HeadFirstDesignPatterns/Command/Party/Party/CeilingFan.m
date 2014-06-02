//
//  CeilingFan.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "CeilingFan.h"

@implementation CeilingFan

- (id)initWithLocation: (NSString*)location {
	if (!(self = [super init]))
		return nil;
	
	_location = location;
	
	return self;
}

- (void)high {
    _speed = HIGH;
    NSLog(@"%@ ceiling fan is on high", _location);
}

- (void)medium {
    _speed = MEDIUM;
    NSLog(@"%@ ceiling fan is on medium", _location);
}

- (void)low {
    _speed = LOW;
    NSLog(@"%@ ceiling fan is on low", _location);
}

- (void)off {
    _speed = OFF;
    NSLog(@"%@ ceiling fan is off", _location);
}

@end
