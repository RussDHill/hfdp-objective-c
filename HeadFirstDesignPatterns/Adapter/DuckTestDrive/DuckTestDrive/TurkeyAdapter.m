//
//  TurkeyAdapter.m
//  DuckTestDrive
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "TurkeyAdapter.h"
#import "Turkey.h"

@implementation TurkeyAdapter
- (id) initWithTurkey : (id<Turkey>) turkey {
	if (!(self = [super init]))
		return nil;
	
	_turkey = turkey;
	
	return self;
}

- (void) quack {
    [_turkey gobble];
}

- (void) fly {
    for(int i=0;i<5;i++) {
        [_turkey fly];
    }
}@end
