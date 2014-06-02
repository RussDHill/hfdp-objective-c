//
//  CeilingFan.h
//  Remote
//
//  Created by Russell Hill on 20/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

#define HIGH    3
#define MEDIUM  2
#define LOW     1
#define OFF     0

@interface CeilingFan : NSObject
{
    NSString* _location;
}

@property (nonatomic, readonly, getter = getSpeed) int level;

- (id)initWithLocation: (NSString*)location;
- (void)high;
- (void)medium;
- (void)low;
- (void)off;
@end
