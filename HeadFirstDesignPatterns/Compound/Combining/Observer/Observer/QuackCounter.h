//
//  QuackCounter.h
//  Decorator
//
//  Created by Russell Hill on 07/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Quackable.h"
#import "QuackObservable.h"

@interface QuackCounter : NSObject<Quackable, QuackObservable>
{
    id<Quackable> _duck;
}
+ (int)getQuacks;
- (id)initWithDuck: (id<Quackable>)duck;
- (void)quack;
@end
