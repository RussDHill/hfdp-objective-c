//
//  DarkRoast.m
//  StarbuzzCoffee
//
//  Created by Russell Hill on 12/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "DarkRoast.h"

@implementation DarkRoast

- (id)init {
	if (!(self = [super init]))
		return nil;
	
	_description = @"Dark Roast Coffee";
	
	return self;
}

- (double)cost {
	return .99;
}
@end
