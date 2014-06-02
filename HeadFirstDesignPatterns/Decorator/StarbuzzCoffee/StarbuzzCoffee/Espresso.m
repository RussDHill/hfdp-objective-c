//
//  Espresso.m
//  StarbuzzCoffee
//
//  Created by Russell Hill on 12/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "Espresso.h"

@implementation Espresso

- (id)init {
	if (!(self = [super init]))
		return nil;
	
	_description = @"Espresso";
	
	return self;
}

- (double)cost {
	return 1.99;
}
@end
