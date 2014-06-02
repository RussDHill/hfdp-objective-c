//
//  LightOnCommand.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "LightOnCommand.h"
#import "Light.h"

@implementation LightOnCommand

- (id)initWithLight: (Light*)light {
	if (!(self = [super init]))
		return nil;
	
	_light = light;
	
	return self;
}

- (void)execute {
    [_light on];
}

- (void)undo {
    [_light off];
}

@end

