//
//  DimmerLightOffCommand.m
//  Undo
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "DimmerLightOffCommand.h"
#import "Light.h"

@implementation DimmerLightOffCommand

- (id)initWithLight: (Light*)light {
	if (!(self = [super init]))
		return nil;
	
	_light = light;
    _prevLevel = 100;
	
	return self;
}

- (void)execute {
    _prevLevel = [_light getLevel];
    [_light off];
}

- (void)undo {
	[_light dim: _prevLevel];
}

@end
