//
//  Person.m
//  ProtectionProxy
//
//  Created by Russell Hill on 06/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)init {
    if (!(self = [super init]))
		return nil;
	
	_rating = 0;
    
	return self;
}

- (NSNumber*)getHotOrNotRating {
    if (_ratingCount == 0)
        return [NSNumber numberWithInteger: 0];
    
    NSNumber* result = [NSNumber numberWithInteger: (int)(_rating/_ratingCount)];
    
    return result;
}

- (void)setHotOrNotRating: (NSNumber*)rating {
    _rating += [rating intValue];
    _ratingCount++;
}

- (NSString*)getName {
    return _name;
}

- (void)setName: (NSString*)name {
    _name = name;
}

- (NSString*)getGender {
    return _gender;
}

- (void)setGender: (NSString*)gender {
    _gender = gender;
}

- (NSString*)getInterests {
    return _interests;
}

- (void)setInterests: (NSString*)interests {
    _interests = interests;
}

@end
