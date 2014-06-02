//
//  GumballMonitor.h
//  GumballMonitor
//
//  Created by Russell Hill on 29/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GumballMonitor : NSObject
{
    NSString* _name;
}
- (id)initWithName: (NSString*)name;
- (void)report;
- (void)badConnection: (NSString*)problem;
@end
