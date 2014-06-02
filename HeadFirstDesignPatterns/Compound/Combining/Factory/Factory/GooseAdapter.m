//
//  GooseAdapter.m
//  Adapter
//
//  Created by Russell Hill on 07/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "GooseAdapter.h"
#import "Goose.h"

@implementation GooseAdapter

- (id)initWithGoose: (Goose*)goose {
	if (!(self = [super init]))
		return nil;
	
	_goose = goose;
	
	return self;
}

- (void)quack {
    [_goose honk];
}

@end
