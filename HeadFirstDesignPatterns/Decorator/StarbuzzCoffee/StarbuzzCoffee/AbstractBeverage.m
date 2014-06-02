//
//  AbstractBeverage.m
//  StarbuzzCoffee
//
//  Created by Russell Hill on 12/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "AbstractBeverage.h"

@implementation AbstractBeverage

- (id)init {
	if (!(self = [super init]))
		return nil;
	
	_description = @"Unknown Coffee";
	
	return self;
}

- (double)cost {
	return 0;
}

- (NSString*)getDescription {
	return _description;
}
@end
