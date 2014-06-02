//
//  GarageDoorOpenCommand.m
//  SimpleRemote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "GarageDoorOpenCommand.h"
#import "GarageDoor.h"

@implementation GarageDoorOpenCommand

- (id)initWithGarageDoor: (GarageDoor*)garageDoor {
	if (!(self = [super init]))
		return nil;
	
	_garageDoor = garageDoor;
	
	return self;
}

- (void)execute {
    [_garageDoor up];
}
@end
