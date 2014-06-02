//
//  HottubOffCommand.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "HottubOffCommand.h"
#import "Hottub.h"

@implementation HottubOffCommand

- (id)initWithHottub: (Hottub*)hottub {
	if (!(self = [super init]))
		return nil;
	
	_hottub = hottub;
	
	return self;
}

- (void)execute {
    [_hottub setTemperature : 98];
    [_hottub off];
}

- (void)undo {
    [_hottub on];
}

@end
