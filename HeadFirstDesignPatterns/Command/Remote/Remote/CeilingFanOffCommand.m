//
//  CeilingFanOffCommand.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "CeilingFanOffCommand.h"
#import "CeilingFan.h"

@implementation CeilingFanOffCommand

- (id)initWithCeilingFan: (CeilingFan*)ceilingFan {
	if (!(self = [super init]))
		return nil;
	
	_ceilingFan = ceilingFan;
	
	return self;
}

- (void)execute {
    [_ceilingFan off];
}

- (NSString*)description
{
    return @"CeilingFanOffCommand";
}

@end

