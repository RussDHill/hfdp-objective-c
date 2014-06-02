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
    _level = HIGH;
    NSLog(@"%@ ceiling fan is on high", _location);
}

- (void)medium {
    _level = MEDIUM;
    NSLog(@"%@ ceiling fan is on medium", _location);
}

- (void)low {
    _level = LOW;
    NSLog(@"%@ ceiling fan is on low", _location);
}

- (void)off {
    _level = OFF;
    NSLog(@"%@ ceiling fan is off", _location);
}

@end
