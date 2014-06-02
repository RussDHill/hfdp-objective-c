//
//  ChocolateBoiler.m
//  Chocolate
//
//  Created by Russell Hill on 19/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "ChocolateBoiler.h"

@implementation ChocolateBoiler

- (id)init {
    if (self = [super init]) {
        _boiled = NO;
        _empty = YES;
    }
    return self;
}

+ (id)getInstance {
    static ChocolateBoiler* uniqueInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        uniqueInstance = [self new];
    });
    return uniqueInstance;
}

- (void)boil {
    if (!self.isEmpty && !self.isBoiled) {
		// bring the contents to a boil
		_boiled = YES;
	}
}

- (void)drain {
    if (!self.isEmpty && self.isBoiled) {
		// drain the boiled milk and chocolate
		_empty = YES;
	}
}

- (void)fill {
  	if (self.isEmpty) {
		_empty = NO;
		_boiled = NO;
		// fill the boiler with a milk/chocolate mixture
	}
  
}

@end
