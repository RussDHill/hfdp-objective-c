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
    NSLog(@"%@ light is on", _location);
}

- (void)off {
    NSLog(@"%@ light is off", _location);
}

@end
