//
//  LivingroomLightOffCommand.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "LivingroomLightOffCommand.h"
#import "Light.h"

@implementation LivingroomLightOffCommand

- (id)initWithLight: (Light*)light {
	if (!(self = [super init]))
		return nil;
	
	_light = light;
	
	return self;
}

- (void)execute {
    [_light off];
}

- (void)undo {
    [_light on];
}

@end

