//
//  GumballMachine.h
//  Gumball
//
//  Created by Russell Hill on 27/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SOLD_OUT    0
#define NO_QUARTER  1
#define HAS_QUARTER 2
#define SOLD        3

@interface GumballMachine : NSObject
{
    int _state;
    int _count;
}
- (id)initWithCount: (int)count;
- (void)insertQuarter;
- (void)ejectQuarter;
- (void)turnCrank;
- (void)dispense;
- (void)refill: (int)amount;
- (NSString*)description;
@end
