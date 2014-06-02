//
//  Flock.h
//  Composite
//
//  Created by Russell Hill on 09/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Quackable.h"

@interface Flock : NSObject<Quackable>
{
    NSMutableArray* _quackers;
}
- (void)add: (id<Quackable>)quacker;
- (void)quack;
@end
