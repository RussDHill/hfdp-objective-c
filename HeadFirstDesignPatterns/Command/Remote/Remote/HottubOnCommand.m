//
//  HottubOnCommand.m
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "HottubOnCommand.h"
#import "Hottub.h"

@implementation HottubOnCommand

- (id)initWithHottub: (Hottub*)hottub {
	if (!(self = [super init]))
		return nil;
	
	_hottub = hottub;
	
	return self;
}

- (void)execute {
    [_hottub cool];
}

- (NSString*)description {
    return @"HottubOnCommand";
}

@end

