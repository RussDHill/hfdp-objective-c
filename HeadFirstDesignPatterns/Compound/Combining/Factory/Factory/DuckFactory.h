//
//  DuckFactory.h
//  Factory
//
//  Created by Russell Hill on 07/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Quackable;

@protocol DuckFactory <NSObject>
- (id<Quackable>)createMallardDuck;
- (id<Quackable>)createRedheadDuck;
- (id<Quackable>)createDuckCall;
- (id<Quackable>)createRubberDuck;
@end
