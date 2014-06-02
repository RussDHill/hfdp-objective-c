//
//  Duck.h
//  MiniDuckSimulator
//
//  Created by Russell Hill on 10/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol QuackBehavior;
@protocol FlyBehavior;

@interface Duck : NSObject {
    id<QuackBehavior> _quackBehavior;
    id<FlyBehavior> _flyBehavior;
}
- (void)setQuackBehavior: (id<QuackBehavior>)qb;
- (void)setFlyBehavior: (id<FlyBehavior>)fb;
- (void)display;
- (void)swim;
- (void)performQuack;
- (void)performFly;
@end
