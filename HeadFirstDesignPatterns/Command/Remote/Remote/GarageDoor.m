//
//  GarageDoor.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "GarageDoor.h"

@implementation GarageDoor

- (id)initWithLocation: (NSString*)location {
	if (!(self = [super init]))
		return nil;
	
	_location = location;
	
	return self;
}

- (void)lightOff {
    NSLog(@"%@ garage light is off", _location);
}

- (void)lightOn {
    NSLog(@"%@ garage light is on", _location);
}

- (void)stop {
    NSLog(@"%@ garage door is stopped", _location);    
}

- (void)down {
    NSLog(@"%@ garage door is closed", _location);    
}

- (void)up {
    NSLog(@"%@ garage door is open", _location);    
}
@end
