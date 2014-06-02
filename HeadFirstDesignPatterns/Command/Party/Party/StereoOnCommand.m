//
//  StereoOnCommand.m
//  Party
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "StereoOnCommand.h"
#import "Stereo.h"

@implementation StereoOnCommand

- (id)initWithStereo: (Stereo*)stereo {
	if (!(self = [super init]))
		return nil;
	
	_stereo = stereo;
	
	return self;
}

- (void)execute {
    [_stereo on];
}

- (void)undo {
    [_stereo off];
}

@end
