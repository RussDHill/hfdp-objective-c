//
//  PopcornPopper.m
//  HomeTheater
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "PopcornPopper.h"

@implementation PopcornPopper
- (id) initWithDescription : (NSString*) description
{
    if (!(self = [super init]))
		return nil;
	
	_description = description;
	
	return self;
}

- (void) on {
	NSLog(@"%@ on", _description);
}

- (void) off {
	NSLog(@"%@ off", _description);
}

- (void) pop {
	NSLog(@"%@ popping popcorn!", _description);
}

- (NSString*) description {
	return _description;
}

@end
