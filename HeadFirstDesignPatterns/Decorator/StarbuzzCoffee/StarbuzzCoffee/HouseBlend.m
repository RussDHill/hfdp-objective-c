//
//  HouseBlend.m
//  StarbuzzCoffee
//
//  Created by Russell Hill on 12/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "HouseBlend.h"

@implementation HouseBlend

- (id)init {
	if (!(self = [super init]))
		return nil;
	
	_description = @"House Blend Coffee";
	
	return self;
}

- (double)cost {
	return .89;
}
@end
