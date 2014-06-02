//
//  Duck.h
//  Sort
//
//  Created by Russell Hill on 22/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Duck : NSObject

@property (readonly) NSString* name;
@property (readonly) int weight;

- initWithNameAndWeight : (NSString*) name : (int) weight;
- (NSString*) description;
- (NSComparisonResult) compare : (Duck*) obj;
@end
