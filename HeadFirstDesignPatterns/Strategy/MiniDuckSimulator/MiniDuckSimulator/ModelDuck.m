//
//  ModelDuck.m
//  MiniDuckSimulator
//
//  Created by Russell Hill on 11/11/2013.
//  Copyright (c) 2013 Russell Hill. All rights reserved.
//

#import "ModelDuck.h"
#import "Quack.h"
#import "FlyNoWay.h"

@implementation ModelDuck

- (id)init {
    //an initializer of the superclass must be called
    if (!(self = [super init])) //if the superclass is NSObject, this must be init
        return nil; //in case of super-class failure, return nil to propagate
    //in case of success, make additional initializations
    self->_flyBehavior = [[FlyNoWay alloc] init];
    self->_quackBehavior = [[Quack alloc] init];
    return self; //and return the object itself
}

- (void)display {
	NSLog(@"I'm a model duck");
}
@end
