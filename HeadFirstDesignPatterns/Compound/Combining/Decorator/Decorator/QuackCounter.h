//
//  QuackCounter.h
//  Decorator
//
//  Created by Russell Hill on 07/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Quackable.h"

@interface QuackCounter : NSObject<Quackable>
{
    id<Quackable> _duck;
}
+ (int)getQuacks;
- (id)initWithDuck: (id<Quackable>)duck;
- (void)quack;
@end
