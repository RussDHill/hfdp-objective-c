//
//  TurkeyAdapter.h
//  DuckTestDrive
//
//  Created by Russell Hill on 21/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "Duck.h"

@protocol Turkey;

@interface TurkeyAdapter : NSObject<Duck>
{
    id<Turkey> _turkey;
}
- (id) initWithTurkey : (id<Turkey>) turkey;
- (void) quack;
- (void) fly;
@end
