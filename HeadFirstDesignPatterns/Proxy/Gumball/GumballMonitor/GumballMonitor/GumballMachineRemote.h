//
//  GumballMachineRemote.h
//  GumballMachine
//
//  Created by Russell Hill on 29/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol GumballMachineRemote <NSObject>
- (int)getCount;
- (NSString*)getLocation;
- (NSString*)getStateAsString;
@end
