//
//  Mocha.m
//  StarbuzzCoffee
//
//  Created by Russell Hill on 12/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "Mocha.h"

@implementation Mocha

- (id)initDecorator: (id<Beverage>) beverage {
	if (!(self = [super init]))
		return nil;
	
	_beverage = beverage;
	
	return self;
}

- (double)cost {
	return 0.2 + [_beverage cost];
}

- (NSString*)getDescription {
	NSString* returnString = [NSString stringWithFormat: @"%@, Mocha",
                                                    [_beverage getDescription]];
	return returnString;
}
@end
