//
//  OwnerInvocationHandler.h
//  ProtectionProxy
//
//  Created by Russell Hill on 06/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OwnerInvocationHandler : NSObject
{
    id _person;
}

- (id)initWithPerson: (id)person;
- (void)forwardInvocation: (NSInvocation*)invocation;
- (NSMethodSignature*)methodSignatureForSelector: (SEL)selector;

@end
