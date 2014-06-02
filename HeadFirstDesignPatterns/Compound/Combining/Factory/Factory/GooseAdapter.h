//
//  GooseAdapter.h
//  Adapter
//
//  Created by Russell Hill on 07/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Quackable.h"

@class Goose;

@interface GooseAdapter : NSObject<Quackable>
{
    Goose* _goose;
}
- (id)initWithGoose: (Goose*)goose;
- (void)quack;
@end
