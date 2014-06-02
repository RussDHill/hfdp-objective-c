//
//  Person.h
//  ProtectionProxy
//
//  Created by Russell Hill on 06/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString* _name;
    NSString* _gender;
    NSString* _interests;
    int _rating;
    int _ratingCount;
}

- (NSNumber*)getHotOrNotRating;
- (void)setHotOrNotRating: (NSNumber*)rating;
- (NSString*)getName;
- (void)setName: (NSString*)name;
- (NSString*)getGender;
- (void)setGender: (NSString*)gender;
- (NSString*)getInterests;
- (void)setInterests: (NSString*)interests;

@end
