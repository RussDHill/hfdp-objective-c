//
//  MatchMakingTestDrive.m
//  ProtectionProxy
//
//  Created by Russell Hill on 06/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "MatchMakingTestDrive.h"
#import "Person.h"
#import "NonOwnerInvocationHandler.h"
#import "OwnerInvocationHandler.h"

@implementation MatchMakingTestDrive


- (id)init {
    if (!(self = [super init]))
		return nil;
	
    [self initializeDatabase];
    
	return self;
}

- (void)drive {
    
    Person* joe = [self getPersonFromDatabase: @"Joe Javabean"];
    OwnerInvocationHandler* ownerProxy = [self getOwnerProxy: joe];
    NSLog(@"%@", [ownerProxy performSelector: @selector(getName)]);
    
    NSString* interests = @"bowling, Go";
    [ownerProxy performSelector: @selector(setInterests:) withObject: interests];
    NSLog(@"Interests set for owner proxy");
    
    @try {
        [ownerProxy performSelector: @selector(setHotOrNotRating:) withObject: [NSNumber numberWithInteger: 10]];
    }
    @catch (NSException * e) {
        NSLog(@"Cannot set rating from owner proxy");
    }
    NSLog(@"Rating is %@", [ownerProxy performSelector: @selector(getHotOrNotRating)]);
    
    NonOwnerInvocationHandler* nonOwnerProxy = [self getNonOwnerProxy: joe];
    NSLog(@"%@", [nonOwnerProxy performSelector: @selector(getName)]);
    
    @try {
        [nonOwnerProxy performSelector: @selector(setInterests:) withObject: interests];
    }
    @catch (NSException * e) {
        NSLog(@"Cannot set interests from non owner proxy");
    }
    [nonOwnerProxy performSelector: @selector(setHotOrNotRating:) withObject: [NSNumber numberWithInteger: 3]];
    NSLog(@"Rating set from non owner proxy");
    NSLog(@"Rating is %@", [nonOwnerProxy performSelector: @selector(getHotOrNotRating)]);
}

- (OwnerInvocationHandler*)getOwnerProxy: (id)person {
    return [[OwnerInvocationHandler alloc] initWithPerson: person];
}

- (NonOwnerInvocationHandler*)getNonOwnerProxy: (id)person {
    return [[NonOwnerInvocationHandler alloc] initWithPerson: person];
}

- (Person*)getPersonFromDatabase: (NSString*)name {
    return [_datingDB objectForKey: name];
}

- (void)initializeDatabase {
    
	_datingDB = [NSMutableDictionary new];
    
    Person* joe = [Person new];
    [joe setName: @"Joe Javabean"];
    [joe setInterests: @"cars, computers, music"];
    [joe setHotOrNotRating: [NSNumber numberWithInteger: 7]];
    [_datingDB setObject: joe forKey: [joe getName]];
    
    Person* kelly = [Person new];
    [kelly setName: @"Kelly Klosure"];
    [kelly setInterests: @"ebay, movies, music"];
    [kelly setHotOrNotRating: [NSNumber numberWithInteger: 6]];
    [_datingDB setObject: kelly forKey: [kelly getName]];

}

@end
