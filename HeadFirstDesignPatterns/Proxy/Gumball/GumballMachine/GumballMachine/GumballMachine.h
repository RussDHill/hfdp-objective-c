//
//  GumballMachine.h
//  GumballMachine
//
//  Created by Russell Hill on 29/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GumballMachineRemote.h"

@protocol State;

@interface GumballMachine : NSObject<GumballMachineRemote>
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
- (void)refill: (int)amount;
- (id<State>)getState;
- (id<State>)getSoldOutState;
- (id<State>)getNoQuarterState;
- (id<State>)getHasQuarterState;
- (id<State>)getSoldState;
- (id<State>)getWinnerState;
- (NSString*)description;

//  GumballMachineRemote protocol
- (int)getCount;
- (NSString*)getLocation;
- (NSString*)getStateAsString;
@end
