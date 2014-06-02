//
//  Flock.m
//  Composite
//
//  Created by Russell Hill on 09/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Flock.h"

@implementation Flock

- (id)init {
	if (!(self = [super init]))
		return nil;
	
	_quackers = [NSMutableArray new];
	
	return self;
}

- (void)add: (id<Quackable>)quacker {
    [_quackers addObject: quacker];
}

- (void)quack {
    for (id<Quackable> quacker in _quackers) {
        [quacker quack];
    }
}
@end
