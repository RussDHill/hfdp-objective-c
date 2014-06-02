//
//  GumballMachine.h
//  GumballState
//
//  Created by Russell Hill on 27/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol State;

@interface GumballMachine : NSObject
{
    id<State> _soldOutState;
    id<State> _noQuarterState;
    id<State> _hasQuarterState;
    id<State> _soldState;
    
    id<State> _state;
    int _count;
}
- (id)initWithCount: (int)count;
- (void)insertQuarter;
- (void)ejectQuarter;
- (void)turnCrank;
- (void)setState: (id<State>)state;
- (void)releaseBall;
- (int)getCount;
- (void)refill: (int)amount;
- (id<State>)getState;
- (id<State>)getSoldOutState;
- (id<State>)getNoQuarterState;
- (id<State>)getHasQuarterState;
- (id<State>)getSoldState;
- (NSString*)description;

@end
