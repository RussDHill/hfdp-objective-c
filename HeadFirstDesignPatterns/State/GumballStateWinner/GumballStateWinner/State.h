//
//  State.h
//  GumballStateWinner
//
//  Created by Russell Hill on 27/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol State <NSObject>
- (void)insertQuarter;
- (void)ejectQuarter;
- (void)turnCrank;
- (void)dispense;
@end
