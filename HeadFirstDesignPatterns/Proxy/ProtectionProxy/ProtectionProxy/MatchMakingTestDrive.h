//
//  MatchMakingTestDrive.h
//  ProtectionProxy
//
//  Created by Russell Hill on 06/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@class OwnerInvocationHandler;
@class NonOwnerInvocationHandler;
@class Person;

@interface MatchMakingTestDrive : NSObject
{
    NSMutableDictionary* _datingDB;
}
- (void)drive;
- (OwnerInvocationHandler*)getOwnerProxy: (id)person;
- (NonOwnerInvocationHandler*)getNonOwnerProxy: (id)person;
- (Person*)getPersonFromDatabase: (NSString*)name;
- (void)initializeDatabase;
@end
