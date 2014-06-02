//
//  CeilingFanMediumCommand.m
//  Undo
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "CeilingFanMediumCommand.h"
#import "CeilingFan.h"

@implementation CeilingFanMediumCommand

- (id)initWithCeilingFan: (CeilingFan*)ceilingFan {
	if (!(self = [super init]))
		return nil;
	
	_ceilingFan = ceilingFan;
	
	return self;
}

- (void)execute {
    _prevSpeed = _ceilingFan.getSpeed;
    [_ceilingFan medium];
}

- (void)undo {
	if (_prevSpeed == HIGH) {
		[_ceilingFan high];
	} else if (_prevSpeed == MEDIUM) {
		[_ceilingFan medium];
	} else if (_prevSpeed == LOW) {
		[_ceilingFan low];
	} else if (_prevSpeed == OFF) {
		[_ceilingFan off];
	}
}

@end

