//
//  Quackologist.m
//  Observer
//
//  Created by Russell Hill on 09/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Quackologist.h"
#import "QuackObservable.h"

@implementation Quackologist

- (void)update: (id<QuackObservable>)duck {
    NSLog(@"Quackologist: %@ just quacked.", duck);
}

- (NSString*) description {
	return @"Quackologist";
}

@end
