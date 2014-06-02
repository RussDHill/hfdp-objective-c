//
//  CountingDuckFactory.h
//  Factory
//
//  Created by Russell Hill on 07/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DuckFactory.h"

@interface CountingDuckFactory : NSObject<DuckFactory>
- (id<Quackable>)createMallardDuck;
- (id<Quackable>)createRedheadDuck;
- (id<Quackable>)createDuckCall;
- (id<Quackable>)createRubberDuck;
@end
