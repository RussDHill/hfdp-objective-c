//
//  DuckSimulator.h
//  Ducks
//
//  Created by Russell Hill on 07/02/2014.
//  Copyright (c) 2014 Russell Hill. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DuckFactory; 

@interface DuckSimulator : NSObject
- (void)simulate: (id<DuckFactory>)duckFactory;
@end
