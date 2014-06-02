//
//  GarageDoorUpCommand.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "GarageDoorUpCommand.h"
#import "GarageDoor.h"

@implementation GarageDoorUpCommand

- (id)initWithGarageDoor: (GarageDoor*)garageDoor {
	if (!(self = [super init]))
		return nil;
	
	_garageDoor = garageDoor;
	
	return self;
}

- (void)execute {
    [_garageDoor up];
}

- (NSString*)description {
    return @"GarageDoorUpCommand";
}

@end
