//
//  GumballMonitor.h
//  GumballMonitor
//
//  Created by Russell Hill on 28/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GumballMachine;

@interface GumballMonitor : NSObject
{
    GumballMachine* _gumballMachine;
}
- (id)initWithGumballMachine: (GumballMachine*)gumballMachine;
- (void)report;
@end
