//
//  Decaf.m
//  StarbuzzCoffee
//
//  Created by Russell Hill on 12/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "Decaf.h"

@implementation Decaf

- (id)init {
	if (!(self = [super init]))
		return nil;
	
	_description = @"Decaf Coffee";
	
	return self;
}

- (double)cost {
	return 1.05;
}

@end
