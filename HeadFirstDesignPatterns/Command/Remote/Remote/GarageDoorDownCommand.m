//
//  GarageDoorDownCommand.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "GarageDoorDownCommand.h"
#import "GarageDoor.h"

@implementation GarageDoorDownCommand

- (id)initWithGarageDoor: (GarageDoor*)garageDoor {
	if (!(self = [super init]))
		return nil;
	
	_garageDoor = garageDoor;
	
	return self;
}

- (void)execute {
    [_garageDoor down];
}

- (NSString*)description {
    return @"GarageDoorDownCommand";
}

@end
