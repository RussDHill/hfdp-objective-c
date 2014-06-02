//
//  Observer.h
//  Observer
//
//  Created by Russell Hill on 09/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol QuackObservable;

@protocol Observer <NSObject>
- (void)update: (id<QuackObservable>)duck;
@end
