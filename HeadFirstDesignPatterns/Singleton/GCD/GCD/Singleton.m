//
//  Singleton.m
//  GCD
//
//  Created by Russell Hill on 19/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

- (id)init {
    if (self = [super init]) {
        _value = 0;
    }
    return self;
}

+ (id)getInstance {
    static Singleton* uniqueInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        uniqueInstance = [[self alloc] init];
    });
    return uniqueInstance;
}

@end
