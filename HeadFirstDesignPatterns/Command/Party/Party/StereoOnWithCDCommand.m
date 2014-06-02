//
//  StereoOnWithCDCommand.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "StereoOnWithCDCommand.h"
#import "Stereo.h"

@implementation StereoOnWithCDCommand

- (id)initWithStereo: (Stereo*)stereo {
	if (!(self = [super init]))
		return nil;
	
	_stereo = stereo;
	
	return self;
}

- (void)execute {
    [_stereo on];
    [_stereo setCD];
    [_stereo setVolume: 11];
}

- (void)undo {
    [_stereo off];
}

@end

