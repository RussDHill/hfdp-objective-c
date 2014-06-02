//
//  Quackologist.h
//  Observer
//
//  Created by Russell Hill on 09/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Observer.h"

@protocol QuackObservable;

@interface Quackologist : NSObject<Observer>
- (void)update: (id<QuackObservable>)duck;
@end
