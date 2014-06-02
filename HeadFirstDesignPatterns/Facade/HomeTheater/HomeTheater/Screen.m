//
//  Screen.m
//  HomeTheater
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Screen.h"

@implementation Screen
- (id) initWithDescription : (NSString*) description
{
    if (!(self = [super init]))
		return nil;
	
	_description = description;
	
	return self;
}

- (void) up {
	NSLog(@"%@ going up", _description);
}

- (void) down {
	NSLog(@"%@ going down", _description);
}

- (NSString*) description {
	return _description;
}

@end
