//
//  SoldState.h
//  GumballMachine
//
//  Created by Russell Hill on 29/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import "State.h"

@class GumballMachine;

@interface SoldState : NSObject<State>
{
    GumballMachine* _gumballMachine;
}
- (id)initWithGumballMachine: (GumballMachine*)gumballMachine;
- (void)insertQuarter;
- (void)ejectQuarter;
- (void)turnCrank;
- (void)dispense;
@end
