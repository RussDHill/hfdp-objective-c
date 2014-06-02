//
//  TurkeyAdapter.m
//  DuckTestDrive
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "DuckAdapter.h"
#import "Duck.h"

#include <stdlib.h>

@implementation DuckAdapter
- (id) initWithDuck : (id<Duck>) duck {
	if (!(self = [super init]))
		return nil;
	
	_duck = duck;
	
	return self;
}

- (void) gobble {
    [_duck quack];
}

- (void) fly {
    if (arc4random_uniform(5) == 0) {
        [_duck fly];
    }
}@end
