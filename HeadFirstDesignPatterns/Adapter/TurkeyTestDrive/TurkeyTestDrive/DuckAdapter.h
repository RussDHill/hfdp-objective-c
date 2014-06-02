//
//  DuckAdapter.h
//  DuckTestDrive
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Turkey.h"

@protocol Duck;

@interface DuckAdapter : NSObject<Turkey>
{
    id<Duck> _duck;
}
- (id) initWithDuck : (id<Duck>) duck;
- (void) gobble;
- (void) fly;
@end
