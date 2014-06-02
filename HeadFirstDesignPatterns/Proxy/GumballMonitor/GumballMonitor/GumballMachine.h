//
//  GumballMachine.h
//  GumballMonitor
//
//  Created by Russell Hill on 28/01/2014.
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
    id<State> _winnerState;
    
    id<State> _state;
    int _count;
    NSString* _location;
}
- (id)initWithLocationAndCount: (NSString*)location : (int)count;
- (void)insertQuarter;
- (void)ejectQuarter;
- (void)turnCrank;
- (void)setState: (id<State>)state;
- (void)releaseBall;
- (int)getCount;
- (NSString*)getLocation;
- (void)refill: (int)amount;
- (id<State>)getState;
- (id<State>)getSoldOutState;
- (id<State>)getNoQuarterState;
- (id<State>)getHasQuarterState;
- (id<State>)getSoldState;
- (id<State>)getWinnerState;
- (NSString*)description;

@end
