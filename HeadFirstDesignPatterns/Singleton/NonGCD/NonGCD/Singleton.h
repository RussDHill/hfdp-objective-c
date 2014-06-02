//
//  Singleton.h
//  NonGCD
//
//  Created by Russell Hill on 19/01/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

@property (nonatomic) int value;

+ (id)getInstance;
@end
