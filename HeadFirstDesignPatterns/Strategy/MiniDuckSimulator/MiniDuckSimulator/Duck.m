//
//  Duck.m
//  MiniDuckSimulator
//
//  Created by Russell Hill on 10/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "QuackBehavior.h"
#import "FlyBehavior.h"
#import "Duck.h"

@implementation Duck

- (void) setQuackBehavior: (id<QuackBehavior>)qb {
    _quackBehavior = qb;
}

- (void) setFlyBehavior: (id<FlyBehavior>)fb {
    _flyBehavior = fb;
}

- (void) performFly {
	[_flyBehavior fly];
}

- (void) performQuack {
	[_quackBehavior quack];
}

- (void) swim {
	NSLog(@"All ducks float, even decoys!");
}

- (void) display {
	NSLog(@"Not implemented");
}
@end
