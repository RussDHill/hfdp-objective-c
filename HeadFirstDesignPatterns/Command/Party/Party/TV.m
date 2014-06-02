//
//  TV.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "TV.h"

@implementation TV

- (id)initWithLocation: (NSString*)location {
	if (!(self = [super init]))
		return nil;
	
	_location = location;
	
	return self;
}

- (void)on {
    NSLog(@"%@ TV is on", _location);
}

- (void)off {
    NSLog(@"%@ TV is off", _location);
}

- (void)setInputChannel {
    _channel = 3;
	NSLog(@"Channel is set for DVD");
}
@end
