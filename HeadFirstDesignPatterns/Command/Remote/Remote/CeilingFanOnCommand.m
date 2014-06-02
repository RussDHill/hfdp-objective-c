//
//  CeilingFanOnCommand.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "CeilingFanOnCommand.h"
#import "CeilingFan.h"

@implementation CeilingFanOnCommand

- (id)initWithCeilingFan: (CeilingFan*)ceilingFan {
	if (!(self = [super init]))
		return nil;
	
	_ceilingFan = ceilingFan;
	
	return self;
}

- (void)execute {
    [_ceilingFan high];
}

- (NSString*)description {
    return @"CeilingFanOnCommand";
}

@end
