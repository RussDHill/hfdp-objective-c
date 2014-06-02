//
//  OwnerInvocationHandler.m
//  ProtectionProxy
//
//  Created by Russell Hill on 06/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "OwnerInvocationHandler.h"

@implementation OwnerInvocationHandler

- (id)initWithPerson: (id)person {
    if (!(self = [super init]))
		return nil;
	
	_person = person;
    
	return self;
}

- (void)forwardInvocation: (NSInvocation*)invocation {
    if (! _person) {
		[self doesNotRecognizeSelector: [invocation selector]];
	}
	[invocation invokeWithTarget: _person];
}

- (NSMethodSignature*)methodSignatureForSelector: (SEL)selector {
    
	NSMethodSignature* signature = [super methodSignatureForSelector: selector];
    if (signature)
        return signature;
    
    NSString* name = NSStringFromSelector(selector);
    if ([name compare:@"get" options: NSLiteralSearch range: NSMakeRange(0, 3)] == 0) {
        return [_person methodSignatureForSelector: selector];
    } else if ([name isEqualToString: @"setHotOrNotRating:"]) {
        return signature;
    } else if ([name compare:@"set" options: NSLiteralSearch range: NSMakeRange(0, 3)] == 0) {
        return [_person methodSignatureForSelector: selector];
    }
    
	return signature;
}

@end
