//
//  StereoOffCommand.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "StereoOffCommand.h"
#import "Stereo.h"

@implementation StereoOffCommand

- (id)initWithStereo: (Stereo*)stereo {
	if (!(self = [super init]))
		return nil;
	
	_stereo = stereo;
	
	return self;
}

- (void)execute {
    [_stereo off];
}

- (void)undo {
    [_stereo on];
}

@end

